-- Shared/PopUpManager.lua
-- Pop-up management for PetStableManagement

local addonName = "PetStableManagement"
_G.PSM = _G.PSM or {}
local PSM = _G.PSM
PSM.PopUpManager = PSM.PopUpManager or {}

-- ============================================================
-- Helpers
-- ============================================================

local function GetDB() return PetStableManagementDB.settings end

local function SetCamDistanceScaleIfChanged(modelFrame, scale)
    if modelFrame.lastCamDistanceScale ~= scale then
        modelFrame.lastCamDistanceScale = scale
        modelFrame:SetCamDistanceScale(scale)
    end
end

local function GetViewKey(popup)
    if popup.currentPetData and popup.currentPetData.guid then
        return "pet_" .. popup.currentPetData.guid
    end
    return popup.currentDisplayId
end

local function SaveView(popup, updates)
    local key = GetViewKey(popup)
    if not key then return end
    PSM.state.modelViews[key] = PSM.state.modelViews[key] or {}
    for k, v in pairs(updates) do
        PSM.state.modelViews[key][k] = v
    end
    if PSM.Data and PSM.Data.SaveSettings then
        PSM.Data:SaveSettings()
    end
end

local function ApplyModelView(modelFrame, view)
    local db = GetDB()
    local globalZoom = db.modelZoom or PSM.Config.DEFAULT_MODEL_ZOOM
    modelFrame.rotation = view.rotation or math.rad(db.modelViewAngle or PSM.Config.DEFAULT_MODEL_VIEW_ANGLE)
    modelFrame.zoom     = view.zoom or 1.0
    modelFrame:SetRotation(modelFrame.rotation)
    SetCamDistanceScaleIfChanged(modelFrame, modelFrame.zoom / globalZoom)
    modelFrame:SetPosition(unpack(view.position or {0, 0, 0}))
    modelFrame.isRotating = false
end

local function GetPopupSpecialization(displayId, petData)
    if petData then
        if petData.specName and petData.specName ~= "" then
            return petData.specName
        end
        if petData.familyName then
            local spec = PSM.Config.FAMILY_TO_SPEC[petData.familyName]
            if spec then return spec end
        end
    end

    if displayId then
        if PSM.state.stablePets then
            for _, pet in ipairs(PSM.state.stablePets) do
                if tonumber(pet.displayID) == tonumber(displayId) then
                    if pet.specName and pet.specName ~= "" then
                        return pet.specName
                    end
                    if pet.familyName then
                        local spec = PSM.Config.FAMILY_TO_SPEC[pet.familyName]
                        if spec then return spec end
                    end
                end
            end
        end

        if PSM.state.modelsPanel and PSM.state.modelsPanel.allModels then
            for _, model in ipairs(PSM.state.modelsPanel.allModels) do
                if model.displayId == displayId then
                    local spec = PSM.Config.FAMILY_TO_SPEC[model.familyName]
                    if spec then return spec end
                end
            end
        end

        if PSM.PetModels then
            for _, familyName in ipairs(PSM.PetModels:GetAvailableFamilies()) do
                local info = PSM.PetModels:GetModelInfo(familyName, displayId)
                if info then
                    local spec = PSM.Config.FAMILY_TO_SPEC[familyName]
                    if spec then return spec end
                end
            end
        end
    end

    return nil
end

-- Parses faction reaction string and returns colored faction indicators
local function formatFactionIndicator(factionReaction)
    if not factionReaction then return "" end
    local alliance, horde = factionReaction:match("%[([^,]*),([^%]]*)%]")
    if not alliance or not horde then return "" end
    alliance = alliance ~= "null" and tonumber(alliance)
    horde    = horde    ~= "null" and tonumber(horde)
    local result = ""
    if alliance then
        local color = alliance == -1 and "ff0000" or alliance == 0 and "ffff00" or "00ff00"
        result = result .. "|cff" .. color .. "A|r"
    end
    if horde then
        local color = horde == -1 and "ff0000" or horde == 0 and "ffff00" or "00ff00"
        result = result .. "|cff" .. color .. "H|r"
    end
    return result ~= "" and " " .. result or ""
end

-- Returns the [+] note link for an NPC line, colored by note state.
-- grey = no notes, yellow = seed note only, green = user note exists
local function BuildNoteLink(npcId)
    local hasSeed = PSM.NotesData and PSM.NotesData[npcId]
    local hasUser = PSM_UserNotes and PSM_UserNotes[npcId] and PSM_UserNotes[npcId] ~= ""
    local color
    if hasUser then
        color = "ffffff00"  -- yellow: user note (rarer, personal)
    elseif hasSeed then
        color = "ff00ff00"  -- green: seed note only
    else
        color = "ff888888"  -- grey: no notes
    end
    return string.format("|c%s|Hpsmnote:%d|h[+]|h|r", color, npcId)
end

function PSM.PopUpManager:UpdatePopupBackground(popup, displayId, petData)
    if not popup or not popup.border or not popup.border.specBg then return end

    local specialization = GetPopupSpecialization(displayId, petData)
    local backgroundType = GetDB().backgroundType or PSM.Config.DEFAULT_BACKGROUND_TYPE

    if backgroundType == "stablemaster" and specialization then
        popup.border.specBg:SetAtlas(PSM.Config.SPEC_BACKGROUND_ATLAS[specialization] or PSM.Config.SPEC_BACKGROUND_ATLAS.Ferocity)
        popup.border.specBg:SetVertexColor(1, 1, 1, 1)
        popup.border.specBg:Show()
        popup.border:SetBackdropColor(0, 0, 0, 0)
    elseif backgroundType == "custom" and specialization then
        popup.border.specBg:SetTexture(PSM.Config.SPEC_BACKGROUND_CUSTOM[specialization] or PSM.Config.SPEC_BACKGROUND_CUSTOM.Ferocity)
        popup.border.specBg:SetVertexColor(1, 1, 1, 1)
        popup.border.specBg:Show()
        popup.border:SetBackdropColor(0, 0, 0, 0)
    else
        popup.border.specBg:Hide()
        popup.border:SetBackdropColor(0, 0, 0, PSM.Config:GetOpacity())
    end
end

-- ============================================================
-- CreateModelPopup
-- ============================================================

function PSM.PopUpManager:CreateModelPopup(config)
    config = config or {}
    local title     = config.title     or "Model Viewer"
    local width     = config.width     or 500
    local height    = config.height    or 560
    local modelSize = config.modelSize or math.min(width - 40, height - 220)
    local resizable = config.resizable or false
    local popupName = config.popupName or "PetStableManagementModelPopup"

    -- Root frame
    local popup = CreateFrame("Frame", popupName, UIParent)
    popup:SetSize(width, height)
    popup:SetPoint("CENTER")
    popup:SetFrameStrata("DIALOG")
    popup:SetFrameLevel(1000)
    popup:SetToplevel(true)
    popup:SetClampedToScreen(true)
    popup:SetClipsChildren(true)
    popup:SetMovable(true)
    popup:EnableMouse(true)
    popup:RegisterForDrag("LeftButton")
    popup:SetScript("OnDragStart", popup.StartMoving)
    popup:SetScript("OnDragStop",  popup.StopMovingOrSizing)

    -- Resize handle
    if resizable then
        popup:SetResizable(true)
        local grip = CreateFrame("Button", nil, popup)
        grip:SetSize(16, 16)
        grip:SetPoint("BOTTOMRIGHT", -5, 5)
        grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
        grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
        grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
        grip:SetScript("OnMouseDown", function() popup:StartSizing("BOTTOMRIGHT") end)
        grip:SetScript("OnMouseUp",   function() popup:StopMovingOrSizing() end)
        PSM.UI:ApplyElvUISkin(grip, "resizegrip")
    end

    -- Background / border
    popup.border = CreateFrame("Frame", nil, popup, "BackdropTemplate")
    popup.border:SetAllPoints()
    popup.border:SetBackdrop({
        bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 30, edgeSize = 5,
        insets = {left=4, right=4, top=4, bottom=4}
    })
    popup.border:SetBackdropColor(0, 0, 0, PSM.Config:GetOpacity())
    popup.border:SetFrameLevel(popup:GetFrameLevel() - 1)

    popup.border.specBg = popup.border:CreateTexture(nil, "BACKGROUND", nil, -1)
    popup.border.specBg:SetAllPoints()
    popup.border.specBg:Hide()

    -- Optional: Pet Models back button
    if config.showPetModelsButton then
        popup.modelsButton = CreateFrame("Button", nil, popup, "UIPanelButtonTemplate")
        popup.modelsButton:SetPoint("TOPLEFT", 20, -10)
        popup.modelsButton:SetSize(80, 25)
        popup.modelsButton:SetText("< Pet Models")
        popup.modelsButton:SetNormalFontObject("GameFontNormalSmall")
        popup.modelsButton:SetScript("OnClick", function()
            popup:Hide()
            if PSM.state.modelsPanel and PSM.state.modelsPanel:IsVisible() then
                PSM.state.modelsPanel:Raise()
            elseif PSM.PanelManager and PSM.PanelManager.TogglePanel then
                PSM.PanelManager:TogglePanel("modelsPanel", function()
                    if PSM.ModelsPanel and PSM.ModelsPanel.CreateModelsPanel then
                        PSM.ModelsPanel:CreateModelsPanel()
                    end
                end)
            elseif PSM.state.modelsPanel then
                PSM.state.modelsPanel:Show()
                PSM.state.modelsPanel:Raise()
            end
        end)
        PSM.UI:ApplyElvUISkin(popup.modelsButton, "button")
    end

    -- Title
    popup.title = popup:CreateFontString(nil, "OVERLAY")
    popup.title:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE")
    popup.title:SetPoint("TOP", 0, -15)
    popup.title:SetText(title)
    popup.title:SetTextColor(1, 0.82, 0)

    -- 3D model frame
    local mf = CreateFrame("PlayerModel", nil, popup)
    mf:SetSize(modelSize - 10, modelSize - 10)
    mf:SetPoint("TOP", popup.title, "BOTTOM", -5, -15)
    mf:SetFrameLevel(popup:GetFrameLevel() + 1)
    mf.rotation            = math.pi * 2
    mf.zoom                = 1.0
    mf.lastCamDistanceScale = 1.0
    mf:SetRotation(mf.rotation)
    SetCamDistanceScaleIfChanged(mf, mf.lastCamDistanceScale)
    mf.isRotating = false
    popup.modelFrame = mf

    if resizable then
        PSM.C_Timer.After(0.01, function()
            mf:SetSize(math.max(300, width - 50), math.max(300, height - 230))
        end)
    end

    -- Reset view button (top-right of model)
    popup.modelReset = CreateFrame("Button", nil, popup)
    popup.modelReset:SetSize(20, 20)
    popup.modelReset:SetPoint("TOPRIGHT", mf, "TOPRIGHT", -2, -2)
    popup.modelReset:SetFrameLevel(mf:GetFrameLevel() + 2)
    popup.modelReset:SetNormalTexture("Interface\\Buttons\\UI-RefreshButton")
    popup.modelReset:SetHighlightTexture("Interface\\Buttons\\UI-RefreshButton")
    popup.modelReset:SetAlpha(0.7)
    popup.modelReset:Hide()
    popup.modelReset:SetScript("OnClick", function()
        local db = GetDB()
        local hPos = (db.modelHorizontalPosition or PSM.Config.DEFAULT_MODEL_HORIZONTAL_POSITION) * 2.0
        local vPos = (db.modelVerticalPosition    or PSM.Config.DEFAULT_MODEL_VERTICAL_POSITION)    * 2.0
        ApplyModelView(mf, {
            rotation = math.rad(db.modelViewAngle or PSM.Config.DEFAULT_MODEL_VIEW_ANGLE),
            zoom     = 1.0,
            position = {0, hPos, vPos},
        })
        SetCamDistanceScaleIfChanged(mf, 1.0 / (db.modelZoom or PSM.Config.DEFAULT_MODEL_ZOOM))
        mf.isMoving = false
        if PSM.RotationFrame then PSM.RotationFrame.activeModels[mf] = nil end
        if PSM.MovementFrame then PSM.MovementFrame.activeModels[mf] = nil end
        SaveView(popup, { rotation = mf.rotation, zoom = mf.zoom, position = {0, hPos, vPos} })
    end)
    popup.modelReset:SetScript("OnEnter", function(self)
        self:SetAlpha(1.0)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Reset View")
        GameTooltip:Show()
    end)
    popup.modelReset:SetScript("OnLeave", function(self)
        self:SetAlpha(0.7)
        GameTooltip:Hide()
    end)

    -- Model mouse interaction
    mf:EnableMouse(true)
    mf:EnableMouseWheel(true)

    mf:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" then
            self.isRotating = true
            self.lastX = GetCursorPosition()
            if PSM.RotationFrame then PSM.RotationFrame.activeModels[self] = true end
        elseif button == "RightButton" then
            self.isMoving = true
            self.movementMode = "YZ"
            local scale = UIParent:GetEffectiveScale()
            self.lastX, self.lastY = GetCursorPosition()
            self.lastX, self.lastY = self.lastX / scale, self.lastY / scale
            self.posX, self.posY, self.posZ = self:GetPosition()
            if not self.posX then self.posX, self.posY, self.posZ = 0, 0, 0 end
            if PSM.MovementFrame then PSM.MovementFrame.activeModels[self] = true end
        end
    end)

    mf:SetScript("OnMouseUp", function(self, button)
        if button == "LeftButton" then
            self.isRotating = false
            if PSM.RotationFrame then PSM.RotationFrame.activeModels[self] = nil end
            PSM.state.globalModelRotation = self.rotation
            if PSM.Data and PSM.Data.SaveSettings then PSM.Data:SaveSettings() end
        elseif button == "RightButton" then
            self.isMoving = false
            if PSM.MovementFrame then PSM.MovementFrame.activeModels[self] = nil end
            SaveView(popup, { position = {self:GetPosition()} })
        end
    end)

    mf:SetScript("OnMouseWheel", function(self, delta)
        local db = GetDB()
        self.zoom = math.max(0.1, math.min(2.0, (self.zoom or 1.0) - delta * 0.05))
        SetCamDistanceScaleIfChanged(self, self.zoom / (db.modelZoom or PSM.Config.DEFAULT_MODEL_ZOOM))
        SaveView(popup, { zoom = self.zoom })
    end)

    mf:SetScript("OnEnter", function()
        popup.modelReset:Show()
        GameTooltip:SetOwner(mf, "ANCHOR_RIGHT")
        GameTooltip:SetText("Left-click and drag to rotate\nRight-click and drag to move (left/right, up/down)\nScroll to zoom")
        GameTooltip:Show()
    end)

    mf:SetScript("OnLeave", function()
        if not popup.modelReset:IsMouseOver() then popup.modelReset:Hide() end
        GameTooltip:Hide()
    end)

    -- Favorites button (top-left of model)
    popup.favoritesButton = CreateFrame("Button", nil, popup)
    popup.favoritesButton:SetSize(20, 20)
    popup.favoritesButton:SetPoint("TOPLEFT", mf, "TOPLEFT", 2, -2)
    popup.favoritesButton:SetFrameLevel(mf:GetFrameLevel() + 2)
    popup.favoritesButton:SetNormalTexture("Interface\\Common\\ReputationStar")
    popup.favoritesButton:SetHighlightTexture("Interface\\Common\\ReputationStar")
    local function SetFavTexCoord(btn, isFav)
        local coord = isFav and {0, 0.5, 0, 0.5} or {0.5, 1, 0, 0.5}
        btn:GetNormalTexture():SetTexCoord(unpack(coord))
        btn:GetHighlightTexture():SetTexCoord(unpack(coord))
    end
    popup.favoritesButton:SetScript("OnClick", function(self)
        local id = popup.currentDisplayId or (popup.currentPetData and popup.currentPetData.displayId)
        if not id then return end
        PSM.state.favoriteModels[id] = not PSM.state.favoriteModels[id]
        SetFavTexCoord(self, PSM.state.favoriteModels[id])
        if PSM.Data and PSM.Data.SaveSettings then PSM.Data:SaveSettings() end
        local panel = PSM.state.modelsPanel
        if panel and panel.showFavorites and PSM.ModelsDataLoader then
            PSM.ModelsDataLoader:LoadModelsForSelectedFamilies()
        end
    end)
    popup.favoritesButton:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:SetText("Add to Favorites")
        GameTooltip:Show()
    end)
    popup.favoritesButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    popup.SetFavTexCoord = SetFavTexCoord

    -- Info text
    popup.infoText = popup:CreateFontString(nil, "OVERLAY")
    popup.infoText:SetFont("Fonts\\FRIZQT__.TTF", 12)
    popup.infoText:SetPoint("TOP", mf, "BOTTOM", 0, -20)
    popup.infoText:SetWidth(width - 50)
    popup.infoText:SetJustifyH("CENTER")

    -- Taming requirements line (SimpleHTML, hidden when no requirements)
    popup.tamingFrame = CreateFrame("SimpleHTML", nil, popup)
    popup.tamingFrame:SetPoint("TOP", popup.infoText, "BOTTOM", 0, -8)
    popup.tamingFrame:SetSize(width - 50, 20)
    popup.tamingFrame:SetFont("p", "Fonts\\FRIZQT__.TTF", 11, "")
    popup.tamingFrame:SetHyperlinksEnabled(true)
    popup.tamingFrame:Hide()

    popup.tamingFrame:SetScript("OnHyperlinkEnter", function(_, link)
        local linkType, data = strsplit(":", link, 2)
        if linkType ~= "psmtaming" then return end
        local rule = PSM.TamingRules and PSM.TamingRules[data]
        if not rule or not rule.hint then return end
        GameTooltip:SetOwner(popup.tamingFrame, "ANCHOR_CURSOR")
        if rule.hint.itemID then
            GameTooltip:SetHyperlink("item:" .. rule.hint.itemID)
        elseif rule.hint.questID then
            GameTooltip:SetHyperlink("quest:" .. rule.hint.questID)
        end
        GameTooltip:Show()
    end)

    popup.tamingFrame:SetScript("OnHyperlinkLeave", function()
        GameTooltip:Hide()
    end)

    popup.tamingFrame:SetScript("OnHyperlinkClick", function(_, link, _, button)
        local linkType, data = strsplit(":", link, 2)
        if linkType ~= "psmtaming" then return end
        local rule = PSM.TamingRules and PSM.TamingRules[data]
        if rule then
            if button == "LeftButton" then
                if rule.itemID then
                    PSM.PopUpManager:ShowURLPopup("https://www.wowhead.com/item=" .. rule.itemID)
                elseif rule.hint and rule.hint.questID then
                    PSM.PopUpManager:ShowURLPopup("https://www.wowhead.com/quest=" .. rule.hint.questID)
                end
            end
        end
    end)

    -- NPC scroll area
    popup.npcsScrollFrame = CreateFrame("ScrollFrame", nil, popup)
    popup.npcsScrollFrame:SetPoint("TOP", popup.tamingFrame, "BOTTOM", 20, -8)
    popup.npcsScrollFrame:SetSize(width - 50, 75)
    popup.npcsScrollFrame:EnableMouse(true)

    popup.npcsText = CreateFrame("SimpleHTML", nil, popup.npcsScrollFrame)
    popup.npcsText:SetSize(width - 70, 75)
    popup.npcsText:SetPoint("TOPLEFT")
    popup.npcsText:SetFont("p", "Fonts\\FRIZQT__.TTF", 12, "")
    popup.npcsText:SetHyperlinksEnabled(true)
    popup.npcsScrollFrame:SetScrollChild(popup.npcsText)

    local scrollBar = CreateFrame("Slider", nil, popup, "UIPanelScrollBarTemplate")
    scrollBar:SetPoint("TOPLEFT",    popup.npcsScrollFrame, "TOPLEFT",    -20, -16)
    scrollBar:SetPoint("BOTTOMLEFT", popup.npcsScrollFrame, "BOTTOMLEFT", -20,  16)
    scrollBar:SetMinMaxValues(0, 0)
    scrollBar:SetValueStep(1)
    scrollBar.scrollStep = 1
    scrollBar:SetScript("OnValueChanged", function(_, v) popup.npcsScrollFrame:SetVerticalScroll(v) end)
    popup.npcsScrollBar = scrollBar
    PSM.UI:ApplyElvUISkin(scrollBar, "scrollbar")

    popup.npcsScrollFrame:SetScript("OnMouseWheel", function(_, delta)
        local cur = scrollBar:GetValue()
        local mn, mx = scrollBar:GetMinMaxValues()
        scrollBar:SetValue(math.max(mn, math.min(mx, cur - delta * 20)))
    end)

    -- Hyperlink handlers (npc, psmcoords, psmnote)
    popup.npcsText:SetScript("OnHyperlinkEnter", function(_, link)
        local linkType, data = strsplit(":", link, 2)
        GameTooltip:SetOwner(popup.npcsText, "ANCHOR_CURSOR")
        if linkType == "psmcoords" then
            GameTooltip:SetText("Click to view TomTom waypoints")
        elseif linkType == "psmcond" then
            local npcId = tonumber(data)
            local condList = npcId and PSM.ConditionsData and PSM.ConditionsData.Get(npcId)
            if condList and #condList > 0 then
                GameTooltip:SetText("Special Conditions")
                for _, cond in ipairs(condList) do
                    GameTooltip:AddLine(cond, 1, 1, 1)
                end
            end
        elseif linkType == "psmnote" then
            local npcId = tonumber(data)
            local hasSeed = npcId and PSM.NotesData and PSM.NotesData[npcId]
            local hasUser = npcId and PSM_UserNotes and PSM_UserNotes[npcId] and PSM_UserNotes[npcId] ~= ""
            if hasUser then
                GameTooltip:SetText("Edit note")
                GameTooltip:AddLine(PSM_UserNotes[npcId], 1, 1, 0, 1, true)
            elseif hasSeed then
                GameTooltip:SetText("Add your own note")
                GameTooltip:AddLine(PSM.NotesData[npcId], 0.8, 0.8, 0.8, 1, true)
            else
                GameTooltip:SetText("Add a note for this NPC")
            end
        else
            GameTooltip:SetText("Click to copy Wowhead URL")
        end
        GameTooltip:Show()
    end)

    popup.npcsText:SetScript("OnHyperlinkLeave", function() GameTooltip:Hide() end)

    popup.npcsText:SetScript("OnHyperlinkClick", function(_, link)
        local linkType, data = strsplit(":", link, 2)
        if linkType == "npc" then
            PSM.PopUpManager:ShowURLPopup("https://www.wowhead.com/npc=" .. data)
        elseif linkType == "psmnote" then
            local npcId = tonumber(data)
            if npcId then
                local npcName = "NPC"
                if popup.currentNPCs then
                    for _, npc in ipairs(popup.currentNPCs) do
                        if tonumber(npc.npcId) == npcId then
                            npcName = npc.name or npcName
                            break
                        end
                    end
                end
                PSM.PopUpManager:ShowNoteEditor(npcId, npcName, popup)
            end
        elseif linkType == "psmcoords" then
            local npcId, location = strsplit(";", data, 2)
            if npcId and location then
                npcId = tonumber(npcId)
                local npcName = "NPC"
                if popup.currentNPCs then
                    for _, npc in ipairs(popup.currentNPCs) do
                        if tonumber(npc.npcId) == npcId then
                            npcName = npc.name or npcName
                            break
                        end
                    end
                end
                local waypoints = PSM.PopUpManager:GetCoordsWaypointText(npcId, location, npcName)
                if waypoints then
                    PSM.PopUpManager:ShowCoordsPopup(waypoints, npcName, location)
                end
            end
        elseif linkType == "psmnote" then
            local npcId = tonumber(data)
            if npcId then
                local npcName = "NPC"
                if popup.currentNPCs then
                    for _, npc in ipairs(popup.currentNPCs) do
                        if tonumber(npc.npcId) == npcId then
                            npcName = npc.name or npcName
                            break
                        end
                    end
                end
                PSM.PopUpManager:ShowNoteEditor(npcId, npcName, popup)
            end
        end
    end)

    function popup:SetNPCText(text)
        local html = "<html><body><p style='text-align: justify;'>" .. text:gsub("\n", "<br/>") .. "</p></body></html>"
        self.npcsText:SetText(html)
        PSM.C_Timer.After(0.01, function()
            local h = self.npcsText:GetContentHeight()
            self.npcsText:SetHeight(math.max(h, 75))
            local maxScroll = math.max(0, h - self.npcsScrollFrame:GetHeight())
            self.npcsScrollBar:SetMinMaxValues(0, maxScroll)
            self.npcsScrollBar:SetValue(0)
            self.npcsScrollFrame:SetVerticalScroll(0)
        end)
    end

    -- Optional: Try Again button
    if config.showTryAgainButton then
        popup.tryAgainButton = CreateFrame("Button", nil, popup, "UIPanelButtonTemplate")
        popup.tryAgainButton:SetSize(80, 25)
        popup.tryAgainButton:SetText("Try Again")
        popup.tryAgainButton:SetNormalFontObject("GameFontNormalSmall")
        popup.tryAgainButton:SetFrameStrata("TOOLTIP")
        popup.tryAgainButton:SetPoint("TOPRIGHT", popup.npcsScrollFrame, "BOTTOMRIGHT", -20, -10)
        popup.tryAgainButton:SetScript("OnClick", function()
            if config.onTryAgain then config.onTryAgain() end
        end)
        PSM.UI:ApplyElvUISkin(popup.tryAgainButton, "button")
    end

    -- Close button
    popup.closeButton = CreateFrame("Button", nil, popup, "UIPanelCloseButton")
    popup.closeButton:SetPoint("TOPRIGHT", -5, -5)
    popup.closeButton:SetSize(20, 20)
    popup.closeButton:SetFrameLevel(popup:GetFrameLevel() + 10)
    popup.closeButton:SetScript("OnClick", function() popup:Hide() end)
    PSM.UI:ApplyElvUISkin(popup.closeButton, "closebutton")

    -- ESC closes popup
    popup:EnableKeyboard(true)
    popup:SetPropagateKeyboardInput(true)
    popup:SetScript("OnKeyDown", function(self, key)
        self:SetPropagateKeyboardInput(key ~= "ESCAPE")
        if key == "ESCAPE" then self:Hide() end
    end)

    -- Resize handler
    if resizable then
        popup:SetScript("OnSizeChanged", function(self, w, h)
            local mw = math.max(300, w - 40)
            local mh = math.max(300, h - 220)
            mf:SetSize(mw - 10, mh - 10)
            if self.infoText        then self.infoText:SetWidth(w - 50) end
            if self.tamingFrame     then self.tamingFrame:SetWidth(w - 50) end
            if self.npcsScrollFrame then
                local sh = math.max(75, h - mh - 150)
                self.npcsScrollFrame:SetSize(w - 50, sh)
            end
            if self.npcsText then
                self.npcsText:SetWidth(w - 70)
                if self.npcsScrollFrame then
                    self.npcsText:SetHeight(self.npcsScrollFrame:GetHeight())
                end
            end
            if self.npcPlainText then
                PSM.C_Timer.After(0.01, function() self:SetNPCText(self.npcPlainText) end)
            end
        end)
    end

    -- OnHide cleanup
    popup:SetScript("OnHide", function(self)
        if config.cleanupFunction then
            config.cleanupFunction()
        else
            if self.infoText then self.infoText:SetText("") end
            if self.npcsText then self.npcsText:SetText("") end
            self.currentPetData   = nil
            self.currentDisplayId = nil
        end
    end)

    return popup
end

-- ============================================================
-- ShowURLPopup
-- ============================================================

function PSM.PopUpManager:ShowURLPopup(url)
    if not self.urlPopup then
        local f = CreateFrame("Frame", "PSMURLPopup", UIParent, "BackdropTemplate")
        f:SetSize(300, 100)
        f:SetPoint("CENTER")
        f:SetFrameStrata("TOOLTIP")
        f:SetMovable(true)
        f:SetToplevel(true)
        f:EnableMouse(true)
        f:RegisterForDrag("LeftButton")
        f:SetScript("OnDragStart", f.StartMoving)
        f:SetScript("OnDragStop",  f.StopMovingOrSizing)
        f:SetBackdrop({
            bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 16, edgeSize = 16,
            insets = {left=4, right=4, top=4, bottom=4}
        })
        f:SetBackdropColor(0, 0, 0, 0.9)

        f.title = f:CreateFontString(nil, "OVERLAY")
        f.title:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        f.title:SetPoint("TOP", 0, -10)
        f.title:SetTextColor(1, 0.82, 0)
        f.title:SetText("Wowhead URL")

        f.editBox = CreateFrame("EditBox", nil, f, "InputBoxTemplate")
        f.editBox:SetPoint("TOP", f.title, "BOTTOM", 0, -10)
        f.editBox:SetSize(260, 20)
        f.editBox:SetAutoFocus(true)
        f.editBox:SetScript("OnEscapePressed", function() f:Hide() end)

        f.closeButton = CreateFrame("Button", nil, f, "UIPanelCloseButton")
        f.closeButton:SetPoint("TOPRIGHT", -5, -5)
        f.closeButton:SetScript("OnClick", function() f:Hide() end)
        PSM.UI:ApplyElvUISkin(f.closeButton, "closebutton")
        PSM.UI:ApplyElvUISkin(f.editBox, "editbox")

        self.urlPopup = f
    end
    self.urlPopup.editBox:SetText(url)
    self.urlPopup.editBox:HighlightText()
    self.urlPopup:Show()
end

-- ============================================================
-- Coords helpers
-- ============================================================

function PSM.PopUpManager:GetCoordsDataForLocation(npcId, location)
    if not npcId or not location or not CoordsData then return nil end
    local npcData = CoordsData[npcId]
    if npcData and npcData[location] and npcData[location].coords and npcData[location].coords ~= "" then
        return npcData[location]
    end
    return nil
end

function PSM.PopUpManager:BuildCoordsLocationLabel(npcId, location)
    if not location or location == "" then return "Unknown" end
    local parts = {}
    for loc in string.gmatch(location, "[^;]+") do
        loc = strtrim(loc)
        if loc ~= "" then
            local coordsData = self:GetCoordsDataForLocation(npcId, loc)
            if coordsData then
                parts[#parts + 1] = string.format("|cff00ff00|Hpsmcoords:%d;%s|h%s|h|r", npcId, loc, loc)
            else
                parts[#parts + 1] = loc
            end
        end
    end
    return table.concat(parts, "; ")
end

function PSM.PopUpManager:GetCoordsWaypointText(npcId, location, npcName)
    local data = self:GetCoordsDataForLocation(npcId, location)
    if not data then return nil end
    local lines = {}
    for coord in string.gmatch(data.coords, "[^|]+") do
        local x, y = coord:match("^%s*([0-9%.]+),%s*([0-9%.]+)%s*$")
        if x and y then
            lines[#lines + 1] = string.format("/way #%s %s %s %s", data.uiMapId, x, y, npcName or "")
        end
    end
    return table.concat(lines, "\n")
end

-- ============================================================
-- ShowCoordsPopup
-- ============================================================

function PSM.PopUpManager:ShowCoordsPopup(text, npcName, location)
    if not self.coordsPopup then
        local f = CreateFrame("Frame", "PSMCoordsPopup", UIParent, "BackdropTemplate")
        f:SetSize(300, 200)
        f:SetPoint("CENTER")
        f:SetFrameStrata("TOOLTIP")
        f:SetFrameLevel(1010)
        f:SetToplevel(true)
        f:SetMovable(true)
        f:SetResizable(true)
        f:SetResizeBounds(300, 150, 800, 800)
        f:EnableMouse(true)
        f:RegisterForDrag("LeftButton")
        f:SetScript("OnDragStart", f.StartMoving)
        f:SetScript("OnDragStop",  f.StopMovingOrSizing)
        f:SetBackdrop({
            bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 14, edgeSize = 14,
            insets = {left=4, right=4, top=4, bottom=4}
        })
        f:SetBackdropColor(0, 0, 0, 0.9)

        f.title = f:CreateFontString(nil, "OVERLAY")
        f.title:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
        f.title:SetPoint("TOP", 0, -10)
        f.title:SetTextColor(1, 0.82, 0)

        f.pasteButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
        f.pasteButton:SetPoint("BOTTOM", f, "BOTTOM", 0, 10)
        f.pasteButton:SetSize(120, 25)
        f.pasteButton:SetText("Create Waypoints")
        f.pasteButton:SetScript("OnClick", function()
            local t = f.editBox:GetText()
            if not t or t == "" then return end
            local lines = { strsplit("\n", t) }
            if _G.TomTom then
                local waypointCount, firstMapId = 0, nil
                for _, line in ipairs(lines) do
                    if strtrim(line) ~= "" then
                        local uiMapId, x, y, name = line:match("/way #(%d+) ([0-9%.]+) ([0-9%.]+) (.+)")
                        if uiMapId and x and y then
                            _G.TomTom:AddWaypoint(tonumber(uiMapId), tonumber(x)/100, tonumber(y)/100, {title = name or ""})
                            waypointCount = waypointCount + 1
                            if not firstMapId then firstMapId = tonumber(uiMapId) end
                        end
                    end
                end
                if firstMapId then
                    WorldMapFrame:Show()
                    WorldMapFrame:SetMapID(firstMapId)
                end
                if waypointCount > 0 and f.npcName and f.location then
                    print("|cff00ff00" .. waypointCount .. " waypoint(s) added on " .. f.location .. " map for " .. f.npcName .. "|r")
                end
            else
                print("|cFFFF0000Please install TomTom addon for navigation waypoints|r")
            end
        end)
        f.pasteButton:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
            GameTooltip:SetText("Requires TomTom addon")
            GameTooltip:SetFrameLevel(self:GetFrameLevel() + 100)
            GameTooltip:SetToplevel(true)
            GameTooltip:Show()
        end)
        f.pasteButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
        PSM.UI:ApplyElvUISkin(f.pasteButton, "button")

        f.contentScroll = CreateFrame("ScrollFrame", "PSMCoordsPopupScrollFrame", f, "UIPanelScrollFrameTemplate")
        f.contentScroll:SetPoint("TOP", f.title, "BOTTOM", 0, -10)
        f.contentScroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -40, 40)
        PSM.UI:ApplyElvUISkin(f.contentScroll, "scrollframe")
        PSM.UI:ApplyElvUISkin(f.contentScroll.ScrollBar, "scrollbar")

        f.editBox = CreateFrame("EditBox", "PSMCoordsEditBox", f.contentScroll)
        f.editBox:SetFontObject("GameFontNormal")
        f.editBox:SetMultiLine(true)
        f.editBox:SetAutoFocus(false)
        f.editBox:SetWidth(f.contentScroll:GetWidth())
        f.editBox:SetHeight(f.contentScroll:GetHeight())
        f.editBox:EnableMouse(true)
        f.editBox:EnableKeyboard(true)
        f.editBox:SetTextColor(1, 1, 1)
        f.editBox:SetScript("OnEscapePressed", function() f:Hide() end)
        f.contentScroll:SetScrollChild(f.editBox)
        PSM.UI:ApplyElvUISkin(f.editBox, "editbox")

        f:SetScript("OnSizeChanged", function()
            f.editBox:SetWidth(f.contentScroll:GetWidth())
            f.editBox:SetHeight(f.contentScroll:GetHeight())
        end)

        f.closeButton = CreateFrame("Button", nil, f, "UIPanelCloseButton")
        f.closeButton:SetPoint("TOPRIGHT", -5, -5)
        f.closeButton:SetFrameLevel(f:GetFrameLevel() + 10)
        f.closeButton:SetScript("OnClick", function() f:Hide() end)
        PSM.UI:ApplyElvUISkin(f.closeButton, "closebutton")

        local grip = CreateFrame("Button", nil, f)
        grip:SetSize(16, 16)
        grip:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -4, 4)
        grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
        grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
        grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
        grip:SetScript("OnMouseDown", function() f:StartSizing("BOTTOMRIGHT") end)
        grip:SetScript("OnMouseUp",   function() f:StopMovingOrSizing() end)
        PSM.UI:ApplyElvUISkin(grip, "resizegrip")

        f:EnableKeyboard(true)
        f:SetPropagateKeyboardInput(true)
        f:SetScript("OnKeyDown", function(self, key)
            self:SetPropagateKeyboardInput(key ~= "ESCAPE")
            if key == "ESCAPE" then self:Hide() end
        end)

        self.coordsPopup = f
    end

    self.coordsPopup.title:SetText(string.format("TomTom Waypoints for \n %s \n(%s)", npcName or "NPC", location or "Unknown"))
    self.coordsPopup.npcName  = npcName
    self.coordsPopup.location = location
    self.coordsPopup.editBox:SetText(text or "")
    self.coordsPopup:Show()
    self.coordsPopup:Raise()

    PSM.C_Timer.After(0.01, function()
        if self.coordsPopup and self.coordsPopup.contentScroll then
            self.coordsPopup.contentScroll:SetVerticalScroll(0)
        end
    end)
end

-- ============================================================
-- ShowMagnificationPopup
-- ============================================================

function PSM.PopUpManager:ShowMagnificationPopup(displayId, petData)
    if not displayId then return end

    if not PSM.state.modelMagnificationPopup then
        PSM.state.modelMagnificationPopup = self:CreateModelPopup({
            title     = "Model Magnifier",
            width     = 500,
            height    = 500,
            resizable = true,
            popupName = "PetStableManagementMagnificationPopup",
            cleanupFunction = function()
                local p = PSM.state.modelMagnificationPopup
                if p then p.currentPetData = nil; p.currentDisplayId = nil end
            end,
        })
        PSM.state.modelMagnificationPopup:Hide()
    end

    local popup = PSM.state.modelMagnificationPopup
    popup.currentDisplayId   = displayId
    popup.currentPetData     = petData
    popup.modelFrame.petData = petData
    self:UpdatePopupBackground(popup, displayId, petData)

    PSM.C_Timer.After(0.1, function()
        local mf = popup.modelFrame
        mf:SetDisplayInfo(displayId)
        SetCamDistanceScaleIfChanged(mf, 1.0)
        if GetDB().stopAnimation then
            mf:FreezeAnimation(0, 0, 0)
        else
            mf:SetAnimation(0)
        end
        local view = PSM.state.modelViews and PSM.state.modelViews[GetViewKey(popup)]
        ApplyModelView(mf, view or {})
    end)

    popup.SetFavTexCoord(popup.favoritesButton, PSM.state.favoriteModels[displayId])

    -- Gather model data
    local familyName = "Unknown"
    local npcs = {}

    if PSM.state.modelsPanel and PSM.state.modelsPanel.allModels then
        for _, m in ipairs(PSM.state.modelsPanel.allModels) do
            if m.displayId == displayId then
                familyName = m.familyName or familyName
                npcs = m.npcs or npcs
                break
            end
        end
    end

    if #npcs == 0 and PSM.state.stablePets then
        for _, pet in ipairs(PSM.state.stablePets) do
            if pet.displayID == displayId then
                familyName = pet.familyName or familyName
                break
            end
        end
    end

    if #npcs == 0 and PSM.PetModels then
        for _, fam in ipairs(PSM.PetModels:GetAvailableFamilies()) do
            local info = PSM.PetModels:GetModelInfo(fam, displayId)
            if info then
                familyName = fam
                npcs = (info.npcs and #info.npcs > 0) and info.npcs or npcs
                break
            end
        end
    end

    self:PopulateModelPopup(popup, displayId, petData, npcs)

    popup:Show()
    popup:Raise()
end

-- ============================================================
-- PopulateModelPopup
-- ============================================================

function PSM.PopUpManager:PopulateModelPopup(popup, displayId, petData, npcs)
    popup.currentDisplayId = displayId
    popup.currentPetData = petData
    popup.currentNPCs = npcs or {}

    -- Info text
    local familyName = "Unknown"
    if petData and petData.familyName then
        familyName = petData.familyName
    elseif PSM.state.modelsPanel and PSM.state.modelsPanel.allModels then
        for _, m in ipairs(PSM.state.modelsPanel.allModels) do
            if m.displayId == displayId then
                familyName = m.familyName or familyName
                break
            end
        end
    end
    popup.infoText:SetText(string.format("%s - Display ID: %d", familyName, displayId))

    -- Taming requirements
    local tamingData = nil
    if petData and petData.taming then
        tamingData = petData.taming
    elseif PSM.state.modelsPanel and PSM.state.modelsPanel.allModels then
        for _, m in ipairs(PSM.state.modelsPanel.allModels) do
            if m.displayId == displayId and m.taming then
                tamingData = m.taming
                break
            end
        end
    end

    if tamingData and PSM.TamingChecker then
        local parts = {}
        for _, ruleKey in ipairs(tamingData) do
            local rule = PSM.TamingRules and PSM.TamingRules[ruleKey]
            
            -- Only display formal taming unlocks at the model level; skip situational conditions
            if rule and not rule.isCondition then
                local status = PSM.TamingChecker.GetRuleStatus(ruleKey)
                local label  = rule and rule.label or ruleKey
                local hint   = rule and rule.hint
                local color  = status == "met" and "ff00ff00" or "ffff4444"

                -- Build hint string with proper joining logic
                local hintStr = ""
                if hint then
                    if hint.plain then
                        hintStr = " (" .. hint.plain .. ")"
                    else
                        local mainParts = {}
                        local suffixPart = nil

                        -- Collect main alternatives (race or item or quest)
                        if hint.autoRace then
                            mainParts[#mainParts + 1] = hint.autoRace .. " (auto)"
                        end
                        if hint.itemID then
                            mainParts[#mainParts + 1] = string.format(
                                "|cff0070dd|Hpsmtaming:%s|h%s|h|r",
                                ruleKey,
                                hint.itemName or ("Item #" .. hint.itemID))
                        end
                        if hint.questID then
                            mainParts[#mainParts + 1] = string.format(
                                "|cff0070dd|Hpsmtaming:%s|h%s|h|r",
                                ruleKey,
                                hint.questName or ("Quest #" .. hint.questID))
                        end

                        -- Suffix is separate (not an alternative)
                        if hint.suffix then
                            suffixPart = hint.suffix
                        end

                        -- Build the hint string
                        if #mainParts > 0 then
                            hintStr = table.concat(mainParts, " or ")
                        end
                        if suffixPart then
                            if hintStr ~= "" then
                                hintStr = hintStr .. " " .. suffixPart
                            else
                                hintStr = suffixPart
                            end
                        end
                        if hintStr ~= "" then
                            hintStr = " (" .. hintStr .. ")"
                        end
                    end
                end

                parts[#parts + 1] = string.format("|c%s%s|r%s",
                    color,
                    label,
                    hintStr)
            end
        end
        local line = table.concat(parts, " and ")
        local html = "<html><body><p align='center'>" .. line .. "</p></body></html>"
        popup.tamingFrame:SetText(html)
        PSM.C_Timer.After(0.01, function()
            local h = math.max(20, popup.tamingFrame:GetContentHeight())
            popup.tamingFrame:SetHeight(h)
        end)
        popup.tamingFrame:Show()
    else
        popup.tamingFrame:Hide()
    end

    -- Build NPC lines with notes
    local lines = {}
    for _, npc in ipairs(npcs) do
        local id          = npc.npcId or "?"
        local cls         = (npc.classification and npc.classification ~= "Normal") and npc.classification .. ", " or ""

        -- Check for special conditions to add as a hint
        local conditionHint = ""
        local npcID = tonumber(npc.npcId)
        local condList = npcID and PSM.ConditionsData and PSM.ConditionsData.Get(npcID)
        if condList and #condList > 0 then
            conditionHint = "|cffff8800|Hpsmcond:" .. npcID .. "|h[*]|h|r"
        end

        local factionStr  = formatFactionIndicator(npc.factionReaction)
        local factionPart = factionStr ~= "" and ", " .. factionStr or ""
        local noteLink    = npc.npcId and (" " .. BuildNoteLink(npc.npcId)) or ""
        lines[#lines + 1] = string.format(
            "%s%s: %s|Hnpc:%s|h|cff00ff00%s|h|r, %s, %s%s%s",
            npc.name, conditionHint, cls, id, id,
            self:BuildCoordsLocationLabel(npc.npcId, npc.location) or "Unknown",
            npc.expansion or "Unknown",
            factionPart,
            noteLink
        )
    end

    if #lines > 0 then
        local text = table.concat(lines, "\n")
        popup.npcPlainText = text
        popup:SetNPCText(text)
        popup.npcsScrollFrame:Show()
        popup.npcsScrollBar:Show()
    else
        popup.npcsScrollFrame:Hide()
        popup.npcsScrollBar:Hide()
    end
end

-- ============================================================
-- Note editor
-- ============================================================

-- Creates the note editor frame (once) and shows it for the given npcId.
-- parentPopup is passed so we can refresh the NPC text after saving.
function PSM.PopUpManager:ShowNoteEditor(npcId, npcName, parentPopup)
    if not self.noteEditor then
        local f = CreateFrame("Frame", "PSMNoteEditor", UIParent, "BackdropTemplate")
        f:SetSize(450, 350)
        f:SetPoint("CENTER")
        f:SetFrameStrata("TOOLTIP")
        f:SetFrameLevel(1020)
        f:SetToplevel(true)
        f:SetMovable(true)
        f:SetResizable(true)
        f:SetResizeBounds(350, 250, 800, 800)
        f:EnableMouse(true)
        f:RegisterForDrag("LeftButton")
        f:SetScript("OnDragStart", f.StartMoving)
        f:SetScript("OnDragStop",  f.StopMovingOrSizing)
        f:SetBackdrop({
            bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 14, edgeSize = 14,
            insets = {left=4, right=4, top=4, bottom=4}
        })
        f:SetBackdropColor(0, 0, 0, 0.9)

        -- Title
        f.title = f:CreateFontString(nil, "OVERLAY")
        f.title:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        f.title:SetPoint("TOP", 0, -10)
        f.title:SetTextColor(1, 0.82, 0)

        -- Seed note label (shown only when a seed note exists)
        f.seedLabel = f:CreateFontString(nil, "OVERLAY")
        f.seedLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
        f.seedLabel:SetPoint("TOPLEFT", f, "TOPLEFT", 20, -35)
        f.seedLabel:SetTextColor(0.6, 0.6, 0.6)
        f.seedLabel:SetText("Info note (read-only):")

        -- Seed note text (read-only FontString)
        f.seedText = f:CreateFontString(nil, "OVERLAY")
        f.seedText:SetFont("Fonts\\FRIZQT__.TTF", 11)
        f.seedText:SetPoint("TOPLEFT", f.seedLabel, "BOTTOMLEFT", 0, -4)
        f.seedText:SetPoint("RIGHT", f, "RIGHT", -20, 0)
        f.seedText:SetTextColor(0.75, 0.75, 0.75)
        f.seedText:SetJustifyH("LEFT")
        f.seedText:SetNonSpaceWrap(true)
        f.seedText:SetWordWrap(true)

        -- User note label
        f.userLabel = f:CreateFontString(nil, "OVERLAY")
        f.userLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
        f.userLabel:SetTextColor(0.6, 0.6, 0.6)
        f.userLabel:SetText("My note:")

        -- Scroll frame + edit box for user note
        f.scrollFrame = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
        f.scrollFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -50, 45)
        PSM.UI:ApplyElvUISkin(f.scrollFrame, "scrollframe")
        PSM.UI:ApplyElvUISkin(f.scrollFrame.ScrollBar, "scrollbar")

        f.editBox = CreateFrame("EditBox", nil, f.scrollFrame)
        f.editBox:SetFontObject("ChatFontNormal")
        f.editBox:SetMultiLine(true)
        f.editBox:SetAutoFocus(false)
        f.editBox:EnableMouse(true)
        f.editBox:EnableKeyboard(true)
        f.editBox:SetTextColor(1, 1, 1)
        f.editBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
        f.scrollFrame:SetScrollChild(f.editBox)
        PSM.UI:ApplyElvUISkin(f.editBox, "editbox")

        -- Save button
        f.saveButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
        f.saveButton:SetSize(80, 25)
        f.saveButton:SetPoint("BOTTOMRIGHT", f, "BOTTOM", -5, 12)
        f.saveButton:SetText("Save")
        PSM.UI:ApplyElvUISkin(f.saveButton, "button")

        -- Clear button
        f.clearButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
        f.clearButton:SetSize(80, 25)
        f.clearButton:SetPoint("BOTTOMLEFT", f, "BOTTOM", 5, 12)
        f.clearButton:SetText("Clear")
        f.clearButton:SetScript("OnClick", function()
            f.editBox:SetText("")
            f.editBox:SetFocus()
        end)
        PSM.UI:ApplyElvUISkin(f.clearButton, "button")

        -- Close button
        f.closeButton = CreateFrame("Button", nil, f, "UIPanelCloseButton")
        f.closeButton:SetPoint("TOPRIGHT", -5, -5)
        f.closeButton:SetFrameLevel(f:GetFrameLevel() + 10)
        f.closeButton:SetScript("OnClick", function() f:Hide() end)
        PSM.UI:ApplyElvUISkin(f.closeButton, "closebutton")

        -- Resize grip
        local grip = CreateFrame("Button", nil, f)
        grip:SetSize(16, 16)
        grip:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -4, 4)
        grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
        grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
        grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
        grip:SetScript("OnMouseDown", function() f:StartSizing("BOTTOMRIGHT") end)
        grip:SetScript("OnMouseUp",   function() f:StopMovingOrSizing() end)
        PSM.UI:ApplyElvUISkin(grip, "resizegrip")

        -- ESC clears focus first, second ESC closes
        f:EnableKeyboard(true)
        f:SetPropagateKeyboardInput(true)
        f:SetScript("OnKeyDown", function(self, key)
            self:SetPropagateKeyboardInput(key ~= "ESCAPE")
            if key == "ESCAPE" then self:Hide() end
        end)

        f:SetScript("OnSizeChanged", function(self, w, h)
            f.editBox:SetWidth(f.scrollFrame:GetWidth())
        end)

        self.noteEditor = f
    end

    local f = self.noteEditor

    -- Populate seed note section
    local seedNote = PSM.NotesData and PSM.NotesData[npcId]
    if seedNote then
        f.seedLabel:Show()
        f.seedText:Show()
        f.seedText:SetText(seedNote)
        -- Anchor user label below seed text with a small gap
        f.userLabel:SetPoint("TOPLEFT", f.seedText, "BOTTOMLEFT", 0, -8)
    else
        f.seedLabel:Hide()
        f.seedText:Hide()
        -- No seed note: anchor user label near top
        f.userLabel:SetPoint("TOPLEFT", f, "TOPLEFT", 20, -35)
    end

    -- Anchor scroll frame below user label
    f.scrollFrame:SetPoint("TOPLEFT", f.userLabel, "BOTTOMLEFT", 0, -4)

    -- Populate user note edit box
    local userNote = (PSM_UserNotes and PSM_UserNotes[npcId]) or ""
    f.editBox:SetText(userNote)
    f.editBox:SetWidth(f.scrollFrame:GetWidth())

    -- Title
    f.title:SetText(string.format("Notes: %s", npcName or ("NPC " .. npcId)))

    -- Save wires up per-call npcId and refreshes the parent popup's NPC text
    f.saveButton:SetScript("OnClick", function()
        local text = f.editBox:GetText()
        PSM.NotesData.SetUserNote(npcId, text)
        f:Hide()
        -- Refresh [+] colors in the parent popup by re-triggering its NPC text
        if parentPopup and parentPopup.npcPlainText then
            -- Rebuild lines to pick up the new note state
            if parentPopup.currentNPCs then
                local lines = {}
                for _, npc in ipairs(parentPopup.currentNPCs) do
                    local id          = npc.npcId or "?"
                    local cls         = (npc.classification and npc.classification ~= "Normal") and npc.classification .. ", " or ""
                    
                    local conditionHint = ""
                    local npcID = tonumber(npc.npcId)
                    local condList = npcID and PSM.ConditionsData and PSM.ConditionsData.Get(npcID)
                    if condList and #condList > 0 then
                        conditionHint = "|cffff8800|Hpsmcond:" .. npcID .. "|h[*]|h|r"
                    end

                    local factionStr  = formatFactionIndicator(npc.factionReaction)
                    local factionPart = factionStr ~= "" and ", " .. factionStr or ""
                    local noteLink    = npc.npcId and (" " .. BuildNoteLink(npc.npcId)) or ""
                    lines[#lines + 1] = string.format(
                        "%s%s: %s|Hnpc:%s|h|cff00ff00%s|h|r, %s, %s%s%s",
                        npc.name, conditionHint, cls, id, id,
                        PSM.PopUpManager:BuildCoordsLocationLabel(npc.npcId, npc.location) or "Unknown",
                        npc.expansion or "Unknown",
                        factionPart,
                        noteLink
                    )
                end
                local text2 = table.concat(lines, "\n")
                parentPopup.npcPlainText = text2
                parentPopup:SetNPCText(text2)
            end
        end
    end)

    f:Show()
    f:Raise()
    f.editBox:SetFocus()
end