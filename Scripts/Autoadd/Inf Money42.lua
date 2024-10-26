-- LocalScript
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FireServerEvent = ReplicatedStorage:WaitForChild("fewjnfejwb3") -- Ensure this matches the event name in ReplicatedStorage

-- GUI Elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MoneyGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250) -- Adjusted size to accommodate label
frame.Position = UDim2.new(0, 100, 0, 100) -- Positioned at (0, 100, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Dark gray background
frame.Parent = screenGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 40)
textBox.Position = UDim2.new(0.5, -100, 0.3, 0)
textBox.PlaceholderText = "Enter Amount"
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- White background
textBox.TextColor3 = Color3.fromRGB(0, 0, 0) -- Black text
textBox.TextSize = 18
textBox.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.65, 0) -- Positioned below the TextBox
button.Text = "Get Money"
button.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green (active)
button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
button.TextSize = 18
button.Parent = frame

-- Hover effect for the button
button.MouseEnter:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(255, 165, 0) -- Orange (hover)
end)

button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green (normal)
end)

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30) -- Smaller size for the close button
closeButton.Position = UDim2.new(1, -40, 0, 10) -- Positioned at the top right corner of the frame
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red (close)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
closeButton.TextSize = 18
closeButton.Parent = frame

-- Close button hover effect
closeButton.MouseEnter:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Darker red (hover)
end)

closeButton.MouseLeave:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red (normal)
end)

-- Close button click event to hide the frame
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
end)

-- Button click event to fire server event
button.MouseButton1Click:Connect(function()
    local amount = tonumber(textBox.Text)
    if amount then
        FireServerEvent:FireServer(amount)
    else
        print("Invalid number")
    end
end)

-- Create the label
local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0, 300, 0, 50) -- Full width of the frame
infoLabel.Position = UDim2.new(0, 0, 0, 200) -- Positioned at the bottom of the frame
infoLabel.Text = "Made by indonesiangamer777"
infoLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
infoLabel.TextSize = 14
infoLabel.BackgroundTransparency = 1 -- Transparent background
infoLabel.Parent = frame
