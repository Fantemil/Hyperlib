local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")

local moveVector = Vector3.new(0.1, 0, 0)  -- Adjust this value to control movement

while true do
    humanoid:Move(moveVector)
    wait(1)  -- Adjust this value to control the interval between movements
end
