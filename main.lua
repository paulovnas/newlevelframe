local addonName, addonTable = ...
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

-- Strings
local REACHED_LEVEL_STR = L["YOU_REACHED"]
local NEW_LEVEL_NUM_STR = L["LEVEL_NUM"]

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_LEVEL_UP")

local function print(msg) 
    if msg then 
        DEFAULT_CHAT_FRAME:AddMessage(msg) 
    end 
end

local newLevelFrame = CreateFrame("Frame", nil, UIParent)
local newLevelFrameTexture = newLevelFrame:CreateTexture(nil, "BACKGROUND")

local function showNewLevelFrame(level)
    if newLevelFrame.footer then
        newLevelFrame.footer:SetText(string.format(NEW_LEVEL_NUM_STR, level))
        if not newLevelFrame:IsVisible() or newLevelFrame:GetAlpha() < 0.1 then
            newLevelFrame:Show()
            UIFrameFadeIn(newLevelFrame, NewLevelFrameDB.fadeInTime or 2, 0, 1)
            newLevelFrame.timeShown = 0
            newLevelFrame:SetScript("OnUpdate", function(self, elapsed)
                newLevelFrame.timeShown = newLevelFrame.timeShown + elapsed
                if newLevelFrame.timeShown >= (NewLevelFrameDB.displayTime or 5) then
                    UIFrameFadeOut(newLevelFrame, NewLevelFrameDB.fadeOutTime or 2, 1, 0)
                    newLevelFrame:SetScript("OnUpdate", nil)
                end
            end)
        end
    end
end

-- Function to update font sizes
function NewLevelFrame_UpdateFontSizes()
    if newLevelFrame.header then
        newLevelFrame.header:SetFont("Fonts\\FRIZQT__.TTF", NewLevelFrameDB.titleFontSize or 18)
    end
    if newLevelFrame.footer then
        newLevelFrame.footer:SetFont("Fonts\\FRIZQT__.TTF", NewLevelFrameDB.subtitleFontSize or 30)
    end
end

f:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        -- Initialize default settings if they don't exist
        NewLevelFrameDB = NewLevelFrameDB or {
            titleFontSize = 18,
            subtitleFontSize = 30,
            displayTime = 5,
            fadeInTime = 2,
            fadeOutTime = 2
        }
        
        -- setup new frame
        newLevelFrame:SetFrameStrata("BACKGROUND")
        newLevelFrame:SetWidth(400)
        newLevelFrame:SetHeight(200)
        newLevelFrame:SetPoint("TOP", 0, -128)
        -- setup texture
        newLevelFrameTexture:SetTexture("Interface\\AddOns\\NewLevelFrame\\newlevel_frame")
        newLevelFrameTexture:SetAllPoints(newLevelFrame)
        -- setup header text
        newLevelFrame.header = newLevelFrame:CreateFontString(nil, "ARTWORK")
        newLevelFrame.header:SetFont("Fonts\\FRIZQT__.TTF", NewLevelFrameDB.titleFontSize or 18)
        newLevelFrame.header:SetPoint("CENTER", 0, 20)
        newLevelFrame.header:SetText(REACHED_LEVEL_STR)
        -- setup footer text
        newLevelFrame.footer = newLevelFrame:CreateFontString(nil, "ARTWORK")
        newLevelFrame.footer:SetFont("Fonts\\FRIZQT__.TTF", NewLevelFrameDB.subtitleFontSize or 30)
        newLevelFrame.footer:SetPoint("CENTER", 0, -20)
        newLevelFrame.footer:SetTextColor(207/255, 191/255, 20/255, 1)
        -- hide frame at startup
        newLevelFrame:Hide()
    elseif event == "PLAYER_LEVEL_UP" then
        local newLevel = ...
        newLevelFrame.footer:SetText("")
        showNewLevelFrame(newLevel)
    end
end)

SLASH_LEVELFRAME1 = "/lvltest"

local function TestLevelFrame(msg)
    if newLevelFrame.footer then
        newLevelFrame.footer:SetText("")
        showNewLevelFrame(UnitLevel("player"))
    end
end

SlashCmdList["LEVELFRAME"] = TestLevelFrame