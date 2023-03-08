game.Players.LocalPlayer.PlayerGui.DetectLetter:Destroy()

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function() 
    wait(3.45)
    game.Players.LocalPlayer.PlayerGui.DetectLetter:Destroy()
end)