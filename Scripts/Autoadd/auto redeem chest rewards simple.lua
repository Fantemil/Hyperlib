for i,v in pairs(game:GetService("Workspace").Assets.Chests:GetChildren()) do
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end