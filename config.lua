-- Nome do Addon
local addonName, addonTable = ...

-- Create the addon using Ace3
local NewLevelFrame = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

-- Default settings
NewLevelFrame.defaults = {
    profile = {
        titleFontSize = 18,
        subtitleFontSize = 30,
        displayTime = 5,
        fadeInTime = 2,
        fadeOutTime = 2
    }
}

-- Options table
NewLevelFrame.options = {
    type = "group",
    name = L["CONFIG_TITLE"],
    handler = NewLevelFrame,
    args = {
        header = {
            type = "header",
            order = 1,
            name = L["CONFIG_TITLE"],
        },
        description = {
            type = "description",
            order = 2,
            name = L["CONFIG_DESC"],
            fontSize = "medium",
        },
        fontGroup = {
            type = "group",
            order = 3,
            name = L["FONTS_GROUP"],
            inline = true,
            args = {
                titleFontSize = {
                    type = "range",
                    order = 1,
                    name = L["TITLE_FONT_SIZE"],
                    desc = L["TITLE_FONT_DESC"],
                    min = 8,
                    max = 32,
                    step = 1,
                    get = function() return NewLevelFrameDB.titleFontSize end,
                    set = function(_, value)
                        NewLevelFrameDB.titleFontSize = value
                        if NewLevelFrame_UpdateFontSizes then
                            NewLevelFrame_UpdateFontSizes()
                        end
                    end,
                },
                subtitleFontSize = {
                    type = "range",
                    order = 2,
                    name = L["SUBTITLE_FONT_SIZE"],
                    desc = L["SUBTITLE_FONT_DESC"],
                    min = 8,
                    max = 48,
                    step = 1,
                    get = function() return NewLevelFrameDB.subtitleFontSize end,
                    set = function(_, value)
                        NewLevelFrameDB.subtitleFontSize = value
                        if NewLevelFrame_UpdateFontSizes then
                            NewLevelFrame_UpdateFontSizes()
                        end
                    end,
                },
            },
        },
        timingGroup = {
            type = "group",
            order = 4,
            name = L["TIMING_GROUP"],
            inline = true,
            args = {
                displayTime = {
                    type = "range",
                    order = 1,
                    name = L["DISPLAY_TIME"],
                    desc = L["DISPLAY_TIME_DESC"],
                    min = 1,
                    max = 10,
                    step = 0.5,
                    get = function() return NewLevelFrameDB.displayTime end,
                    set = function(_, value)
                        NewLevelFrameDB.displayTime = value
                    end,
                },
                fadeInTime = {
                    type = "range",
                    order = 2,
                    name = L["FADE_IN_TIME"],
                    desc = L["FADE_IN_DESC"],
                    min = 0.1,
                    max = 5,
                    step = 0.1,
                    get = function() return NewLevelFrameDB.fadeInTime end,
                    set = function(_, value)
                        NewLevelFrameDB.fadeInTime = value
                    end,
                },
                fadeOutTime = {
                    type = "range",
                    order = 3,
                    name = L["FADE_OUT_TIME"],
                    desc = L["FADE_OUT_DESC"],
                    min = 0.1,
                    max = 5,
                    step = 0.1,
                    get = function() return NewLevelFrameDB.fadeOutTime end,
                    set = function(_, value)
                        NewLevelFrameDB.fadeOutTime = value
                    end,
                },
            },
        },
    },
}

function NewLevelFrame:OnInitialize()
    -- Initialize default settings
    NewLevelFrameDB = NewLevelFrameDB or self.defaults.profile

    -- Register options table
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, self.options)
    
    -- Add to Interface Options
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, L["CONFIG_TITLE"])
end
