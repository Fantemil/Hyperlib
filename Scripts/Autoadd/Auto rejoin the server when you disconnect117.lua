-- Auto rejoin the server when you disconnect
game:service"NetworkClient".ChildRemoved:Connect(function()
   game:service"TeleportService":TeleportToPlaceInstance(game.PlaceId, game.JobId, game:service"Players".LocalPlayer);
end)