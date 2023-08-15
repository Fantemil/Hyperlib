local players = game:GetService("Players")
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local targetPlayer = nil
local orbitDistance = 5 -- Orbit Distance
local orbitSpeed = 5 -- Orbit Speed ofc dummy don't touch anything else
local orbitToggleKey = Enum.KeyCode.V -- Change V to whatever key bind you like 
local isOrbiting = false

local function getNearestPlayer()
    local nearestDistance = math.huge
    local nearestPlayer = nil

    local localCharacter = players.LocalPlayer.Character
    if localCharacter then
        local localRootPart = localCharacter:FindFirstChild("HumanoidRootPart")
        if localRootPart then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= players.LocalPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (character.HumanoidRootPart.Position - localRootPart.Position).Magnitude
                        if distance < nearestDistance then
                            nearestDistance = distance
                            nearestPlayer = player
                        end
                    end
                end
            end
        end
    end

    return nearestPlayer
end

local function startOrbit()
    targetPlayer = getNearestPlayer()
    isOrbiting = true
end

local function stopOrbit()
    targetPlayer = nil
    isOrbiting = false
end

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == orbitToggleKey then
        if isOrbiting then
            stopOrbit()
        else
            startOrbit()
        end
    end
end)

local lastTime = tick()
local currentAngle = 0

runService.Heartbeat:Connect(function(deltaTime)
    if isOrbiting and targetPlayer then
        local character = players.LocalPlayer.Character
        local targetCharacter = targetPlayer.Character

        if character and character:FindFirstChild("HumanoidRootPart") and targetCharacter then
            currentAngle = currentAngle + orbitSpeed * deltaTime
            local xOffset = math.cos(currentAngle) * orbitDistance
            local zOffset = math.sin(currentAngle) * orbitDistance

            local targetPosition = targetCharacter.HumanoidRootPart.Position
            local orbitPosition = Vector3.new(targetPosition.X + xOffset, targetPosition.Y, targetPosition.Z + zOffset)

            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            humanoidRootPart.CFrame = CFrame.new(orbitPosition, targetPosition)
        end
    end
end)
