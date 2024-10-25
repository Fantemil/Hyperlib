local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Function to teleport the player and make them fall
local function teleportAndFall()
    -- Teleport the player 800 studs into the sky
    rootPart.CFrame = rootPart.CFrame + Vector3.new(0, 800, 0)
    
    -- Apply fast downward velocity
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, -200, 0) -- Downward speed (-200)
    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0) -- Only allow vertical force
    bodyVelocity.Parent = rootPart
    
    -- Remove the BodyVelocity after a few seconds to stop the downward force
    wait(5)
    bodyVelocity:Destroy()
end

-- You can connect this function to a button, tool, or key press
teleportAndFall() -- Run the function for testing purposes
