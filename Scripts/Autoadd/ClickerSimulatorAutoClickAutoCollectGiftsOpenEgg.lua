local EggTable = {}
local ZoneTable = {}
for _,Egg in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    table.insert(EggTable, Egg.Name)
end
for _,Zone in pairs(game:GetService("Workspace").Zones:GetChildren()) do
    table.insert(ZoneTable, Zone.Name)
end

-- Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
 game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
-- All Of The God Damn Easy Ass Shit (Ui Lib Set Ups)
local Luxtl = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Luxware-UI-Library/main/Source.lua"))()

local Luxt = Luxtl.CreateWindow("Click Shitulator", 6105620301)
-- Tabs
local AutoFarm = Luxt:Tab("Auto-Farm", 6087485864)
local Pets = Luxt:Tab("Pets", 6087485864)
local Misc = Luxt:Tab("Misc", 6087485864)
local Creds = Luxt:Tab("Credits", 6087485864)
-- Section()
local Clicks = AutoFarm:Section("AutoClicks")
local OpenEggs = Pets:Section("Eggs")
local Combines = Pets:Section("Auto Combines")
local Teleports = Misc:Section("Teleports")
local LocalPlayer = Misc:Section("Locals")
local Credits = Creds:Section("Credits")
-- Ui Lib Toggles, Dropdowns,Etc For Script
Clicks:Toggle("Auto Click", function(Vals)
    AutoClick = Vals
end)
Clicks:Toggle("Auto Collect Gifts", function(Vals)
    CollectGift = Vals
end)

OpenEggs:Toggle("Open Egg", function(Vals)
    OpenEgg = Vals
end)
OpenEggs:DropDown("Select Egg", EggTable, function(Value)
    SelectedEgg = Value
end)
Combines:Toggle("Auto Shiny Pet", function(Vals)
    AutoShiny = Vals
end)
Combines:TextBox("Combine Pet Name", "Pet Name Here", function(Values)
    CombinePetName = Values
end)
Teleports:DropDown("Zone Teleports",ZoneTable, function(Values)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones[Values].teleport.CFrame
end)
Teleports:Button("Teleport Main Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.teleport.CFrame
end)
Teleports:Button("Teleport Tech Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").techWorld.Portal.teleportPosition.CFrame
end)
LocalPlayer:Slider("WalkSpeed", 16, 120, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
end)
LocalPlayer:Slider("JumpPower", 45, 200, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
end)
Credits:Button("Copy Discord Link", function()
    setclipboard("discord.gg/lonelynerd")
end)
Credits:Label("discord.gg/lonelynerd")
Credits:Label("Scripting - RyanRenolds#3857")
Credits:Label("Ui Lib - xHeptc")
Credits:Label("I Made This Because I Was Bored Lol")
Credits:Label("This Isn't Fully Complete, Still A Bit More To Go :)")
-- Script Functioning Parts/Toggles
spawn(function()
    while true do wait()
        if AutoClick then
            getsenv(game:GetService("Players").LocalPlayer.PlayerGui.mainUI.LocalScript).activateClick()
        end
    end
end)
spawn(function()
    while true do wait()
        if OpenEgg then
            local ohInstance1 = workspace.Eggs[SelectedEgg]
            local ohBoolean2 = false
            local ohBoolean3 = false
            game:GetService("ReplicatedStorage").Events.Client.purchaseEgg2:InvokeServer(ohInstance1, ohBoolean2, ohBoolean3)
        end
    end
end)


spawn(function()
    while true do wait(0.3)
        if AutoShiny then
            local ohString1 = CombinePetName
            local ohNumber2 = 1
            game:GetService("ReplicatedStorage").Events.Client.upgradePet:FireServer(ohString1, ohNumber2, ohInstance3)
        end
    end
end)
spawn(function()
    while true do wait(0.1)
        if CollectGift then
            game:GetService("ReplicatedStorage").Events.Client.collectGifts:FireServer()
        end
    end
end)