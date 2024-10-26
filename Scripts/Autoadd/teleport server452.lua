local TeleportService = game:GetService('TeleportService')
local placeId = place_id_here
local jobId = 'jobid_here_238498'
local function teleportToServer()
    local player = game.Players.LocalPlayer
    if player then
        TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
    else
        warn('LocalPlayer not found')
    end
end
teleportToServer() 