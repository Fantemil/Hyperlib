local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Barry's prison", "DarkTheme")

--MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("FoodZooka", "Gives you a FoodZooka", function()
    local new = game.ReplicatedStorage.FoodZooka:Clone()
    new.Parent = game:GetService("Players").LocalPlayer.Backpack
end)

MainSection:NewButton("Shop Items", "Gives yourself All Shop Items", function()
    for i, v in pairs(game:GetService("ReplicatedStorage").ItemModels.VipTools:GetChildren()) do
        local new = v:Clone()
        new.Parent = game.Players.LocalPlayer.Backpack
    end
end)

MainSection:NewTextBox("Tp to stage (Max 25)", "Teleports you to stage number", function(v)
    local A_1 = v
    local Event = game:GetService("ReplicatedStorage").StageChange
    Event:FireServer(A_1)

   game:GetService("Players").LocalPlayer.SpawnVal.Value = v

   game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)

-- PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Your walk speed", "Changes your walk speed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Your jump power", "Changes your jump power", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

PlayerSection:NewButton("Disable shop ", "Disables shop", function()
    game:GetService("Players").LocalPlayer.PlayerGui.ShopScreen:Destroy()
end)

--BARRY
local Barry = Window:NewTab("Barry")
local BarrySection = Barry:NewSection("Barry")

BarrySection:NewSlider("Barry's Speed", "Sets barry's speed", 500, 0, function(v)
    game:GetService("Workspace").Policeman1.guard.Dummy.zomb.WalkSpeed = v
end)

BarrySection:NewButton("Kill Barry (Reset to undo)", "Kills berry", function()
    game:GetService("Workspace").Policeman1.guard.Dummy.zomb.Value.Value = false
end)

BarrySection:NewButton("Reset Berry's speed)", "Resets his speed", function()
    game:GetService("Workspace").Policeman1.guard.Dummy.zomb.WalkSpeed = 16
end)

-- BARRY2
local Barry2 = Window:NewTab("Barry2")
local Barry2Section = Barry2:NewSection("Barry2")

Barry2Section:NewSlider("Barry2's Speed", "Sets barry2's speed", 500, 0, function(v)
    game:GetService("Workspace").Policeman2.guard.Dummy.zomb.WalkSpeed = v
end)

Barry2Section:NewButton("Kill Barry2 (Reset to undo)", "Kills berry2", function()
    game:GetService("Workspace").Policeman2.guard.Dummy.zomb.Value.Value = false
end)

Barry2Section:NewButton("Reset Berry's speed)", "Resets his speed", function()
    game:GetService("Workspace").Policeman2.guard.Dummy.zomb.WalkSpeed = 16
end)

-- SETTINGS
local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("Toggle Ui", "Toggles ui", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)