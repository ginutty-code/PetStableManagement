-- PetModels.lua

local addonName = "PetStableManagement"

_G.PSM = _G.PSM or {}
local M = _G.PSM.PetModels or {}
_G.PSM.PetModels = M

-- Returns processed family data, or nil if not found
function M:GetFamilyModels(familyName)
    if not familyName then return nil end

    -- Return cached result
    if self[familyName] and self[familyName].displayIds then
        return self[familyName]
    end

    -- Check if raw data exists on self
    local raw = self[familyName]
    if raw and type(raw) == "table" then
        return self:_ProcessRawData(familyName, raw)
    end

    -- Check external globals in original order
    if _G.PetData and _G.PetData[familyName] and type(_G.PetData[familyName]) == "table" then
        return self:_ProcessRawData(familyName, _G.PetData[familyName])
    end

    if _G.ModelsData and _G.ModelsData[familyName] and type(_G.ModelsData[familyName]) == "table" then
        return self:_ProcessRawData(familyName, _G.ModelsData[familyName])
    end

    return nil
end

-- Parses raw displayId->npcId->npcData into a normalised structure
--   1. Skip the "taming" key when iterating displayId → npcMap pairs
--   2. Attach raw[displayId].taming (if present) to the display entry

function M:_ProcessRawData(familyName, raw)
    local displayIdMap = {}

    for displayId, npcMap in pairs(raw) do
        -- Skip the family-level taming key (not a display ID)
        if displayId == "taming" then
            -- (family-level taming is not currently used, skip silently)
        elseif type(npcMap) == "table" then
            local id = tonumber(displayId) or displayId
            local entry = displayIdMap[id] or { displayId = id, npcs = {} }
            displayIdMap[id] = entry

            -- Attach display-ID-level taming if present (mixed-key structure)
            if npcMap.taming then
                entry.taming = npcMap.taming
            end

            for npcId, d in pairs(npcMap) do
                -- Skip the taming key inside the display ID record
                if npcId ~= "taming" then
                    local npc
                    if type(d) == "table" and d[1] ~= nil then
                        -- Compact array format: { name, location, expansion, [classification,] factionReaction, nameKeeper }
                        local factionReaction
                        local classification
                        if #d >= 4 then
                            if type(d[4]) == "string" and d[4]:sub(1,1) == "[" then
                                factionReaction = d[4]
                                classification  = nil
                            else
                                classification = d[4]
                                if #d >= 5 and type(d[5]) == "string" and d[5]:sub(1,1) == "[" then
                                    factionReaction = d[5]
                                end
                            end
                        end
                        npc = {
                            npcId           = tonumber(npcId) or npcId,
                            name            = d[1],
                            location        = d[2],
                            expansion       = d[3],
                            classification  = classification,
                            factionReaction = factionReaction,
                            zones           = d.zones,
                            nameKeeper      = d[6] or false,
                            level           = d.level,
                        }
                    else
                        -- Legacy key-value format
                        npc = {
                            npcId           = tonumber(npcId) or npcId,
                            name            = d and d.name,
                            location        = d and (d.location or d.loc),
                            expansion       = d and (d.expansion or d.exp),
                            classification  = d and (d.classification or d.class),
                            zones           = d and d.zones,
                            nameKeeper      = d and (d.nameKeeper or d.name_keeper or false),
                            level           = d and d.level,
                        }
                    end
                    table.insert(entry.npcs, npc)
                end
            end
        end
    end

    -- Flatten and sort by displayId
    local displayIds = {}
    for _, v in pairs(displayIdMap) do
        table.insert(displayIds, v)
    end
    table.sort(displayIds, function(a, b) return a.displayId < b.displayId end)

    self[familyName] = { displayIds = displayIds }
    return self[familyName]
end

-- Returns the sorted list of all known family names
function M:GetAvailableFamilies()
    local seen = {}

    for name, v in pairs(self) do
        if type(v) == "table" and name ~= "families" then
            seen[name] = true
        end
    end

    if _G.PetModelsData then
        for name, v in pairs(_G.PetModelsData) do
            if type(v) == "table" and name ~= "families" then
                seen[name] = true
            end
        end
    end

    if _G.PetData then
        for name in pairs(_G.PetData) do
            if type(_G.PetData[name]) == "table" then
                seen[name] = true
            end
        end
    end

    if _G.ModelsData then
        for name in pairs(_G.ModelsData) do
            if type(_G.ModelsData[name]) == "table" then
                seen[name] = true
            end
        end
    end

    local result = {}
    for name in pairs(seen) do table.insert(result, name) end
    table.sort(result)
    return result
end

-- Returns the number of display IDs for a family
function M:GetModelCount(familyName)
    local f = self:GetFamilyModels(familyName)
    return f and #f.displayIds or 0
end

-- Returns the displayData entry for a specific display ID, or nil
function M:GetModelInfo(familyName, displayId)
    local f = self:GetFamilyModels(familyName)
    if not f then return nil end
    local id = tostring(displayId)
    for _, d in ipairs(f.displayIds) do
        if tostring(d.displayId) == id then return d end
    end
end

-- Returns the NPC list for a specific display ID, or {}
function M:GetAllPetsForDisplay(familyName, displayId)
    local info = self:GetModelInfo(familyName, displayId)
    return info and info.npcs or {}
end

-- Processes all known families and caches them; returns count and elapsed ms
function M:PreloadAllFamilies()
    local t0, count = debugprofilestop(), 0
    for _, name in ipairs(self:GetAvailableFamilies()) do
        if self:GetFamilyModels(name) then count = count + 1 end
    end
    local elapsed = debugprofilestop() - t0
    print(string.format("[%s] Preloaded %d families in %.2fms", addonName, count, elapsed))
    return count, elapsed
end

-- Returns a snapshot of load progress
function M:GetLoadingStats()
    local families = self:GetAvailableFamilies()
    local total, loaded = #families, 0
    for _, name in ipairs(families) do
        if self[name] and self[name].displayIds then loaded = loaded + 1 end
    end
    return {
        totalFamilies   = total,
        loadedFamilies  = loaded,
        pendingFamilies = total - loaded,
        loadPercentage  = total > 0 and (loaded / total * 100) or 0,
    }
end

-- Evicts all cached family data
function M:ClearCache()
    for _, name in ipairs(self:GetAvailableFamilies()) do
        self[name] = nil
    end
end
