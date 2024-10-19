--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
    ___ ___ ___ ___  ___  _  _  ___ ___ ___ 
    | _ \ __/ __| _ \/ _ \| \| |/ __| __/ __|
    |   / _|\__ \  _/ (_) | .` | (__| _|\__ \
    |_|_\___|___/_|  \___/|_|\_|\___|___|___/
                                            
--]]

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

Fluent:Notify({
    Title = "Script loading.",
    Content = "This might take a bit...",
    Duration = 5
})

-- ÐÐµÑÑÐ¸Ñ ÑÐºÑÐ¸Ð¿ÑÐ°
local scriptVersion = "v2.5.5"

-- ÐÑÐ¾Ð²ÐµÑÐºÐ° Ð²ÐµÑÑÐ¸Ð¸ ÑÐºÑÐ¸Ð¿ÑÐ°
local function checkScriptVersion()
    local url = "https://raw.githubusercontent.com/EntonioDMI/EntonioDevelopment/refs/heads/main/version"
    local success, onlineVersion = pcall(function()
        return game:HttpGet(url):gsub("%s+", "")
    end)

    if success then
        if onlineVersion ~= scriptVersion then
            Fluent:Notify({
                Title = "Script Update Available Now!",
                Content = "A new version of the script is available: " .. onlineVersion,
                Duration = 5
            })
        else
            Fluent:Notify({
                Title = "Latest version of the script!",
                Content = "You are using the latest version: " .. scriptVersion,
                Duration = 5
            })
        end
    else
        print("Failed to check script version.")
    end
end

checkScriptVersion()

--[[
    _    ___   _   ___ ___ _  _  ___     _   _    _     
    | |  / _ \ /_\ |   \_ _| \| |/ __|   /_\ | |  | |    
    | |_| (_) / _ \| |) | || .` | (_ |  / _ \| |__| |__  
    |____\___/_/ \_\___/___|_|\_|\___| /_/ \_\____|____| 
    ___  ___ ___ ___ ___ _____ ___                      
    / __|/ __| _ \_ _| _ \_   _/ __|                     
    \__ \ (__|   /| ||  _/ | | \__ \                     
    |___/\___|_|_\___|_|   |_| |___/                     
                                                        
--]]

local scripts = {
    "https://raw.githubusercontent.com/EntonioDMI/IA-Things/refs/heads/main/IAHitboxExpander",
    "https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/HitboxExpander",
    "https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/Highlight",
    "https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/SpeedJumpChanger",
    "https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/ItemViewer",
	"https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/Aimbot"
}

local function loadScripts(scripts)
    for index, url in ipairs(scripts) do
        local success, result = pcall(function()
            local startTime = tick()
            local scriptContent

            repeat
                scriptContent = game:HttpGet(url)
                if scriptContent then
                    break
                end
                wait(0.1)
            until (tick() - startTime) > 5

            if scriptContent then
                loadstring(scriptContent)()
                local scriptName = url:match("([^/]+)$")
                print("Successfully loaded script:", scriptName)
            else
                error("Failed to load script from URL: " .. url)
            end
        end)

        if not success then
            print("Error loading script from URL at line", index, "-", result)
        end
    end
end

loadScripts(scripts)

--[[
    __  __ ___ _  _ _   _   ___ ___ _____ 
    |  \/  | __| \| | | | | / __| __|_   _|
    | |\/| | _|| .` | |_| | \__ \ _|  | |  
    |_|  |_|___|_|\_|\___/  |___/___| |_|  
                                            
--]]

local Window = Fluent:CreateWindow({
    Title = "IA + Universal Menu " .. scriptVersion,
    SubTitle = "by EntonioDMI",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
	Combat2 = Window:AddTab({ Title = "Hitbox", Icon = "circle" }),
    Combat = Window:AddTab({ Title = "Aimbot", Icon = "circle-dot" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "cast" }),
    Utilities = Window:AddTab({ Title = "Utilities", Icon = "database" }),
    Community = Window:AddTab({ Title = "Add Friends & Author", Icon = "dice-4" }),
}


-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÐºÑÐ¸Ð¹ Ð¸ ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ¾Ð² Ð² Ð¾ÐºÐ½Ð°
local Section1 = Tabs.Combat:AddSection("Aimbot")
local Section = Tabs.Combat:AddSection("Aimbot")
local EnableHitboxes = Tabs.Combat2:AddSection("Enable Player Hitboxes")
local HitboxSettings = Tabs.Combat2:AddSection("Player Hitbox Settings")
local EnableHighlightSection = Tabs.Visuals:AddSection("Enable Highlight (Players)")
local HighlightSettings = Tabs.Visuals:AddSection("Hightlight Settings (Players)")
local SpeedAndJumpBypasser = Tabs.Utilities:AddSection("Speed & Jump (Easy Bypass)")
local ParserSection = Tabs.Utilities:AddSection("Parse Some Info :)")
local ItemHack = Tabs.Utilities:AddSection("Item Hack")
local BossesAndMinions = Tabs.Utilities:AddSection("Bosses And Minions")
local CommunitySection = Tabs.Community:AddSection("Friends")

Window:SelectTab(Combat2)

--[[
    __  __ ___ _  _ _   _   ___ _    ___ __  __ ___ _  _ _____ ___ 
    |  \/  | __| \| | | | | | __| |  | __|  \/  | __| \| |_   _/ __|
    | |\/| | _|| .` | |_| | | _|| |__| _|| |\/| | _|| .` | | | \__ \
    |_|  |_|___|_|\_|\___/  |___|____|___|_|  |_|___|_|\_| |_| |___/
                                                                    
--]]

Window:Dialog({
    Title = "Patch for the aimbot:",
    Content = "If your aimbot isn't working, try adjusting the FOV radius (I'm not sure how it affects it).",
    Buttons = {
        { 
            Title = "Change value now.",
            Callback = function()
                _G.Aimbot_FOV_Radius = 200.5
            end 
        },
                { 
            Title = "No, thanks.",
            Callback = function()
                print("Pressed (No, thanks)")
            end 
        }
    }
})


Section1:AddToggle("AimbotToggle", {
    Title = "Enable Aimbot",
    Default = _G.Aimbot,
    Callback = function(state)
        _G.Aimbot = state
    end
})


Section:AddSlider("SmoothnessSlider", {
    Title = "Reduce smoothness.",
    Description = "The higher the reduce smoothness value, the faster the camera locks onto the player.",
    Default = _G.Aimbot_Smoothness,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Callback = function(Value)
        _G.Aimbot_Smoothness = Value
    end
})


Section:AddSlider("FOVSlider", {
    Title = "Aimbot FOV Radius",
    Description = "Increase the FOV radius; the bigger it is, the more noticeable your aimbot will be.",
    Default = _G.Aimbot_FOV_Radius,
    Min = 10,
    Max = 500,
    Rounding = 1,
    Callback = function(value)
        _G.Aimbot_FOV_Radius = value
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¾ÑÐ¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ ÐºÑÑÐ³Ð° FOV
Section:AddToggle("DrawFOVToggle", {
    Title = "Draw FOV Circle",
    Default = _G.Aimbot_Draw_FOV,
    Callback = function(state)
        _G.Aimbot_Draw_FOV = state
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¿ÑÐ¾Ð²ÐµÑÐºÐ¸ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ
Section:AddToggle("TeamCheckToggle", {
    Title = "Team Check",
    Default = _G.Aimbot_TeamCheck,
    Callback = function(state)
        _G.Aimbot_TeamCheck = state
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¿ÑÐ¾Ð²ÐµÑÐºÐ¸ Ð²Ð¸Ð´Ð¸Ð¼Ð¾ÑÑÐ¸
Section:AddToggle("VisibleCheckToggle", {
    Title = "Visible Check",
    Default = _G.Aimbot_visiblecheck,
    Callback = function(state)
        _G.Aimbot_visiblecheck = state
    end
})

-- ÐÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ñ Ð´Ð»Ñ Ð¿ÑÐ¾Ð²ÐµÑÐºÐ¸ Ð½Ð° ÑÐºÑÐ°Ð½Ðµ
Section:AddToggle("OnscreenCheckToggle", {
    Title = "Onscreen Check",
    Default = _G.Aimbot_Onscreen,
    Callback = function(state)
        _G.Aimbot_Onscreen = state
    end
})

-- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ¸ Ð¸ Ð¿ÐµÑÐµÐºÐ»ÑÑÐ°ÑÐµÐ»Ð¸ Ð´Ð»Ñ ÑÐ¸ÑÐ¾Ð² Ð¸ Ð¿Ð¾Ð´ÑÐ²ÐµÑÐºÐ¸
EnableHitboxes:AddToggle("EnableHitboxes", {
    Title = "Enable Hitboxes",
    Description = "Toggle hitbox visibility",
    Default = false,
    Callback = function(state)
        _G.Disabled = not state
        if _G.Disabled then
            for _, v in ipairs(game:GetService('Players'):GetPlayers()) do
                if v ~= game:GetService('Players').LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local rootPart = v.Character.HumanoidRootPart
                    rootPart.Size = Vector3.new(2, 2, 1)
                    rootPart.Transparency = 1
                    rootPart.Material = "Plastic"
                end
            end
        end
    end
})

HitboxSettings:AddSlider("HitboxSize", {
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

HitboxSettings:AddToggle("TeamCheckToggle", {
    Title = "Team Check",
    Description = "Ignore hitboxes for players on the same team",
    Default = false,
    Callback = function(state)
        _G.TeamCheck = state
    end
})

HitboxSettings:AddSlider("HitboxTransparency", {
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

HitboxSettings:AddColorpicker("HitboxColor", {
    Title = "Hitbox Color",
    Description = "Select the color of the hitbox",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        _G.HitboxColor = color
    end
})

EnableHighlightSection:AddToggle("EnableHighlight", {
    Title = "Enable Highlight",
    Description = "Toggle highlight visibility",
    Default = false,
    Callback = function(state)
        _G.HighlightEnabled = state
    end
})

HighlightSettings:AddToggle("AutoTeamColor", {
    Title = "Automatic Team Color",
    Description = "Automatically use team color for highlight",
    Default = false,
    Callback = function(state)
        _G.AutoTeamColor = state
    end
})

HighlightSettings:AddToggle("HighlightTeamCheck", {
    Title = "Team Check",
    Description = "Ignore highlights for players on the same team",
    Default = false,
    Callback = function(state)
        _G.HighlightTeamCheck = state
    end
})

HighlightSettings:AddColorpicker("CustomHighlightColor", {
    Title = "Custom Highlight Color",
    Description = "Choose a custom color for highlight",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(color)
        _G.CustomHighlightColor = color
    end
})

HighlightSettings:AddSlider("FillTransparency", {
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

HighlightSettings:AddSlider("OutlineTransparency", {
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

Tabs.Community:AddParagraph({
    Title = "Author",
    Content = "Created by EntonioDMI\nDiscord: entonio\n\nThis script allows you to manage hitboxes and highlights in the game, providing options to adjust visibility and appearance."
})

BossesAndMinions:AddSlider("MinionSizeSlider", {
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

BossesAndMinions:AddSlider("BossSizeSlider", {
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

BossesAndMinions:AddSlider("MinionTransparencySlider", {
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

BossesAndMinions:AddSlider("BossTransparencySlider", {
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

BossesAndMinions:AddToggle("EnableMinionHitboxesToggle", {
    Title = "Enable Minion Hitboxes",
    Description = "Toggle minion hitboxes",
    Default = _G.EnableMinionHitboxes,
    Callback = function(State)
        _G.EnableMinionHitboxes = State
    end
})

BossesAndMinions:AddToggle("EnableBossHitboxesToggle", {
    Title = "Enable Boss Hitboxes",
    Description = "Toggle boss hitboxes",
    Default = _G.EnableBossHitboxes,
    Callback = function(State)
        _G.EnableBossHitboxes = State
    end
})

SpeedAndJumpBypasser:AddToggle("SpeedToggle", {
    Title = "Enable Modifications",
    Description = "Silent speed and jump with bypass?",
    Default = _G.PlayerSpeedEnabled,
    Callback = function(state)
        _G.MyScriptPlayerChangeModificatorEnabled = state
        print("Speed modification is now", state and "enabled" or "disabled")
    end
})

SpeedAndJumpBypasser:AddSlider("SpeedSlider", {
    Title = "Player Speed",
    Description = "Adjust the player's speed",
    Default = 16,
    Min = 0,
    Max = 35,
    Rounding = 0.1,
    Callback = function(value)
        _G.MyScriptPlayerSpeed = value
        print("Player speed set to", value)
    end
})

SpeedAndJumpBypasser:AddSlider("JumpSlider", {
    Title = "Jump Height",
    Description = "Adjust the player's jump height",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0.1,
    Callback = function(value)
        _G.MyScriptPlayerJumpHeight = value
        print("Player jump height set to", value)
    end
})

ParserSection:AddToggle("ParseToggle", {
    Title = "Enable Parsing",
    Description = "Turning debug mode. Every 3 seconds says info about JGNChance in console.",
    Default = false,
    Callback = function(state)
        _G.ParseEnabled = state
        print("Parsing enabled:", state)
    end
})

ParserSection:AddButton({
    Title = "Parse Once",
    Description = "Parse JGNChance once",
    Callback = function()
        parseOnce()
    end
})

ItemHack:AddToggle("ToggleUI", {
    Title = "Enable/Disable UI",
    Description = "Toggle the inventory UI on or off",
    Default = false,
    Callback = function(state)
        _G.EnabledIAIt = state
    end
})

ItemHack:AddSlider("SizeSlider", {
    Title = "Element Size",
    Description = "Adjust the size of the inventory elements",
    Default = 1,
    Min = 0.5,
    Max = 2,
    Rounding = 1,
    Callback = function(Value)
        _G.InventoryUIConfig.SizeMultiplier = Value
    end
})

ItemHack:AddSlider("OffsetSlider", {
    Title = "Panel Offset",
    Description = "Adjust the vertical offset of the panel",
    Default = 3,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Callback = function(Value)
        _G.InventoryUIConfig.StudsOffset = Vector3.new(0, Value, 0)
    end
})

local allPlayers = {}
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    table.insert(allPlayers, player.Name)
end

local function updatePlayerList()
    allPlayers = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        table.insert(allPlayers, player.Name)
    end
    MultiDropdown.Values = allPlayers
    MultiDropdown:SetValue(_G.FriendList)
end

local MultiDropdown = CommunitySection:AddDropdown("FriendDropdown", {
    Title = "Friends",
    Description = "Select friends",
    Values = allPlayers,
    Multi = true,
    Default = _G.FriendList
})

-- ÐÐ±ÑÐ°Ð±Ð¾ÑÑÐ¸Ðº Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ MultiDropdown
MultiDropdown:OnChanged(function(selectedValues)
    local newFriendList = {}
    for playerName, isSelected in pairs(selectedValues) do
        if isSelected then
            table.insert(newFriendList, playerName)
        end
    end
    _G.FriendList = newFriendList
    print("Updated Friend List:", table.concat(_G.FriendList, ", "))
end)

--[[
    ___ _____ _  _ ___ ___ 
    / _ \_   _| || | __| _ \
    | (_) || | | __ | _||   /
    \___/ |_| |_||_|___|_|_\
                            
--]]

_G.ParseEnabled = false

_G.FriendList = _G.FriendList or {}

local checkInterval = 5

local function getLocalPlayerName()
    return game.Players.LocalPlayer.Name
end

local function getJGNChanceValue(playerName)
    local success, value = pcall(function()
        return game.Players[playerName].JGNChance.Value
    end)
    if success then
        return value
    else
        warn("Cant get JGNChance")
        return nil
    end
end

local function parseInfo()
    while true do
        if _G.ParseEnabled then
            local playerName = getLocalPlayerName()
            local jgnChanceValue = getJGNChanceValue(playerName)
            if jgnChanceValue then
                print("JGNChance:", jgnChanceValue)
            end
        end
        wait(checkInterval)
    end
end

function parseOnce()
    local playerName = getLocalPlayerName()
    local jgnChanceValue = getJGNChanceValue(playerName)
    if jgnChanceValue then
        Fluent:Notify({
            Title = "One-Time Parsing",
            Content = "JGNChance: " .. tostring(jgnChanceValue),
            Duration = 5
        })
    else
        Fluent:Notify({
            Title = "Error",
            Content = "Cant get JGNChance",
            Duration = 5
        })
    end
end

game:GetService("Players").PlayerRemoving:Connect(function(player)
    updatePlayerList()
end)

game:GetService("Players").PlayerAdded:Connect(function(player)
    updatePlayerList()
end)

updatePlayerList()