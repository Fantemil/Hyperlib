-- Flying Script
-- Place this script in a LocalScript in StarterPlayerScripts or StarterCharacterScripts

-- Settings
local flyingSpeed = 50  -- Adjust this value to change the flying speed

-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = game.Workspace.CurrentCamera
local flying = false
local flightDirection = Vector3.new()

-- Create BodyVelocity to control movement
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
bodyVelocity.P = 1250

-- Function to start flying
local function startFlying()
    bodyVelocity.Parent = character.PrimaryPart
    flying = true
end

-- Function to stop flying
local function stopFlying()
    bodyVelocity.Parent = nil
    flying = false
end

-- Update flight direction based on player input
local function updateFlightDirection()
    local forwardDirection = camera.CFrame.LookVector
    local rightDirection = camera.CFrame.RightVector
    local movementDirection = Vector3.new()

    if flying then
        if game.UserInputService:IsKeyDown(Enum.KeyCode.W) then
            movementDirection = movementDirection + forwardDirection
        end
        if game.UserInputService:IsKeyDown(Enum.KeyCode.S) then
            movementDirection = movementDirection - forwardDirection
        end
        if game.UserInputService:IsKeyDown(Enum.KeyCode.A) then
            movementDirection = movementDirection - rightDirection
        end
        if game.UserInputService:IsKeyDown(Enum.KeyCode.D) then
            movementDirection = movementDirection + rightDirection
        end
        if game.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            movementDirection = movementDirection + Vector3.new(0, 1, 0)
        end
        if game.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
            movementDirection = movementDirection + Vector3.new(0, -1, 0)
        end

        flightDirection = movementDirection.unit * flyingSpeed
        bodyVelocity.Velocity = flightDirection
    end
end

-- Toggle flying state when "F" is pressed
game.UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.F then
        if flying then
            stopFlying()
        else
            startFlying()
        end
    end
end)

-- Update flight direction every frame
game:GetService("RunService").RenderStepped:Connect(updateFlightDirection)
