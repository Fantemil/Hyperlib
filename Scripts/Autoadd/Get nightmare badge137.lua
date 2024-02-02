-- Sometimes a bug may occur.
local Library =
loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Skibidi Toilet Siege Defense v1.0 release by Artem89ru_2023", "RJTheme6")
local Tab = Window:NewTab("Farm")
local Section = Tab:NewSection("Farm")

Section:NewButton("Nightmare badge (spam e)", "get Nightmare badge", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-32.29, 3.05, -6.25)
end
end)

Section:NewButton("spawn", "spawn", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31.95, 241.41, -5.12)
end
end)

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
	if v:IsA("ProximityPrompt") then
		v["HoldDuration"] = 0
	end
end


game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
    v["HoldDuration"] = 0
end)

Section:NewButton("Roof", "tp to Roof", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.46, 303.99, -15.20)
end
end)