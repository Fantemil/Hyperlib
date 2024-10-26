-- Create GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")

-- Set properties for ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Set properties for Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Grey color
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50) -- Centered

-- Set properties for TextLabel
TextLabel.Parent = Frame
TextLabel.Text = "Speed"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- Yellow color
TextLabel.Size = UDim2.new(1, 0, 0.4, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.TextScaled = true

-- Set properties for TextBox
TextBox.Parent = Frame
TextBox.TextColor3 = Color3.fromRGB(255, 192, 203) -- Pink color
TextBox.Size = UDim2.new(1, 0, 0.6, 0)
TextBox.Position = UDim2.new(0, 0, 0.4, 0)
TextBox.PlaceholderText = "Enter speed (max 10000)"
TextBox.TextScaled = true

-- Make the frame draggable
local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- Update player speed based on TextBox input
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local speed = tonumber(TextBox.Text)
        if speed then
            speed = math.clamp(speed, 0, 10000)
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = speed
        end
    end
end)
