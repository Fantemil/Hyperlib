if not game:IsLoaded() then
game.Loaded:Wait()
end
wait(2)
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model"):Destroy()