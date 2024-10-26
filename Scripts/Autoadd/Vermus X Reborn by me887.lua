local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorGui"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Vermus X Reborn"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 24
titleLabel.Parent = frame

local underline = Instance.new("Frame")
underline.Size = UDim2.new(1, -20, 0, 2)
underline.Position = UDim2.new(0, 10, 0, 48)
underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
underline.BorderSizePixel = 0
underline.Parent = frame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(1, -20, 1, -100)
inputBox.Position = UDim2.new(0, 10, 0, 60)
inputBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.Font = Enum.Font.SourceSans
inputBox.TextSize = 18
inputBox.TextXAlignment = Enum.TextXAlignment.Left
inputBox.TextYAlignment = Enum.TextYAlignment.Top
inputBox.ClearTextOnFocus = false
inputBox.MultiLine = true
inputBox.Parent = frame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 5)
inputCorner.Parent = inputBox

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, -10, 0, 40)
executeButton.Position = UDim2.new(0, 5, 1, -45)
executeButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
executeButton.Text = "Execute"
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.Font = Enum.Font.SourceSansBold
executeButton.TextSize = 18
executeButton.Parent = frame

local executeCorner = Instance.new("UICorner")
executeCorner.CornerRadius = UDim.new(0, 5)
executeCorner.Parent = executeButton

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, -10, 0, 40)
clearButton.Position = UDim2.new(0.5, 5, 1, -45)
clearButton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
clearButton.Text = "Clear"
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.Font = Enum.Font.SourceSansBold
clearButton.TextSize = 18
clearButton.Parent = frame

local clearCorner = Instance.new("UICorner")
clearCorner.CornerRadius = UDim.new(0, 5)
clearCorner.Parent = clearButton

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    local newPos = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
    frame.Position = newPos
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

executeButton.MouseButton1Click:Connect(function()
    local code = inputBox.Text
    local func, err = loadstring(code)
    if func then
        func()
    else
        warn(err)
    end
end)

clearButton.MouseButton1Click:Connect(function()
    inputBox.Text = ""
end)