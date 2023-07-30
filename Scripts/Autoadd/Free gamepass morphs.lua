local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("[EP. 52!] Ultimate Skibid Toilet Roleplay by code_00219", "RJTheme5")
local Tab = Window:NewTab("Gamepass Morph")
local Section = Tab:NewSection("Teleporting")

Section:NewButton("Ovelord Tv", "Ovelord Tv Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.42, 97.37, 1909.27)
end
end)

Section:NewButton("Overseer Cameraman", "Overseer Cameraman Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(66.28, 97.37, 1909.48)
end
end)

Section:NewButton("King Cameraman", "King Cameraman Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.02, 97.37, 1906.52)
end
end)

Section:NewButton("Projector Titan", "Projector Titan Morph", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5.76, 97.37, 1887.35)
end
end)