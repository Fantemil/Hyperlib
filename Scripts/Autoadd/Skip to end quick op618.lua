local player = game.Players.LocalPlayer
local stats = player.leaderstats.Stage.Value
local character = player.Character or player.CharacterAdded:Wait()

local stages = workspace:WaitForChild("Stages")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

for i = stats, 842 do
    local stageFolder = stages:FindFirstChild(tostring(i))
    
    if stageFolder then
        local spawnPart = stageFolder:FindFirstChild("Spawn")
        
        if spawnPart then
            humanoidRootPart.CFrame = spawnPart.CFrame
            wait(0.1) -- the time before moving to the next stage (you can adjust this duration)
        end
    end
end
