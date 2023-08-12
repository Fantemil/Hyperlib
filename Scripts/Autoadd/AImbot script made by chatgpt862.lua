local aimbotActive = false
local lockedPlayer = nil
local maxLockDistance = 200 -- Set the maximum lock distance here
local playerTeamNames = {
    "TOC",
    "TBC",
    "TYC",
    "TRC",
    "TPC",
    "TGC"
}

local function isVisible(targetPosition)
    local camera = game.Workspace.CurrentCamera
    local viewportPosition = camera:WorldToViewportPoint(targetPosition)

    return viewportPosition.Z > 0
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.E then
            aimbotActive = not aimbotActive
            if aimbotActive then
                local closestPlayer = nil
                local closestDistance = math.huge

                local myCharacter = game.Players.LocalPlayer.Character
                local myPosition = myCharacter and myCharacter.PrimaryPart and myCharacter.PrimaryPart.Position

                if myPosition then
                    for _, player in pairs(game.Players:GetPlayers()) do
                        local character = player.Character
                        local characterPosition = character and character.PrimaryPart and character.PrimaryPart.Position

                        if characterPosition and player ~= game.Players.LocalPlayer and isVisible(characterPosition) and not isSameTeam(player) then
                            local distance = (myPosition - characterPosition).Magnitude
                            if distance < closestDistance and distance <= maxLockDistance then
                                closestDistance = distance
                                closestPlayer = player
                            end
                        end
                    end

                    if closestPlayer then
                        lockedPlayer = closestPlayer
                    end
                end
            else
                lockedPlayer = nil
            end
        elseif input.KeyCode == Enum.KeyCode.O then
            aimbotActive = false
            lockedPlayer = nil
        end
    end
end)

function isSameTeam(player)
    local myPlayer = game.Players.LocalPlayer
    local myTeam = myPlayer.Team

    if myTeam and player.Team then
        return myTeam.Name == player.Team.Name
    end

    return false
end

game:GetService("Players").PlayerRemoving:Connect(function(player)
    if lockedPlayer == player then
        lockedPlayer = nil
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if lockedPlayer and (not lockedPlayer.Character or not lockedPlayer.Character:FindFirstChild("Humanoid") or lockedPlayer.Character.Humanoid.Health <= 0) then
        lockedPlayer = nil
    end

    if aimbotActive and lockedPlayer then
        local myCharacter = game.Players.LocalPlayer.Character
        local myPosition = myCharacter and myCharacter.PrimaryPart and myCharacter.PrimaryPart.Position

        if myPosition then
            local targetPosition = lockedPlayer.Character.PrimaryPart.Position
            game:GetService("VirtualUser"):CaptureController()
            mousemoveabs(targetPosition.X, targetPosition.Y)

            local camera = game.Workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.Position, targetPosition)
        end
    end
end)
