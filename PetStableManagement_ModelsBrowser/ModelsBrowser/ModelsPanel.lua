-- ModelsBrowser/ModelsPanel.lua
-- Performance-optimized Pet Models Browser Panel

local addonName = "PetStableManagement"

_G.PSM = _G.PSM or {}
local PSM = _G.PSM

PSM.ModelsPanel = PSM.ModelsPanel or {}

-- Panel-specific constants (base values; scaling applied dynamically)
local MODELS_CONFIG = {
    PANEL_WIDTH    = 1100,
    PANEL_HEIGHT   = 820,
    ROW_HEIGHT     = 120,
    MODEL_SIZE     = 100,
    PETS_PER_PAGE  = 10,
    PETS_PER_COLUMN = 5,
}

PSM.ModelsPanel.MODELS_CONFIG = MODELS_CONFIG

-- ─────────────────────────────────────────────
-- Internal helpers
-- ─────────────────────────────────────────────

-- Returns petsPerColumn and petsPerPage from current DB settings.
local function GetPageLayout()
    local ppc = PetStableManagementDB.settings.petsPerColumn or PSM.Config.DEFAULT_PETS_PER_COLUMN
    return ppc, ppc * 2
end

-- Persists the current page to character-specific SavedVariables and state.
local function SaveCurrentPage(page)
    PetStableManagementDB = PetStableManagementDB or {}
    PetStableManagementDB.characters = PetStableManagementDB.characters or {}

    local charKey = UnitName("player") .. "-" .. GetRealmName()
    local chars = PetStableManagementDB.characters
    chars[charKey] = chars[charKey] or {}
    chars[charKey].settings = chars[charKey].settings or {}
    chars[charKey].settings.modelsPanelCurrentPage = page

    PSM.state.modelsPanelCurrentPage = page
    _G.PSM_modelsPanelCurrentPage    = page
end

-- Navigates to a page, clamps to valid range, and refreshes the view.
local function GoToPage(panel, page)
    local _, petsPerPage = GetPageLayout()
    local maxPages = math.max(1, math.ceil(#panel.allModels / petsPerPage))
    panel.currentPage = math.max(1, math.min(page, maxPages))
    SaveCurrentPage(panel.currentPage)
    PSM.ModelsPanel:UpdateModelsPanelLayout()
end

-- ─────────────────────────────────────────────
-- Layout
-- ─────────────────────────────────────────────

-- Recomputes MODELS_CONFIG scaling and repositions model rows.
function PSM.ModelsPanel:UpdateModelsPanelLayout()
    local panel = PSM.state.modelsPanel
    if not panel then return end

    local ppc, ppp = GetPageLayout()
    local scale = 5 / ppc  -- base is 5 pets per column

    MODELS_CONFIG.PETS_PER_COLUMN = ppc
    MODELS_CONFIG.PETS_PER_PAGE   = ppp
    MODELS_CONFIG.MODEL_SIZE      = 100 * scale
    MODELS_CONFIG.ROW_HEIGHT      = 120 * scale

    if not panel.petsFrame then return end

    local columnWidth = (panel.petsFrame:GetWidth() - 30) / 2
    local MAX_ROWS = PSM.Config.MAX_PETS_PER_COLUMN * 2

    -- Position and size rows, show/hide based on current ppp
    for i = 1, MAX_ROWS do
        local row = panel.modelRows[i]
        if not row then break end
        if i <= ppp then
            local col = ((i - 1) % 2) + 1
            local r = math.floor((i - 1) / 2) + 1
            row:ClearAllPoints()
            row:SetPoint("TOPLEFT",
                10 + (col - 1) * (columnWidth + 10),
                -(r - 1) * MODELS_CONFIG.ROW_HEIGHT - 10)
            row:SetWidth(columnWidth)
            if row.model then
                row.model:SetWidth(MODELS_CONFIG.MODEL_SIZE)
                row.model:SetHeight(MODELS_CONFIG.MODEL_SIZE)
            end
            -- Visibility handled in UpdateVisibleRows
        else
            row:Hide()
        end
    end

    self:UpdateVisibleRows()
end

-- ─────────────────────────────────────────────
-- Panel construction
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:BuildPanel()
    if PSM.state.modelsPanel then return end
    self:LoadSavedPage()
    self:CreateModelsPanel()
end

function PSM.ModelsPanel:LoadSavedPage()
    local charKey = UnitName("player") .. "-" .. GetRealmName()
    local saved = PetStableManagementDB
        and PetStableManagementDB.characters
        and PetStableManagementDB.characters[charKey]
        and PetStableManagementDB.characters[charKey].settings
        and PetStableManagementDB.characters[charKey].settings.modelsPanelCurrentPage

    local page = saved or PSM.state.modelsPanelCurrentPage or 1
    PSM.state.modelsPanelCurrentPage = page
    _G.PSM_modelsPanelCurrentPage    = page
    return saved ~= nil
end

-- Load selected families that were saved from the Abilities panel
function PSM.ModelsPanel:LoadSavedFamiliesFromAbilities()
    if not PetStableManagementDB or not PetStableManagementDB.filters then
        return
    end

    local savedFamilies = PetStableManagementDB.filters.selectedFamiliesFromAbilities
    if not savedFamilies or not next(savedFamilies) then
        return
    end

    -- Load the saved families into the runtime state
    PSM.state.selectedModelsFamilies = PSM.state.selectedModelsFamilies or {}
    for familyName, isSelected in pairs(savedFamilies) do
        if isSelected then
            PSM.state.selectedModelsFamilies[familyName] = true
        end
    end
end

function PSM.ModelsPanel:LoadSavedFilters()
    -- Load selected taming rules from SavedVariables
    PSM.state.selectedTamingRules = PSM.state.selectedTamingRules or {}
    local savedTamingRules = PetStableManagementDB and PetStableManagementDB.filters and PetStableManagementDB.filters.selectedTamingRules
    if savedTamingRules then
        for ruleKey, val in pairs(savedTamingRules) do
            PSM.state.selectedTamingRules[ruleKey] = val
        end
    end

    -- Load selected conditions from SavedVariables
    PSM.state.selectedConditions = PSM.state.selectedConditions or {}
    local savedConditions = PetStableManagementDB and PetStableManagementDB.filters and PetStableManagementDB.filters.selectedConditions
    if savedConditions then
        for cond, val in pairs(savedConditions) do
            PSM.state.selectedConditions[cond] = val
        end
    end
end

function PSM.ModelsPanel:CreateModelsPanel()
    local panel = PSM.PanelManager:CreateBasePanel("modelsPanel", {
        width              = MODELS_CONFIG.PANEL_WIDTH,
        height             = MODELS_CONFIG.PANEL_HEIGHT,
        title              = "Pet Model Browser",
        escKeyframe        = "PetStableManagementModelsPanel",
        resizable          = false,
        showResizeHandle   = false,
        showMaximizeButton = false,

        onShow = function(p)
            p._layoutDone = false
            p._renderGeneration = 0   -- reset generation on each open
            PSM.C_Timer.After(0.01, function()
                if p.showPetsInMyZone then
                    p.currentPlayerZone = PSM.ModelsFilters:GetPlayerZone()
                end
                -- Load any families that were saved from the Abilities panel
                PSM.ModelsPanel:LoadSavedFilters()
                PSM.ModelsPanel:LoadSavedFamiliesFromAbilities()
                PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
                p.currentPage = PSM.state.modelsPanelCurrentPage or 1
                _G.PSM_modelsPanelCurrentPage = p.currentPage
            end)
        end,

        onHide = function(p)
            SaveCurrentPage(p.currentPage or PSM.state.modelsPanelCurrentPage or 1)
            PSM.PanelManager:CleanupPanel(p)
            PSM.state.wasOwnedPetsOpen = nil
            p._layoutDone = false
        end,
    })

    self:AddModelsBrowserElements(panel)
    self:RegisterZoneEventListeners()
    return panel
end

-- ─────────────────────────────────────────────
-- Zone events
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:RegisterZoneEventListeners()
    local panel = PSM.state.modelsPanel
    if not panel or panel.zoneEventFrame then return end

    local f = PSM.CreateFrame("Frame")
    f:RegisterEvent("ZONE_CHANGED")
    f:RegisterEvent("ZONE_CHANGED_INDOORS")
    f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    f:SetScript("OnEvent", function()
        if not (panel:IsVisible() and panel.showPetsInMyZone) then return end

        local newZone = PSM.ModelsFilters:GetPlayerZone()
        if newZone and newZone ~= panel.currentPlayerZone then
            panel.currentPlayerZone = newZone
            PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
            PSM.ModelsFilters:UpdateFilterSummary()
        end
    end)
    panel.zoneEventFrame = f
end

-- ─────────────────────────────────────────────
-- Pagination / rendering
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:UpdateVisibleRows()
    local panel = PSM.state.modelsPanel
    if not panel or not panel.allModels then return end

    panel._renderGeneration = (panel._renderGeneration or 0) + 1
    local myGen = panel._renderGeneration

    local totalPets = #panel.allModels

    for _, row in ipairs(panel.modelRows) do
        row:Hide()
    end

    if totalPets == 0 then
        if panel.pageText then panel.pageText:SetText("Page 0 of 0") end
        return
    end

    local ppc = PetStableManagementDB.settings.petsPerColumn or PSM.Config.DEFAULT_PETS_PER_COLUMN
    local petsPerPage = ppc * 2
    local scale = 5 / ppc

    local maxPages = math.max(1, math.ceil(totalPets / petsPerPage))

    local savedPage = PSM.state.modelsPanelCurrentPage
    if savedPage and savedPage >= 1 and savedPage <= maxPages then
        panel.currentPage = savedPage
    else
        panel.currentPage = math.max(1, math.min(panel.currentPage or 1, maxPages))
    end
    _G.PSM_modelsPanelCurrentPage = panel.currentPage

    if panel.pageText then
        panel.pageText:SetText(string.format("Page %d of %d", panel.currentPage, maxPages))
    end
    if panel.pageJumpEditBox then
        panel.pageJumpEditBox:SetText(tostring(panel.currentPage))
    end
    panel.prevButton:SetEnabled(panel.currentPage > 1)
    panel.nextButton:SetEnabled(panel.currentPage < maxPages)
    if panel.firstButton then panel.firstButton:SetEnabled(panel.currentPage > 1) end
    if panel.lastButton  then panel.lastButton:SetEnabled(panel.currentPage < maxPages) end

    local startIndex = (panel.currentPage - 1) * petsPerPage + 1
    local rowIndex = 1
    for i = startIndex, math.min(startIndex + petsPerPage - 1, totalPets) do
        local row  = panel.modelRows[rowIndex]
        local item = panel.allModels[i]
        if item and row then
            PSM.ModelRow:UpdateItemRow(row, item, i, scale)
            row:Show()
        end
        rowIndex = rowIndex + 1
    end
end

-- ─────────────────────────────────────────────
-- UI construction helpers
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:InitializePerformanceOptimizations()
    PSM.ModelsDataLoader:CreateRenderCache()
end

function PSM.ModelsPanel:AddModelsBrowserElements(panel)
    -- Filters
    -- Show Only filters frame
    panel.showOnlyFrame = CreateFrame("Frame", nil, panel, "BackdropTemplate")
    panel.showOnlyFrame:SetPoint("TOPLEFT", 10, -100)
    panel.showOnlyFrame:SetSize(180, 130)
    panel.showOnlyFrame:SetBackdrop({
        bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = {left=4, right=4, top=4, bottom=4},
    })
    panel.showOnlyFrame:SetBackdropColor(unpack(PSM.Config.COLORS.BACKGROUND))
    panel.showOnlyFrame:SetBackdropBorderColor(0.75, 0.75, 0.75, 1) -- silver border

    -- Title pill
    local titleFrame = CreateFrame("Frame", nil, panel.showOnlyFrame)
    titleFrame:SetPoint("TOPLEFT", 5, -5)
    titleFrame:SetSize(170, 20)
    local bg = titleFrame:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BG))
    local topLine = titleFrame:CreateTexture(nil, "BORDER")
    topLine:SetPoint("TOPLEFT", titleFrame, "TOPLEFT", 2, 0)
    topLine:SetPoint("TOPRIGHT", titleFrame, "TOPRIGHT", -2, 0)
    topLine:SetHeight(1)
    topLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
    local bottomLine = titleFrame:CreateTexture(nil, "BORDER")
    bottomLine:SetPoint("BOTTOMLEFT", titleFrame, "BOTTOMLEFT", 2, 0)
    bottomLine:SetPoint("BOTTOMRIGHT", titleFrame, "BOTTOMRIGHT", -2, 0)
    bottomLine:SetHeight(1)
    bottomLine:SetColorTexture(unpack(PSM.Config.TAB.ACTIVE_BORDER))
    local label = titleFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    label:SetPoint("LEFT", 5, 0)
    label:SetJustifyH("LEFT")
    label:SetText("Show Only")
    label:SetTextColor(1, 0.82, 0) -- golden color

    local MF = PSM.ModelsFilters
    if MF then
        if MF.CreateRaresToggle         then MF:CreateRaresToggle(panel)         end
        if MF.CreateFavoritesToggle     then MF:CreateFavoritesToggle(panel)     end
        if MF.CreateHideOwnedToggle     then MF:CreateHideOwnedToggle(panel)     end
        if MF.CreatePetsInMyZoneToggle  then MF:CreatePetsInMyZoneToggle(panel)  end
        if MF.CreateSearchBox           then MF:CreateSearchBox(panel)           end
        if MF.CreateSpecialTamesButton then MF:CreateSpecialTamesButton(panel) end
        if MF.CreateAbilityBrowserButton then MF:CreateAbilityBrowserButton(panel) end
        if MF.CreatePetRouletteButton   then MF:CreatePetRouletteButton(panel)   end
        if MF.CreateResetFiltersButton  then MF:CreateResetFiltersButton(panel)  end
        if MF.CreateInfoText            then MF:CreateInfoText(panel)            end
        if MF.CreateFilterSummaryText   then MF:CreateFilterSummaryText(panel)   end
        if MF.BuildUnifiedFilterSystem  then MF:BuildUnifiedFilterSystem(panel, MODELS_CONFIG) end
    end

    -- Pets frame (2-column layout)
    local petsFrame = CreateFrame("Frame", nil, panel, "BackdropTemplate")
    petsFrame:SetPoint("TOPLEFT",     panel.showOnlyFrame, "TOPRIGHT", 25, 0)
    petsFrame:SetPoint("BOTTOMRIGHT", -10, 50)
    petsFrame:SetBackdrop({
        bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = {left=4, right=4, top=4, bottom=4},
    })
    petsFrame:SetBackdropColor(unpack(PSM.Config.COLORS.BACKGROUND))

    -- Mouse-wheel navigation
    petsFrame:EnableMouseWheel(true)
    petsFrame:SetScript("OnMouseWheel", function(_, delta)
        GoToPage(panel, panel.currentPage + (delta < 0 and 1 or -1))
    end)



    panel.petsFrame  = petsFrame
    panel.modelRows  = {}
    panel.allModels  = {}
    panel.currentPage = PSM.state.modelsPanelCurrentPage or 1
    _G.PSM_modelsPanelCurrentPage = panel.currentPage

    -- Ensure petsPerColumn setting exists
    if PetStableManagementDB.settings.petsPerColumn == nil then
        PetStableManagementDB.settings.petsPerColumn = PSM.Config.DEFAULT_PETS_PER_COLUMN
    end

    -- Build pooled model rows (max possible, hidden initially)
    local MAX_ROWS = PSM.Config.MAX_PETS_PER_COLUMN * 2
    for i = 1, MAX_ROWS do
        local petRow = PSM.ModelRow:CreateModelRow(petsFrame)
        petRow:Hide()
        panel.modelRows[i] = petRow
    end

    -- Navigation buttons
    local firstButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    firstButton:SetPoint("BOTTOMLEFT", petsFrame, "BOTTOMLEFT", 0, -35)
    firstButton:SetSize(50, 25)
    firstButton:SetText("First")
    firstButton:SetScript("OnClick", function()
        GoToPage(panel, 1)
    end)

    local prevButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    prevButton:SetPoint("LEFT", firstButton, "RIGHT", 5, 0)
    prevButton:SetSize(80, 25)
    prevButton:SetText("Previous")
    prevButton:SetScript("OnClick", function()
        GoToPage(panel, panel.currentPage - 1)
    end)

    local lastButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    lastButton:SetPoint("BOTTOMRIGHT", petsFrame, "BOTTOMRIGHT", 0, -35)
    lastButton:SetSize(50, 25)
    lastButton:SetText("Last")
    lastButton:SetScript("OnClick", function()
        local _, petsPerPage = GetPageLayout()
        local max = math.max(1, math.ceil(#panel.allModels / petsPerPage))
        GoToPage(panel, max)
    end)

    local nextButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    nextButton:SetPoint("RIGHT", lastButton, "LEFT", -5, 0)
    nextButton:SetSize(80, 25)
    nextButton:SetText("Next")
    nextButton:SetScript("OnClick", function()
        GoToPage(panel, panel.currentPage + 1)
    end)

    local pageText = panel:CreateFontString(nil, "OVERLAY")
    pageText:SetFont("Fonts\\FRIZQT__.TTF", 12)
    pageText:SetPoint("BOTTOM", petsFrame, "BOTTOM", 0, -25)
    pageText:SetText("Page 1 of 1")

    -- Page-jump controls
    local pageJumpFrame = CreateFrame("Frame", nil, panel)
    pageJumpFrame:SetSize(150, 25)
    pageJumpFrame:SetPoint("BOTTOM", petsFrame, "BOTTOM", 0, -5)

    local pageJumpEditBox = CreateFrame("EditBox", nil, pageJumpFrame, "InputBoxTemplate")
    pageJumpEditBox:SetSize(50, 25)
    pageJumpEditBox:SetPoint("CENTER", pageJumpFrame, "CENTER", 0, 16)
    pageJumpEditBox:SetAutoFocus(false)
    pageJumpEditBox:SetNumeric(true)
    pageJumpEditBox:SetMaxLetters(4)
    pageJumpEditBox:SetJustifyH("CENTER")

    local function CommitPageJump()
        local _, ppp = GetPageLayout()
        local pageNum = tonumber(pageJumpEditBox:GetText())
        if pageNum and pageNum >= 1 and pageNum <= math.ceil(#panel.allModels / ppp) then
            GoToPage(panel, pageNum)
        end
        pageJumpEditBox:ClearFocus()
    end
    pageJumpEditBox:SetScript("OnEnterPressed", CommitPageJump)
    pageJumpEditBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)

    local pageJumpButton = CreateFrame("Button", nil, pageJumpFrame, "UIPanelButtonTemplate")
    pageJumpButton:SetSize(60, 25)
    pageJumpButton:SetPoint("LEFT", pageJumpEditBox, "RIGHT", 5, 0)
    pageJumpButton:SetText("Go")
    pageJumpButton:SetScript("OnClick", CommitPageJump)

    -- Apply ElvUI skin where available
    if PSM.UI and PSM.UI.ApplyElvUISkin then
        PSM.UI:ApplyElvUISkin(prevButton,     "button")
        PSM.UI:ApplyElvUISkin(nextButton,     "button")
        PSM.UI:ApplyElvUISkin(pageJumpButton, "button")
        PSM.UI:ApplyElvUISkin(firstButton,    "button")
        PSM.UI:ApplyElvUISkin(lastButton,     "button")
    end

    panel.prevButton       = prevButton
    panel.nextButton       = nextButton
    panel.firstButton      = firstButton
    panel.lastButton       = lastButton
    panel.pageText         = pageText
    panel.pageJumpEditBox  = pageJumpEditBox
    panel.pageJumpButton   = pageJumpButton

    -- Initialise state tables
    PSM.state.selectedModelsFamilies = PSM.state.selectedModelsFamilies or {}
    PSM.state.favoriteModels         = PSM.state.favoriteModels         or {}



    if PSM.ModelsDataLoader and PSM.ModelsDataLoader.CreateRenderCache then
        PSM.ModelsDataLoader:CreateRenderCache()
    end
end

-- ─────────────────────────────────────────────
-- Magnification popup
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:ShowMagnificationPopup(displayId)
    if not displayId then return end

    if not PSM.state.modelMagnificationPopup then
        PSM.state.modelMagnificationPopup = PSM.PopUpManager:CreateModelPopup({
            title               = "Model Magnifier",
            width               = 500,
            height              = 500,
            modelSize           = nil,
            showPetModelsButton = false,
            showTryAgainButton  = false,
            resizable           = true,
            popupName           = "PetStableManagementMagnificationPopup",
            cleanupFunction     = function()
                local popup = PSM.state.modelMagnificationPopup
                if popup then
                    popup.currentPetData  = nil
                    popup.currentDisplayId = nil
                end
            end,
        })
        PSM.state.modelMagnificationPopup:Hide()
    end

    local popup = PSM.state.modelMagnificationPopup
    popup.currentDisplayId = displayId
    popup.currentNPCs    = nil

    PSM.C_Timer.After(0.1, function()
        local mf       = popup.modelFrame
        local settings = PetStableManagementDB.settings
        local views    = PSM.state.modelViews

        mf:SetDisplayInfo(displayId)
        mf:SetCamDistanceScale(1.0)

        if settings.stopAnimation then
            mf:FreezeAnimation(0, 0, 0)
        else
            mf:SetAnimation(0)
        end

        local globalZoom = settings.modelZoom or PSM.Config.DEFAULT_MODEL_ZOOM
        local savedView  = views and views[displayId]
        if savedView then
            mf.rotation = savedView.rotation or math.rad(settings.modelViewAngle or PSM.Config.DEFAULT_MODEL_VIEW_ANGLE)
            mf.zoom     = savedView.zoom or 1.0
            mf:SetRotation(mf.rotation)
            mf:SetCamDistanceScale(mf.zoom / globalZoom)
            mf:SetPosition(savedView.position and unpack(savedView.position) or 0, 0, 0)
        else
            mf.rotation = math.rad(settings.modelViewAngle or PSM.Config.DEFAULT_MODEL_VIEW_ANGLE)
            mf.zoom     = 1.0
            mf:SetRotation(mf.rotation)
            mf:SetCamDistanceScale(mf.zoom / globalZoom)
            mf:SetPosition(0, 0, 0)
        end

        mf.isRotating = false
        mf:Show()
    end)

    -- Favorites button state
    local favTex = PSM.state.favoriteModels[displayId]
        and {0, 0.5, 0, 0.5}
        or  {0.5, 1, 0, 0.5}
    popup.favoritesButton:GetNormalTexture():SetTexCoord(unpack(favTex))
    popup.favoritesButton:GetHighlightTexture():SetTexCoord(unpack(favTex))

    -- Resolve model data and family name
    local modelData, familyName

    -- 1. Models panel list
    if PSM.state.modelsPanel then
        for _, m in ipairs(PSM.state.modelsPanel.allModels or {}) do
            if m.displayId == displayId then
                modelData  = m
                familyName = m.familyName
                break
            end
        end
    end

    -- 2. Stable pets
    if not modelData then
        for _, pet in ipairs(PSM.state.stablePets or {}) do
            if pet.displayID == displayId then
                familyName = pet.familyName
                modelData  = { displayId = displayId, familyName = familyName, npcs = {} }
                break
            end
        end
    end

    -- 3. PetModels registry
    if not modelData and PSM.PetModels then
        for _, famName in ipairs(PSM.PetModels:GetAvailableFamilies()) do
            local info = PSM.PetModels:GetModelInfo(famName, displayId)
            if info then
                modelData  = info
                familyName = famName
                break
            end
        end
    end

    familyName = familyName or "Unknown"
    popup.infoText:SetText(string.format("%s - Display ID: %d", familyName, displayId))

    -- Build NPC lines
    local function BuildNPCLines(npcs)
        local lines = {}
        for _, npc in ipairs(npcs) do
            local classTag = (npc.classification and npc.classification ~= "Normal")
                and string.format("%s, ", npc.classification) or ""
            lines[#lines + 1] = string.format(
                "%s (%s|Hnpc:%s|h|cff00ff00ID: %s|h|r, Location: %s, Expansion: %s)",
                npc.name,
                classTag,
                npc.npcId or "?",
                npc.npcId or "?",
                PSM.PopUpManager:BuildCoordsLocationLabel(npc.npcId, npc.location),
                npc.expansion or "Unknown")
        end
        return lines
    end

    local npcLines = {}
    if modelData and modelData.npcs and #modelData.npcs > 0 then
        npcLines = BuildNPCLines(modelData.npcs)
        popup.currentNPCs = modelData.npcs
    elseif PSM.PetModels then
        for _, famName in ipairs(PSM.PetModels:GetAvailableFamilies()) do
            local info = PSM.PetModels:GetModelInfo(famName, displayId)
            if info and info.npcs and #info.npcs > 0 then
                npcLines = BuildNPCLines(info.npcs)
                popup.currentNPCs = info.npcs
                break
            end
        end
    end

    if #npcLines == 0 then
        npcLines[1] = "No location data available"
    end

    local npcText = table.concat(npcLines, "\n")
    popup.currentNPCs = modelData and modelData.npcs or popup.currentNPCs or {}
    popup.npcPlainText = npcText
    popup:SetNPCText(npcText)
    popup.npcsScrollFrame:Show()
    popup.npcsScrollBar:Show()

    PSM.C_Timer.After(0.01, function()
        local extraHeight = popup.npcsText:GetContentHeight() - 7 + 20
        if extraHeight > 0 then
            local newHeight = math.max(
                popup.modelFrame:GetHeight() + 20,
                popup:GetHeight() - extraHeight + extraHeight)
            popup:SetHeight(newHeight)
        end
    end)

    popup:SetScript("OnEnter", nil)
    popup:SetScript("OnLeave", nil)
    popup:Show()
    popup:Raise()
end

-- ─────────────────────────────────────────────
-- Public toggle
-- ─────────────────────────────────────────────

function PSM.ModelsPanel:Toggle()
    if UnitAffectingCombat("player") then
        print("|cFFFF0000Pet Model Browser: Cannot open panel during combat.|r")
        return
    end
    PSM.PanelManager:TogglePanel("modelsPanel", function() self:CreateModelsPanel() end)
end