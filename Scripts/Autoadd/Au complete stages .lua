local checkpointsFolder = workspace.Checkpoints
local player = game.Players.LocalPlayer
local stage = player.leaderstats.Stage.Value
local checkpointNum = 1

while checkpointNum <= 20 do
    local checkpoint = checkpointsFolder[tostring(checkpointNum)]
    if checkpoint then
        if checkpointNum <= stage then
            checkpointNum = checkpointNum + 1
        else
            local teleportPos = checkpoint.Position
            player.Character:MoveTo(teleportPos)
            wait(0.5)
            checkpointNum = checkpointNum + 1
        end
    else
        break
    end
end
