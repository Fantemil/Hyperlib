local Players = game:GetService("Players")
local player = Players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local currentStageValue = leaderstats:WaitForChild("Stage")
local checkpointsFolder = game.Workspace.Checkpoints

local function getNextCheckpoint(currentStage)
    local nextCheckpointName = tostring(currentStage)
    local nextCheckpointPart = checkpointsFolder:FindFirstChild(nextCheckpointName)
    return nextCheckpointPart
end

local function teleportToCheckpoint(checkpointPart)
    if checkpointPart then
        local targetCFrame = checkpointPart.CFrame * CFrame.new(0, 3, 0)
        player.Character:SetPrimaryPartCFrame(targetCFrame)
    end
end

local function startTeleportingFromCurrentStage()
    local currentStage = currentStageValue.Value
    while true do
        local nextCheckpoint = getNextCheckpoint(currentStage)
        if not nextCheckpoint then break end
        teleportToCheckpoint(nextCheckpoint)
        currentStage = currentStage + 1
        currentStageValue.Value = currentStage
        wait(0.5)
    end
end

startTeleportingFromCurrentStage()