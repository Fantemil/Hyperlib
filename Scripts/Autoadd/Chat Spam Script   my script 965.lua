-- Insert a ScreenGui into StarterGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpamGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Add a frame to the GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)  -- Smaller size
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)  -- Center the frame
frame.BackgroundTransparency = 0.2  -- More visible
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)  -- Dark gray
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Add a TextBox for input
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 280, 0, 40)
textBox.Position = UDim2.new(0.5, 0, 0.2, 0)
textBox.AnchorPoint = Vector2.new(0.5, 0)
textBox.PlaceholderText = "Type message here..."
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Darker gray
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textBox.Parent = frame

-- Add a "Spam!" button
local spamButton = Instance.new("TextButton")
spamButton.Size = UDim2.new(0, 120, 0, 40)
spamButton.Position = UDim2.new(0.25, 0, 0.5, 0)
spamButton.AnchorPoint = Vector2.new(0.5, 0)
spamButton.Text = "Spam!"
spamButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Dark gray
spamButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
spamButton.Parent = frame

-- Add a "Hide" button
local hideButton = Instance.new("TextButton")
hideButton.Size = UDim2.new(0, 120, 0, 40)
hideButton.Position = UDim2.new(0.75, 0, 0.5, 0)
hideButton.AnchorPoint = Vector2.new(0.5, 0)
hideButton.Text = "Hide"
hideButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Dark gray
hideButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
hideButton.Parent = frame

-- Add a "Show" button
local showButton = Instance.new("TextButton")
showButton.Size = UDim2.new(0, 120, 0, 40)
showButton.Position = UDim2.new(0.5, 0, 0.1, 0)  -- Higher position
showButton.AnchorPoint = Vector2.new(0.5, 0.5)
showButton.Text = "Show"
showButton.Visible = false
showButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Dark gray
showButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
showButton.Parent = screenGui

-- Add a warning label
local warningLabel = Instance.new("TextLabel")
warningLabel.Size = UDim2.new(0, 280, 0, 20)
warningLabel.Position = UDim2.new(0.5, 0, 0.8, 0)
warningLabel.AnchorPoint = Vector2.new(0.5, 0)
warningLabel.Text = "Spamming is against Roblox's terms of service!"
warningLabel.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Red text
warningLabel.BackgroundTransparency = 1
warningLabel.TextScaled = true
warningLabel.Parent = frame

local spamming = false
local spamCoroutine

local function spamChat()
    spamming = true
    spamButton.Text = "Stop Spamming"
    while spamming do
        local message = textBox.Text
        if message ~= "" then
            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(message, "All")
        end
        wait(0.5) -- Adjust the delay as needed
    end
end

spamButton.MouseButton1Click:Connect(function()
    if spamming then
        spamming = false
        spamButton.Text = "Spam!"
    elseif textBox.Text ~= "" then
        spamCoroutine = coroutine.create(spamChat)
        coroutine.resume(spamCoroutine)
    end
end)

hideButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    showButton.Visible = true
end)

showButton.MouseButton1Click:Connect(function()
    frame.Visible = true
    showButton.Visible = false
end)