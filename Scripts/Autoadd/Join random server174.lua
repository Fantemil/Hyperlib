local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

-- Function to hop to a new server
local function hopToNewServer()
    local placeId = game.PlaceId
    local teleportService = game:GetService("TeleportService")

    -- Get the current player's user ID
    local player = Players.LocalPlayer
    local userId = player.UserId

    -- Create a new teleport request to the same place
    -- This will teleport the player to a new server
    teleportService:Teleport(placeId, player)
end

-- Execute the server hop
hopToNewServer()
