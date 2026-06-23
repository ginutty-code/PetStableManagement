-- ModelsBrowser/ModelsDataLoader.lua
-- Data loading, caching, and processing for Pet Models Browser

local addonName = "PetStableManagement"

_G.PSM = _G.PSM or {}
local PSM = _G.PSM

PSM.ModelsDataLoader = PSM.ModelsDataLoader or {}

--------------------------------------------------------------------------------
-- CONSTANTS
--------------------------------------------------------------------------------

local EXPANSION_ORDER = {
    ["Vanilla"] = 1, ["The Burning Crusade"] = 2, ["Wrath of the Lich King"] = 3,
    ["Cataclysm"] = 4, ["Mists of Pandaria"] = 5, ["Warlords of Draenor"] = 6,
    ["Legion"] = 7, ["Battle for Azeroth"] = 8, ["Shadowlands"] = 9,
    ["Dragonflight"] = 10, ["The War Within"] = 11, ["Midnight"] = 12, ["The Last Titan"] = 13,
}
PSM.ModelsDataLoader._EXPANSION_ORDER = EXPANSION_ORDER

local function SortExpansions(list)
    table.sort(list, function(a, b)
        return (EXPANSION_ORDER[a] or 999) < (EXPANSION_ORDER[b] or 999)
    end)
end

--------------------------------------------------------------------------------
-- CACHE
--------------------------------------------------------------------------------

function PSM.ModelsDataLoader:CreateRenderCache()
    PSM._modelsRenderCache    = nil
    PSM._modelsDebounceTimer  = nil
    PSM._lastModelsLayoutWidth  = nil
    PSM._lastModelsLayoutHeight = nil
    PSM._dynamicFilterCache   = nil
end

function PSM.ModelsDataLoader:ClearDynamicFilterCache()
    PSM._dynamicFilterCache = nil
end

local function CacheDynamic(key, value)
    if not PSM._dynamicFilterCache then PSM._dynamicFilterCache = {} end
    PSM._dynamicFilterCache[key] = value
end

--------------------------------------------------------------------------------
-- CACHE KEY HELPERS
--------------------------------------------------------------------------------

-- Build a canonical string from a selected-values table (key=name, value=bool).
local function SelectedMapKey(map)
    if not map or not next(map) then return "none," end
    local parts = {}
    for k, v in pairs(map) do if v then table.insert(parts, tostring(k)) end end
    table.sort(parts)
    return table.concat(parts, ",") .. ","
end

-- Build the portion of any cache key that describes active panel filters.
local function PanelFilterFragment(panel)
    local zoneKey = ""
    if panel and panel.showPetsInMyZone and panel.currentPlayerZone then
        zoneKey = panel.currentPlayerZone .. (panel.showPetsInMyZone == "inverted" and "_inv," or ",")
    end

    local favKey = ""
    if panel and panel.showFavorites then
        favKey = (panel.showFavorites == "inverted" and "not_favorites," or "favorites,")
    end

    local raresKey = ""
    if panel and panel.showRares then
        raresKey = (panel.showRares == "inverted" and "not_rares," or "rares,")
    end

    return zoneKey, favKey, raresKey
end

function PSM.ModelsDataLoader:GenerateCacheKey()
    local panel = PSM.state.modelsPanel
    if not panel then return "" end

    local searchText = panel.searchBox:GetText() or ""
    local searchLower = searchText ~= "" and searchText:lower() or ""
    local zoneKey, favKey, raresKey = PanelFilterFragment(panel)

    local favoritesKey = SelectedMapKey(PSM.state.favoriteModels)

    local modeKey = panel.showFavorites == true and "favorites"
               or (panel.showFavorites == "inverted" and "not_favorites" or "browse")

    local tamingKey = ""
    local selRules = PSM.state.selectedTamingRules
    if selRules and next(selRules) then
        local rParts = {}
        for k, v in pairs(selRules) do table.insert(rParts, k .. "=" .. tostring(v)) end
        table.sort(rParts)
        tamingKey = table.concat(rParts, ",") .. ","
    end

    local condKey = SelectedMapKey(PSM.state.selectedConditions)
    local ownedKey = tostring(panel.showHideOwned or "none")

    return string.format("%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s",
        modeKey,
        searchLower,
        SelectedMapKey(PSM.state.selectedExpansions),
        SelectedMapKey(PSM.state.selectedLocations),
        zoneKey,
        SelectedMapKey(PSM.state.selectedModelsFamilies),
        favoritesKey,
        raresKey,
        tamingKey,
        condKey,
        ownedKey,
        #PSM.state.stablePets
    )
end

function PSM.ModelsDataLoader:_GenerateDynamicFilterCacheKey(filterType)
    local panel = PSM.state.modelsPanel
    local zoneKey, favKey, raresKey = PanelFilterFragment(panel)

    local searchKey = ""
    if panel and panel.searchBox then
        searchKey = (panel.searchBox:GetText() or ""):lower() .. ","
    end

    return string.format("dynamic_%s_%s_%s_%s_%s_%s_%s_%s",
        filterType,
        SelectedMapKey(PSM.state.selectedModelsFamilies),
        SelectedMapKey(PSM.state.selectedExpansions),
        SelectedMapKey(PSM.state.selectedLocations),
        zoneKey, favKey, raresKey,
        searchKey
    )
end

--------------------------------------------------------------------------------
-- FILTER HELPERS
--------------------------------------------------------------------------------

-- Evaluate a tristate filter value (true / "inverted" / falsy) against a bool.
local function TristateMatch(filterValue, matches)
    if not filterValue then return true end
    if filterValue == true then return matches end
    return not matches  -- "inverted"
end

-- Check whether a display entry passes the current favorites + rares + ownership filters.
local function DisplayPassesFilters(panel, displayData)
    local favOk = TristateMatch(panel.showFavorites,
        PSM.state.favoriteModels and PSM.state.favoriteModels[displayData.displayId] or false)
    if not favOk then return false end

    local isRare = false
    if displayData.npcs then
        for _, npc in ipairs(displayData.npcs) do
            if npc.classification == "Rare" or npc.classification == "Rare Elite" then
                isRare = true; break
            end
        end
    end
    if not TristateMatch(panel.showRares, isRare) then return false end

    -- Ownership filter: check if display is owned
    local isOwned = false
    for _, pet in ipairs(PSM.state.stablePets) do
        if tonumber(pet.displayID) == displayData.displayId then
            isOwned = true; break
        end
    end
    -- For "Hide Owned": true means hide owned (show not owned), inverted means show only owned
    local ownedMatch = not isOwned
    if not TristateMatch(panel.showHideOwned, ownedMatch) then return false end

    -- Taming rules filter (OR logic: show models requiring ANY of the selected rules)
    local selRules = PSM.state.selectedTamingRules
    if selRules and next(selRules) then
        local tamingSet = {}
        if displayData.taming then
            for _, rule in ipairs(displayData.taming) do tamingSet[rule] = true end
        end

        local hasActive, matchActive = false, false
        for rKey, state in pairs(selRules) do
            if state == true then
                hasActive = true
                
                -- Check model-level taming rules
                local isMatch = tamingSet[rKey]
                
                -- Special Case: Nlyeth (Look at NPC-level ConditionsData instead of model-level)
                if not isMatch and rKey == "Sliver of N'Zoth" and displayData.npcs then
                    for _, npc in ipairs(displayData.npcs) do
                        local condList = PSM.ConditionsData and PSM.ConditionsData.Get(tonumber(npc.npcId))
                        if condList then
                            for _, cName in ipairs(condList) do
                                if cName == "Sliver of N'Zoth" then isMatch = true; break end
                            end
                        end
                        if isMatch then break end
                    end
                end

                if isMatch then
                    local fSel, dSel = selRules["Florafaun"] == true, selRules["Direhorn"] == true
                    if not (tamingSet["Florafaun"] and tamingSet["Direhorn"] and ((fSel and not dSel) or (dSel and not fSel))) then
                        matchActive = true
                    end
                end
            elseif state == "inverted" then
                if tamingSet[rKey] then return false end -- Disqualified
            end
        end
        if hasActive and not matchActive then return false end
    end

    -- Conditions filter (NPC level data from ConditionsData.lua)
    local selectedConds = PSM.state.selectedConditions
    if selectedConds and next(selectedConds) then
        local userHasActive = false
        for _, state in pairs(selectedConds) do
            if state == true then userHasActive = true; break end
        end

        local atLeastOneNpcPasses = false
        if displayData.npcs then
            for _, npc in ipairs(displayData.npcs) do
                local npcID = tonumber(npc.npcId)
                if npcID then
                    local condList = PSM.ConditionsData and PSM.ConditionsData.Get(npcID)
                    local npcDisqualified = false
                    local npcMatchedActive = false

                    if condList then
                        for _, cName in ipairs(condList) do
                            local state = selectedConds[cName]
                            if state == "inverted" then npcDisqualified = true; break end
                            if state == true then npcMatchedActive = true end
                        end
                    end

                    if not npcDisqualified and (not userHasActive or npcMatchedActive) then
                        atLeastOneNpcPasses = true
                        break
                    end
                end
            end
        end
        if not atLeastOneNpcPasses then return false end
    end

    return true
end

function PSM.ModelsDataLoader:_IsFavoriteDisplay(displayId)
    return displayId and PSM.state.favoriteModels and PSM.state.favoriteModels[displayId] or false
end

function PSM.ModelsDataLoader:_IsZoneMatch(npc, playerZone)
    if not npc or not playerZone then return false end
    if npc.location then
        for loc in string.gmatch(npc.location, "[^|]+") do
            if strtrim(loc) == playerZone then return true end
        end
    end
    if npc.zones then
        if type(npc.zones) == "table" then
            for _, zone in ipairs(npc.zones) do
                if zone == playerZone then return true end
            end
        else
            if npc.zones == playerZone then return true end
        end
    end
    return false
end

function PSM.ModelsDataLoader:_IsLocationSelected(locationString, selectedLocations)
    if not locationString or #selectedLocations == 0 then return true end
    for loc in string.gmatch(locationString, "[^|]+") do
        loc = strtrim(loc)
        for _, sel in ipairs(selectedLocations) do
            if sel == loc then return true end
        end
    end
    return false
end

function PSM.ModelsDataLoader:_IsExpansionSelected(expansion, selectedExpansions)
    if not expansion or #selectedExpansions == 0 then return true end
    for _, sel in ipairs(selectedExpansions) do
        if sel == expansion then return true end
    end
    return false
end

--------------------------------------------------------------------------------
-- LOADING PIPELINE
--------------------------------------------------------------------------------

function PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
    if not PSM.state.modelsPanel or not PSM.PetModels then return end
    if PSM._modelsDebounceTimer then PSM._modelsDebounceTimer:Cancel() end
    PSM._modelsRenderCache = nil
    PSM._modelsDebounceTimer = PSM.C_Timer.NewTimer(0.01, function()
        PSM.ModelsDataLoader:_LoadModelsImmediate()
    end)
end

function PSM.ModelsDataLoader:_LoadModelsImmediate()
    local panel = PSM.state.modelsPanel
    if not panel then return end

    local cacheKey = self:GenerateCacheKey()
    if PSM._modelsRenderCache and PSM._modelsRenderCache.key == cacheKey then
        if GetTime() - PSM._modelsRenderCache.timestamp < 0.2 then
            self:_ApplyCachedModelsData(PSM._modelsRenderCache.data)
            return
        end
    end

    local modelsData = self:_CalculateModelsData()

    -- Store in cache (was missing in original)
    PSM._modelsRenderCache = { key = cacheKey, timestamp = GetTime(), data = modelsData }

    self:_ApplyCachedModelsData(modelsData)

    if PSM.ModelsFilters then
        if PSM.ModelsFilters.UpdateFilterSummary  then PSM.ModelsFilters:UpdateFilterSummary()  end
        if PSM.ModelsFilters.UpdateDynamicFilters then PSM.ModelsFilters:UpdateDynamicFilters() end
    end
end

--------------------------------------------------------------------------------
-- DATA CALCULATION
--------------------------------------------------------------------------------

-- Parses faction reaction string and returns colored faction indicators
local function formatFactionIndicator(factionReaction)
    if not factionReaction then return "" end
    local alliance, horde = factionReaction:match("%[([^,]*),([^%]]*)%]")
    if not alliance or not horde then return "" end
    alliance = alliance ~= "null" and tonumber(alliance)
    horde = horde ~= "null" and tonumber(horde)
    local result = ""
    if alliance then
        local color = alliance == -1 and {1,0,0} or alliance == 0 and {1,1,0} or {0,1,0}
        result = result .. "|cff" .. string.format("%02x%02x%02x", color[1]*255, color[2]*255, color[3]*255) .. "A|r"
    end
    if horde then
        local color = horde == -1 and {1,0,0} or horde == 0 and {1,1,0} or {0,1,0}
        result = result .. "|cff" .. string.format("%02x%02x%02x", color[1]*255, color[2]*255, color[3]*255) .. "H|r"
    end
    return result ~= "" and " " .. result or ""
end

-- Formats an NPC descriptor string for tooltip / row display
local function npcDescription(npc)
    local classification = (npc.classification and npc.classification ~= "Normal")
        and string.format("%s, ", npc.classification)
        or  ""
    local factionStr = formatFactionIndicator(npc.factionReaction)
    local factionPart = factionStr ~= "" and ", " .. factionStr or ""
    return string.format("%s: %s%s, %s, %s%s",
        npc.name,
        classification,
        npc.npcId    or "?",
        npc.location or "Unknown",
        npc.expansion or "Unknown",
        factionPart)
end

function PSM.ModelsDataLoader:_CalculateModelsData()
    local panel = PSM.state.modelsPanel

    -- Ensure pet data is loaded
    if PSM.state.isStableOpen then
        if #PSM.state.stablePets == 0 then PSM.Data:CollectStablePets() end
    else
        if #PSM.state.stablePets == 0 then PSM.Data:LoadPersistentDataForDisplay() end
    end

    -- Collect selected families
    local selectedFamilies = {}
    for familyName, selected in pairs(PSM.state.selectedModelsFamilies) do
        if selected then table.insert(selectedFamilies, familyName) end
    end

    if #selectedFamilies == 0 then
        return { allItems = {}, ownedCount = 0, totalCount = 0 }
    end

    local searchText  = panel.searchBox:GetText() or ""
    local searchLower = searchText ~= "" and searchText:lower() or ""

    -- Build flat item list, applying favorites + rares filters early
    local allItems = {}
    for _, familyName in ipairs(selectedFamilies) do
        local familyData = PSM.PetModels:GetFamilyModels(familyName)
        if familyData and familyData.displayIds then
            for _, displayData in ipairs(familyData.displayIds) do
                if not PSM.Config.EXCLUDED_DISPLAY_IDS[displayData.displayId]
                   and DisplayPassesFilters(panel, displayData) then
                     -- Cache NPC descriptions
                     for _, npc in ipairs(displayData.npcs) do
                         npc._cachedDescription = npc._cachedDescription or npcDescription(npc)
                     end
                     table.insert(allItems, {
                         displayId  = displayData.displayId,
                         npcs       = displayData.npcs,
                         taming     = displayData.taming,
                         familyName = familyName,
                         itemType   = "display_with_npcs",
                     })
                end
            end
        end
    end

    if #allItems == 0 then
        return { allItems = {}, ownedCount = 0, totalCount = 0 }
    end

    -- Search filter
    if searchLower ~= "" then
        local filtered = {}
        for _, item in ipairs(allItems) do
            local found = tostring(item.displayId):lower():find(searchLower, 1, true)
                       or (item.familyName and item.familyName:lower():find(searchLower, 1, true))
            if not found and item.npcs then
                for _, npc in ipairs(item.npcs) do
                    if (npc.name       and npc.name:lower():find(searchLower, 1, true))
                    or tostring(npc.npcId):lower():find(searchLower, 1, true)
                    or (npc.location   and npc.location:lower():find(searchLower, 1, true))
                    or (npc.expansion  and npc.expansion:lower():find(searchLower, 1, true))
                    or (npc.classification and npc.classification:lower():find(searchLower, 1, true)) then
                        found = true; break
                    end
                    if not found and npc.zones then
                        local zones = type(npc.zones) == "table" and npc.zones or {npc.zones}
                        for _, zone in ipairs(zones) do
                            if zone:lower():find(searchLower, 1, true) then found = true; break end
                        end
                    end
                    if found then break end
                end
            end
            if found then table.insert(filtered, item) end
        end
        allItems = filtered
    end

    -- Expansion filter
    if PSM.state.selectedExpansions then
        local hasSelection = next(PSM.state.selectedExpansions) ~= nil
        local filtered = {}
        for _, item in ipairs(allItems) do
            local match = false
            if item.npcs then
                for _, npc in ipairs(item.npcs) do
                    if hasSelection then
                        if npc.expansion and PSM.state.selectedExpansions[npc.expansion] then
                            match = true; break
                        end
                    else
                        -- "none selected" means exclude items that have expansion data
                        if not npc.expansion then match = true; break end
                    end
                end
            end
            if match then table.insert(filtered, item) end
        end
        allItems = filtered
    end

    -- Location filter
    if PSM.state.selectedLocations then
        local hasSelection = next(PSM.state.selectedLocations) ~= nil
        local filtered = {}
        for _, item in ipairs(allItems) do
            local match = false
            if item.npcs then
                for _, npc in ipairs(item.npcs) do
                    if hasSelection then
                        if npc.location then
                            for loc in string.gmatch(npc.location, "[^|]+") do
                                if PSM.state.selectedLocations[strtrim(loc)] then
                                    match = true; break
                                end
                            end
                        end
                    else
                        if not npc.location then match = true; break end
                    end
                    if match then break end
                end
            end
            if match then table.insert(filtered, item) end
        end
        allItems = filtered
    end

    -- Zone filter
    if panel.showPetsInMyZone and panel.currentPlayerZone then
        local filtered = {}
        for _, item in ipairs(allItems) do
            local zoneMatch = false
            if item.npcs then
                for _, npc in ipairs(item.npcs) do
                    if self:_IsZoneMatch(npc, panel.currentPlayerZone) then
                        zoneMatch = true; break
                    end
                end
            end
            if TristateMatch(panel.showPetsInMyZone, zoneMatch) then
                table.insert(filtered, item)
            end
        end
        allItems = filtered
    end

    -- Ownership count
    local ownedIds = {}
    for _, pet in ipairs(PSM.state.stablePets) do
        if pet.displayID then ownedIds[tonumber(pet.displayID)] = true end
    end
    local ownedCount = 0
    for _, item in ipairs(allItems) do
        if ownedIds[item.displayId] then ownedCount = ownedCount + 1 end
    end

    return { allItems = allItems, ownedCount = ownedCount, totalCount = #allItems }
end

--------------------------------------------------------------------------------
-- DYNAMIC FILTER QUERIES
--------------------------------------------------------------------------------

-- Iterate NPCs of a display entry, calling fn(npc) until it returns true.
local function AnyNPC(displayData, fn)
    if displayData.npcs then
        for _, npc in ipairs(displayData.npcs) do
            if fn(npc) then return true end
        end
    end
    return false
end

-- Core helper: collect unique values from NPC data across selected families,
function PSM.ModelsDataLoader:GetAvailableExpansionsForFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return {} end
    return panel.expansionList or {}
end

function PSM.ModelsDataLoader:GetAvailableLocationsForFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return {} end

    local selectedFamilies = {}
    for n, s in pairs(PSM.state.selectedModelsFamilies) do if s then table.insert(selectedFamilies, n) end end

    local selectedExpansions = {}
    for e, s in pairs(PSM.state.selectedExpansions) do if s then table.insert(selectedExpansions, e) end end

    local hasOtherFilters = #selectedFamilies > 0 or #selectedExpansions > 0

    if not hasOtherFilters then
        local result = {}
        for _, l in ipairs(panel.locationList or {}) do table.insert(result, l) end
        table.sort(result)
        return result
    end

    local result, seen = {}, {}
    for _, familyName in ipairs(panel.familiesList or {}) do
        if #selectedFamilies == 0 or PSM.state.selectedModelsFamilies[familyName] then
            local fd = PSM.PetModels:GetFamilyModels(familyName)
            if fd and fd.displayIds then
                for _, displayData in ipairs(fd.displayIds) do
                    if displayData.npcs then
                        for _, npc in ipairs(displayData.npcs) do
                            local expOk = #selectedExpansions == 0 or self:_IsExpansionSelected(npc.expansion, selectedExpansions)
                            if expOk and npc.location then
                                for loc in string.gmatch(npc.location, "[^|]+") do
                                    loc = strtrim(loc)
                                    if not seen[loc] then
                                        seen[loc] = true
                                        table.insert(result, loc)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(result)
    return result
end

function PSM.ModelsDataLoader:GetAvailableFamiliesForFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return {} end

    local selectedExpansions = {}
    for e, s in pairs(PSM.state.selectedExpansions) do if s then table.insert(selectedExpansions, e) end end

    local selectedLocations = {}
    for l, s in pairs(PSM.state.selectedLocations) do if s then table.insert(selectedLocations, l) end end

    local hasOtherFilters = #selectedExpansions > 0 or #selectedLocations > 0

    if not hasOtherFilters then return panel.familiesList or {} end

    local result, seen = {}, {}
    for _, familyName in ipairs(panel.familiesList or {}) do
        local fd = PSM.PetModels:GetFamilyModels(familyName)
        if fd and fd.displayIds then
            local matched = false
            for _, displayData in ipairs(fd.displayIds) do
                if displayData.npcs then
                    for _, npc in ipairs(displayData.npcs) do
                        local expOk = #selectedExpansions == 0 or self:_IsExpansionSelected(npc.expansion, selectedExpansions)
                        local locOk = #selectedLocations == 0 or self:_IsLocationSelected(npc.location, selectedLocations)
                        if expOk and locOk then matched = true; break end
                    end
                end
                if matched then break end
            end
            if matched and not seen[familyName] then
                seen[familyName] = true
                table.insert(result, familyName)
            end
        end
    end
    table.sort(result)
    return result
end

function PSM.ModelsDataLoader:GetAvailableExpansionsForFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return {} end

    local selectedFamilies = {}
    for n, s in pairs(PSM.state.selectedModelsFamilies) do if s then table.insert(selectedFamilies, n) end end

    local selectedLocations = {}
    for l, s in pairs(PSM.state.selectedLocations) do if s then table.insert(selectedLocations, l) end end

    local hasOtherFilters = #selectedFamilies > 0 or #selectedLocations > 0

    if not hasOtherFilters then
        local result = {}
        for _, e in ipairs(panel.expansionList or {}) do table.insert(result, e) end
        SortExpansions(result)
        return result
    end

    local result, seen = {}, {}
    for _, familyName in ipairs(panel.familiesList or {}) do
        if #selectedFamilies == 0 or PSM.state.selectedModelsFamilies[familyName] then
            local fd = PSM.PetModels:GetFamilyModels(familyName)
            if fd and fd.displayIds then
                for _, displayData in ipairs(fd.displayIds) do
                    if displayData.npcs then
                        for _, npc in ipairs(displayData.npcs) do
                            local locOk = #selectedLocations == 0 or self:_IsLocationSelected(npc.location, selectedLocations)
                            if locOk and npc.expansion and not seen[npc.expansion] then
                                seen[npc.expansion] = true
                                table.insert(result, npc.expansion)
                            end
                        end
                    end
                end
            end
        end
    end
    SortExpansions(result)
    return result
end

function PSM.ModelsDataLoader:GetAvailableLocationsForFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return {} end

    local selectedFamilies = {}
    for n, s in pairs(PSM.state.selectedModelsFamilies) do if s then table.insert(selectedFamilies, n) end end

    local selectedExpansions = {}
    for e, s in pairs(PSM.state.selectedExpansions) do if s then table.insert(selectedExpansions, e) end end

    local hasOtherFilters = #selectedFamilies > 0 or #selectedExpansions > 0

    if not hasOtherFilters then
        local result = {}
        for _, l in ipairs(panel.locationList or {}) do table.insert(result, l) end
        table.sort(result)
        return result
    end

    local result, seen = {}, {}
    for _, familyName in ipairs(panel.familiesList or {}) do
        if #selectedFamilies == 0 or PSM.state.selectedModelsFamilies[familyName] then
            local fd = PSM.PetModels:GetFamilyModels(familyName)
            if fd and fd.displayIds then
                for _, displayData in ipairs(fd.displayIds) do
                    if displayData.npcs then
                        for _, npc in ipairs(displayData.npcs) do
                            local expOk = #selectedExpansions == 0 or self:_IsExpansionSelected(npc.expansion, selectedExpansions)
                            if expOk and npc.location then
                                for loc in string.gmatch(npc.location, "[^|]+") do
                                    loc = strtrim(loc)
                                    if not seen[loc] then
                                        seen[loc] = true
                                        table.insert(result, loc)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(result)
    return result
end

----------------------------------------------------------------------------------------------------------------
-- APPLY TO UI
--------------------------------------------------------------------------------

function PSM.ModelsDataLoader:_ApplyCachedModelsData(modelsData)
    local panel = PSM.state.modelsPanel
    if not panel then return end

    if modelsData.totalCount == 0 then
        panel.allModels = {}
        panel.infoText:SetText("No matching display IDs | 0 pages")
        panel.pageText:SetText("Page 0 of 0")
        -- Still need to hide rows cleanly:
        PSM.ModelsPanel:UpdateVisibleRows()
        return
    end

    panel.allModels = {}
    for _, item in ipairs(modelsData.allItems) do
        if item.itemType == "display_with_npcs" then
            table.insert(panel.allModels, item)
        end
    end

    local totalPages = math.ceil(#panel.allModels /
        PSM.ModelsPanel.MODELS_CONFIG.PETS_PER_PAGE)
    local savedPage = PSM.state.modelsPanelCurrentPage or 1
    panel.currentPage = (savedPage >= 1 and savedPage <= totalPages)
        and savedPage or 1

    panel.infoText:SetText(string.format("%d display IDs | %d owned",
        #panel.allModels, modelsData.ownedCount))

    -- Call UpdateModelsPanelLayout to refresh the view
    PSM.ModelsPanel:UpdateModelsPanelLayout()
end