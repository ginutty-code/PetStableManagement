-- ModelsBrowser/ModelsFilters.lua
-- Filtering system for the Pet Models Browser

local addonName = "PetStableManagement"

_G.PSM = _G.PSM or {}
local PSM = _G.PSM

PSM.ModelsFilters = PSM.ModelsFilters or {}

--------------------------------------------------------------------------------
-- EXOTIC FAMILIES
--------------------------------------------------------------------------------

local EXOTIC_FAMILIES = {
    ["Aqiri"] = true, ["Carapid"] = true, ["Chimaera"] = true,
    ["Core Hound"] = true, ["Devilsaur"] = true, ["Pterrordax"] = true,
    ["Shale Beast"] = true, ["Spirit Beast"] = true, ["Stone Hound"] = true,
    ["Water Strider"] = true, ["Whiptail"] = true, ["Worm"] = true,
}

function PSM.ModelsFilters:IsFamilyExotic(familyName)
    return familyName and EXOTIC_FAMILIES[familyName] or false
end

--------------------------------------------------------------------------------
-- TRISTATE CHECKBOX HELPER
--------------------------------------------------------------------------------

-- Create a tristate CheckButton. Cycles: nil → true → "inverted" → nil.
-- @param parent      parent frame
-- @param anchorTo    frame to anchor TOPLEFT/BOTTOMLEFT from (or nil for absolute)
-- @param label       text shown next to the checkbox
-- @param onChanged   function(triState) called after each state change
local function CreateTristateCheckbox(parent, anchorTo, label, onChanged)
    local cb = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    cb:SetSize(20, 20)
    if anchorTo and anchorTo == parent.showOnlyFrame then
        cb:SetPoint("TOPLEFT", anchorTo, "TOPLEFT", 8, -30)
    elseif anchorTo then
        cb:SetPoint("TOPLEFT", anchorTo, "BOTTOMLEFT", 0, -5)
    else
        cb:SetPoint("TOPLEFT", 18, -19)
    end

    cb.text = cb:CreateFontString(nil, "OVERLAY")
    cb.text:SetFont("Fonts\\FRIZQT__.TTF", 10)
    cb.text:SetPoint("LEFT", cb, "RIGHT", 5, 0)
    cb.text:SetText(label)
    cb.triState = nil
    cb:SetHitRectInsets(0, -150, 0, 0)

    cb:SetScript("OnClick", function(self)
        local check = self:GetCheckedTexture()
        if self.triState == nil then
            self.triState = true
            self:SetChecked(true)
            check:SetAlpha(1)
            if self.invertedTexture then self.invertedTexture:Hide() end
        elseif self.triState == true then
            self.triState = "inverted"
            self:SetChecked(true)
            check:SetAlpha(0)
            if not self.invertedTexture then
                self.invertedTexture = self:CreateTexture(nil, "OVERLAY")
                self.invertedTexture:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
                self.invertedTexture:SetSize(16, 16)
                self.invertedTexture:SetPoint("CENTER", self, "CENTER", 0, 0)
            end
            self.invertedTexture:Show()
        else
            self.triState = nil
            self:SetChecked(false)
            check:SetAlpha(1)
            if self.invertedTexture then self.invertedTexture:Hide() end
        end
        if onChanged then onChanged(self.triState) end
    end)

    PSM.UI:ApplyElvUISkin(cb, "checkbox")
    return cb
end

-- Reset a tristate checkbox to the nil (off) state without firing OnClick.
local function ResetTristateCheckbox(cb)
    if not cb then return end
    cb.triState = nil
    cb:SetChecked(false)
    cb:GetCheckedTexture():SetAlpha(1)
    if cb.invertedTexture then cb.invertedTexture:Hide() end
end

-- Initialize a tristate checkbox visual state from loaded value
local function InitTristateCheckboxFromState(checkbox, state)
    if state == nil then return end
    checkbox.triState = state
    checkbox:SetChecked(true)
    if state == "inverted" then
        checkbox:GetCheckedTexture():SetAlpha(0)
        if not checkbox.invertedTexture then
            checkbox.invertedTexture = checkbox:CreateTexture(nil, "OVERLAY")
            checkbox.invertedTexture:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
            checkbox.invertedTexture:SetSize(16, 16)
            checkbox.invertedTexture:SetPoint("CENTER", checkbox, "CENTER", 0, 0)
        end
        checkbox.invertedTexture:Show()
    else
        checkbox:GetCheckedTexture():SetAlpha(1)
    end
end

local function ReloadAndSummarise()
    PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
    PSM.ModelsFilters:UpdateFilterSummary()
end

--------------------------------------------------------------------------------
-- TRISTATE TOGGLES
--------------------------------------------------------------------------------

function PSM.ModelsFilters:CreateRaresToggle(panel)
    -- Load saved state directly from SavedVariables
    local db = PetStableManagementDB and PetStableManagementDB.filters
    local savedState = db and db.showRares
    panel.showRares = savedState
    PSM.state.showRares = savedState
    panel.raresToggle = CreateTristateCheckbox(panel, panel.showOnlyFrame, "Rares", function(state)
        panel.showRares = state
        PSM.state.showRares = state
        PetStableManagementDB.filters = PetStableManagementDB.filters or {}
        PetStableManagementDB.filters.showRares = state
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)
    -- Initialize checkbox state from loaded value
    InitTristateCheckboxFromState(panel.raresToggle, panel.showRares)
end

function PSM.ModelsFilters:CreateFavoritesToggle(panel)
    -- Load saved state directly from SavedVariables
    local db = PetStableManagementDB and PetStableManagementDB.filters
    local savedState = db and db.showFavorites
    panel.showFavorites = savedState
    PSM.state.showFavorites = savedState
    panel.favoritesToggle = CreateTristateCheckbox(panel, panel.raresToggle, "Favorites", function(state)
        panel.showFavorites = state
        PSM.state.showFavorites = state
        PetStableManagementDB.filters = PetStableManagementDB.filters or {}
        PetStableManagementDB.filters.showFavorites = state
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)
    -- Initialize checkbox state from loaded value
    InitTristateCheckboxFromState(panel.favoritesToggle, panel.showFavorites)
end

function PSM.ModelsFilters:CreatePetsInMyZoneToggle(panel)
    -- Load saved state directly from SavedVariables
    local db = PetStableManagementDB and PetStableManagementDB.filters
    local savedState = db and db.showPetsInMyZone
    panel.showPetsInMyZone = savedState
    PSM.state.showPetsInMyZone = savedState
    panel.petsInMyZoneToggle = CreateTristateCheckbox(panel, panel.hideOwnedToggle, "Pets in My Zone", function(state)
        panel.currentPlayerZone = (state ~= nil) and PSM.ModelsFilters:GetPlayerZone() or nil
        panel.showPetsInMyZone  = state
        PSM.state.showPetsInMyZone = state
        PetStableManagementDB.filters = PetStableManagementDB.filters or {}
        PetStableManagementDB.filters.showPetsInMyZone = state
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)
    -- Initialize checkbox state from loaded value
    InitTristateCheckboxFromState(panel.petsInMyZoneToggle, panel.showPetsInMyZone)
end

function PSM.ModelsFilters:CreateHideOwnedToggle(panel)
    -- Load saved state directly from SavedVariables
    local db = PetStableManagementDB and PetStableManagementDB.filters
    local savedState = db and db.showHideOwned
    panel.showHideOwned = savedState
    PSM.state.showHideOwned = savedState
    panel.hideOwnedToggle = CreateTristateCheckbox(panel, panel.favoritesToggle, "Owned", function(state)
        -- Logic change: true = show only owned, inverted = hide owned
        if state == true then
            panel.showHideOwned = "inverted"
        elseif state == "inverted" then
            panel.showHideOwned = true
        else
            panel.showHideOwned = nil
        end
        PSM.state.showHideOwned = panel.showHideOwned
        PetStableManagementDB.filters = PetStableManagementDB.filters or {}
        PetStableManagementDB.filters.showHideOwned = panel.showHideOwned
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)
    -- Initialize checkbox state from loaded value, mapping the logic
    local mappedState
    if panel.showHideOwned == "inverted" then
        mappedState = true
    elseif panel.showHideOwned == true then
        mappedState = "inverted"
    else
        mappedState = nil
    end
    InitTristateCheckboxFromState(panel.hideOwnedToggle, mappedState)
end

function PSM.ModelsFilters:GetPlayerZone()
    local zone = GetRealZoneText()
    return (zone and zone ~= "") and zone or nil
end

--------------------------------------------------------------------------------
-- SEARCH BOX
--------------------------------------------------------------------------------

function PSM.ModelsFilters:CreateSearchBox(panel)
    PSM.PanelManager:CreateSearchBox(panel, function(searchText)
        ReloadAndSummarise()
    end, {
        placeholder = "Search models...",
    })
end

--------------------------------------------------------------------------------
-- AUXILIARY BUTTONS
--------------------------------------------------------------------------------

function PSM.ModelsFilters:CreatePetRouletteButton(panel)
    panel.petRouletteButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.petRouletteButton:SetPoint("TOPRIGHT", panel.searchBox, "TOPLEFT", -10, 0)
    panel.petRouletteButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    panel.petRouletteButton:SetText("Pet Roulette")
    panel.petRouletteButton:SetNormalFontObject("GameFontNormalSmall")
    panel.petRouletteButton:SetScript("OnClick", function() PSM.PetRoulette:SelectPetRoulette() end)
    PSM.UI:ApplyElvUISkin(panel.petRouletteButton, "button")
end

function PSM.ModelsFilters:CreateSpecialTamesButton(panel)
    panel.specialTamesButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.specialTamesButton:SetPoint("BOTTOMLEFT", panel.showOnlyFrame, "TOPLEFT", 0, 5)
    panel.specialTamesButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    panel.specialTamesButton:SetText("Special Tames")
    panel.specialTamesButton:SetNormalFontObject("GameFontNormalSmall")
    panel.specialTamesButton:SetScript("OnClick", function()
        if PSM.SpecialTames then PSM.SpecialTames:Toggle() end
    end)
    PSM.UI:ApplyElvUISkin(panel.specialTamesButton, "button")
end

function PSM.ModelsFilters:CreateAbilityBrowserButton(panel)
    panel.abilityBrowserButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.abilityBrowserButton:SetPoint("BOTTOMRIGHT", panel.showOnlyFrame, "TOPRIGHT", 0, 5)
    panel.abilityBrowserButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    panel.abilityBrowserButton:SetText("Ability Browser")
    panel.abilityBrowserButton:SetNormalFontObject("GameFontNormalSmall")
    panel.abilityBrowserButton:SetScript("OnClick", function()
        if PSM.AbilityBrowser then PSM.AbilityBrowser:Toggle() end
    end)
    PSM.UI:ApplyElvUISkin(panel.abilityBrowserButton, "button")
end

function PSM.ModelsFilters:CreateResetFiltersButton(panel)
    panel.resetFiltersButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    panel.resetFiltersButton:SetPoint("TOPLEFT", panel.searchBox, "TOPRIGHT", 10, 0)
    panel.resetFiltersButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    panel.resetFiltersButton:SetText("Reset Filters")
    panel.resetFiltersButton:SetNormalFontObject("GameFontNormalSmall")
    panel.resetFiltersButton:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:SetText("Reset all filters", 1, 1, 1)
        for _, line in ipairs({
            "All Families selected", "All Expansions selected", "All Locations selected",
            "Rares: OFF", "Favorites: OFF", "Pets in My Zone: OFF", "Owned: OFF",
            "Clear search box", "Return to first page",
        }) do GameTooltip:AddLine(line, 0.5, 0.5, 0.5) end
        GameTooltip:Show()
    end)
    panel.resetFiltersButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    panel.resetFiltersButton:SetScript("OnClick", function()
        PSM.ModelsFilters:ResetAllFilters(panel)
    end)
    PSM.UI:ApplyElvUISkin(panel.resetFiltersButton, "button")
end

--------------------------------------------------------------------------------
-- RESET ALL FILTERS
--------------------------------------------------------------------------------

-- Initialise (or re-initialise) a state map from a list, setting every entry true.
local function SelectAll(stateMap, list)
    for k in pairs(stateMap) do stateMap[k] = nil end
    for _, v in ipairs(list) do stateMap[v] = true end
end

-- Repopulate checkboxes for every tab, then restore the active tab.
local function RepopulateAllTabs(panel)
    local saved = panel.currentFilterType
    for _, t in ipairs({"families", "expansions", "locations"}) do
        panel.currentFilterType = t
        PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
    end
    panel.currentFilterType = saved
    PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
end

function PSM.ModelsFilters:ResetAllFilters(panel)
    panel.showRares        = false
    panel.showFavorites    = false
    panel.showPetsInMyZone = false
    panel.showHideOwned    = false
    panel.currentPlayerZone= nil

    -- Reset state variables
    PSM.state.showRares = nil
    PSM.state.showFavorites = nil
    PSM.state.showPetsInMyZone = nil
    PSM.state.showHideOwned = nil
    PSM.state.selectedTamingRules = nil
    PSM.state.selectedConditions = nil

    -- Persist resets to SavedVariables
    if PetStableManagementDB and PetStableManagementDB.filters then
        PetStableManagementDB.filters.showRares = nil
        PetStableManagementDB.filters.showFavorites = nil
        PetStableManagementDB.filters.showPetsInMyZone = nil
        PetStableManagementDB.filters.showHideOwned = nil
        PetStableManagementDB.filters.selectedTamingRules = nil
        PetStableManagementDB.filters.selectedConditions = nil
    end

    ResetTristateCheckbox(panel.raresToggle)
    ResetTristateCheckbox(panel.favoritesToggle)
    ResetTristateCheckbox(panel.petsInMyZoneToggle)
    ResetTristateCheckbox(panel.hideOwnedToggle)

    if panel.searchBox then panel.searchBox:SetText("") end

    if panel.familiesList  then SelectAll(PSM.state.selectedModelsFamilies, panel.familiesList)  end
    if panel.expansionList then SelectAll(PSM.state.selectedExpansions,      panel.expansionList) end
    if panel.locationList  then SelectAll(PSM.state.selectedLocations,       panel.locationList)  end

    RepopulateAllTabs(panel)
    ReloadAndSummarise()

    if PSM.SpecialTames and PSM.SpecialTames.ResetInternalState then
        PSM.SpecialTames:ResetInternalState()
    end

    if panel.currentPage and panel.currentPage ~= 1 then
        panel.currentPage = 1
        PSM.state.modelsPanelCurrentPage = 1
        _G.PSM_modelsPanelCurrentPage = 1
        if PSM.ModelsPanel and PSM.ModelsPanel.UpdateVisibleRows then
            PSM.ModelsPanel:UpdateVisibleRows()
        end
    end
end

--------------------------------------------------------------------------------
-- INFO / SUMMARY TEXT
--------------------------------------------------------------------------------

function PSM.ModelsFilters:CreateInfoText(panel)
    panel.infoText = panel:CreateFontString(nil, "OVERLAY")
    panel.infoText:SetFont("Fonts\\FRIZQT__.TTF", 10)
    panel.infoText:SetPoint("TOP", panel.searchBox, "BOTTOM", 0, -5)
    panel.infoText:SetText("Loading...")
end

function PSM.ModelsFilters:CreateFilterSummaryText(panel)
    panel.filterSummaryText = panel:CreateFontString(nil, "OVERLAY")
    panel.filterSummaryText:SetFont("Fonts\\FRIZQT__.TTF", 10)
    panel.filterSummaryText:SetPoint("TOP", panel.infoText, "BOTTOM", 0, -2)
    panel.filterSummaryText:SetText("")
    panel.filterSummaryText:SetTextColor(0.5, 0.5, 0.5)
end

--------------------------------------------------------------------------------
-- UNIFIED FILTER SYSTEM
--------------------------------------------------------------------------------

-- Ensure a state map is populated from a list if it is currently empty.
local function InitStateIfEmpty(stateMap, list)
    if not next(stateMap) then
        for _, v in ipairs(list) do stateMap[v] = true end
    end
end

function PSM.ModelsFilters:BuildUnifiedFilterSystem(panel, modelsConfig)
    local families     = PSM.PetModels:GetAvailableFamilies()
    local allExpansions, allLocations = {}, {}

    for _, familyName in ipairs(families) do
        local fd = PSM.PetModels:GetFamilyModels(familyName)
        if fd and fd.displayIds then
            for _, dd in ipairs(fd.displayIds) do
                if dd.npcs then
                    for _, npc in ipairs(dd.npcs) do
                        if npc.expansion then allExpansions[npc.expansion] = true end
                        if npc.location  then
                            for loc in string.gmatch(npc.location, "[^;]+") do
                                allLocations[strtrim(loc)] = true
                            end
                        end
                    end
                end
            end
        end
    end

    -- Build sorted lists — reuse EXPANSION_ORDER from ModelsDataLoader
    local expansionList = {}
    for e in pairs(allExpansions) do table.insert(expansionList, e) end
    table.sort(expansionList, function(a, b)
        -- Delegate to the shared constant in ModelsDataLoader
        local order = PSM.ModelsDataLoader._EXPANSION_ORDER or {}
        return (order[a] or 999) < (order[b] or 999)
    end)

    local locationList = {}
    for l in pairs(allLocations) do table.insert(locationList, l) end
    table.sort(locationList)

    -- Initialise state (only if empty — preserves saved selections)
    InitStateIfEmpty(PSM.state.selectedModelsFamilies, families)
    InitStateIfEmpty(PSM.state.selectedExpansions,      expansionList)
    InitStateIfEmpty(PSM.state.selectedLocations,       locationList)

    -- Store for use by other functions
    panel.familiesList  = families
    panel.expansionList = expansionList
    panel.locationList  = locationList

    ---------- Filter frame ----------
    panel.unifiedFilterFrame = CreateFrame("Frame", nil, panel, "BackdropTemplate")
    panel.unifiedFilterFrame:SetPoint("TOPLEFT", panel.showOnlyFrame, "BOTTOMLEFT", 0, -5)
    panel.unifiedFilterFrame:SetSize(180, 535)
    panel.unifiedFilterFrame:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile=true, tileSize=16, edgeSize=16,
        insets={left=4, right=4, top=4, bottom=4},
    })
    panel.unifiedFilterFrame:SetBackdropColor(unpack(PSM.Config.COLORS.BACKGROUND))
    panel.unifiedFilterFrame:SetBackdropBorderColor(0.75, 0.75, 0.75, 1) -- silver border

    ---------- Tab buttons ----------
    local tabFrame = CreateFrame("Frame", nil, panel.unifiedFilterFrame)
    tabFrame:SetPoint("TOPLEFT", panel.unifiedFilterFrame, "TOPLEFT", 5, -5)
    tabFrame:SetSize(150, 20)

    local tabDefs = {
        { key="families",   label="Families"   },
        { key="expansions", label="Expansions" },
        { key="locations",  label="Locations"  },
    }
    local tabs = {}
    local prevTab = nil

    -- Forward-declare selectExoticBtn so OnTabClick can capture it (will be assigned later)
    local selectExoticBtn

    -- Visual update helper for tabs
    local function UpdateTabVisuals()
        for key, btn in pairs(tabs) do
            local active = (panel.currentFilterType == key)
            if btn.bg then
                btn.bg:SetColorTexture(unpack(active and PSM.Config.TAB.ACTIVE_BG or PSM.Config.TAB.INACTIVE_BG))
            end
            if btn.label then
                btn.label:SetTextColor(unpack(active and PSM.Config.TAB.ACTIVE_TEXT or PSM.Config.TAB.INACTIVE_TEXT))
            end
            if btn.topLine then    btn.topLine:SetShown(active)    end
            if btn.bottomLine then btn.bottomLine:SetShown(active) end
        end
    end

    -- Tab click handler
    local function OnTabClick(key, hideExotic)
        panel.currentFilterType = key
        UpdateTabVisuals()
        PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
        PSM.ModelsFilters:UpdateDynamicFilters()
        if hideExotic then selectExoticBtn:Hide() else selectExoticBtn:Show() end
    end

    for _, def in ipairs(tabDefs) do
        local t = CreateFrame("Frame", nil, tabFrame)
        t:SetSize(55, 20)
        if prevTab then t:SetPoint("LEFT", prevTab, "RIGHT", 3, 0)
        else            t:SetPoint("LEFT", tabFrame, "LEFT", 0, 0) end
        prevTab = t

        -- Enable mouse for button-like behavior
        t:EnableMouse(true)

        -- Background (inactive by default)
        local bg = t:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(PSM.Config.TAB.INACTIVE_BG))
        t.bg = bg

        -- Top/bottom border lines (visible when active)
        local topLine = t:CreateTexture(nil, "BORDER")
        topLine:SetPoint("TOPLEFT", t, "TOPLEFT", 2, 0)
        topLine:SetPoint("TOPRIGHT", t, "TOPRIGHT", -2, 0)
        topLine:SetHeight(1)
        topLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
        topLine:Hide()
        t.topLine = topLine

        local bottomLine = t:CreateTexture(nil, "BORDER")
        bottomLine:SetPoint("BOTTOMLEFT", t, "BOTTOMLEFT", 2, 0)
        bottomLine:SetPoint("BOTTOMRIGHT", t, "BOTTOMRIGHT", -2, 0)
        bottomLine:SetHeight(1)
        bottomLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
        bottomLine:Hide()
        t.bottomLine = bottomLine

        -- Label
        local label = t:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        label:SetPoint("CENTER")
        label:SetText(def.label)
        label:SetTextColor(unpack(PSM.Config.TAB.INACTIVE_TEXT))
        t.label = label

        -- Capture values for closure to avoid loop variable reuse
        do
            local key = def.key
            local hideEx = (def.key ~= "families")
            local lbl = label

            -- Click handler
            t:SetScript("OnMouseDown", function(self)
                OnTabClick(key, hideEx)
            end)

            -- Hover update via mouse enter/leave
            t:SetScript("OnEnter", function(self)
                if panel.currentFilterType ~= key then
                    lbl:SetTextColor(unpack(PSM.Config.TAB.ACTIVE_TEXT))
                end
            end)
            t:SetScript("OnLeave", function(self)
                if panel.currentFilterType ~= key then
                    lbl:SetTextColor(unpack(PSM.Config.TAB.INACTIVE_TEXT))
                end
            end)
        end

        -- Hover update via mouse enter/leave
        t:SetScript("OnEnter", function(self)
            if panel.currentFilterType ~= keyForHover then
                label:SetTextColor(unpack(PSM.Config.TAB.ACTIVE_TEXT))
            end
        end)
        t:SetScript("OnLeave", function(self)
            if panel.currentFilterType ~= keyForHover then
                label:SetTextColor(unpack(PSM.Config.TAB.INACTIVE_TEXT))
            end
        end)

        tabs[def.key] = t
    end

    panel.tabButtons = tabs

    ---------- All / None / Exotic buttons ----------
    local function MakeFilterButton(label, anchor, onClick)
        local b = CreateFrame("Button", nil, panel.unifiedFilterFrame, "UIPanelButtonTemplate")
        b:SetPoint("LEFT", anchor, "RIGHT", 5, 0)
        b:SetSize(50, 20)
        b:SetText(label)
        b:SetNormalFontObject("GameFontNormalSmall")
        b:SetScript("OnClick", onClick)
        PSM.UI:ApplyElvUISkin(b, "button")
        return b
    end

    local selectAllBtn = CreateFrame("Button", nil, panel.unifiedFilterFrame, "UIPanelButtonTemplate")
    selectAllBtn:SetPoint("TOPLEFT", tabFrame, "BOTTOMLEFT", 5, -5)
    selectAllBtn:SetSize(50, 20)
    selectAllBtn:SetText("All")
    selectAllBtn:SetNormalFontObject("GameFontNormalSmall")
    selectAllBtn:SetScript("OnClick", function()
        if     panel.currentFilterType == "families"   then SelectAll(PSM.state.selectedModelsFamilies, families)
        elseif panel.currentFilterType == "expansions" then SelectAll(PSM.state.selectedExpansions, expansionList)
        elseif panel.currentFilterType == "locations"  then SelectAll(PSM.state.selectedLocations,  locationList)
        end
        PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)
    PSM.UI:ApplyElvUISkin(selectAllBtn, "button")

    local selectNoneBtn = MakeFilterButton("None", selectAllBtn, function()
        if     panel.currentFilterType == "families"   then PSM.state.selectedModelsFamilies = {}
        elseif panel.currentFilterType == "expansions" then PSM.state.selectedExpansions      = {}
        elseif panel.currentFilterType == "locations"  then PSM.state.selectedLocations       = {}
        end
        PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)

    selectExoticBtn = MakeFilterButton("Exotic", selectNoneBtn, function() end)
    selectExoticBtn.isExoticOnly = false
    panel.selectExoticBtn = selectExoticBtn

    -- Initialize exotic filter button state based on current family selections
    -- This detects whether exotic-only, non-exotic, or all families mode is active
    local function InitializeExoticFilterButton()
        local selected, exoticOnly, nonExoticOnly = 0, true, true
        for name, on in pairs(PSM.state.selectedModelsFamilies) do
            if on then
                selected = selected + 1
                if PSM.ModelsFilters:IsFamilyExotic(name) then
                    nonExoticOnly = false
                else
                    exoticOnly = false
                end
            end
        end
        local total = #families
        if selected ~= total then
            if exoticOnly and selected > 0 then
                -- Exotic only mode
                selectExoticBtn.isExoticOnly = true
                selectExoticBtn:SetText("Exotic")
            elseif nonExoticOnly and selected > 0 then
                -- Non-exotic (inverted) mode
                selectExoticBtn.isExoticOnly = false
                selectExoticBtn:SetText("!Exotic")
            else
                -- Mixed or default
                selectExoticBtn.isExoticOnly = false
                selectExoticBtn:SetText("Exotic")
            end
        else
            -- All families selected
            selectExoticBtn.isExoticOnly = false
            selectExoticBtn:SetText("Exotic")
        end
    end

    selectExoticBtn:SetScript("OnClick", function()
        if panel.currentFilterType == "families" then
            if selectExoticBtn.isExoticOnly then
                for _, n in ipairs(families) do
                    PSM.state.selectedModelsFamilies[n] = not PSM.ModelsFilters:IsFamilyExotic(n)
                end
                selectExoticBtn.isExoticOnly = false
                selectExoticBtn:SetText("!Exotic")
            else
                for _, n in ipairs(families) do
                    PSM.state.selectedModelsFamilies[n] = PSM.ModelsFilters:IsFamilyExotic(n)
                end
                selectExoticBtn.isExoticOnly = true
                selectExoticBtn:SetText("Exotic")
            end
        end
        PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
        ReloadAndSummarise()
        PSM.ModelsFilters:UpdateDynamicFilters()
    end)

    ---------- Scroll frame for checkboxes ----------
    local filterScrollFrame = CreateFrame("ScrollFrame", nil, panel.unifiedFilterFrame, "UIPanelScrollFrameTemplate")
    filterScrollFrame:SetPoint("TOPLEFT",   selectAllBtn,           "BOTTOMLEFT",  0, -5)
    filterScrollFrame:SetPoint("BOTTOMRIGHT", panel.unifiedFilterFrame, "BOTTOMRIGHT", 0,  5)
    
    local filterContent = CreateFrame("Frame", nil, filterScrollFrame)
    filterContent:SetSize(filterScrollFrame:GetWidth() - 25, 100)
    filterScrollFrame:SetScrollChild(filterContent)

    panel.filterScrollFrame  = filterScrollFrame
    panel.filterContent      = filterContent
    panel.filterCheckboxes   = {}
    panel.currentFilterType  = "families"

    -- Apply ElvUI skin to scroll bar
    if PSM.UI and PSM.UI.ApplyElvUISkin then
        PSM.UI:ApplyElvUISkin(filterScrollFrame.ScrollBar, "scrollbar")
    end
    
    ---------- Initial population ----------
    RepopulateAllTabs(panel)
    UpdateTabVisuals()

    -- Restore exotic filter button state based on current family selections
    InitializeExoticFilterButton()
end

--------------------------------------------------------------------------------
-- CHECKBOX POPULATION
--------------------------------------------------------------------------------

function PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
    if not panel then return end

    for _, cb in ipairs(panel.filterCheckboxes) do cb:Hide() end
    panel.filterCheckboxes = {}

    local items, selections
    if     panel.currentFilterType == "families"   then
        items      = PSM.ModelsDataLoader:GetAvailableFamiliesForFilters()
        selections = PSM.state.selectedModelsFamilies
    elseif panel.currentFilterType == "expansions" then
        items      = PSM.ModelsDataLoader:GetAvailableExpansionsForFilters()
        selections = PSM.state.selectedExpansions
    elseif panel.currentFilterType == "locations"  then
        items      = PSM.ModelsDataLoader:GetAvailableLocationsForFilters()
        selections = PSM.state.selectedLocations
    end

    local yOffset = 0
    for _, item in ipairs(items) do
        local cb = CreateFrame("CheckButton", nil, panel.filterContent, "UICheckButtonTemplate")
        cb:SetPoint("TOPLEFT", 0, -yOffset)
        cb:SetSize(20, 20)
        cb.text = cb:CreateFontString(nil, "OVERLAY")
        cb.text:SetFont("Fonts\\FRIZQT__.TTF", 10)
        cb.text:SetPoint("LEFT", cb, "RIGHT", 5, 0)
        cb.text:SetWordWrap(true)
        cb.text:SetWidth(140)
        cb.text:SetJustifyH("LEFT")

        local label = item
        if panel.currentFilterType == "families" and self:IsFamilyExotic(item) then
            label = item .. " |cffff8800[Exotic]|r"
        end
        cb.text:SetText(label)

        cb:SetChecked(selections[item] or false)
        cb:SetScript("OnClick", function(self)
            if     panel.currentFilterType == "families"   then PSM.state.selectedModelsFamilies[item] = self:GetChecked()
            elseif panel.currentFilterType == "expansions" then PSM.state.selectedExpansions[item]      = self:GetChecked()
            elseif panel.currentFilterType == "locations"  then PSM.state.selectedLocations[item]       = self:GetChecked()
            end
            ReloadAndSummarise()
            PSM.ModelsFilters:UpdateDynamicFilters()
        end)
        cb:SetHitRectInsets(0, -150, 0, 0)
        PSM.UI:ApplyElvUISkin(cb, "checkbox")
        table.insert(panel.filterCheckboxes, cb)

        local lines = math.max(1, math.ceil(string.len(item) / 40))
        yOffset = yOffset + 25 * lines
    end

    panel.filterContent:SetHeight(yOffset)
end

--------------------------------------------------------------------------------
-- FILTER SUMMARY
--------------------------------------------------------------------------------

function PSM.ModelsFilters:GenerateFilterSummary()
    local panel = PSM.state.modelsPanel
    if not panel then return "" end

    local filters = {}
    local hasRules = PSM.state.selectedTamingRules and next(PSM.state.selectedTamingRules)
    local hasConds = PSM.state.selectedConditions and next(PSM.state.selectedConditions)

    -- Families (Suppress family summary if Special Tames are active, as they auto-populate the family list)
    if not (hasRules or hasConds) then
        local selected, exoticOnly, nonExoticOnly = 0, true, true
        for name, on in pairs(PSM.state.selectedModelsFamilies) do
            if on then
                selected = selected + 1
                if   self:IsFamilyExotic(name) then nonExoticOnly = false
                else                                exoticOnly    = false end
            end
        end
        local total = #PSM.PetModels:GetAvailableFamilies()
        if selected ~= total then
            if   exoticOnly    and selected > 0 then table.insert(filters, "Families (Exotic only)")
            elseif nonExoticOnly and selected > 0 then table.insert(filters, "Families (not Exotic)")
            else                                       table.insert(filters, "Families") end
        end
    end

    -- Expansions
    if panel.expansionList then
        local expCount = 0
        for _, on in pairs(PSM.state.selectedExpansions) do if on then expCount = expCount + 1 end end
        if expCount ~= #panel.expansionList then table.insert(filters, "Expansions") end
    end

    -- Locations
    if panel.locationList then
        local locCount = 0
        for _, on in pairs(PSM.state.selectedLocations) do if on then locCount = locCount + 1 end end
        if locCount ~= #panel.locationList then table.insert(filters, "Locations") end
    end

    -- Tristate toggles
    if panel.showRares == true then table.insert(filters, "Rares")
    elseif panel.showRares == "inverted" then table.insert(filters, "Not Rares") end

    if panel.showFavorites == true then table.insert(filters, "Favorites")
    elseif panel.showFavorites == "inverted" then table.insert(filters, "Not Favorites") end

    if panel.showPetsInMyZone and panel.currentPlayerZone then
        local prefix = panel.showPetsInMyZone == "inverted" and "Not My Zone" or "My Zone"
        table.insert(filters, prefix .. " (" .. panel.currentPlayerZone .. ")")
    end

    if panel.showHideOwned == "inverted" then table.insert(filters, "Owned")
    elseif panel.showHideOwned == true then table.insert(filters, "Not Owned") end

    -- Search
    if (panel.searchBox:GetText() or "") ~= "" then table.insert(filters, "Search") end

    -- Special Tames (Specific formatting for Unlocks and Conditions)
    if hasRules or hasConds then
        local stParts = {}

        if hasRules then
            local rCount = 0
            local lastRuleKey, lastRuleState
            for k, v in pairs(PSM.state.selectedTamingRules) do
                rCount = rCount + 1
                lastRuleKey, lastRuleState = k, v
            end
            if rCount == 1 then
                local rule = PSM.TamingRules and PSM.TamingRules[lastRuleKey]
                local label = rule and rule.label or lastRuleKey
                if lastRuleState == "inverted" then label = "Not " .. label end
                table.insert(stParts, label)
            else
                table.insert(stParts, "Skills")
            end
        end

        if hasConds then
            local cCount = 0
            local lastCondKey, lastCondState
            for k, v in pairs(PSM.state.selectedConditions) do
                cCount = cCount + 1
                lastCondKey, lastCondState = k, v
            end
            if cCount == 1 then
                local label = lastCondKey
                if lastCondState == "inverted" then label = "Not " .. label end
                table.insert(stParts, label)
            else
                table.insert(stParts, "Conditions")
            end
        end

        table.insert(filters, "Special Tames - " .. table.concat(stParts, "; "))
    end

    return #filters > 0 and ("Filters: " .. table.concat(filters, ", ")) or ""
end

function PSM.ModelsFilters:UpdateFilterSummary()
    local panel = PSM.state.modelsPanel
    if not panel or not panel.filterSummaryText then return end
    panel.filterSummaryText:SetText(self:GenerateFilterSummary())
end

function PSM.ModelsFilters:UpdateDynamicFilters()
    local panel = PSM.state.modelsPanel
    if not panel then return end
    PSM.ModelsDataLoader:ClearDynamicFilterCache()
    PSM.ModelsFilters:PopulateUnifiedFilterCheckboxes(panel)
end