-- Keybind = X
-- Made by mxkxkks

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local function findClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local myPosition = Players.LocalPlayer.Character.HumanoidRootPart.Position
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local targetPosition = character.HumanoidRootPart.Position
                local distance = (targetPosition - myPosition).Magnitude
                if distance < shortestDistance then
                    closestPlayer = player
                    shortestDistance = distance
                end
            end
        end
    end
    
    return closestPlayer
end

local function fireShotgunAtPlayer(player)
    local myPosition = Players.LocalPlayer.Character.HumanoidRootPart.Position
    local targetPosition = player.Character.HumanoidRootPart.Position
    local rayDirection = (targetPosition - myPosition).Unit
    
    local ray = Ray.new(myPosition, rayDirection)
    local shotgunRemoteBridge = Players.LocalPlayer.Character.Shotgun.RemoteBridge
    
    shotgunRemoteBridge:FireServer(ray)
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.X then
        local closestPlayer = findClosestPlayer()
        if closestPlayer then
            fireShotgunAtPlayer(closestPlayer)
        end
    end
end)
