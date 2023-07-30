local servers=game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
        for a,b in pairs(servers.data) do
          if b.playing~=b.maxPlayers then
              game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, b.id)
          end
        end