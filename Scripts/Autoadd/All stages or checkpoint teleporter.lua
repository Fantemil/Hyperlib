local player = game.Players.LocalPlayer
local stagesFolder = game.Workspace.Stages

local stages = stagesFolder:GetChildren()
local maxStage = #stages
local currentStage = 1

local function teleportToStage(stage)
    if stage then
        player.Character.HumanoidRootPart.CFrame = stage.CFrame
    end
end

local function teleportToNextStage()
    if currentStage <= maxStage then
        local stage = stages[currentStage]
        teleportToStage(stage)
        currentStage = currentStage + 1
        wait(.5) 
        teleportToNextStage() 
    end
end

teleportToStage(stages[currentStage])
teleportToNextStage() 