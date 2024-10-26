local replicatedStorage = game:GetService("ReplicatedStorage")
local groupRewardEvent = replicatedStorage:WaitForChild("Events"):WaitForChild("GroupReward")

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

-- Create a frame to hold the button and label
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0, 100, 0, 100)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Parent = screenGui

-- Create the button to get 15k money
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0, 200, 0, 50)
executeButton.Position = UDim2.new(0.5, -100, 0.5, -25) -- Centered in the frame
executeButton.Text = "Get 15k Money"
executeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green (active)
executeButton.Parent = mainFrame

-- Hover effect for the button
executeButton.MouseEnter:Connect(function()
    executeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0) -- Orange (hover)
end)

executeButton.MouseLeave:Connect(function()
    executeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green (normal)
end)

-- Function to send group reward event
local function sendGroupReward()
    local character = localPlayer.Character
    if character then
        local bodyColors = character:FindFirstChild("Body Colors")
        
        if bodyColors then
            groupRewardEvent:FireServer(bodyColors)
            print("15k Money rewarded.")
        else
            warn("BodyColors not found.")
        end
    else
        warn("Character not found.")
    end
end

-- Button clicked event to execute the code
executeButton.MouseButton1Click:Connect(function()
    sendGroupReward()
end)

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30) -- Smaller size for the close button
closeButton.Position = UDim2.new(1, -40, 0, 10) -- Positioned at the top right corner of the frame
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red (close)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
closeButton.Parent = mainFrame

-- Close button hover effect
closeButton.MouseEnter:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Darker red (hover)
end)

closeButton.MouseLeave:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red (normal)
end)

-- Close button click event to hide the frame
closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

-- Create the label
local creditLabel = Instance.new("TextLabel")
creditLabel.Size = UDim2.new(0, 300, 0, 50)
creditLabel.Position = UDim2.new(0, 0, 0, 100) -- Positioned at the bottom of the frame
creditLabel.Text = "Made by indonesiangamer777"
creditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditLabel.BackgroundTransparency = 1 -- Transparent background
creditLabel.Parent = mainFrame
