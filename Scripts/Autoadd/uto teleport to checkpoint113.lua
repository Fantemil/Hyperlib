local player = game.Players.LocalPlayer
local checkpointsFolder = workspace.Level.Checkpoints

local function teleportToCheckpoint(checkpointNumber)
    local checkpoint = checkpointsFolder:FindFirstChild("Checkpoint" .. checkpointNumber)
    if checkpoint then
        player.Character:SetPrimaryPartCFrame(checkpoint.CFrame)
    end
end

for i = 1, 7 do
    wait(2)
    teleportToCheckpoint(i)
    
    if i == 7 then
        break
    end
end