if #game.Players:GetPlayers() <= 1 then
	game.Players.LocalPlayer:Kick("\nRejoining...")
	task.wait()
	game.TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
else
	game.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end