local p = game.Players.LocalPlayer
while true do
    for _, v in ipairs(game.Workspace.Checkpoints:GetChildren()) do
        p.Character.HumanoidRootPart.CFrame = v.CFrame
        wait()
    end
    if p.leaderstats.Stage.Value == 29 then p.Character.Humanoid.Health = 0 end
end