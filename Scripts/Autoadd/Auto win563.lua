-- Full Teleportation Script with Game ID Check

-- Check for the correct game ID
local supportedGameId = 10660791703 -- Specify the game ID here
local currentGameId = game.PlaceId -- Get the current game PlaceId

if currentGameId ~= supportedGameId then
    -- If the game is not supported, show a message and kick the player
    local player = game.Players.LocalPlayer
    player:Kick("Unsupported game")
    return
else
    print("Game Supported!") -- Print confirmation if the game is supported
end

-- Create the UI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local StartButton = Instance.new("TextButton")
local SecretCartButtonContainer = Instance.new("Frame")
local SecretCartButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local RainbowUICorner = Instance.new("UICorner") -- For the rainbow outline
local StartButtonUICorner = Instance.new("UICorner") -- For the Start button
local Teleporting = false -- To prevent the button from being clicked multiple times

-- Setup ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "TeleportGui"

-- Setup Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Active = true

-- Apply UI corner to frame
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 15)

-- Setup Start Button
StartButton.Parent = Frame
StartButton.Text = "Start!"
StartButton.Size = UDim2.new(0, 150, 0, 50)
StartButton.Position = UDim2.new(0.5, -75, 0.3, -25)
StartButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)

-- Apply UICorner to Start Button
StartButtonUICorner.Parent = StartButton
StartButtonUICorner.CornerRadius = UDim.new(0, 15)

-- Setup Secret Cart Button Container (for rainbow outline)
SecretCartButtonContainer.Parent = Frame
SecretCartButtonContainer.Size = UDim2.new(0, 150, 0, 50)
SecretCartButtonContainer.Position = UDim2.new(0.5, -75, 0.75, -25)
SecretCartButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SecretCartButtonContainer.BorderSizePixel = 0

-- Add UICorner to the container to make the outline rounded
RainbowUICorner.CornerRadius = UDim.new(0, 15)
RainbowUICorner.Parent = SecretCartButtonContainer

-- Setup Secret Cart Button (inside the container)
SecretCartButton.Parent = SecretCartButtonContainer
SecretCartButton.Text = "Secret Cart"
SecretCartButton.Size = UDim2.new(1, -6, 1, -6) -- Slightly smaller to leave space for the rainbow outline
SecretCartButton.Position = UDim2.new(0, 3, 0, 3) -- Center it within the container
SecretCartButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SecretCartButton.BorderSizePixel = 0

-- Apply UICorner to the Secret Cart button itself
local ButtonUICorner = Instance.new("UICorner")
ButtonUICorner.CornerRadius = UDim.new(0, 12)
ButtonUICorner.Parent = SecretCartButton

-- Moving rainbow outline effect for the Secret Cart button container
local function updateRainbowOutline(container)
    local hue = tick() % 5 / 5
    local color = Color3.fromHSV(hue, 1, 1)
    container.BackgroundColor3 = color
end

game:GetService("RunService").RenderStepped:Connect(function()
    updateRainbowOutline(SecretCartButtonContainer)
end)

-- Dragging functionality for frame
local dragging = false
local dragInput, mousePos, framePos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        Frame.Position = UDim2.new(
            framePos.X.Scale,
            framePos.X.Offset + delta.X,
            framePos.Y.Scale,
            framePos.Y.Offset + delta.Y
        )
    end
end)

-- Function to teleport the player
local function teleportPlayer(position)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

-- Function to make the player sit
local function makePlayerSit()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.Sit = true
    end
end

-- Function to automatically hold "E" or touch equivalent for mobile
local function autoHoldAction()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:Move(Vector3.new(0, 0, 0), true) -- Placeholder to simulate "hold"
    end
end

-- Create a platform at a specific position
local function createPlatform(position)
    local platform = Instance.new("Part")
    platform.Size = Vector3.new(10, 1, 10) -- A flat platform size
    platform.Position = position
    platform.Anchored = true
    platform.Parent = workspace
end

-- Start teleportation sequence
local function startTeleportSequence()
    if Teleporting then return end
    Teleporting = true -- Prevent multiple clicks

    -- Teleport 1
    teleportPlayer(Vector3.new(-431.2847900390625, 163.23800659179688, 111.06011962890625))
    wait(3)

    -- Teleport 2
    teleportPlayer(Vector3.new(-431.1203918457031, 163.29798889160156, 130.0890350341797))
    wait(3) -- Wait a few seconds before making the player sit

    -- Make the player sit AFTER the teleport to avoid issues
    makePlayerSit()
    wait(45) -- Extended wait time for location 2

    -- Create platform at teleport 3 location (spawning 5 studs below)
    local platformPosition = Vector3.new(-230.07217407226562, 112.09888458251953, -179.76275634765625) -- Spawning 5 studs lower
    createPlatform(platformPosition)
    wait(3)

    -- Teleport 3 (this should now work correctly)
    teleportPlayer(Vector3.new(-230.07217407226562, 117.09888458251953, -179.76275634765625))
    wait(30)

    -- Teleport 4
    teleportPlayer(Vector3.new(-213.99893188476562, 115.4316177368164, -180.0505828857422))
    makePlayerSit()
    wait(45) -- Updated wait time

    -- Teleport 5
    teleportPlayer(Vector3.new(-184.38897705078125, 94.71558380126953, -182.1844940185547))

    Teleporting = false
end

-- Function to teleport the player to the Secret Cart location and auto hold action
local function secretCartTeleport()
    teleportPlayer(Vector3.new(234.934814453125, 4.784528732299805, 295.95074462890625))
    autoHoldAction() -- Simulate holding the 'E' key automatically
end

-- Connect Start button click
StartButton.MouseButton1Click:Connect(startTeleportSequence)

-- Connect Secret Cart button click
SecretCartButton.MouseButton1Click:Connect(secretCartTeleport)
