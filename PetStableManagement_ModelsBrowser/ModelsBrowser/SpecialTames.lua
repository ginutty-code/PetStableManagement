-- ModelsBrowser/SpecialTames.lua
-- Special Tames panel — shows taming requirements with status indicators and filtering

local addonName = "PetStableManagement"
_G.PSM = _G.PSM or {}
local PSM = _G.PSM
PSM.SpecialTames = PSM.SpecialTames or {}

local ST = PSM.SpecialTames

-- ─────────────────────────────────────────────
-- Constants
-- ─────────────────────────────────────────────

local CFG = {
    PANEL_WIDTH    = 800,
    PANEL_HEIGHT   = 600,
    ROW_HEIGHT     = 28,
    CHECKBOX_SIZE  = 16,
    STATUS_SIZE    = 16,
    BUTTON_HEIGHT  = 25,
    BUTTON_WIDTH   = 100,
    PADDING        = 10,
    CARD_PADDING   = 8,
}

-- ─────────────────────────────────────────────
-- State management
-- ─────────────────────────────────────────────

local selectedRules = {}
local selectedConditions = {}

-- ─────────────────────────────────────────────
-- UI Helpers
-- ─────────────────────────────────────────────

local function CreateStatusIcon(parent, status)
    local icon = CreateFrame("Frame", nil, parent)
    icon:SetSize(CFG.STATUS_SIZE, CFG.STATUS_SIZE)

    local texture = icon:CreateTexture(nil, "ARTWORK")
    texture:SetAllPoints()
    texture:SetTexture("Interface\\RAIDFRAME\\ReadyCheck")

    if status == "met" then
        texture:SetTexCoord(0, 0.5, 0, 0.5) -- Green check
    else
        texture:SetTexCoord(0.5, 1, 0.5, 1) -- Red X
    end

    icon.texture = texture
    return icon
end

local function CreateRuleRow(parent, ruleKey, ruleData, yOffset)
    -- Card-style backdrop, matching AbilityBrowser card appearance
    local row = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    row:SetSize(CFG.PANEL_WIDTH - 2 * CFG.PADDING - 50, CFG.ROW_HEIGHT + CFG.CARD_PADDING * 2)
    row:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -yOffset)
    row:EnableMouse(true)

    row:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    row:SetBackdropColor(0.08, 0.08, 0.08, 0.85)
    row:SetBackdropBorderColor(0.25, 0.25, 0.25, 1)

    local P = CFG.CARD_PADDING

    -- Status indicator
    local status = PSM.TamingChecker.GetRuleStatus(ruleKey)
    local statusIcon = CreateStatusIcon(row, status)
    statusIcon:SetPoint("LEFT", row, "LEFT", P, 0)

    -- Checkbox
    local checkbox = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
    checkbox:SetSize(CFG.CHECKBOX_SIZE, CFG.CHECKBOX_SIZE)
    checkbox:SetPoint("LEFT", statusIcon, "RIGHT", 10, 0)
    checkbox:SetChecked(selectedRules[ruleKey] or false)
    checkbox:SetScript("OnClick", function(self)
        selectedRules[ruleKey] = self:GetChecked()
    end)

    -- Build formatted label with hyperlink codes like PopUpManager
    local parts = {}
    parts[#parts + 1] = ruleData.label

    if ruleData.hint then
        if ruleData.hint.plain then
            parts[#parts + 1] = " (" .. ruleData.hint.plain .. ")"
        else
            local mainParts = {}
            local suffixPart = nil

            if ruleData.hint.autoRace then
                mainParts[#mainParts + 1] = ruleData.hint.autoRace .. " (auto)"
            end
            if ruleData.hint.itemID then
                mainParts[#mainParts + 1] = string.format(
                    "|cff0070dd|Hpsmtaming:%s|h%s|h|r",
                    ruleKey,
                    ruleData.hint.itemName or ("Item #" .. ruleData.hint.itemID))
            end
            if ruleData.hint.questID then
                mainParts[#mainParts + 1] = string.format(
                    "|cff0070dd|Hpsmtaming:%s|h%s|h|r",
                    ruleKey,
                    ruleData.hint.questName or ("Quest #" .. ruleData.hint.questID))
            end

            if ruleData.hint.suffix then
                suffixPart = ruleData.hint.suffix
            end

            local hintStr = ""
            if #mainParts > 0 then
                hintStr = table.concat(mainParts, " or ")
            end
            if suffixPart then
                hintStr = hintStr ~= "" and (hintStr .. " " .. suffixPart) or suffixPart
            end
            if hintStr ~= "" then
                parts[#parts + 1] = " (" .. hintStr .. ")"
            end
        end
    end

    local color = (status == "met") and "|cff00ff00" or "|cffff4444"
    parts[1] = color .. parts[1] .. "|r"
    local fullText = table.concat(parts, "")

    local label = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 10, 0)
    label:SetPoint("RIGHT", row, "RIGHT", -P, 0)
    label:SetJustifyH("LEFT")
    label:SetText(fullText)
    label:SetWordWrap(false)

    row:SetHyperlinksEnabled(true)
    row:SetScript("OnHyperlinkEnter", function(self, link)
        local rk = link:match("psmtaming:(.+)")
        if not rk then return end
        local rule = PSM.TamingRules and PSM.TamingRules[rk]
        if rule and rule.hint then
            if rule.hint.itemID then
                GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
                GameTooltip:SetHyperlink("item:" .. rule.hint.itemID)
                GameTooltip:Show()
            elseif rule.hint.questID then
                GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
                GameTooltip:SetHyperlink("quest:" .. rule.hint.questID)
                GameTooltip:Show()
            end
        end
    end)
    row:SetScript("OnHyperlinkLeave", function() GameTooltip:Hide() end)
    row:SetScript("OnHyperlinkClick", function(self, link, text, button)
        local rk = link:match("psmtaming:(.+)")
        if not rk then return end
        local rule = PSM.TamingRules and PSM.TamingRules[rk]
        if rule and button == "LeftButton" then
            if rule.itemID then
                PSM.PopUpManager:ShowURLPopup("https://www.wowhead.com/item=" .. rule.itemID)
            elseif rule.hint and rule.hint.questID then
                PSM.PopUpManager:ShowURLPopup("https://www.wowhead.com/quest=" .. rule.hint.questID)
            end
        end
    end)

    row:SetScript("OnEnter", function(self)
        self:SetBackdropBorderColor(0.5, 0.5, 0.5, 1)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(ruleData.label, 1, 1, 1)
        GameTooltip:AddLine(ruleData.desc, nil, nil, nil, true)
        GameTooltip:Show()
    end)
    row:SetScript("OnLeave", function(self)
        self:SetBackdropBorderColor(0.25, 0.25, 0.25, 1)
        GameTooltip:Hide()
    end)

    row:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" and self.checkbox then
        self.checkbox:Click()
        end
    end)

    row.checkbox   = checkbox
    row.statusIcon = statusIcon
    row.label      = label

    return row
end

local function CreateConditionRow(parent, conditionName, yOffset)
    local row = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    row:SetSize(CFG.PANEL_WIDTH - 2 * CFG.PADDING - 50, CFG.ROW_HEIGHT + CFG.CARD_PADDING * 2)
    row:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -yOffset)
    row:EnableMouse(true)

    row:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    row:SetBackdropColor(0.08, 0.08, 0.08, 0.85)
    row:SetBackdropBorderColor(0.25, 0.25, 0.25, 1)

    local P = CFG.CARD_PADDING

    local checkbox = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
    checkbox:SetSize(CFG.CHECKBOX_SIZE, CFG.CHECKBOX_SIZE)
    checkbox:SetPoint("LEFT", row, "LEFT", P, 0)
    checkbox:SetChecked(selectedConditions[conditionName] or false)
    checkbox:SetScript("OnClick", function(self)
        selectedConditions[conditionName] = self:GetChecked()
    end)

    local label = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 10, 0)
    label:SetPoint("RIGHT", row, "RIGHT", -P, 0)
    label:SetJustifyH("LEFT")
    label:SetText("|cffffffff" .. conditionName .. "|r")
    label:SetWordWrap(false)

    row.checkbox = checkbox
    row.isCondition = true

    return row
end

-- ─────────────────────────────────────────────
-- Search filtering
-- ─────────────────────────────────────────────

local function RowMatchesTag(ruleKey, activeTag)
    if not activeTag or activeTag == "All" or activeTag == "Other" then return true end
    local status = PSM.TamingChecker.GetRuleStatus(ruleKey)
    if activeTag == "Unlocked" then return status == "met"     end
    if activeTag == "Locked"   then return status == "not_met" end
    return true
end

local function RowMatchesQuery(ruleKey, ruleData, query)
    if query == "" then return true end
    if ruleData.label and ruleData.label:lower():find(query, 1, true) then return true end
    if ruleData.desc  and ruleData.desc:lower():find(query, 1, true)  then return true end
    if ruleKey:lower():find(query, 1, true) then return true end
    if ruleData.hint then
        if ruleData.hint.plain     and ruleData.hint.plain:lower():find(query, 1, true)     then return true end
        if ruleData.hint.itemName  and ruleData.hint.itemName:lower():find(query, 1, true)  then return true end
        if ruleData.hint.questName and ruleData.hint.questName:lower():find(query, 1, true) then return true end
        if ruleData.hint.autoRace  and ruleData.hint.autoRace:lower():find(query, 1, true)  then return true end
        if ruleData.hint.suffix    and ruleData.hint.suffix:lower():find(query, 1, true)    then return true end
    end
    return false
end

local function RowMatchesQueryCondition(conditionName, query)
    if query == "" then return true end
    if conditionName:lower():find(query, 1, true) then return true end
    return false
end

-- ─────────────────────────────────────────────
-- Update select all button
-- ─────────────────────────────────────────────

local function UpdateSelectAllButton(panel)
    if not panel.selectAllBtn then return end
    local anySelected = false
    for ruleKey, selected in pairs(selectedRules) do
        if selected and panel.ruleRows then
            for _, row in ipairs(panel.ruleRows) do
                if row.ruleKey == ruleKey and not row.isCondition then
                    anySelected = true
                    break
                end
            end
            if anySelected then break end
        end
    end
    if not anySelected then
        for ruleKey, selected in pairs(selectedConditions) do
            if selected and panel.ruleRows then
                for _, row in ipairs(panel.ruleRows) do
                    if row.ruleKey == ruleKey and row.isCondition then
                        anySelected = true
                        break
                    end
                end
                if anySelected then break end
            end
        end
    end
    panel.selectAllBtn:SetText(anySelected and "Unselect All" or "Select All")
end

-- ─────────────────────────────────────────────
-- Repopulate scroll content (search-aware)
-- ─────────────────────────────────────────────

local function RepopulateRows(panel, query, activeTag)
    query     = (query or ""):lower()
    activeTag = activeTag or panel.activeTag or "All"

    -- Destroy existing rows
    for _, row in ipairs(panel.ruleRows or {}) do
        row:Hide()
        row:SetParent(nil)
    end
    panel.ruleRows = {}

    local scrollChild = panel.scrollChild
    local yOffset = 8
    local ruleCount = 0

    if activeTag == "Other" then
        local uniqueConditions = {}
        for _, conditionList in pairs(PSM.ConditionsData or {}) do
            if type(conditionList) == "table" then
                for _, cond in ipairs(conditionList) do
                    uniqueConditions[cond] = true
                end
            end
        end
        local conditionNames = {}
        for cond in pairs(uniqueConditions) do
            table.insert(conditionNames, cond)
        end
        table.sort(conditionNames)

        for _, condName in ipairs(conditionNames) do
            if RowMatchesQueryCondition(condName, query) then
                ruleCount = ruleCount + 1
                local rowH = CFG.ROW_HEIGHT + CFG.CARD_PADDING * 2
                local row  = CreateConditionRow(scrollChild, condName, yOffset)
                row.ruleKey = condName
                row.isCondition = true
                panel.ruleRows[ruleCount] = row
                yOffset = yOffset + rowH + 4
            end
        end
    else
        for ruleKey, ruleData in pairs(PSM.TamingRules) do
            if RowMatchesQuery(ruleKey, ruleData, query) and RowMatchesTag(ruleKey, activeTag) then
                ruleCount = ruleCount + 1
                local rowH = CFG.ROW_HEIGHT + CFG.CARD_PADDING * 2
                local row  = CreateRuleRow(scrollChild, ruleKey, ruleData, yOffset)
                row.ruleKey = ruleKey
                panel.ruleRows[ruleCount] = row
                yOffset = yOffset + rowH + 4
            end
        end
    end

    scrollChild:SetHeight(math.max(yOffset + 8, 100))
    panel.scrollFrame:SetVerticalScroll(0)

    -- Update footer selection note
    if panel.selectionNote then
        local n = 0
        for ruleKey, selected in pairs(selectedRules) do
            if selected then n = n + 1 end
        end
        for _, selected in pairs(selectedConditions) do
            if selected then n = n + 1 end
        end
        panel.selectionNote:SetText(n .. " " .. (n == 1 and "item" or "items") .. " selected")
    end
    UpdateSelectAllButton(panel)
end

-- ─────────────────────────────────────────────
-- Pill bar (All | Unlocked | Locked)
-- ─────────────────────────────────────────────

local PILL_TAGS = { "All", "Unlocked", "Locked", "Other" }

local function CreatePillBar(panel)
    local pillBar = CreateFrame("Frame", nil, panel)
    pillBar:SetHeight(24)
    pillBar:SetPoint("TOPLEFT",  panel, "TOPLEFT",  20, -90)
    pillBar:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -20, -90)

    local pills = {}
    local xOff  = 0

    local function SetActive(activeIdx)
        for i, pill in ipairs(pills) do
            local active = (i == activeIdx)
            pill.tex:SetColorTexture(unpack(active and PSM.Config.TAB.ACTIVE_BG or PSM.Config.TAB.INACTIVE_BG))
            pill.label:SetTextColor(unpack(active and PSM.Config.TAB.ACTIVE_TEXT or PSM.Config.TAB.INACTIVE_TEXT))
            if pill.topLine    then pill.topLine:SetShown(active)    end
            if pill.bottomLine then pill.bottomLine:SetShown(active) end
        end
    end

    for idx, tagName in ipairs(PILL_TAGS) do
        local pill   = CreateFrame("Button", nil, pillBar)
        local labelW = #tagName * 7 + 16
        pill:SetSize(labelW, 20)
        pill:SetPoint("LEFT", pillBar, "LEFT", xOff, 0)

        local tex = pill:CreateTexture(nil, "BACKGROUND")
        tex:SetAllPoints()
        tex:SetColorTexture(unpack(PSM.Config.TAB.INACTIVE_BG))
        pill.tex = tex

        local label = pill:CreateFontString(nil, "OVERLAY")
        label:SetFont("Fonts\\FRIZQT__.TTF", PSM.Config.FONT_SIZES.ABILITY_PILL)
        label:SetPoint("CENTER")
        label:SetText(tagName)
        label:SetTextColor(unpack(PSM.Config.TAB.INACTIVE_TEXT))
        pill.label = label

        local topLine = pill:CreateTexture(nil, "BORDER")
        topLine:SetPoint("TOPLEFT",  pill, "TOPLEFT",  2, 0)
        topLine:SetPoint("TOPRIGHT", pill, "TOPRIGHT", -2, 0)
        topLine:SetHeight(1)
        topLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
        topLine:Hide()
        pill.topLine = topLine

        local bottomLine = pill:CreateTexture(nil, "BORDER")
        bottomLine:SetPoint("BOTTOMLEFT",  pill, "BOTTOMLEFT",  2, 0)
        bottomLine:SetPoint("BOTTOMRIGHT", pill, "BOTTOMRIGHT", -2, 0)
        bottomLine:SetHeight(1)
        bottomLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
        bottomLine:Hide()
        pill.bottomLine = bottomLine

        do
            local currentTag = tagName
            local currentIdx = idx
            pill:SetScript("OnClick", function()
                SetActive(currentIdx)
                panel.activeTag = currentTag
                RepopulateRows(panel, panel.searchBox:GetText(), currentTag)
            end)
        end

        xOff = xOff + labelW + 6
        pills[idx] = pill
    end

    SetActive(1)
    panel.pills = pills
    return pillBar
end

-- ─────────────────────────────────────────────
-- Status refresh
-- ─────────────────────────────────────────────

local function UpdateAllStatuses(panel)
    for _, row in ipairs(panel.ruleRows or {}) do
        if row.ruleKey and not row.isCondition then
            local status = PSM.TamingChecker.GetRuleStatus(row.ruleKey)
            if status == "met" then
                row.statusIcon.texture:SetTexCoord(0, 0.5, 0, 0.5)
            else
                row.statusIcon.texture:SetTexCoord(0.5, 1, 0.5, 1)
            end
        end
    end
end

-- ─────────────────────────────────────────────
-- Selection note helper
-- ─────────────────────────────────────────────

local function UpdateSelectionNote(panel)
    if not panel.selectionNote then return end
    local n = 0
    for _, selected in pairs(selectedRules) do
        if selected then n = n + 1 end
    end
    for _, selected in pairs(selectedConditions) do
        if selected then n = n + 1 end
    end
    panel.selectionNote:SetText(n .. " " .. (n == 1 and "item" or "items") .. " selected")
end

-- ─────────────────────────────────────────────
-- Button handlers
-- ─────────────────────────────────────────────

local function OnSelectAllClick(panel)
    local anySelected = false
    for _, row in ipairs(panel.ruleRows or {}) do
        if row.ruleKey then
            local stateMap = row.isCondition and selectedConditions or selectedRules
            if stateMap[row.ruleKey] then
                anySelected = true
                break
            end
        end
    end
    local newState = not anySelected
    for _, row in ipairs(panel.ruleRows or {}) do
        if row.ruleKey then
            local stateMap = row.isCondition and selectedConditions or selectedRules
            stateMap[row.ruleKey] = newState
            if row.checkbox then
                row.checkbox:SetChecked(newState)
            end
        end
    end
    UpdateSelectionNote(panel)
    UpdateSelectAllButton(panel)
end

local function OnApplyClick(panel)
    PSM.state.selectedTamingRules = {}
    for ruleKey, selected in pairs(selectedRules) do
        if selected then
            table.insert(PSM.state.selectedTamingRules, ruleKey)
        end
    end

    local selectedConditionNames = {}
    for cond, selected in pairs(selectedConditions) do
        if selected then
            selectedConditionNames[cond] = true
        end
    end
    PSM.state.selectedConditions = selectedConditionNames

    -- Save the selected taming rules to the database for persistence
    PetStableManagementDB = PetStableManagementDB or {}
    PetStableManagementDB.filters = PetStableManagementDB.filters or {}
    PetStableManagementDB.filters.selectedTamingRules = PSM.state.selectedTamingRules
    PetStableManagementDB.filters.selectedConditions = selectedConditionNames

    if PSM.PetModels then
        local hasRules = #PSM.state.selectedTamingRules > 0
        local hasConds = next(selectedConditionNames) ~= nil

        if hasRules or hasConds then
        for familyName in pairs(PSM.state.selectedModelsFamilies) do
            PSM.state.selectedModelsFamilies[familyName] = nil
        end

        local relevantFamilies = {}
        for _, familyName in ipairs(PSM.PetModels:GetAvailableFamilies()) do
            local familyData = PSM.PetModels:GetFamilyModels(familyName)
            if familyData and familyData.displayIds then
                for _, displayData in ipairs(familyData.displayIds) do
                        local match = false

                        -- Check Rules
                        if hasRules and displayData.taming and #displayData.taming > 0 then
                            local tamingSet = {}
                            for _, rule in ipairs(displayData.taming) do tamingSet[rule] = true end
                            for _, selectedRule in ipairs(PSM.state.selectedTamingRules) do
                                if tamingSet[selectedRule] then
                                    local hasFlorafaun = tamingSet["Florafaun"]
                                    local hasDirehorn = tamingSet["Direhorn"]
                                    local fSel = false; for _, r in ipairs(PSM.state.selectedTamingRules) do if r == "Florafaun" then fSel = true end end
                                    local dSel = false; for _, r in ipairs(PSM.state.selectedTamingRules) do if r == "Direhorn" then dSel = true end end
                                    if hasFlorafaun and hasDirehorn then
                                        if not ((fSel and not dSel) or (dSel and not fSel)) then match = true end
                                    else
                                        match = true
                                    end
                                end
                            end
                        end

                        -- Check Conditions
                        if not match and hasConds and displayData.npcs then
                            for _, npc in ipairs(displayData.npcs) do
                                local npcID = tonumber(npc.npcId)
                                local condList = PSM.ConditionsData and PSM.ConditionsData.Get(npcID)
                                if condList then
                                    for _, cond in ipairs(condList) do
                                        if selectedConditionNames[cond] then
                                            match = true; break
                                        end
                                    end
                                end
                                if match then break end
                            end
                        end

                        if match then
                            relevantFamilies[familyName] = true
                            break
                    end
                end
            end
        end

        for familyName in pairs(relevantFamilies) do
            PSM.state.selectedModelsFamilies[familyName] = true
        end
        end
    end

    if PSM.ModelsDataLoader then
        PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
    end

    local appliedCount = 0
    for _ in pairs(PSM.state.selectedModelsFamilies) do
        appliedCount = appliedCount + 1
    end
    print(PSM.Utils:FormatColorText(
        "PetStableManagement: Special Tames filter applied - " .. appliedCount .. " families.",
        PSM.Config.COLORS.SUCCESS
    ))

    panel:Hide()
end



-- ─────────────────────────────────────────────
-- Footer (mirrors AbilityBrowser CreateFooter)
-- ─────────────────────────────────────────────

local function CreateFooter(panel)
    local footer = CreateFrame("Frame", nil, panel)
    footer:SetHeight(36)
    footer:SetPoint("BOTTOMLEFT",  panel, "BOTTOMLEFT",  20, 10)
    footer:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -20, 10)

    -- Separator line
    local sep = footer:CreateTexture(nil, "BACKGROUND")
    sep:SetHeight(1)
    sep:SetPoint("TOPLEFT",  footer, "TOPLEFT",  0, 0)
    sep:SetPoint("TOPRIGHT", footer, "TOPRIGHT", 0, 0)
    sep:SetColorTexture(1, 1, 1, 0.08)

    -- Selection note (bottom-left, like AbilityBrowser)
    local note = footer:CreateFontString(nil, "OVERLAY")
    note:SetFont("Fonts\\FRIZQT__.TTF", PSM.Config.FONT_SIZES.STATS)
    note:SetTextColor(unpack(PSM.Config.COLORS.ABILITY_SELECTION_NOTE))
    note:SetPoint("LEFT", footer, "LEFT", 0, -8)
    note:SetText("0 items selected")
    panel.selectionNote = note

    -- Apply Filters (rightmost)
    local applyButton = CreateFrame("Button", nil, footer, "UIPanelButtonTemplate")
    applyButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    applyButton:SetPoint("RIGHT", footer, "RIGHT", 0, -8)
    applyButton:SetText("Apply Filters")
    applyButton:SetNormalFontObject("GameFontNormalSmall")
    applyButton:SetScript("OnClick", function() OnApplyClick(panel) end)
    PSM.UI:ApplyElvUISkin(applyButton, "button")

    -- Select All (left of Apply Filters)
    local selectAllButton = CreateFrame("Button", nil, footer, "UIPanelButtonTemplate")
    selectAllButton:SetSize(PSM.Config.BUTTON_WIDTH, PSM.Config.BUTTON_HEIGHT)
    selectAllButton:SetPoint("RIGHT", applyButton, "LEFT", -8, 0)
    selectAllButton:SetText("Select All")
    selectAllButton:SetNormalFontObject("GameFontNormalSmall")
    selectAllButton:SetScript("OnClick", function() OnSelectAllClick(panel) end)
    PSM.UI:ApplyElvUISkin(selectAllButton, "button")
    panel.selectAllBtn = selectAllButton
end

-- ─────────────────────────────────────────────
-- Panel creation
-- ─────────────────────────────────────────────

function ST:Toggle()
    if UnitAffectingCombat("player") then
        print("|cFFFF0000Special Tames: Cannot open during combat.|r")
        return
    end
    PSM.PanelManager:TogglePanel("specialTames", function() self:CreateSpecialTamesPanel() end)
end

function ST:CreateSpecialTamesPanel()
    if PSM.state.specialTames then return end

    -- Restore selectedRules from saved state (DB or in-memory)
    selectedRules = {}
    local savedRules = PSM.state.selectedTamingRules or (PetStableManagementDB and PetStableManagementDB.filters and PetStableManagementDB.filters.selectedTamingRules)
    if savedRules then
        for _, ruleKey in ipairs(savedRules) do
            selectedRules[ruleKey] = true
        end
    end

    selectedConditions = {}
    local savedConditions = PSM.state.selectedConditions or (PetStableManagementDB and PetStableManagementDB.filters and PetStableManagementDB.filters.selectedConditions)
    if savedConditions then
        for cond, _ in pairs(savedConditions) do
            selectedConditions[cond] = true
        end
    end

    local panel = PSM.PanelManager:CreateBasePanel("specialTames", {
        width              = CFG.PANEL_WIDTH,
        height             = CFG.PANEL_HEIGHT,
        title              = "Special Tames",
        escKeyframe        = "PetStableManagementSpecialTames",
        resizable          = true,
        showResizeHandle   = true,
        showMaximizeButton = false,

        onShow = function(p)
            UpdateAllStatuses(p)
        end,
    })

    -- ── Search box (mirrors AbilityBrowser) ──
    local searchBox = CreateFrame("EditBox", nil, panel, "InputBoxTemplate")
    searchBox:SetPoint("TOP", panel.title, "BOTTOM", 0, -10)
    searchBox:SetSize(150, 20)
    searchBox:SetAutoFocus(false)
    searchBox:SetText("")
    searchBox:SetScript("OnTextChanged", function(self)
        RepopulateRows(panel, self:GetText(), panel.activeTag)
    end)
    searchBox:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
    searchBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
    PSM.UI:ApplyElvUISkin(searchBox, "editbox")
    panel.searchBox = searchBox

    -- ── Pill bar (below search box, mirrors AbilityBrowser) ──
    panel.activeTag = "All"
    panel.pillBar   = CreatePillBar(panel)

    -- ── Scroll frame (top anchored below pill bar, like AbilityBrowser) ──
    local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT",     panel, "TOPLEFT",     20, -120)
    scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -30,  56)
    PSM.UI:ApplyElvUISkin(scrollFrame, "scrollframe")
    PSM.UI:ApplyElvUISkin(scrollFrame.ScrollBar, "scrollbar")

    local scrollChild = CreateFrame("Frame", nil, scrollFrame)
    scrollChild:SetSize(CFG.PANEL_WIDTH - 50, 400)
    scrollFrame:SetScrollChild(scrollChild)

    panel.scrollFrame = scrollFrame
    panel.scrollChild = scrollChild
    panel.ruleRows    = {}

    -- ── Footer with all buttons + selection note ──
    CreateFooter(panel)

    -- ── Initial row population ──
    RepopulateRows(panel, "")
    UpdateSelectionNote(panel)
    UpdateSelectAllButton(panel)

    return panel
end