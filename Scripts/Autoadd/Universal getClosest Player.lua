-- Get the local player and their character
local localPlayer = game.Players.LocalPlayer
local playerCharacter = localPlayer.Character

-- This function finds the closest player to the local player
function getClosestPlayer()
    local closestDistance = math.huge
    local closestPlayer = nil
    -- Iterate through all players in the game
    for i, otherPlayer in pairs(game.Players:GetPlayers()) do
        -- Make sure the other player is not the local player
        if otherPlayer ~= localPlayer then
            -- Calculate the distance between the local player and the other player
            local distance = (playerCharacter.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).magnitude
            -- If the distance is closer than the current closest distance, update the closest distance and player
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = otherPlayer
            end
        end
    end
    -- Return the closest player
    return closestPlayer
end

-- Set the local player's character's position to the closest player's character's position
playerCharacter.HumanoidRootPart.Position = getClosestPlayer().Character.HumanoidRootPart.Position

-- Alternatively, set the local player's character's CFrame to the closest player's character's CFrame
-- playerCharacter.HumanoidRootPart.CFrame = getClosestPlayer().Character.HumanoidRootPart.CFrame