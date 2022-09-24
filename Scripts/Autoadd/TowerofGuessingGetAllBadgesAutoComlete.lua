local sex = game.Players.LocalPlayer.Character
for i, rough in pairs(game:GetService("Workspace").Game.Stages:GetChildren()) do
    firetouchinterest(rough, sex.HumanoidRootPart, 0)
    firetouchinterest(rough, sex.HumanoidRootPart, 1)
end
wait(3)
sex.Humanoid.Health = 0