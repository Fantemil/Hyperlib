-- LocalScript to create a large, draggable GUI with all features

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- Function to create a new TextButton
local function createButton(parent, text, position, size, clickFunction)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Text = text
    button.Position = position
    button.Size = size
    button.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    button.AutoButtonColor = false
    button.BorderSizePixel = 0

    button.MouseButton1Click:Connect(clickFunction)
    return button
end

-- Function to create a new TextBox
local function createTextBox(parent, position, size, placeholderText)
    local textBox = Instance.new("TextBox")
    textBox.Parent = parent
    textBox.Position = position
    textBox.Size = size
    textBox.Text = ""
    textBox.PlaceholderText = placeholderText
    textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    textBox.Font = Enum.Font.SourceSans
    textBox.TextSize = 24
    textBox.ClearTextOnFocus = false
    textBox.BorderSizePixel = 0
    return textBox
end

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 500, 0, 500)  -- Large size to fit all elements
frame.Position = UDim2.new(0.5, -250, 0.5, -250)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

-- Create TextBoxes and Buttons
local usernameBoxKill = createTextBox(frame, UDim2.new(0.05, 0, 0.1, 0), UDim2.new(0.9, 0, 0.1, 0), "Enter username to kill")
local usernameBoxKick = createTextBox(frame, UDim2.new(0.05, 0, 0.25, 0), UDim2.new(0.9, 0, 0.1, 0), "Enter username to kick")
local usernameBoxBring = createTextBox(frame, UDim2.new(0.05, 0, 0.4, 0), UDim2.new(0.9, 0, 0.1, 0), "Enter username to bring")
local usernameBoxHeal = createTextBox(frame, UDim2.new(0.05, 0, 0.55, 0), UDim2.new(0.9, 0, 0.1, 0), "Enter username to heal")

local killButton = createButton(frame, "Kill", UDim2.new(0.05, 0, 0.7, 0), UDim2.new(0.4, 0, 0.1, 0), function()
    local username = usernameBoxKill.Text
    local player = Players:FindFirstChild(username)
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0 -- Kill the player
        else
            warn("Player's character has no Humanoid")
        end
    else
        warn("Player not found or player has no character")
    end
end)

local kickButton = createButton(frame, "Kick", UDim2.new(0.55, 0, 0.7, 0), UDim2.new(0.4, 0, 0.1, 0), function()
    local username = usernameBoxKick.Text
    local player = Players:FindFirstChild(username)
    if player then
        player:Kick("You have been kicked from the game.")
    else
        warn("Player not found")
    end
end)

local bringButton = createButton(frame, "Bring", UDim2.new(0.05, 0, 0.85, 0), UDim2.new(0.4, 0, 0.1, 0), function()
    local username = usernameBoxBring.Text
    local player = Players:FindFirstChild(username)
    if player and player.Character then
        local targetPosition = Vector3.new(0, 50, 0) -- Change coordinates as needed
        player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    else
        warn("Player not found or player has no character")
    end
end)

local healButton = createButton(frame, "Heal", UDim2.new(0.55, 0, 0.85, 0), UDim2.new(0.4, 0, 0.1, 0), function()
    local username = usernameBoxHeal.Text
    local player = Players:FindFirstChild(username)
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = humanoid.MaxHealth -- Heal the player
        else
            warn("Player's character has no Humanoid")
        end
    else
        warn("Player not found or player has no character")
    end
end)
