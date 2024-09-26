-- Parent this script to StarterPlayer -> StarterPlayerScripts

local function createLeyHub()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    -- Create the main ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LeyHub"
    screenGui.Parent = playerGui

    -- Create a main frame for the hub
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 700, 0, 500)
    mainFrame.Position = UDim2.new(0.5, -350, 0.5, -250)
    mainFrame.BackgroundTransparency = 0.1
    mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = screenGui

    -- Create a rounded corner for the main frame
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = mainFrame

    -- Create a shadow effect
    local shadow = Instance.new("ImageLabel")
    shadow.Size = UDim2.new(1, 40, 1, 40)
    shadow.Position = UDim2.new(0, -20, 0, -20)
    shadow.Image = "rbxassetid://5587865193" -- Shadow image asset ID
    shadow.ImageTransparency = 0.5
    shadow.BackgroundTransparency = 1
    shadow.ZIndex = -1
    shadow.Parent = mainFrame

    -- Create a left frame for the menu
    local leftFrame = Instance.new("Frame")
    leftFrame.Size = UDim2.new(0, 200, 1, 0)
    leftFrame.Position = UDim2.new(0, 0, 0, 0)
    leftFrame.BackgroundTransparency = 0.2
    leftFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    leftFrame.BorderSizePixel = 0
    leftFrame.Parent = mainFrame

    -- Add a title label in the left frame
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 50)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "Ley Hub"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = leftFrame

    -- Create a menu button template
    local function createMenuButton(name, position)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, -20, 0, 40)
        button.Position = UDim2.new(0, 10, 0, position)
        button.BackgroundTransparency = 0.2
        button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        button.BorderSizePixel = 0
        button.Text = name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextScaled = true
        button.Font = Enum.Font.Gotham
        button.Parent = leftFrame

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = button

        button.MouseEnter:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        end)
        button.MouseLeave:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        end)

        return button
    end

    -- Create menu buttons
    local mainButton = createMenuButton("Main", 60)
    local settingsButton = createMenuButton("Settings", 110)
    local aboutButton = createMenuButton("About", 160)

    -- Create a content frame on the right side
    local contentFrame = Instance.new("Frame")
    contentFrame.Size = UDim2.new(1, -200, 1, 0)
    contentFrame.Position = UDim2.new(0, 200, 0, 0)
    contentFrame.BackgroundTransparency = 0.1
    contentFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    contentFrame.BorderSizePixel = 0
    contentFrame.Parent = mainFrame

    local contentUICorner = Instance.new("UICorner")
    contentUICorner.CornerRadius = UDim.new(0, 20)
    contentUICorner.Parent = contentFrame

    -- Create a label inside content frame
    local contentLabel = Instance.new("TextLabel")
    contentLabel.Size = UDim2.new(1, -20, 1, -20)
    contentLabel.Position = UDim2.new(0, 10, 0, 10)
    contentLabel.BackgroundTransparency = 1
    contentLabel.Text = "Content goes here"
    contentLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    contentLabel.TextScaled = true
    contentLabel.Font = Enum.Font.Gotham
    contentLabel.TextWrapped = true
    contentLabel.Parent = contentFrame

    -- Button click events to change content
    mainButton.MouseButton1Click:Connect(function()
        contentLabel.Text = "Main content"
    end)
    settingsButton.MouseButton1Click:Connect(function()
        contentLabel.Text = "Settings content"
    end)
    aboutButton.MouseButton1Click:Connect(function()
        contentLabel.Text = "About content"
    end)

    -- Create a close button
    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -40, 0, 10)
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeButton.BorderSizePixel = 0
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextScaled = true
    closeButton.Font = Enum.Font.GothamBold
    closeButton.Parent = mainFrame

    local closeUICorner = Instance.new("UICorner")
    closeUICorner.CornerRadius = UDim.new(0, 10)
    closeUICorner.Parent = closeButton

    closeButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)
end

-- Run the function to create Ley Hub
createLeyHub()
