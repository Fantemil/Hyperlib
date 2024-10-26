-- 51cles lock

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera

local locking = false
local targetPlayer = nil

local function getClosestPlayerToMouse()
    local closestPlayer = nil
    local shortestDistance = math.huge
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local headPosition = player.Character.Head.Position
            local screenPoint = Camera:WorldToScreenPoint(headPosition)
            local distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPoint.X, screenPoint.Y)).magnitude
            
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end
    
    return closestPlayer
end

local function lockCameraToPlayer(player)
    if player and player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, head.Position)
    end
end

local function toggleLock()
    locking = not locking
    if locking then
        targetPlayer = getClosestPlayerToMouse()
    else
        targetPlayer = nil
    end
end

-- c key to lock
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.C and not gameProcessed then
        toggleLock()
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if locking and targetPlayer then
        lockCameraToPlayer(targetPlayer)
    end
end)
