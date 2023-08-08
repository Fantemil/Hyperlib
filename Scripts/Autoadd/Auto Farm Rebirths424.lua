local player = game:GetService("Players").LocalPlayer
local leaderstats = player.leaderstats
local checkpoints = workspace.Checkpoints

while true do
    local currentStage = leaderstats.Stage.Value
    
    if currentStage < 40 then
        local targetCheckpoint = checkpoints[tostring(currentStage + 1)]
        
        if targetCheckpoint then
            player.Character.HumanoidRootPart.CFrame = targetCheckpoint.CFrame
        end
    else
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer()
    end
    
    wait(0.2)
end