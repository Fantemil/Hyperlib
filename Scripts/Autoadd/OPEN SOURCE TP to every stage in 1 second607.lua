local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

for i = 1, 130 do
    local stageName = string.format("Stage%02d", i)
    local stage = workspace.Stages:FindFirstChild(stageName)
    
    if stage then
        local checkpoint = stage:FindFirstChild("Checkpoint")
        if checkpoint then
            local checkpointPart = checkpoint:FindFirstChild("Checkpoint")
            if checkpointPart then
                humanoidRootPart.CFrame = checkpointPart.CFrame
                wait(0)
            end
        end
    end
end
