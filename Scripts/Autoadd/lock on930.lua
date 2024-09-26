local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera

local LocalPlayer = Players.LocalPlayer
local lockOn = false
local targetPlayer = nil

-- get closest player
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local direction = (player.Character.Head.Position - LocalPlayer.Character.HumanoidRootPart.Position).unit
            local forward = LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector
            local dotProduct = forward:Dot(direction)
            local distance = (player.Character.Head.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            
            if dotProduct > 0.9 and distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end
    
    return closestPlayer
end

-- update thing so it doesnt freeze
local function updateLockOn()
    if lockOn then
        targetPlayer = getClosestPlayer()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local targetPosition = targetPlayer.Character.Head.Position
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
        end
    end
end

-- makes sure ur holding down right mouse
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        lockOn = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        lockOn = false
        targetPlayer = nil
    end
end)

-- update lock on part
RunService.RenderStepped:Connect(updateLockOn)