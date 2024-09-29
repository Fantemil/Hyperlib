local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local hitboxSize = Vector3.new(12, 12, 12)
local isExpanded = false
local isSpeedBoostActive = false
local isInfiniteJumpActive = false
local normalSpeed = 16
local boostedSpeed = normalSpeed * 6

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GameEnhancerGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)  -- Reduced height since we removed a button
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Visible = false

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundColor3 = Color3.new(0.8, 0.2, 0.2)
closeButton.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 10)
titleLabel.Text = "Game Enhancer"
titleLabel.TextSize = 28
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

local expandButton = Instance.new("TextButton")
expandButton.Size = UDim2.new(0.8, 0, 0.2, 0)
expandButton.Position = UDim2.new(0.1, 0, 0.25, 0)
expandButton.Text = "Expand Hitboxes: OFF"
expandButton.TextSize = 18
expandButton.TextColor3 = Color3.new(1, 1, 1)
expandButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.8)
expandButton.Parent = frame

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0.8, 0, 0.2, 0)
speedButton.Position = UDim2.new(0.1, 0, 0.5, 0)
speedButton.Text = "Speed Boost (6x): OFF"
speedButton.TextSize = 18
speedButton.TextColor3 = Color3.new(1, 1, 1)
speedButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.8)
speedButton.Parent = frame

local jumpButton = Instance.new("TextButton")
jumpButton.Size = UDim2.new(0.8, 0, 0.2, 0)
jumpButton.Position = UDim2.new(0.1, 0, 0.75, 0)
jumpButton.Text = "Infinite Jump: OFF"
jumpButton.TextSize = 18
jumpButton.TextColor3 = Color3.new(1, 1, 1)
jumpButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.8)
jumpButton.Parent = frame

local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 100, 0, 30)
openButton.Position = UDim2.new(0, 10, 0, 10)
openButton.Text = "Open GUI"
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.8)
openButton.Parent = screenGui

local function expandHitboxes()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            local humanoidRootPart = player.Character.HumanoidRootPart
            if humanoid and humanoid.Health > 0 then
                humanoidRootPart.Size = isExpanded and hitboxSize or Vector3.new(2, 2, 1)
                humanoidRootPart.Transparency = isExpanded and 0.5 or 1
                humanoidRootPart.CanCollide = false
            else
                humanoidRootPart.Size = Vector3.new(2, 2, 1)
                humanoidRootPart.Transparency = 1
            end
        end
    end
end

local function toggleGui()
    frame.Visible = not frame.Visible
end

local function toggleExpand()
    isExpanded = not isExpanded
    expandButton.Text = isExpanded and "Expand Hitboxes: ON" or "Expand Hitboxes: OFF"
    expandButton.BackgroundColor3 = isExpanded and Color3.new(0.8, 0.2, 0.2) or Color3.new(0.2, 0.6, 0.8)
    expandHitboxes()
end

local function toggleSpeed()
    isSpeedBoostActive = not isSpeedBoostActive
    speedButton.Text = isSpeedBoostActive and "Speed Boost (6x): ON" or "Speed Boost (6x): OFF"
    speedButton.BackgroundColor3 = isSpeedBoostActive and Color3.new(0.8, 0.2, 0.2) or Color3.new(0.2, 0.6, 0.8)
    humanoid.WalkSpeed = isSpeedBoostActive and boostedSpeed or normalSpeed
end

local function toggleInfiniteJump()
    isInfiniteJumpActive = not isInfiniteJumpActive
    jumpButton.Text = isInfiniteJumpActive and "Infinite Jump: ON" or "Infinite Jump: OFF"
    jumpButton.BackgroundColor3 = isInfiniteJumpActive and Color3.new(0.8, 0.2, 0.2) or Color3.new(0.2, 0.6, 0.8)
end

openButton.MouseButton1Click:Connect(toggleGui)
closeButton.MouseButton1Click:Connect(toggleGui)
expandButton.MouseButton1Click:Connect(toggleExpand)
speedButton.MouseButton1Click:Connect(toggleSpeed)
jumpButton.MouseButton1Click:Connect(toggleInfiniteJump)

RunService.RenderStepped:Connect(expandHitboxes)

UserInputService.JumpRequest:Connect(function()
    if isInfiniteJumpActive then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- Dragging functionality
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

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)