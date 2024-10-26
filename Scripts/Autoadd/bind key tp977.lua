local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local fadeFrame = Instance.new("Frame")
fadeFrame.Size = UDim2.new(1, 0, 1, 0)
fadeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
fadeFrame.BorderSizePixel = 0
fadeFrame.BackgroundTransparency = 0.5
fadeFrame.Parent = gui

local madeByText = Instance.new("TextLabel")
madeByText.Size = UDim2.new(0.5, 0, 0.2, 0)
madeByText.Position = UDim2.new(0.25, 0, 0.4, 0)
madeByText.Text = "Made by Nuckinfuts6675"
madeByText.TextScaled = true
madeByText.TextColor3 = Color3.new(1, 1, 1)
madeByText.Parent = fadeFrame

wait(2)

fadeFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true, function()
    fadeFrame:Destroy()
end)

wait(1)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
frame.BorderSizePixel = 0
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Text = "Type the key you want to bind"
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.2, 0)
textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
textBox.PlaceholderText = "Enter key..."
textBox.Parent = frame

local bindButton = Instance.new("TextButton")
bindButton.Size = UDim2.new(0.5, 0, 0.2, 0)
bindButton.Position = UDim2.new(0.25, 0, 0.7, 0)
bindButton.Text = "Bind"
bindButton.TextColor3 = Color3.new(1, 1, 1)
bindButton.BackgroundColor3 = Color3.fromRGB(50, 168, 82)
bindButton.Parent = frame

bindButton.MouseButton1Click:Connect(function()
    local key = textBox.Text:lower()
    gui:Destroy()

    mouse.KeyDown:Connect(function(input)
        if input == key then
            local targetPosition = mouse.Hit.p
            player.Character:MoveTo(targetPosition)
        end
    end)
end)
