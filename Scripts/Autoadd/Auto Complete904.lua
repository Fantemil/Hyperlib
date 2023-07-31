local currentStage = 1
local maxStages = 25 
local function teleportToStage(stage)
    local teleportPath = game:GetService("Workspace").Stages[tostring(stage)].go
    local character = game:GetService("Players").LocalPlayer.Character

    if teleportPath then
        character.HumanoidRootPart.CFrame = teleportPath.CFrame
    else
        local message = "No se encontró el camino de teletransporte para la etapa " .. tostring(stage)
        game.StarterGui:SetCore("SendNotification", {
            Title = "ERROR",
            Text = message,
            Icon = "",
            Duration = 5
        })
    end
end

local function changeStage()
    teleportToStage(currentStage)
    currentStage = currentStage + 1

    if currentStage > maxStages then
        print("¡Se ha alcanzado la última etapa!")
        return
    end
end

local function startAutoChange()
    while true do
        wait()
        changeStage()
    end
end

startAutoChange()

