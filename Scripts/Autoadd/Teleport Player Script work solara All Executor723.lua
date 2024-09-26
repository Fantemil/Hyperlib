local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local teleportPosition = Vector3.new(-28, 6, -523) -- Paste your destination here

-- Make sure the character already exists before moving it
if character then
    character:MoveTo(teleportPosition)
end
-- Pllssss join my Discord >https://discord.gg/74yvde5v<