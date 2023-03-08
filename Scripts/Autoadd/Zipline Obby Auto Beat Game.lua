for i = 1,150 do
game.Players.LocalPlayer.Character:PivotTo(game:GetService("Workspace").Checkpoints[i].CFrame)
    task.wait(0.1)
end