-- Live Coordinate Display Script
-- Author: RobloxCodeGPT

local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera

-- Create a ScreenGui to hold the GUI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LiveCoordinateDisplay"
screenGui.Parent = player.PlayerGui

-- Create a Frame for the coordinate display
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0.5, -100, 0, 10) -- Centered at the top
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create a TextLabel to show the coordinates
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 18
textLabel.Text = "Coordinates: (0, 0, 0)"
textLabel.Parent = frame

-- Function to update the coordinates
local function updateCoordinates()
    local position = player.Character and player.Character.HumanoidRootPart and player.Character.HumanoidRootPart.Position
    if position then
        local worldPosition = camera:WorldToScreenPoint(position)
        textLabel.Text = string.format("Coordinates: (%.2f, %.2f, %.2f)", position.X, position.Y, position.Z)
        
        -- Adjust Y position to stay at the top middle of the screen
        frame.Position = UDim2.new(0.5, -100, 0, 10) -- Set Y position to 10 pixels from the top
    else
        textLabel.Text = "Coordinates: N/A"
    end
end

-- Update coordinates every frame
game:GetService("RunService").RenderStepped:Connect(updateCoordinates)

-- Initial update
updateCoordinates()
