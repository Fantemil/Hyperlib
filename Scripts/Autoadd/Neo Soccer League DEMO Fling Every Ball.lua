while task.wait(1) do
   for i,v in ipairs(workspace.Objects.Balls:GetChildren()) do
       game:GetService("ReplicatedStorage").Remotes.Ball.Kick:FireServer(v, game.Workspace.CurrentCamera.CFrame, -5000000002222222, "Straight")
   end
end