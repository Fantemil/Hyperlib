--Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpeedChangerGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Make the ScreenGui moveable
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Input Bar
local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(0, 200, 0, 50)
inputBox.Position = UDim2.new(0.5, -100, 0.3, -25)
inputBox.PlaceholderText = "Enter Speed"
inputBox.Parent = mainFrame

-- Change Speed Button
local changeSpeedButton = Instance.new("TextButton")
changeSpeedButton.Size = UDim2.new(0, 100, 0, 50)
changeSpeedButton.Position = UDim2.new(0.5, -50, 0.7, -25)
changeSpeedButton.Text = "Change Speed"
changeSpeedButton.Parent = mainFrame

-- Close (X) Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.Text = "X"
closeButton.Parent = mainFrame

-- + Button (Initially hidden)
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 25, 0, 25)
openButton.Position = UDim2.new(1, -30, 0, 5)
openButton.Text = "+"
openButton.Parent = screenGui
openButton.Visible = false

-- Function to change player speed
local function changeSpeed()
    local speed = tonumber(inputBox.Text)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    else
        warn("Please enter a valid number")
    end
end

-- Event listeners
changeSpeedButton.MouseButton1Click:Connect(changeSpeed)

closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    openButton.Visible = true
end)

openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
    openButton.Visible = false
end)