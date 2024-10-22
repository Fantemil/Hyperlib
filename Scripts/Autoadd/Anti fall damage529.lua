local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local FallingTime = 0
local slowFallApplied = false

-- Slow Fall Settings
local fallThreshold = 0.3 -- Time in seconds before slow fall is applied
local slowFallSpeed = Vector3.new(0, -50, 0) -- Maximum slow fall speed
local slowFallMaxForce = Vector3.new(0, 5000, 0) -- Max force applied for slow falling

-- Create a BodyVelocity for the slow fall effect
local slowFallBV = Instance.new("BodyVelocity")
slowFallBV.Velocity = slowFallSpeed
slowFallBV.MaxForce = slowFallMaxForce
slowFallBV.Parent = nil -- Disable by default

-- Function to check if the player is falling
local function checkFalling()
    while true do
        task.wait(0.1)

        -- Check if the character is falling
        if HumanoidRootPart.Velocity.Y < -2 then -- If vertical speed is negative (falling)
            FallingTime = FallingTime + 0.1

            if FallingTime >= fallThreshold and not slowFallApplied then
                -- Apply slow fall after the threshold
                slowFallBV.Parent = HumanoidRootPart
                slowFallApplied = true
            end
        else
            -- Reset when not falling
            FallingTime = 0
            slowFallBV.Parent = nil
            slowFallApplied = false
        end
    end
end

-- Start checking for falling
checkFalling()

-- Reapply the script after respawning
Player.CharacterAdded:Connect(function(newCharacter)
    Character = newCharacter
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    FallingTime = 0
    slowFallApplied = false
    checkFalling()
end)
