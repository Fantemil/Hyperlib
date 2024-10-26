-- Parent this script to StarterPlayer -> StarterPlayerScripts

-- Function to create Ley Hub GUI
local function createLeyHub()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    -- Create the main ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LeyHub"
    screenGui.Parent = playerGui

    -- Create a main frame for the hub with image background
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 700, 0, 500)
    mainFrame.Position = UDim2.new(0.5, -350, 0.5, -250)
    mainFrame.BackgroundTransparency = 1
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = screenGui

    -- Add a background image
    local bgImage = Instance.new("ImageLabel")
    bgImage.Size = UDim2.new(1, 0, 1, 0)
    bgImage.Position = UDim2.new(0, 0, 0, 0)
    bgImage.BackgroundTransparency = 1
    bgImage.Image = "rbxassetid://INSERT_BACKGROUND_IMAGE_ID" -- Replace with your image asset ID
    bgImage.Parent = mainFrame

    -- Create a rounded corner for the main frame
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 30)
    UICorner.Parent = mainFrame

    -- Create a shadow effect
    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.new(1, 10, 1, 10)
    shadow.Position = UDim2.new(0, -5, 0, -5)
    shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 0.5
    shadow.ZIndex = mainFrame.ZIndex - 1
    shadow.Parent = mainFrame

    -- Create a left frame for the menu
    local leftFrame = Instance.new("Frame")
    leftFrame.Size = UDim2.new(0, 250, 1, 0)
    leftFrame.Position = UDim2.new(0, 0, 0, 0)
    leftFrame.BackgroundTransparency = 0.5
    leftFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    leftFrame.BorderSizePixel = 0
    leftFrame.Parent = mainFrame

    -- Add a title label in the left frame
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0, 60)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 0.3
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    titleLabel.Text = "Ley Hub"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextScaled = true
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextStrokeTransparency = 0.5
    titleLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Parent = leftFrame

    -- Create a "Main" button with custom styling
    local mainButton = Instance.new("TextButton")
    mainButton.Size = UDim2.new(1, -20, 0, 60)
    mainButton.Position = UDim2.new(0, 10, 0, 80)
    mainButton.BackgroundTransparency = 0.7
    mainButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    mainButton.BorderSizePixel = 0
    mainButton.Text = "Main"
    mainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    mainButton.TextScaled = true
    mainButton.Font = Enum.Font.GothamBold
    mainButton.TextStrokeTransparency = 0.5
    mainButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    mainButton.Parent = leftFrame

    -- Create a content frame on the right side with enhanced styling
    local contentFrame = Instance.new("Frame")
    contentFrame.Size = UDim2.new(1, -250, 1, 0)
    contentFrame.Position = UDim2.new(0, 250, 0, 0)
    contentFrame.BackgroundTransparency = 0.2
    contentFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    contentFrame.BorderSizePixel = 0
    contentFrame.Visible = false -- Hidden by default
    contentFrame.Parent = mainFrame

    -- Add rounded corners and shadow to the content frame
    local contentUICorner = Instance.new("UICorner")
    contentUICorner.CornerRadius = UDim.new(0, 30)
    contentUICorner.Parent = contentFrame

    local contentShadow = Instance.new("Frame")
    contentShadow.Size = UDim2.new(1, 10, 1, 10)
    contentShadow.Position = UDim2.new(0, -5, 0, -5)
    contentShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    contentShadow.BackgroundTransparency = 0.5
    contentShadow.ZIndex = contentFrame.ZIndex - 1
    contentShadow.Parent = contentFrame

    -- Create the info labels for the content frame
    local function createInfoLabel(parent, text, position)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -10, 0, 40)
        label.Position = position
        label.BackgroundTransparency = 1
        label.Text = text
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextScaled = true
        label.Font = Enum.Font.Gotham
        label.TextStrokeTransparency = 0.5
        label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = parent
        return label
    end

    -- Function to update the content frame with information
    local function updateContentFrame()
        local gameTitle = "Game Title" -- Replace with actual game title
        local playerName = player.Name
        local gameId = tostring(game.PlaceId)
        local creatorId = tostring(game.CreatorId)

        contentFrame:ClearAllChildren() -- Clear existing content

        createInfoLabel(contentFrame, "Game: " .. gameTitle, UDim2.new(0, 10, 0, 20))
        createInfoLabel(contentFrame, "User: " .. playerName, UDim2.new(0, 10, 0, 70))
        createInfoLabel(contentFrame, "Game ID: " .. gameId, UDim2.new(0, 10, 0, 120))
        createInfoLabel(contentFrame, "Creator ID: " .. creatorId, UDim2.new(0, 10, 0, 170))
    end

    -- Connect the "Main" button to toggle the content frame
    mainButton.MouseButton1Click:Connect(function()
        contentFrame.Visible = not contentFrame.Visible
        if contentFrame.Visible then
            updateContentFrame() -- Update content when shown
        end
    end)

    -- Function to create a button with enhanced animation
    local function createButton(parent, buttonName, position, callback)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 300, 0, 60)
        button.Position = position
        button.BackgroundTransparency = 0.3
        button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        button.BorderSizePixel = 0
        button.Text = buttonName
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextScaled = true
        button.Font = Enum.Font.GothamBold
        button.TextStrokeTransparency = 0.5
        button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        button.Parent = contentFrame

        -- Hover effects
        button.MouseEnter:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
            button:TweenSize(UDim2.new(0, 310, 0, 65), "Out", "Quad", 0.2, true)
        end)
        button.MouseLeave:Connect(function()
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            button:TweenSize(UDim2.new(0, 300, 0, 60), "Out", "Quad", 0.2, true)
        end)
        button.MouseButton1Click:Connect(callback)
    end

    -- Function to create a close button with animation
    local function createCloseButton()
        local closeButton = Instance.new("TextButton")
        closeButton.Size = UDim2.new(0, 50, 0, 50)
        closeButton.Position = UDim2.new(1, -60, 0, 10)
        closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        closeButton.BorderSizePixel = 0
        closeButton.Text = "X"
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        closeButton.TextScaled = true
        closeButton.Font = Enum.Font.GothamBold
        closeButton.TextStrokeTransparency = 0.5
        closeButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        closeButton.Parent = mainFrame

        -- Close button animations
        closeButton.MouseEnter:Connect(function()
            closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        end)
        closeButton.MouseLeave:Connect(function()
            closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end)
        closeButton.MouseButton1Click:Connect(function()
            -- Animate closing
            for i = 1, 20 do
                wait(0.05)
                mainFrame.BackgroundTransparency = i * 0.05
                mainFrame.Size = UDim2.new(0, 700 * (1 - i * 0.05), 0, 500 * (1 - i * 0.05))
                mainFrame.Position = UDim2.new(0.5, -350 * (1 - i * 0.05), 0.5, -250 * (1 - i * 0.05))
            end
            mainFrame:Destroy()
        end)
    end

    -- Create buttons for the content frame
    createButton(contentFrame, "Button 1", UDim2.new(0, 20, 0, 20), function()
        print("Button 1 clicked")
    end)
    createButton(contentFrame, "Button 2", UDim2.new(0, 20, 0, 90), function()
        print("Button 2 clicked")
    end)
    createCloseButton()
end

-- Run the function to create Ley Hub
createLeyHub()
