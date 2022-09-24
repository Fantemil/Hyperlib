game.Players.PlayerRemoving: connect (function (plr)
    if plr == game.Players.LocalPlayer then
      game:GetService('TeleportService'):Teleport(game.PlaceId)
    end
end)