for _, v in pairs(game:GetService("Workspace").BadgeColliders:GetChildren()) do
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
	wait(0.1)
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
end