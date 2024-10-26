local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local button = Instance.new("TextButton")
local uicornerFrame = Instance.new("UICorner")
local uicornerTitleLabel = Instance.new("UICorner")
local uicornerButton = Instance.new("UICorner")
local uistrokeFrame = Instance.new("UIStroke")
local uistrokeButton = Instance.new("UIStroke")

frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BorderSizePixel = 0
frame.Parent = screenGui

uicornerFrame.CornerRadius = UDim.new(0, 12)
uicornerFrame.Parent = frame

uistrokeFrame.Color = Color3.fromRGB(24, 24, 24)
uistrokeFrame.Thickness = 2
uistrokeFrame.Parent = frame

titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, -50)
titleLabel.BackgroundTransparency = 0
titleLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
titleLabel.Text = "Noclip/AntiLag++ Pro v1"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 24
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Parent = frame

uicornerTitleLabel.CornerRadius = UDim.new(0, 50)
uicornerTitleLabel.Parent = titleLabel

button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0.5, -75, 0.5, -25)
button.Text = "Noclip"
button.Font = Enum.Font.GothamBold
button.TextSize = 24
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
button.BorderSizePixel = 0
button.Parent = frame

uicornerButton.CornerRadius = UDim.new(0, 12)
uicornerButton.Parent = button

uistrokeButton.Color = Color3.fromRGB(24, 24, 24)
uistrokeButton.Thickness = 2
uistrokeButton.Parent = button

local function enableNoclip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    humanoidRootPart.CanCollide = false
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end

local function reduceLag()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("Part") and part.Name == "Debris" then
            part:Destroy()
        end
    end
end

button.MouseButton1Click:Connect(function()
    enableNoclip()
    reduceLag()
end)

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

button.MouseEnter:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(0, 100, 180)
end)

button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
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

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)