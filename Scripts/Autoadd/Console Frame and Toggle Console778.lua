-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyUIGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.8, 0, 0.8, 0) -- Increased size for better mobile support
frame.Position = UDim2.new(0.1, 0, 0.1, 0) -- Centered on the screen
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
frame.BackgroundTransparency = 0.5 -- Semi-transparent
frame.Active = true
frame.Draggable = false -- Not draggable
frame.Parent = screenGui

-- Create a ScrollingFrame inside the Frame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.CanvasSize = UDim2.new(1, 0, 2, 0) -- Allow space for scrolling
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.BackgroundTransparency = 1 -- Make background transparent
scrollingFrame.Parent = frame

-- Create a TextLabel inside the ScrollingFrame to display messages
local textLabel = Instance.new("TextLabel")
textLabel.Name = "MessageLabel"
textLabel.Size = UDim2.new(1, -10, 2, 0) -- Match the CanvasSize for full scrollable area
textLabel.Position = UDim2.new(0, 5, 0, 0)
textLabel.BackgroundTransparency = 1 -- Make background transparent
textLabel.TextSize = 14 -- Set the text size to be smaller
textLabel.TextWrapped = true
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.Text = "" -- Initial empty text
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text for contrast
textLabel.Parent = scrollingFrame

-- Create the toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0.1, 0, 0.1, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.BackgroundTransparency = 0.5
toggleButton.Text = "open/close"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Parent = screenGui

-- Position the toggle button above the jump button
local function updateButtonPosition()
    local jumpButton = game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui"):FindFirstChild("JumpButton")
    if jumpButton then
        toggleButton.Position = UDim2.new(1, -toggleButton.Size.X.Offset - 10, 1, -toggleButton.Size.Y.Offset - 10) -- Adjust positioning
    end
end

-- Call the function to set the initial position
updateButtonPosition()

-- Update the button position whenever the jump button moves (e.g., on screen resize)
game:GetService("RunService").RenderStepped:Connect(updateButtonPosition)

-- Function to update the text in the frame
local function updateText(message)
    textLabel.Text = textLabel.Text .. message .. "\n" -- Append the message to the TextLabel
    scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, textLabel.TextBounds.Y) -- Update the canvas size to fit the text
end

-- Override the default print function
local originalPrint = print
print = function(...)
    local message = ""
    for i, v in ipairs({...}) do
        message = message .. tostring(v) .. " "
    end
    originalPrint(message) -- Call the original print function
    updateText(message) -- Update the text in the frame
end

-- Toggle button functionality
toggleButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)