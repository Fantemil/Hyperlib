local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Survival Skibid Toilet in Area 51", "RJTheme1")
local Tab = Window:NewTab("Morphs")
local Section = Tab:NewSection("Characters")


Section:NewButton("Camera Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.32, 240.98, 32.70)
end
end)

Section:NewButton("Speaker Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.43, 240.96, 13.10)
end
end)

Section:NewButton("Large Camera Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.63, 240.97, -5.86)
end
end)

Section:NewButton("Big Speaker Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.20, 240.98, -26.14)
end
end)

Section:NewButton("Speaker Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.06, 240.96, -44.63)
end
end)

Section:NewButton("Camera Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.53, 240.89, -62.26)
end
end)

Section:NewButton("TV Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.36, 240.92, -79.64)
end
end)

Section:NewButton("Large TV Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.96, 240.91, -96.75)
end
end)

Section:NewButton("TV Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.65, 240.91, -108.28)
end
end)

Section:NewButton("Cinema Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.34, 240.92, -108.26)
end
end)

Section:NewButton("TV Woman", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.98, 241.57, -108.57)
end
end)

Section:NewButton("Speaker Woman", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56.55, 240.92, -108.20)
end
end)

Section:NewButton("Upgraded Speaker Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75.00, 241.37, -108.66)
end
end)

Section:NewButton("Upgraded Plunger Camera Man", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.57, 240.92, -107.71)
end
end)

Section:NewButton("Camera Woman", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.30, 241.37, -107.70)
end
end)

Section:NewButton("Upgraded Speaker Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.99, 241.37, -107.67)
end
end)

Section:NewButton("Upgraded Camera Man Titan", "Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.29, 242.86, -107.32)
end
end)

local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleports")

Section:NewButton("Cave", "TP", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(53.39, 44.83, 15.81)
end
end)

Section:NewButton("Boss Upgraded Scientist Toilet", "TP", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-339.78, 42.90, 283.21)
end
end)

Section:NewButton("Spawn", "TP", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(53.37, 240.89, 55.60)
end
end)