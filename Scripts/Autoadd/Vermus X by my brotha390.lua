local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorGui"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.new(1, 0, 0) -- Bright red
frame.BorderSizePixel = 10 -- Thick border
frame.BorderColor3 = Color3.new(0, 1, 0) -- Bright green
frame.Parent = screenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.BackgroundTransparency = 0
titleLabel.BackgroundColor3 = Color3.new(0, 0, 1)
titleLabel.Text = "Vermus X"
titleLabel.TextColor3 = Color3.new(1, 1, 0)
titleLabel.Font = Enum.Font.Legacy 
titleLabel.TextSize = 10 
titleLabel.Parent = frame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(1, 0, 0.6, -50)
inputBox.Position = UDim2.new(0, 0, 0, 50)
inputBox.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
inputBox.TextColor3 = Color3.new(0, 0, 0)
inputBox.Font = Enum.Font.Code
inputBox.TextSize = 14
inputBox.TextXAlignment = Enum.TextXAlignment.Right 
inputBox.TextYAlignment = Enum.TextYAlignment.Bottom 
inputBox.ClearTextOnFocus = false
inputBox.MultiLine = true
inputBox.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, 0, 0.2, -45)
executeButton.Position = UDim2.new(0, 0, 1, -45)
executeButton.BackgroundColor3 = Color3.new(0, 1, 1)
executeButton.Text = "Execute"
executeButton.TextColor3 = Color3.new(0.5, 0, 0.5) 
executeButton.Font = Enum.Font.Code
executeButton.TextSize = 8 
executeButton.Parent = frame

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, 0, 0.2, -45)
clearButton.Position = UDim2.new(0.5, 0, 1, -45)
clearButton.BackgroundColor3 = Color3.new(1, 1, 0)
clearButton.Text = "Clear"
clearButton.TextColor3 = Color3.new(0, 0, 0) 
clearButton.Font = Enum.Font.SciFi 
clearButton.TextSize = 8
clearButton.Parent = frame

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