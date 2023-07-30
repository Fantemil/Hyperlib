local checkpoints = workspace.Checkpoints:GetChildren()
table.sort(checkpoints, function(a, b)
    return tonumber(a.Name) < tonumber(b.Name)
end)
for i, checkpoint in ipairs(checkpoints) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = checkpoint.CFrame
    wait(0.2)
end
