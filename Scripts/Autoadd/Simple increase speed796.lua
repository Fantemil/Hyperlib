-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Speed GUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a Frame to hold the GUI elements
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 100, 0, 50)
frame.Position = UDim2.new(1, -110, 1, -60)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BorderSizePixel = 2
frame.Visible = true
frame.Parent = screenGui

-- Function to make the frame draggable
local dragging
local dragStart
frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position - frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        frame.Position = UDim2.new(0, input.Position.X - dragStart.X, 0, input.Position.Y - dragStart.Y)
    end
end)

-- Create a button to increase speed
local increaseSpeedButton = Instance.new("TextButton")
increaseSpeedButton.Size = UDim2.new(1, 0, 0, 50)
increaseSpeedButton.Position = UDim2.new(0, 0, 0, 0)
increaseSpeedButton.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
increaseSpeedButton.TextColor3 = Color3.new(1, 1, 1)
increaseSpeedButton.Text = "Increase Speed"
increaseSpeedButton.Parent = frame

-- Function to increase speed
local function increaseSpeed()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed + 5
end

-- Connect button click event to function
increaseSpeedButton.MouseButton1Click:Connect(increaseSpeed)