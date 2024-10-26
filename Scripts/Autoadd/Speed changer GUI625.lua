-- Create a ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "SpeedGUI"
gui.Parent = game.Players.LocalPlayer.PlayerGui
 
-- Create a Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 10, 0.5, -50) -- Modified position to display on the left side
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = gui
 
-- Create a TextBox
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 150, 0, 30)
textBox.Position = UDim2.new(0.5, -75, 0.2, 0)
textBox.Text = "Speed Amount"
textBox.Parent = frame
 
-- Create a TextLabel
local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 150, 0, 30)
label.Position = UDim2.new(0.5, -75, 0.4, 0)
label.Text = "Enter a speed value"
label.Parent = frame
 
-- Create a TextButton
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0.5, -50, 0.7, 0)
button.Text = "Go"
button.Parent = frame
 
-- Function to update walk speed
local function updateWalkSpeed()
    local speedValue = tonumber(textBox.Text)
    if speedValue then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
    end
end
 
-- Bind the button click event
button.MouseButton1Click:Connect(updateWalkSpeed)