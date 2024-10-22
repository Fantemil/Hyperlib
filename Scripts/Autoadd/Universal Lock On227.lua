local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()

local targetLock = false
local lockedPlayer = nil

local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local character = player.Character
            local torso = character:FindFirstChild("HumanoidRootPart")
            local screenPos = workspace.CurrentCamera:WorldToScreenPoint(torso.Position)
            local mousePos = Vector2.new(mouse.X, mouse.Y)
            local distance = (mousePos - Vector2.new(screenPos.X, screenPos.Y)).Magnitude

            if distance < shortestDistance then
                shortestDistance = distance
                closestPlayer = player
            end
        end
    end

    return closestPlayer
end

local function lockOntoPlayer()
    local closestPlayer = getClosestPlayer()

    if closestPlayer and closestPlayer.Character then
        local torso = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
        if torso then
            mouse.TargetFilter = torso
            lockedPlayer = closestPlayer
            targetLock = true
        end
    end
end


local function updateLock()
    if lockedPlayer and lockedPlayer.Character then
        local torso = lockedPlayer.Character:FindFirstChild("HumanoidRootPart")
        if torso then
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, torso.Position)
        end
    end
end


UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.C then
        if not targetLock then
            lockOntoPlayer()
        else
            mouse.TargetFilter = nil
            lockedPlayer = nil
            targetLock = false
        end
    end
end)

RunService.RenderStepped:Connect(function()
    if targetLock then
        updateLock()
    end
end)
