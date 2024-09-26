-- Do not skidd
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.35, 0, 0.4, 0)
frame.Position = UDim2.new(0.32, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Text = "Velexy Executor"
titleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 24
titleLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0.5, -20)
textBox.Position = UDim2.new(0, 10, 0.2, 10)
textBox.PlaceholderText = "Enter your Lua script here..."
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.BorderSizePixel = 0
textBox.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.4, 0, 0.2, 0)
executeButton.Position = UDim2.new(0.1, 0, 0.75, 0)
executeButton.Text = "Execute"
executeButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.BorderSizePixel = 0
executeButton.Font = Enum.Font.SourceSansBold
executeButton.TextSize = 20
executeButton.Parent = frame

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.4, 0, 0.2, 0)
clearButton.Position = UDim2.new(0.5, 0, 0.75, 0)
clearButton.Text = "Clear"
clearButton.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.BorderSizePixel = 0
clearButton.Font = Enum.Font.SourceSansBold
clearButton.TextSize = 20
clearButton.Parent = frame

local dragging
local dragInput
local startPos

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        startPos = input.Position
        dragInput = input

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - startPos
        frame.Position = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset + delta.X, frame.Position.Y.Scale, frame.Position.Y.Offset + delta.Y)
    end
end)

executeButton.MouseButton1Click:Connect(function()
    local scriptText = textBox.Text
    if scriptText and scriptText ~= "" then
        local func, err = loadstring(scriptText)
        if func then
            pcall(func)
        else
            print("Error in script: " .. err)
        end
    end
end)

clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)