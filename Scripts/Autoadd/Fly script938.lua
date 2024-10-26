
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("universal")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")



local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local flyingEnabled = false -- Set to true to start flying, false to stop flying
local flySpeed = 50 -- Adjust fly speed as needed

-- Function to start flying
local function startFlying()
    local bodyGyro = Instance.new("BodyGyro")
    local bodyVelocity = Instance.new("BodyVelocity")

    bodyGyro.P = 9e4
    bodyGyro.maxTorque = Vector3.new(9e4, 9e4, 9e4)
    bodyGyro.cframe = humanoidRootPart.CFrame
    bodyGyro.Parent = humanoidRootPart

    bodyVelocity.velocity = Vector3.new(0, 0, 0)
    bodyVelocity.maxForce = Vector3.new(9e4, 9e4, 9e4)
    bodyVelocity.Parent = humanoidRootPart

    while flyingEnabled do
        local moveDirection = Vector3.new()
        local camera = workspace.CurrentCamera
        local cameraCFrame = camera.CFrame

        -- WASD controls for movement
        if player.Character.Humanoid.MoveDirection.Magnitude > 0 then
            moveDirection = cameraCFrame:VectorToWorldSpace(Vector3.new(player.Character.Humanoid.MoveDirection.X, player.Character.Humanoid.MoveDirection.Y, player.Character.Humanoid.MoveDirection.Z))
        end

        bodyVelocity.velocity = moveDirection * flySpeed
        bodyGyro.cframe = cameraCFrame

        wait() -- Wait for the next frame
    end

    -- Clean up after flying is disabled
    bodyGyro:Destroy()
    bodyVelocity:Destroy()
end

-- Function to toggle flying on or off
local function toggleFlying(state)
    flyingEnabled = state
    if flyingEnabled then
        startFlying()
    end
end

-- Example usage
toggleFlying()

KillingCheats:CreateToggle("Fly", function(Value)
   toggleFlying(Value)
end)
 