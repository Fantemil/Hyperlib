local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pancake's Wall Hop / .gg/yzVKsYkkwM", "BloodTheme")

local SkipTab = Window:NewTab("Skip State")
local PlayerTab = Window:NewTab("LocalPlayer")

local NormalSkipSe = SkipTab:NewSection("ð¤¡ | .gg/yzVKsYkkwM")
local PlayerSe = PlayerTab:NewSection("ð¤¡ | .gg/yzVKsYkkwM")

NormalSkipSe:NewButton("Skip State", "Skip 1 State :V", function()
 local NowState = game.Players.LocalPlayer.leaderstats.Stage.Value
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Checkpoints[NowState + 1].CFrame
end)

local autos = false
NormalSkipSe:NewToggle("Automatic Skip State", "Just Nightmares", function(s)
 autos = s
end)

PlayerSe:NewSlider("Walk speed", "Just Nig htmares", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSe:NewSlider("Jump power", "Just Nig htmares", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
 game.Players.LocalPlayer.Character.Humanoid.Jumppower = s
end)

PlayerSe:NewSlider("Hip Height", "Just Nigh tmares", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
 game.Players.LocalPlayer.Character.Humanoid.HipHeight = s 
end)

while wait() do
 if autos then
local NowState = game.Players.LocalPlayer.leaderstats.Stage.Value
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Checkpoints[NowState + 1].CFrame
 end
end