while task.wait() do
for i, v in pairs(workspace.Bridge:GetChildren()) do
	if v:FindFirstChildOfClass("TouchTransmitter") then
		v.Color = Color3.new(1, 0, 0)
	else
		v.Color = Color3.new(0, 1, 0)
		task.wait(0.30)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 2.5, 0)
	end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EndArea.Chest.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart:GetPropertyChangedSignal("CFrame"):wait()
end