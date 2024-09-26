local player = game.Players.LocalPlayer
local leaderstats = player:WaitForChild("leaderstats")
local currentStageValue = leaderstats:WaitForChild("Stage")
local checkpointsFolder = game.Workspace.Map.GDCO.Checkpoints

local function getNextStage(currentStage)
    local nextStageNumber = currentStage + 1
    local nextStagePart = checkpointsFolder:FindFirstChild(tostring(nextStageNumber))
    return nextStagePart
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
        local nextCheckpoint = getNextStage(currentStage)
        if not nextCheckpoint then break end
        teleportToCheckpoint(nextCheckpoint)
        currentStage = currentStage + 1
        currentStageValue.Value = currentStage
        wait(0.5)
    end
end

startTeleportingFromCurrentStage()