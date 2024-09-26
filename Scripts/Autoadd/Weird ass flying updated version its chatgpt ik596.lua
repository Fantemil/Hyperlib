-- Made by:CHATGPT

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

-- Create GUI
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "FlyGui"

local flyButton = Instance.new("TextButton", screenGui)
flyButton.Name = "FlyButton"
flyButton.Text = "Fly"
flyButton.Size = UDim2.new(0, 100, 0, 50)  -- Small size
flyButton.Position = UDim2.new(0, 10, 0, 10)  -- Top left corner
flyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
flyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local unflyButton = Instance.new("TextButton", screenGui)
unflyButton.Name = "UnflyButton"
unflyButton.Text = "Unfly"
unflyButton.Size = UDim2.new(0, 100, 0, 50)  -- Small size
unflyButton.Position = UDim2.new(0, 120, 0, 10)  -- Next to the Fly button
unflyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
unflyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

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

-- Connect GUI buttons to functions
flyButton.MouseButton1Click:Connect(function()
    startFlying()
end)

unflyButton.MouseButton1Click:Connect(function()
    stopFlying()
end)

-- Update flight direction every frame
game:GetService("RunService").RenderStepped:Connect(updateFlightDirection)
