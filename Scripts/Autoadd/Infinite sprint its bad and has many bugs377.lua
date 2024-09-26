-- Function to create or re-create the GUI
local function createGui()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    -- Remove existing GUI if it exists
    local existingGui = playerGui:FindFirstChild("SpeedGui")
    if existingGui then
        existingGui:Destroy()
    end

    -- Create the ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "SpeedGui"
    screenGui.Parent = playerGui

    -- Create the Frame (initially hidden)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 150)
    frame.Position = UDim2.new(1, -250, 0.5, -75)  -- Positioned off-screen to the right
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.Visible = false
    frame.Parent = screenGui

    -- Add a UICorner for rounded corners
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 12)
    uiCorner.Parent = frame

    -- Add a UIStroke for a border effect
    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.fromRGB(100, 100, 100)
    uiStroke.Thickness = 2
    uiStroke.Parent = frame

    -- Create the TextButton inside the Frame
    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(0.8, 0, 0.4, 0)
    textButton.Position = UDim2.new(0.5, -100, 0.5, -20)
    textButton.Text = "Set Speed to 35"
    textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    textButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
    textButton.BorderSizePixel = 0
    textButton.Font = Enum.Font.SourceSansBold
    textButton.TextSize = 18
    textButton.TextStrokeTransparency = 0.8
    textButton.TextWrapped = true
    textButton.Parent = frame

    -- Add a UICorner for rounded corners on the button
    local buttonUICorner = Instance.new("UICorner")
    buttonUICorner.CornerRadius = UDim.new(0, 8)
    buttonUICorner.Parent = textButton

    -- Create the Open/Close Button
    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 50, 0, 50)
    toggleButton.Position = UDim2.new(1, -50, 0.5, -25)
    toggleButton.Text = "open"
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
    toggleButton.BorderSizePixel = 0
    toggleButton.Font = Enum.Font.SourceSansBold
    toggleButton.TextSize = 24
    toggleButton.Parent = screenGui

    local frameVisible = false

    -- Function to toggle the frame visibility
    local function toggleFrame()
        frameVisible = not frameVisible
        frame.Visible = frameVisible
        if frameVisible then
            frame.Position = UDim2.new(0.7, 0, 0.5, -75) -- Slide in
        else
            frame.Position = UDim2.new(1, -250, 0.5, -75) -- Slide out
        end
    end

    -- Function to set the player's speed
    local function setSpeed()
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 35
        end
    end

    -- Connect the button clicks to their functions
    textButton.MouseButton1Click:Connect(setSpeed)
    toggleButton.MouseButton1Click:Connect(toggleFrame)

    -- Mobile compatibility: Ensure that touch input is handled
    textButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            setSpeed()
        end
    end)

    toggleButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            toggleFrame()
        end
    end)
end

-- Call the function to create the GUI
createGui()

-- Continuously check and recreate the GUI on respawn
game.Players.LocalPlayer.CharacterAdded:Connect(createGui)
