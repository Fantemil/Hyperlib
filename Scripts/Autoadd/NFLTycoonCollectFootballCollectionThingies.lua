for i,v in pairs(game:GetService("Workspace").Collectathon:GetChildren()) do
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   task.wait()
end