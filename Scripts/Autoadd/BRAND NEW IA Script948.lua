--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Universal Menu [HITBOX, Highlight]

-- ÐÐ°Ð³ÑÑÐ·ÐºÐ° Ð±Ð¸Ð±Ð»Ð¸Ð¾ÑÐµÐºÐ¸ Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local url = "https://raw.githubusercontent.com/EntonioDMI/EntonioDevelopment/refs/heads/main/version"
local response = game:HttpGet(url):gsub("%s+", "")  -- Ð£Ð´Ð°Ð»ÑÐµÐ¼ Ð»Ð¸ÑÐ½Ð¸Ðµ Ð¿ÑÐ¾Ð±ÐµÐ»Ñ Ð¸ Ð¿ÐµÑÐµÐ½Ð¾ÑÑ ÑÑÑÐ¾Ðº

print("Response from URL: " .. response)  -- ÐÑÐ»Ð°Ð´ÐºÐ°

local success, versionFunction = pcall(function()
    return loadstring("return '" .. response .. "'")
end)


-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð¾ÐºÐ½Ð°
local Window = Fluent:CreateWindow({
    Title = "IA + Universal Menu " .. response,
    SubTitle = "by EntonioDMI",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð²ÐºÐ»Ð°Ð´Ð¾Ðº
local Tabs = {
    Main = Window:AddTab({ Title = "Hitbox", Icon = "circle-dot" }),
    Highlight = Window:AddTab({ Title = "Highlight", Icon = "circle-dot" }),
    Settings = Window:AddTab({ Title = "IA Things", Icon = "circle-dot" }),
    About = Window:AddTab({ Title = "About", Icon = "settings" })
}

-- Ð£ÑÑÐ°Ð½Ð¾Ð²ÐºÐ° Ð½Ð°ÑÐ°Ð»ÑÐ½ÑÑ Ð·Ð½Ð°ÑÐµÐ½Ð¸Ð¹ Ð¿ÐµÑÐµÐ¼ÐµÐ½Ð½ÑÑ IA
_G.MinionSize = 3
_G.BossSize = 5
_G.MinionTransparency = 0.5
_G.BossTransparency = 0.5
_G.EnableMinionHitboxes = false
_G.EnableBossHitboxes = false

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÐºÑÐ¸Ð¸ Ð¸ ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ¾Ð² ÑÐ¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð° Ð²ÐºÐ»Ð°Ð´ÐºÑ Main
local Section = Tabs.Main:AddSection("Hitbox Settings")

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð²ÐºÐ»ÑÑÐµÐ½Ð¸Ñ/Ð²ÑÐºÐ»ÑÑÐµÐ½Ð¸Ñ ÑÐ¸ÑÐ±Ð¾ÐºÑÐ¾Ð²
_G.Disabled = true
Section:AddToggle("EnableHitboxes", {
    Title = "Enable Hitboxes",
    Description = "Toggle hitbox visibility",
    Default = false,
    Callback = function(state)
        _G.Disabled = not state
        if _G.Disabled then
            for _, v in ipairs(game:GetService('Players'):GetPlayers()) do
                if v ~= game:GetService('Players').LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local rootPart = v.Character.HumanoidRootPart
                    rootPart.Size = Vector3.new(2, 2, 1) -- ÐÐ¾ÑÑÑÐ°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÐ¼ Ð¾ÑÐ¸Ð³Ð¸Ð½Ð°Ð»ÑÐ½ÑÐ¹ ÑÐ°Ð·Ð¼ÐµÑ
                    rootPart.Transparency = 1 -- ÐÐµÐ»Ð°ÐµÐ¼ ÑÐ¸ÑÐ±Ð¾ÐºÑ Ð½ÐµÐ²Ð¸Ð´Ð¸Ð¼ÑÐ¼
                    rootPart.Material = "Plastic" -- Ð£Ð±Ð¸ÑÐ°ÐµÐ¼ Ð¼Ð°ÑÐµÑÐ¸Ð°Ð» "Neon"
                end
            end
        end
    end
})

-- ÐÐ¾Ð»Ð·ÑÐ½Ð¾Ðº Ð´Ð»Ñ ÑÐ°Ð·Ð¼ÐµÑÐ° ÑÐ¸ÑÐ±Ð¾ÐºÑÐ°
Section:AddSlider("HitboxSize", {
    Title = "Hitbox Size",
    Description = "Adjust the size of the hitbox",
    Default = 25,
    Min = 1,
    Max = 50,
    Rounding = 1,
    Callback = function(value)
        _G.HeadSize = value
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¿ÑÐ¾Ð²ÐµÑÐºÐ¸ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ
_G.TeamCheck = false

Section:AddToggle("TeamCheckToggle", {
    Title = "Team Check",
    Description = "Ignore hitboxes for players on the same team",
    Default = false,
    Callback = function(state)
        _G.TeamCheck = state
    end
})

-- ÐÐ¾Ð»Ð·ÑÐ½Ð¾Ðº Ð´Ð»Ñ Ð¿ÑÐ¾Ð·ÑÐ°ÑÐ½Ð¾ÑÑÐ¸ ÑÐ¸ÑÐ±Ð¾ÐºÑÐ°
Section:AddSlider("HitboxTransparency", {
    Title = "Hitbox Transparency",
    Description = "Adjust the transparency of the hitbox",
    Default = 0.7,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(value)
        _G.HitboxTransparency = value
    end
})

-- Ð¦Ð²ÐµÑÐ¾Ð²Ð¾Ð¹ Ð¿Ð¸ÐºÐµÑ Ð´Ð»Ñ ÑÐ²ÐµÑÐ° ÑÐ¸ÑÐ±Ð¾ÐºÑÐ°
Section:AddColorpicker("HitboxColor", {
    Title = "Hitbox Color",
    Description = "Select the color of the hitbox",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        _G.HitboxColor = color
    end
})

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÐºÑÐ¸Ð¸ Ð¸ ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ¾Ð² ÑÐ¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð° Ð²ÐºÐ»Ð°Ð´ÐºÑ Highlight
local HighlightSection = Tabs.Highlight:AddSection("Highlight Settings")

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð²ÐºÐ»ÑÑÐµÐ½Ð¸Ñ/Ð²ÑÐºÐ»ÑÑÐµÐ½Ð¸Ñ highlight
_G.HighlightEnabled = false
HighlightSection:AddToggle("EnableHighlight", {
    Title = "Enable Highlight",
    Description = "Toggle highlight visibility",
    Default = false,
    Callback = function(state)
        _G.HighlightEnabled = state
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð°Ð²ÑÐ¾Ð¼Ð°ÑÐ¸ÑÐµÑÐºÐ¾Ð³Ð¾ Ð¾Ð¿ÑÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ñ ÑÐ²ÐµÑÐ° ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ
_G.AutoTeamColor = false
HighlightSection:AddToggle("AutoTeamColor", {
    Title = "Automatic Team Color",
    Description = "Automatically use team color for highlight",
    Default = false,
    Callback = function(state)
        _G.AutoTeamColor = state
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¸Ð³Ð½Ð¾ÑÐ¸ÑÐ¾Ð²Ð°Ð½Ð¸Ñ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð² Ð¸Ð· ÑÐ¾Ð¹ Ð¶Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ
_G.HighlightTeamCheck = false
HighlightSection:AddToggle("HighlightTeamCheck", {
    Title = "Team Check",
    Description = "Ignore highlights for players on the same team",
    Default = false,
    Callback = function(state)
        _G.HighlightTeamCheck = state
    end
})

-- Ð¦Ð²ÐµÑÐ¾Ð²Ð¾Ð¹ Ð¿Ð¸ÐºÐµÑ Ð´Ð»Ñ Ð¿Ð¾Ð»ÑÐ·Ð¾Ð²Ð°ÑÐµÐ»ÑÑÐºÐ¾Ð³Ð¾ ÑÐ²ÐµÑÐ° highlight
_G.CustomHighlightColor = Color3.fromRGB(255, 255, 255)
HighlightSection:AddColorpicker("CustomHighlightColor", {
    Title = "Custom Highlight Color",
    Description = "Choose a custom color for highlight",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(color)
        _G.CustomHighlightColor = color
    end
})

-- ÐÐ¾Ð»Ð·ÑÐ½Ð¾Ðº Ð´Ð»Ñ Ð¿ÑÐ¾Ð·ÑÐ°ÑÐ½Ð¾ÑÑÐ¸ Ð·Ð°Ð»Ð¸Ð²ÐºÐ¸ highlight
_G.FillTransparency = 0.5
HighlightSection:AddSlider("FillTransparency", {
    Title = "Fill Transparency",
    Description = "Adjust the fill transparency of the highlight",
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(value)
        _G.FillTransparency = value
    end
})

-- ÐÐ¾Ð»Ð·ÑÐ½Ð¾Ðº Ð´Ð»Ñ Ð¿ÑÐ¾Ð·ÑÐ°ÑÐ½Ð¾ÑÑÐ¸ ÐºÐ¾Ð½ÑÑÑÐ° highlight
_G.OutlineTransparency = 0
HighlightSection:AddSlider("OutlineTransparency", {
    Title = "Outline Transparency",
    Description = "Adjust the outline transparency of the highlight",
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(value)
        _G.OutlineTransparency = value
    end
})

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¸Ð½ÑÐ¾ÑÐ¼Ð°ÑÐ¸Ð¸ Ð¾Ð± Ð°Ð²ÑÐ¾ÑÐµ Ð½Ð° Ð²ÐºÐ»Ð°Ð´ÐºÑ About
Tabs.About:AddParagraph({
    Title = "Author",
    Content = "Created by EntonioDMI\nDiscord: entonio\n\nThis script allows you to manage hitboxes and highlights in the game, providing options to adjust visibility and appearance."
})

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ¾Ð² ÑÐ¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ÐºÐ°Ð¶Ð´Ð¾Ð¹ Ð¿ÐµÑÐµÐ¼ÐµÐ½Ð½Ð¾Ð¹
Tabs.Settings:AddSlider("MinionSizeSlider", {
    Title = "Minion Size",
    Description = "Adjust the size of minions",
    Default = _G.MinionSize,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        _G.MinionSize = Value
    end
})

Tabs.Settings:AddSlider("BossSizeSlider", {
    Title = "Boss Size",
    Description = "Adjust the size of bosses",
    Default = _G.BossSize,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        _G.BossSize = Value
    end
})

Tabs.Settings:AddSlider("MinionTransparencySlider", {
    Title = "Minion Transparency",
    Description = "Adjust the transparency of minions",
    Default = _G.MinionTransparency,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(Value)
        _G.MinionTransparency = Value
    end
})

Tabs.Settings:AddSlider("BossTransparencySlider", {
    Title = "Boss Transparency",
    Description = "Adjust the transparency of bosses",
    Default = _G.BossTransparency,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(Value)
        _G.BossTransparency = Value
    end
})

Tabs.Settings:AddToggle("EnableMinionHitboxesToggle", {
    Title = "Enable Minion Hitboxes",
    Description = "Toggle minion hitboxes",
    Default = _G.EnableMinionHitboxes,
    Callback = function(State)
        _G.EnableMinionHitboxes = State
    end
})

Tabs.Settings:AddToggle("EnableBossHitboxesToggle", {
    Title = "Enable Boss Hitboxes",
    Description = "Toggle boss hitboxes",
    Default = _G.EnableBossHitboxes,
    Callback = function(State)
        _G.EnableBossHitboxes = State
    end
})

-- ÐÐ°Ð³ÑÑÐ·ÐºÐ° ÑÐºÑÐ¸Ð¿ÑÐ¾Ð²
loadstring(game:HttpGet("https://raw.githubusercontent.com/EntonioDMI/EntonioDevelopment/refs/heads/main/IAHitboxExtender"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EntonioDMI/EntonioDevelopment/refs/heads/main/HitboxExpander"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EntonioDMI/EntonioDevelopment/refs/heads/main/Highlight"))()