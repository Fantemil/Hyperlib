local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0.4, 0, 0.3, 0)
frame.Position = UDim2.new(0.3, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BorderSizePixel = 0
frame.Style = Enum.FrameStyle.RobloxRound

local titleLabel = Instance.new("TextLabel", frame)
titleLabel.Size = UDim2.new(1, 0, 0.25, 0)
titleLabel.Text = "Gugu" --ur key system Title here
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold

local textBox = Instance.new("TextBox", frame)
textBox.Size = UDim2.new(1, -20, 0.2, 0)
textBox.Position = UDim2.new(0, 10, 0.25, 0)
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.TextColor3 = Color3.new(0, 0, 0)
textBox.TextScaled = true
textBox.PlaceholderText = "Enter code here"
textBox.TextStrokeTransparency = 0.5

local submitButton = Instance.new("TextButton", frame)
submitButton.Size = UDim2.new(1, -20, 0.25, 0)
submitButton.Position = UDim2.new(0, 10, 0.55, 0)
submitButton.Text = "Submit"
submitButton.BackgroundColor3 = Color3.new(0.1, 0.8, 0.1)
submitButton.TextColor3 = Color3.new(1, 1, 1)
submitButton.TextScaled = true
submitButton.Font = Enum.Font.GothamBold
submitButton.BorderSizePixel = 0

submitButton.MouseButton1Click:Connect(function()
    local enteredCode = textBox.Text
    local correctCode = "1234"-- your key here

    if enteredCode == correctCode then
        -- ur script here
    else
        print("Incorrect key code.")
    end
end)

screenGui.Parent = player:WaitForChild("PlayerGui")