local plrs = game.Players
local lplr = plrs.LocalPlayer
local race_part = workspace.Levels.Race.One:GetChildren()[64]
local infinity_part = workspace.Levels.Infinity:GetChildren()[57]
while true do
	task.wait()
	lplr.Character.HumanoidRootPart.CFrame = infinity_part.CFrame
	fireproximityprompt(infinity_part.ProximityPrompt)
	task.wait()
	lplr.Character.HumanoidRootPart.CFrame = race_part.CFrame
	fireproximityprompt(race_part.ProximityPrompt)
end