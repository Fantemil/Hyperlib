local Players = game:GetService("Players")
local player = Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = "Speed Modifier"
tool.RequiresHandle = false
tool.CanBeDropped = false

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Enabled = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.3, 0)
frame.Position = UDim2.new(0.35, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.4, 0)
textLabel.Text = "Enter Speed:"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 0, 0.3, 0)
textBox.Position = UDim2.new(0, 0, 0.5, 0)
textBox.Text = ""
textBox.PlaceholderText = "Enter speed"
textBox.TextColor3 = Color3.new(0, 0, 0)
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.Parent = frame

textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local speed = tonumber(textBox.Text)
        if speed then
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = speed
            end
        end
    end
end)

tool.Equipped:Connect(function()
    screenGui.Enabled = true
end)

tool.Unequipped:Connect(function()
    screenGui.Enabled = false
end)

tool.Parent = player.Backpack