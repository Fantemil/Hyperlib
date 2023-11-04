
local gui = Instance.new("ScreenGui")
gui.Name = "CoordinatesGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextStrokeTransparency = 0
textLabel.TextSize = 24
textLabel.Parent = frame


local function updateCoordinates()
    local character = game.Players.LocalPlayer.Character
    if character then
        local human = character:FindFirstChild("Humanoid")
        if human then
            local position = character.HumanoidRootPart.Position
            textLabel.Text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", position.X, position.Y, position.Z)
        end
    end
end


game:GetService("RunService").Heartbeat:Connect(updateCoordinates)


local isDragging = false
local offset = Vector2.new()
frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
    end
end)

frame.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local newPosition = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
        frame.Position = newPosition
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)
