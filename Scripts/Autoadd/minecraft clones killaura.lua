local radius = 20.5  --range
local toggleKey = Enum.KeyCode.U --keybind

local function getDistance(pointA, pointB)
    return (pointA - pointB).Magnitude
end

local function isPlayerInRadius(player)
    local localPlayer = game.Players.LocalPlayer
    local localCharacter = localPlayer.Character
    local playerCharacter = player.Character

    if localCharacter and playerCharacter then
        local localPosition = localCharacter.PrimaryPart.Position
        local playerPosition = playerCharacter.PrimaryPart.Position

        return getDistance(localPosition, playerPosition) <= radius
    end

    return false
end

local isFiring = false

local function toggleFiring()
    isFiring = not isFiring
    print("Firing:", isFiring)
end

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == toggleKey then
        toggleFiring()
    end
end)

while true do
    if isFiring then
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and isPlayerInRadius(player) then
                local args = {
                    [1] = workspace:WaitForChild(player.Name)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("GameRemotes"):WaitForChild("Attack"):InvokeServer(unpack(args))
            end
        end
    end

    wait(0.01)
end
