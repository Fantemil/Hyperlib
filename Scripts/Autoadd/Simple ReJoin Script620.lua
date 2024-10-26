local player = game.Players.LocalPlayer
local gamePlaceId = game.PlaceId
local teleportService = game:GetService("TeleportService")
teleportService:Teleport(gamePlaceId, player)