-- This script teleports a player to the end of the obby when executed.

-- Configuration
local endPosition = Vector3.new(3, 0.9, 25)  -- 

-- Teleport Function
function teleportToEnd(player)
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(endPosition)
    end
end
specific condition)
local Players = game:GetService("Players")
local playerName = "PlayerName"  -- Replace with the name of the player to teleport
local player = Players:FindFirstChild(playerName)

if player then
    teleportToEnd(player)
else
    warn("Player not found: " .. playerName)
end
