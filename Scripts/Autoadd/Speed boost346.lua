local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = PlayerGui

-- Create Open/Close Button
local toggleGuiButton = Instance.new("TextButton")
toggleGuiButton.Size = UDim2.new(0, 100, 0, 50)
toggleGuiButton.Position = UDim2.new(0, 10, 0, 10)
toggleGuiButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
toggleGuiButton.TextColor3 = Color3.new(1, 1, 1)
toggleGuiButton.Text = "Open GUI"
toggleGuiButton.Parent = screenGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Visible = false -- Initially hidden
frame.Parent = screenGui

-- Create Speed Button
local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0, 100, 0, 50)
speedButton.Position = UDim2.new(0.5, -50, 0, 100)
speedButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
speedButton.TextColor3 = Color3.new(1, 1, 1)
speedButton.Text = "Apply Speed"
speedButton.Parent = frame

-- Create Speed TextBox
local speedTextBox = Instance.new("TextBox")
speedTextBox.Size = UDim2.new(0, 200, 0, 50)
speedTextBox.Position = UDim2.new(0.5, -100, 0, 40)
speedTextBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
speedTextBox.TextColor3 = Color3.new(1, 1, 1)
speedTextBox.PlaceholderText = "Enter speed amount"
speedTextBox.Text = ""
speedTextBox.Parent = frame

-- Create Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 50)
closeButton.Position = UDim2.new(0, 10, 0, 140)
closeButton.BackgroundColor3 = Color3.new(0.8, 0.1, 0.1)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "Close GUI"
closeButton.Parent = frame

local function toggleGui()
    frame.Visible = not frame.Visible
    if frame.Visible then
        toggleGuiButton.Text = "Close GUI"
    else
        toggleGuiButton.Text = "Open GUI"
    end
end

local function applySpeed()
    local speed = tonumber(speedTextBox.Text)
    if speed then
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = speed
            end
        end
    else
        speedTextBox.Text = "Invalid number!"
    end
end

toggleGuiButton.MouseButton1Click:Connect(toggleGui)
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    toggleGuiButton.Text = "Open GUI"
end)
speedButton.MouseButton1Click:Connect(applySpeed)