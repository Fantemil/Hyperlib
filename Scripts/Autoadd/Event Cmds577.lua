-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InfiniteYieldGUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a TextButton for executing the script
local executeButton = Instance.new("TextButton")
executeButton.Name = "ExecuteButton"
executeButton.Text = "Execute Infinite Yield"
executeButton.Size = UDim2.new(0, 200, 0, 50)
executeButton.Position = UDim2.new(0.5, -100, 0.5, -25)
executeButton.AnchorPoint = Vector2.new(0.5, 0.5)
executeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red background
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
executeButton.Draggable = true -- Make it movable
executeButton.Parent = screenGui

-- Execute Infinite Yield when the button is clicked
executeButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


Copy this Cmd:
--Bringpart Eggy--

