local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
for i = 1, 90, 1 do
	local stage = workspace.Checkpoints[i].Spawn
	HRP.CFrame = CFrame.new(stage.Position.X, stage.Position.Y, stage.Position.Z)
	task.wait(0.05)
end