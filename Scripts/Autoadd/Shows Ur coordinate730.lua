-- Parent this script to StarterPlayer -> StarterPlayerScripts

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create a TextLabel to display the coordinates
local coordLabel = Instance.new("TextLabel")
coordLabel.Size = UDim2.new(0, 200, 0, 50)
coordLabel.Position = UDim2.new(0, 10, 0, 10)
coordLabel.BackgroundTransparency = 0.5
coordLabel.TextScaled = true
coordLabel.Parent = screenGui

-- Update the TextLabel with the player's coordinates
game:GetService("RunService").RenderStepped:Connect(function()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local position = character.HumanoidRootPart.Position
        coordLabel.Text = string.format("X: %.2f, Y: %.2f, Z: %.2f", position.X, position.Y, position.Z)
    end
end)
