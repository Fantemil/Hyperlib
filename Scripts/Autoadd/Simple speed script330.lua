local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")

local maxSpeed = 100 -- The maximum speed you want the player to reach
local speedIncrease = 5 -- How much to increase the player's speed each step
local speedInterval = 1 -- How often (in seconds) to increase the player's speed

while true do
    if humanoid.Health <= 0 then
        break
    end
    
    local currentSpeed = humanoid.WalkSpeed
    if currentSpeed < maxSpeed then
        humanoid.WalkSpeed = currentSpeed + speedIncrease
    end
    
    wait(speedInterval)
end
