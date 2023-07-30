local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage:WaitForChild("R5")
local LocalPlayer = Players.LocalPlayer

local function fireRemoteAroundPlayer(player)
    local character = player.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart then
        local targetPosition = humanoidRootPart.Position
        for _ = 1, 8 do 
            local randomOffset = Vector3.new(math.random(-13, 13), 0, math.random(-13, 13))
            local firePosition = targetPosition + randomOffset
            
            local args = {
                [1] = firePosition,
            }
    
            remote:FireServer(unpack(args))
        end
    end
end

while task.wait() do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then  
            fireRemoteAroundPlayer(player)
        end
    end
end
