local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Position = UDim2.new(1, -160, 0, 10)
frame.Size = UDim2.new(0, 120, 0, 40)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 2
frame.Parent = gui

local button = Instance.new("TextButton")
button.Text = "OFF"
button.Size = UDim2.new(1, -20, 1, -20)
button.Position = UDim2.new(0, 10, 0, 10)
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.BorderSizePixel = 2
button.Font = Enum.Font.SourceSans
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 16
button.Parent = frame

local activated = false

local function toggle()
    activated = not activated
    button.Text = activated and "ON" or "OFF"

    while activated do
        for i = 0, 1, 0.01 do
            local rainbowColor = Color3.fromHSV(i % 1, 1, 1)
            frame.BorderColor3 = rainbowColor
            button.BorderColor3 = rainbowColor
            wait(0.1)
        end
    end
end

button.MouseButton1Click:Connect(toggle)