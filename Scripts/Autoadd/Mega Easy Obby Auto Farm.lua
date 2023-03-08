for i = 2, #workspace.Checkpoints:GetChildren() do
   task.wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Checkpoints:FindFirstChild(tostring(i)).CFrame + Vector3.new(0,10,0)
end