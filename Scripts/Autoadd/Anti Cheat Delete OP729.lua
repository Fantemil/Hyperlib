if not game:IsLoaded() then
    game.Loaded:Wait()
end
while wait() do
player = game.Players.LocalPlayer.Name
game.ReplicatedStorage.Remotes.Events.GameManager:Destroy()
game:GetService("Players")[player].PlayerGui.Points.Disabled = true
game:GetService("Players")[player].PlayerGui.Points.PointsCreator.Disabled = true
game:GetService("Players")[player].PlayerGui.Points:Destroy()
game:GetService("StarterGui").Points.Disabled = true
game:GetService("StarterGui").PointsCreator.Disabled = true
game:GetService("StarterGui").Points:Destroy()
end