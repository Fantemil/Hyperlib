-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpeedGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Draggable Frame
local frame = Instance.new("Frame")
frame.Name = "DraggableFrame"
frame.Size = UDim2.new(0, 350, 0, 250)
frame.Position = UDim2.new(0.5, -175, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Make Frame Draggable
local UIS = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Create WalkSpeed Slider
local walkSpeedSlider = Instance.new("TextButton")
walkSpeedSlider.Name = "WalkSpeedSlider"
walkSpeedSlider.Size = UDim2.new(0, 280, 0, 30)
walkSpeedSlider.Position = UDim2.new(0, 10, 0, 30)
walkSpeedSlider.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
walkSpeedSlider.Text = "WalkSpeed"
walkSpeedSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
walkSpeedSlider.Parent = frame

local walkSpeedBar = Instance.new("Frame")
walkSpeedBar.Size = UDim2.new(0, 0, 1, 0)
walkSpeedBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
walkSpeedBar.Parent = walkSpeedSlider

local walkSpeedValue = Instance.new("TextLabel")
walkSpeedValue.Size = UDim2.new(0, 50, 0, 30)
walkSpeedValue.Position = UDim2.new(1, 10, 0, 0)
walkSpeedValue.BackgroundTransparency = 1
walkSpeedValue.TextColor3 = Color3.fromRGB(255, 255, 255)
walkSpeedValue.Text = "16"
walkSpeedValue.Parent = walkSpeedSlider

-- Create JumpPower Slider
local jumpPowerSlider = Instance.new("TextButton")
jumpPowerSlider.Name = "JumpPowerSlider"
jumpPowerSlider.Size = UDim2.new(0, 280, 0, 30)
jumpPowerSlider.Position = UDim2.new(0, 10, 0, 80)
jumpPowerSlider.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
jumpPowerSlider.Text = "JumpPower"
jumpPowerSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpPowerSlider.Parent = frame

local jumpPowerBar = Instance.new("Frame")
jumpPowerBar.Size = UDim2.new(0, 0, 1, 0)
jumpPowerBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
jumpPowerBar.Parent = jumpPowerSlider

local jumpPowerValue = Instance.new("TextLabel")
jumpPowerValue.Size = UDim2.new(0, 50, 0, 30)
jumpPowerValue.Position = UDim2.new(1, 10, 0, 0)
jumpPowerValue.BackgroundTransparency = 1
jumpPowerValue.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpPowerValue.Text = "100"
jumpPowerValue.Parent = jumpPowerSlider

-- Create Walking Toggle Button
local walkingToggleButton = Instance.new("TextButton")
walkingToggleButton.Name = "WalkingToggleButton"
walkingToggleButton.Size = UDim2.new(0, 280, 0, 30)
walkingToggleButton.Position = UDim2.new(0, 10, 0, 130)
walkingToggleButton.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
walkingToggleButton.Text = "Mobile Walking"
walkingToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
walkingToggleButton.Parent = frame

-- Function to update player parameters
local function updatePlayerParameters()
    local walkSpeed = walkSpeedBar.Size.X.Scale * 100000 -- 1000 is a practical upper limit
    local jumpPower = jumpPowerBar.Size.X.Scale * 100000 -- 1000 is a practical upper limit

    walkSpeed = math.max(16, walkSpeed) -- Minimum WalkSpeed is 16
    jumpPower = math.max(100, jumpPower) -- Minimum JumpPower is 100

    walkSpeedValue.Text = tostring(math.floor(walkSpeed))
    jumpPowerValue.Text = tostring(math.floor(jumpPower))

    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = walkSpeed
            humanoid.JumpPower = jumpPower
        end
    end
end

-- Connect sliders to update player parameters
walkSpeedSlider.MouseButton1Down:Connect(function()
    local inputConn
    inputConn = UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            local scale = math.clamp((input.Position.X - walkSpeedSlider.AbsolutePosition.X) / walkSpeedSlider.AbsoluteSize.X, 0, 1)
            walkSpeedBar.Size = UDim2.new(scale, 0, 1, 0)
            updatePlayerParameters()
        end
    end)
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            inputConn:Disconnect()
        end
    end)
end)

jumpPowerSlider.MouseButton1Down:Connect(function()
    local inputConn
    inputConn = UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            local scale = math.clamp((input.Position.X - jumpPowerSlider.AbsolutePosition.X) / jumpPowerSlider.AbsoluteSize.X, 0, 1)
            jumpPowerBar.Size = UDim2.new(scale, 0, 1, 0)
            updatePlayerParameters()
        end
    end)
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            inputConn:Disconnect()
        end
    end)
end)

-- Toggle walking feature
local walkingEnabled = true

walkingToggleButton.MouseButton1Click:Connect(function()
    walkingEnabled = not walkingEnabled
    if walkingEnabled then
        walkingToggleButton.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
        walkingToggleButton.Text = "Mobile Walking"
        
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 5
            end
        end
    else
        walkingToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        walkingToggleButton.Text = "Walking Disabled"
        
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16
            end
        end
    end
end)

-- Update initial player parameters
updatePlayerParameters()
