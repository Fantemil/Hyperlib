-- Place this script in a LocalScript (for client-side)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local flying = true -- Set to true to enable flying
local flySpeed = 50 -- Adjust fly speed as needed

-- Function to handle flying
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

    while flying do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame
        bodyGyro.cframe = workspace.CurrentCamera.CFrame
        bodyVelocity.velocity = workspace.CurrentCamera.CFrame.LookVector * flySpeed

        local moveDirection = Vector3.new()
        local camera = workspace.CurrentCamera
        local cameraCFrame = camera.CFrame

        -- WASD controls for movement
        if player.Character.Humanoid.MoveDirection.Magnitude > 0 then
            moveDirection = cameraCFrame:VectorToWorldSpace(Vector3.new(player.Character.Humanoid.MoveDirection.X, 0, player.Character.Humanoid.MoveDirection.Z))
        end

        bodyVelocity.velocity = moveDirection * flySpeed

        wait() -- Wait for the next frame
    end

    bodyGyro:Destroy()
    bodyVelocity:Destroy()
end

-- Disable default gravity for flying
local function disableGravity()
    while flying do
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        wait()
    end
end

-- Start flying and disable gravity
startFlying()
disableGravity()