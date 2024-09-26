-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGui"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a Frame
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.6, 0, 0.6, 0)  -- Adjust size to fit the screen (60% of width and height)
frame.Position = UDim2.new(0.5, -180, 0.5, -180) -- Center the frame
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Create Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Text = "Dev: alapativenkataratnam"
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)  -- Occupy the top 20% of the frame
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.TextSize = 16  -- Smaller text size for the title
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black background
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
titleLabel.Parent = frame

-- Create Kill Button
local killButton = Instance.new("TextButton")
killButton.Name = "KillButton"
killButton.Text = "Kill"
killButton.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
killButton.Position = UDim2.new(0, 10, 0.25, 10)  -- Position it with some padding from the left
killButton.TextSize = 14  -- Smaller text size for the button
killButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red background
killButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
killButton.Parent = frame

-- Create Kick Button
local kickButton = Instance.new("TextButton")
kickButton.Name = "KickButton"
kickButton.Text = "Kick"
kickButton.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
kickButton.Position = UDim2.new(0, 10, 0.4, 10)  -- Position it below Kill Button
kickButton.TextSize = 14  -- Smaller text size for the button
kickButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)  -- Orange background
kickButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
kickButton.Parent = frame

-- Create Send Message Button
local messageButton = Instance.new("TextButton")
messageButton.Name = "MessageButton"
messageButton.Text = "Send Message"
messageButton.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
messageButton.Position = UDim2.new(0, 10, 0.55, 10)  -- Position it below Kick Button
messageButton.TextSize = 14  -- Smaller text size for the button
messageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)  -- Blue background
messageButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
messageButton.Parent = frame

-- Create Username TextBox for Killing
local usernameBoxKill = Instance.new("TextBox")
usernameBoxKill.Name = "UsernameBoxKill"
usernameBoxKill.PlaceholderText = "Enter username to kill"
usernameBoxKill.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
usernameBoxKill.Position = UDim2.new(0.6, 10, 0.25, 10)  -- Position it to the right of the frame with no space
usernameBoxKill.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  -- Light gray background
usernameBoxKill.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
usernameBoxKill.TextXAlignment = Enum.TextXAlignment.Left
usernameBoxKill.Parent = frame

-- Create Username TextBox for Kicking
local usernameBoxKick = Instance.new("TextBox")
usernameBoxKick.Name = "UsernameBoxKick"
usernameBoxKick.PlaceholderText = "Enter username to kick"
usernameBoxKick.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
usernameBoxKick.Position = UDim2.new(0.6, 10, 0.4, 10)  -- Position it below UsernameBoxKill with no space
usernameBoxKick.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  -- Light gray background
usernameBoxKick.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
usernameBoxKick.TextXAlignment = Enum.TextXAlignment.Left
usernameBoxKick.Parent = frame

-- Create Message TextBox
local messageBox = Instance.new("TextBox")
messageBox.Name = "MessageBox"
messageBox.PlaceholderText = "Enter your message here"
messageBox.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Adjust size as needed
messageBox.Position = UDim2.new(0.6, 10, 0.55, 10)  -- Position it below UsernameBoxKick with no space
messageBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  -- Light gray background
messageBox.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
messageBox.TextXAlignment = Enum.TextXAlignment.Left
messageBox.Parent = frame

-- Variables for dragging
local dragging = false
local dragStart = nil
local startPos = nil

-- Function to start dragging
local function onDragStart(input)
    dragging = true
    dragStart = input.Position
    startPos = frame.Position
end

-- Function to handle dragging
local function onDrag(input)
    if dragging then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end

-- Function to stop dragging
local function onDragEnd()
    dragging = false
end

-- Connect input events for dragging
titleLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        onDragStart(input)
    end
end)

titleLabel.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        onDrag(input)
    end
end)

titleLabel.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        onDragEnd()
    end
end)

-- Function to handle Kill Button click
killButton.MouseButton1Click:Connect(function()
    local usernameToKill = usernameBoxKill.Text
    if usernameToKill ~= "" then
        local playerToKill = game.Players:FindFirstChild(usernameToKill)
        if playerToKill and playerToKill.Character and playerToKill.Character:FindFirstChild("Humanoid") then
            playerToKill.Character.Humanoid.Health = 0
        else
            warn("Player not found or player does not have a Humanoid.")
        end
    else
        warn("Please enter a username to kill.")
    end
end)

-- Function to handle Kick Button click
kickButton.MouseButton1Click:Connect(function()
    local usernameToKick = usernameBoxKick.Text
    if usernameToKick ~= "" then
        local playerToKick = game.Players:FindFirstChild(usernameToKick)
        if playerToKick then
            playerToKick:Kick("You have been kicked from the game.")
        else
            warn("Player not found.")
        end
    else
        warn("Please enter a username to kick.")
    end
end)

-- Function to handle Send Message Button click
messageButton.MouseButton1Click:Connect(function()
    local customMessage = messageBox.Text
    if customMessage ~= "" then
        for _, player in pairs(game.Players:GetPlayers()) do
            local chatService = require(game:GetService("Chat"))
            chatService:Chat(player.Character.Head, customMessage, Enum.ChatColor.Red)
        end
    else
        warn("MessageBox is empty. Please enter a message.")
    end
end)
