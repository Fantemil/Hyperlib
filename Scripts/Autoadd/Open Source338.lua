repeat task.wait() until game:IsLoaded()
task.wait(0.25)

-- Services
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GuiService = game:GetService("GuiService")
local lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

-- Player
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")


--// Get Closest \\--
function getclosestmob(selectedMobs)
    local closestMob = nil
    local closestDistance = math.huge

    local charactersAndNPCs = game:GetService("Workspace").CharactersAndNPCs:GetChildren()

    for i, v in ipairs(charactersAndNPCs) do
        if v:IsA("Model") then
            local mobName = v.Name
            if table.find(selectedMobs, mobName) then
                local humanoid = v:FindFirstChild("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    local position = v:FindFirstChild("HumanoidRootPart").Position
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - position).Magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        closestMob = v
                    end
                end
            end
        end
    end

    return closestMob
end


--// Esp \\--

local esp1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaxKs/gfe/main/Esp.lua"))()

getgenv().ESP = {
    Main = {
        Enabled = false,
        Name = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255),
        },
        Box = {
            Enabled = false,
            BoxColor = Color3.fromRGB(75, 175, 175),
            BoxFillColor = Color3.fromRGB(100, 75, 175),
        },
        HealthBar = {
            Enabled = false,
            Number = false,
            HighHealthColor = Color3.fromRGB(0, 255, 0),
            LowHealthColor = Color3.fromRGB(255, 0, 0),
        },
        Tool = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255),
        },
        Distance = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255),
        },
        Chams = false,
        AutomaticColor = false,
        Type = "AlwaysOnTop", --// "AlwaysOnTop", "Occluded"
    },
    Checks = {
        WallCheck = false,
        VisibleCheck = false,
        ForceField = false,
        AliveCheck = false,
    },
    Extra = {
        UseDisplayName = false,
        EspFadeOut = 400,
        PriorityOnly = false,
    }
}


--// Time \\--
local day = tonumber(os.date("%d"))
local suffix
local start = tick()


if day == 1 or day == 21 or day == 31 then
    suffix = "st"
elseif day == 2 or day == 22 then
    suffix = "nd"
elseif day == 3 or day == 23 then
    suffix = "rd"
else
    suffix = "th"
end

--// Unlock Fps \\--
setfpscap(2000)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaxKs/Linoria1/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaxKs/Linoria1/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/VaxKs/Linoria1/main/addons/SaveManager.lua"))()

local Window = Library:CreateWindow({
    Title = 'Weak/Legacy | Avalon | .gg/TypeAvalon | '..os.date("%A, %B ") .. day .. suffix .. os.date(", %Y"),
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('Main'),
    Visuals = Window:AddTab('Visuals'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local MainTab = Tabs.Main:AddLeftGroupbox('Main / Features')



--// Main Tab \\--
MainTab:AddToggle('InstaKill', {
    Text = 'Insta Kill',
    Default = false,
    Callback = function(state)
        ok = state
        while ok do
            task.wait()
            for i, v in pairs(game:GetService("Workspace").CharactersAndNPCs:GetChildren()) do
                if v ~= game.Players.LocalPlayer.Character then
                    local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart and isnetworkowner(humanoidRootPart) then
                        local humanoid = v:FindFirstChildOfClass("Humanoid")
                        if humanoid and humanoid.Health <= (0.75 * humanoid.MaxHealth) then
                            humanoid.Health = 0
                        end
                    end
                end
            end
        end
    end,
})


MainTab:AddToggle('AutoBreath', {
    Text = 'Auto Breath',
    Default = false,
    Callback = function(state)
        Breath = state
    end,
})

MainTab:AddToggle('FarmSelected', {
    Text = 'Auto Farm Selected',
    Default = false,
    Callback = function(state)
        getgenv().AutoFarm = state
    end,
})


MainTab:AddDropdown('Mob', {
    Values = {"Weak Demon", "Zenitsu", "Tokito", "Tanjiro (Water)", "Strong Demon", "Rengoku", "Nezuko", "Lower Moon Demon 6", "Lower Moon Demon 5", "Lower Moon Demon 4", "Demon", "Akaza", "Winter Demon", "Tanjiro", "Yoriichi","Demon Boss"},
    Default = 2,
    Multi = true,

    Text = false,
    Tooltip = "Mobs",

    Callback = function(v)
        selectedMobs = v
    end
})

MainTab:AddToggle('M1', {
    Text = 'M1',
    Default = false,
    Callback = function(state)
        M1 = state
    end,
})

MainTab:AddToggle('FuniQuest', {
    Text = 'Quest ting',
    Default = false,
    Callback = function(state)
        Quest = state
        while Quest do task.wait(0.65)
            local questBar = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("QuestBar")

            if not questBar then
                local args = {
                    [1] = "Lower Moon Demon 4 Quest",
                    [2] = 1,
                    [3] = "2.5K YEN, 20K XP",
                    [4] = "LOWER MOON DEMONS 4",
                    [5] = "LOWER MOON DEMON 4 ATTACK"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("QuestTake"):FireServer(unpack(args))                            
            end
        end
    end,
})

--// Esp Tab \\--
local espTab = Tabs.Visuals:AddLeftGroupbox('Visuals / Player Esp')

--// Player Esp \\--
espTab:AddToggle('GlobalESP', {
    Text = 'Enable ESP',
    Default = false,
    Callback = function(state)
        ESP.Main.Enabled = state
    end,
})

espTab:AddToggle('EspBoxes', {
    Text = 'Boxes',
    Default = false,
    Callback = function(state)
        ESP.Main.Box.Enabled = state
    end,
})

espTab:AddToggle('EspNames', {
    Text = 'Names',
    Default = false,
    Callback = function(state)
        ESP.Main.Name.Enabled = state
    end,
})

espTab:AddToggle('EspHealthBar', {
    Text = 'Health Bar',
    Default = false,
    Callback = function(state)
        ESP.Main.HealthBar.Enabled = state
    end,
})

espTab:AddToggle('HealthNumber', {
    Text = 'Show Health Number',
    Default = false,
    Callback = function(state)
        ESP.Main.HealthBar.Number = state
    end,
})

espTab:AddToggle('EspDistance', {
    Text = 'Distance',
    Default = false,
    Callback = function(state)
        ESP.Main.Distance.Enabled = state
    end,
})

espTab:AddToggle('EspTool', {
    Text = 'Tool',
    Default = false,
    Callback = function(state)
        ESP.Main.Tool.Enabled = state
    end,
})

espTab:AddToggle('UseDisplayName', {
    Text = 'Use Display Name',
    Default = false,
    Callback = function(state)
        ESP.Extra.UseDisplayName = state
    end,
})

espTab:AddSlider('EspFadeOut', {
    Text = 'ESP Fade Out Distance',
    Min = 100,
    Max = 1000,
    Default = 400,
    Rounding = 0,
    Compact = false,

    Callback = function(value)
        ESP.Extra.EspFadeOut = value
    end,
})

espTab:AddToggle('PriorityOnly', {
    Text = 'Priority Only',
    Default = false,
    Callback = function(state)
        ESP.Extra.PriorityOnly = state
    end,
})

espTab:AddToggle('AliveCheck', {
    Text = 'Alive Check',
    Default = false,
    Callback = function(state)
        ESP.Checks.AliveCheck = state
    end,
})

espTab:AddToggle('ForceField', {
    Text = 'Force Field',
    Default = false,
    Callback = function(state)
        ESP.Checks.ForceField = state
    end,
})

espTab:AddToggle('VisibleCheck', {
    Text = 'Visible Check',
    Default = false,
    Callback = function(state)
        ESP.Checks.VisibleCheck = state
    end,
})

espTab:AddToggle('WallCheck', {
    Text = 'Wall Check',
    Default = false,
    Callback = function(state)
        ESP.Checks.WallCheck = state
    end,
})


-- UI Settings
Library:OnUnload(function()
    Library.Unloaded = true
end)

Library:SetWatermark(('Avalon | User: ' .. game.Players.LocalPlayer.Name .. ' | Version: 1.0 | '..os.date("%A, %B ") .. day .. suffix .. os.date(", %Y")))

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
local MyButton = MenuGroup:AddButton({
    Text = 'Unload',
    Func = function()
        Library:Unload()
    end,
    DoubleClick = true,
    Tooltip = 'Unload Script'
})

MenuGroup:AddButton({
    Text = 'Rejoin',
    Func = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    end,
    DoubleClick = true,
    Tooltip = 'Rejoin game'
})


MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle('keybindframe', {
    Text = 'Keybind Frame',
    Default = false,
    Tooltip = 'Toggles KeybindFrame',
})

Toggles.keybindframe:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.keybindframe.Value
end)

MenuGroup:AddToggle('Watermark', {
    Text = 'Watermark',
    Default = false,
    Tooltip = 'Toggles Watermark',
})

Toggles.Watermark:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('Avalon')
SaveManager:SetFolder('Avalon/Type-Soul')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()

Library:Notify("TYPE://SOUL | Avalon | Loaded script in " .. string.format("%.4f second(s)!", tick() - start), 5)



--// Auto Breath \\--
spawn(function()
    while task.wait() do
        if Breath then
            local args = {
                [1] = "BeginHamonBreathing"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Breathing"):FireServer(unpack(args))                   
        end
    end
end)



--// Auto Farm \\--
spawn(function()
    local currentMob
    local antifall3

    while task.wait() do
        pcall(function()
            if getgenv().AutoFarm then
                local v = getclosestmob(selectedMobs)
                if v then
                    if not currentMob or currentMob ~= v then
                        currentMob = v
                        repeat task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * CFrame.new(0, 0,7)
                        until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                        
                        if not antifall3 then
                            antifall3 = Instance.new("BodyVelocity")
                            antifall3.Velocity = Vector3.new(0, 0, 0)
                            antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                            antifall3.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        end
                    end
                else
                    currentMob = nil
                    
                    if antifall3 then
                        antifall3:Destroy()
                        antifall3 = nil
                    end
                end
            else
                currentMob = nil
                
                if antifall3 then
                    antifall3:Destroy()
                    antifall3 = nil
                end
            end
        end)
    end
end)




--// Auto M1 \\--
spawn(function()
    while task.wait() do
        if M1 then
            local args = {
                [1] = "M1",
                [2] = "Katana",
                [3] = false
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Attack"):FireServer(unpack(args))            
        end
    end
end)
