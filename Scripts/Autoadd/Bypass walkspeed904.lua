-- Created by MrOrmsman
-- Bypass Walk Speed
local player = game.Players.LocalPlayer
local humanoid = player.Character.Humanoid

-- Set the walk speed to a high value
humanoid.WalkSpeed = 100

-- Create a loop to continuously set the walk speed
while true do
    humanoid.WalkSpeed = 100
    wait()
end
