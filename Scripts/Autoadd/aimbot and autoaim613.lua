-------------------made by FCODER--------------

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local localPlayer = Players.LocalPlayer
local camera = Workspace.CurrentCamera

local AIM_KEY = Enum.KeyCode.B -- Key to toggle auto-aim
local AIMBOT_KEY = Enum.KeyCode.N -- Key to toggle aimbot mode
local AIM_RANGE = 100 -- Max distance to search for a target
local AIM_SPEED = 0.25 -- Speed at which the camera moves to the target (smooth for new players)
local aiming = false
local aimbotMode = false
local aimingConnection = nil
local lockedTarget = nil
local aimbotTarget = nil

-- Function to check if a player is in the camera's field of view
local function isPlayerInView(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local headPosition = player.Character.Head.Position
        local directionToTarget = (headPosition - camera.CFrame.Position).Unit
        local cameraDirection = camera.CFrame.LookVector
        local angle = math.acos(cameraDirection:Dot(directionToTarget))

        -- Check if the target is within a 45-degree cone in front of the camera
        return angle < math.rad(45)
    end
    return false
end

-- Function to check if a player is alive
local function isPlayerAlive(player)
    return player.Character and player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid.Health > 0
end

-- Function to find the closest target that is not on the same team, not dead, and in view
local function findClosestTarget()
    local closestTarget = nil
    local closestDistance = AIM_RANGE

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localPlayer.Team and isPlayerAlive(player) and isPlayerInView(player) then
            local targetPosition = player.Character.HumanoidRootPart.Position
            local distance = (targetPosition - localPlayer.Character.HumanoidRootPart.Position).Magnitude

            if distance < closestDistance then
                closestDistance = distance
                closestTarget = player.Character.HumanoidRootPart
            end
        end
    end

    return closestTarget
end

-- Function to find the closest target's head that is not on the same team, not dead, and in view
local function findClosestHead()
    local closestHead = nil
    local closestDistance = AIM_RANGE

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localPlayer.Team and isPlayerAlive(player) and isPlayerInView(player) then
            local headPosition = player.Character.Head.Position
            local distance = (headPosition - localPlayer.Character.HumanoidRootPart.Position).Magnitude

            if distance < closestDistance then
                closestDistance = distance
                closestHead = player.Character.Head
            end
        end
    end

    return closestHead
end

-- Function to smoothly aim at the target
local function aimAtTarget(target)
    if target then
        local targetPosition = target.Position
        local aimDirection = (targetPosition - camera.CFrame.Position).Unit

        -- Smoothly move the camera towards the target
        local newCameraCFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + aimDirection)
        camera.CFrame = camera.CFrame:Lerp(newCameraCFrame, AIM_SPEED)
    end
end

-- Function to continuously update the target
local function updateTarget()
    if aiming then
        local newTarget = findClosestTarget()
        if newTarget then
            lockedTarget = newTarget
        end
    elseif aimbotMode then
        local newHead = findClosestHead()
        if newHead then
            aimbotTarget = newHead
        end
    end
end

-- Toggle auto-aim on or off
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == AIM_KEY and not gameProcessed then
        aiming = not aiming

        if aiming then
            updateTarget()
            aimingConnection = RunService.RenderStepped:Connect(function()
                if lockedTarget and isPlayerAlive(lockedTarget.Parent) then
                    aimAtTarget(lockedTarget)
                else
                    updateTarget()
                end
            end)
        else
            if aimingConnection then
                aimingConnection:Disconnect()
                aimingConnection = nil
                lockedTarget = nil
            end
        end
    end

    -- Toggle aimbot mode on or off
    if input.KeyCode == AIMBOT_KEY and not gameProcessed then
        aimbotMode = not aimbotMode

        if aimbotMode then
            updateTarget()
            aimingConnection = RunService.RenderStepped:Connect(function()
                if aimbotTarget and isPlayerAlive(aimbotTarget.Parent) then
                    aimAtTarget(aimbotTarget)
                else
                    updateTarget()
                end
            end)
        else
            if aimingConnection then
                aimingConnection:Disconnect()
                aimingConnection = nil
                aimbotTarget = nil
            end
        end
    end
end)
