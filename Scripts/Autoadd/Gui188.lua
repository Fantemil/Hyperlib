local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.Visible = false
frame.Parent = screenGui

-- Create Buttons
local function createButton(name, position)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0.3, 0, 0.1, 0)
    button.Position = position
    button.Text = name
    button.Parent = frame
    button.MouseButton1Click:Connect(function()
        print("Clicked")
    end)
end

-- Left side buttons
createButton("Button1", UDim2.new(0.1, 0, 0.05, 0))
createButton("Button2", UDim2.new(0.1, 0, 0.2, 0))
createButton("Button3", UDim2.new(0.1, 0, 0.35, 0))
createButton("Button4", UDim2.new(0.1, 0, 0.5, 0))
createButton("Button5", UDim2.new(0.1, 0, 0.65, 0))
createButton("Button6", UDim2.new(0.1, 0, 0.8, 0))

-- Right side buttons
createButton("Button7", UDim2.new(0.6, 0, 0.05, 0))
createButton("Button8", UDim2.new(0.6, 0, 0.2, 0))
createButton("Button9", UDim2.new(0.6, 0, 0.35, 0))
createButton("Button10", UDim2.new(0.6, 0, 0.5, 0))
createButton("Button11", UDim2.new(0.6, 0, 0.65, 0))
createButton("Button12", UDim2.new(0.6, 0, 0.8, 0))

-- Create ToggleButton
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.1, 0, 0.05, 0)
toggleButton.Position = UDim2.new(0.45, 0, 0.9, 0)
toggleButton.Text = "Toggle"
toggleButton.Parent = screenGui

toggleButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)