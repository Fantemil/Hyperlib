-- FE Script Executor
-- Executor Beta V.1

-- Create the executor GUI
local executorGui = Instance.new("ScreenGui")
executorGui.Name = "ExecutorGui"
executorGui.Parent = game.Players.LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0, 10, 0, 10)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = executorGui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(0, 5, 0, 5)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
closeButton.Parent = mainFrame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(0, 200, 0, 30)
inputBox.Position = UDim2.new(0, 50, 0, 100)
inputBox.PlaceholderText = "Type your FE script here..."
inputBox.Parent = mainFrame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0, 150, 0, 30)
executeButton.Position = UDim2.new(0, 75, 0, 150)
executeButton.Text = "Press to Execute Script"
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 100)
executeButton.Parent = mainFrame

-- Close button functionality
closeButton.MouseButton1Click:Connect(function()
    executorGui:Destroy()
end)

-- Execute button functionality
executeButton.MouseButton1Click:Connect(function()
    local scriptToExecute = inputBox.Text
    loadstring(scriptToExecute)()
end)