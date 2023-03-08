for i,v in pairs(game:GetService("Workspace").GameDebris.Environment:GetChildren()) do
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Sign, 0)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Sign, 1)
    task.wait(0.1)
end