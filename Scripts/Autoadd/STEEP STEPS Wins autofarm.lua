if game.PlaceId == 11606818992 then
repeat
wait(0.1)
until game.Players.LocalPlayer.DataLoaded.Value == 0
local wins = game.Players.LocalPlayer.Data.wins.Value
repeat
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-892.23, 3573.63, -988))
game.Players.LocalPlayer.PlayerGui.Menu.ResetProgress.Visible = true
game.ReplicatedStorage.Remotes.ToggleMountainPrompt1:FireServer(true)
fireproximityprompt(workspace.questItems.EndGame.ProximityPrompt)
wait()
until game.Players.LocalPlayer.Data.wins.Value == wins+1
game:GetService("TeleportService"):Teleport(11606818992, game.Players.LocalPlayer)
end