-- Define a variable to store the player object
local player = game.Players.LocalPlayer

-- Define a function to teleport the player behind the target player
function teleportBehind(targetPlayer)
    local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
    local teleportPosition = targetPosition - targetPlayer.Character.HumanoidRootPart.CFrame.LookVector * 5
    player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
end

-- Define a function to make the player disappear when the target player is looking at them
function disappearWhenLookedAt(targetPlayer)
    while true do
        local ray = Ray.new(player.Character.HumanoidRootPart.Position, targetPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position)
        local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character})
        if part and part:IsDescendantOf(targetPlayer.Character) then
            player.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0, -10000, 0)))
            break
        end
        wait()
    end
end

-- Define a function to scare the target player by teleporting behind them and disappearing when looked at
function scarePlayer(targetPlayer)
    teleportBehind(targetPlayer)
    disappearWhenLookedAt(targetPlayer)
end

-- Define a function to trigger the scare when the player presses a key
function onKeyPress(inputObject, gameProcessedEvent)
    if gameProcessedEvent then return end
    if inputObject.KeyCode == Enum.KeyCode.E then
        local targetPlayer = game.Players:GetPlayerFromCharacter(inputObject.Target.Parent)
        if targetPlayer then
            scarePlayer(targetPlayer)
        end
    end
end

-- Bind the onKeyPress function to the InputBegan event
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
