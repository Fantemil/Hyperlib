local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local checkpoints = game.Workspace:FindFirstChild("Checkpoints")

local currentStage = player.leaderstats.Stage.Value

local function moveToCheckpoint(checkpointNumber)
    local part = checkpoints:FindFirstChild(checkpointNumber)
    if part then
        player.Character:MoveTo(part.Position)
    end
end

if checkpoints then
    for i = currentStage, 200 do
        moveToCheckpoint(i)
        wait(0.25)
        
        if i == 200 then
            local args = {
                [1] = "Yes"
            }
            ReplicatedStorage.Remotes.PlayerSettings.RebirthConfirm:FireServer(unpack(args))
        end
    end
end
