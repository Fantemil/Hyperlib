local gui = Instance.new("ScreenGui", game.CoreGui)
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -50)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
frame.BorderSizePixel = 0
frame.Active = true
frame.Visible = true
frame.Draggable = true
frame.Parent = gui

local button = Instance.new("TextButton")
button.Text = "Kick"
button.Size = UDim2.new(0.4, 0, 0, 30)
button.Position = UDim2.new(0.05, 0, 0.5, 0)
button.AnchorPoint = Vector2.new(0, 0.5)
button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 2
button.Font = Enum.Font.GothamBold
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextScaled = true
button.Parent = frame

local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter kick message..."
textBox.Size = UDim2.new(0.4, 0, 0, 30)
textBox.Position = UDim2.new(0.55, 0, 0.5, 0)
textBox.AnchorPoint = Vector2.new(0, 0.5)
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.BorderColor3 = Color3.fromRGB(255, 0, 0)
textBox.BorderSizePixel = 2
textBox.Font = Enum.Font.GothamBold
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextSize = 20
textBox.TextScaled = true
textBox.Parent = frame

button.MouseButton1Click:Connect(function()
    local kickMessage = textBox.Text
    game.Players.LocalPlayer:Kick(kickMessage)
end)