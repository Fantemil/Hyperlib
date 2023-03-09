repeat
   wait()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Checkpoints[game:GetService("Players").LocalPlayer.leaderstats.Stage.Value + 1].CFrame)
   until game:GetService("Players").LocalPlayer.leaderstats.Stage.Value == 396