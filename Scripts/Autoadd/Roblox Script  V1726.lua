local UserInputService = game:GetService("UserInputService")


local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.5, 0, 0.5, 0)  -- Reduzido para 50% da tela
mainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui


local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)  -- Ajuste o valor para a curvatura desejada
uiCorner.Parent = mainFrame


mainFrame.Active = true
mainFrame.Draggable = true


local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "X"
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
    mainFrame:Destroy()
end)


local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 20, 0, 20)
minimizeButton.Position = UDim2.new(1, -50, 0, -30)
minimizeButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
minimizeButton.Text = "-"
minimizeButton.Parent = mainFrame

local maximizeButton = Instance.new("TextButton")
maximizeButton.Size = UDim2.new(0, 20, 0, 20)
maximizeButton.Position = UDim2.new(1, -25, 0, -30)
maximizeButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
maximizeButton.Text = "+"
maximizeButton.Parent = mainFrame

local originalSize = mainFrame.Size

minimizeButton.MouseButton1Click:Connect(function()
    if mainFrame.Size == originalSize then
        mainFrame.Size = UDim2.new(0.1, 0, 0.1, 0)
    else
        mainFrame.Size = originalSize
    end
end)

maximizeButton.MouseButton1Click:Connect(function()
    if mainFrame.Size == originalSize then
        mainFrame.Size = UDim2.new(0.1, 0, 0.1, 0)
    else
        mainFrame.Size = originalSize
    end
end)

-- Create the "piggy" Button
local piggyButton = Instance.new("TextButton")
piggyButton.Size = UDim2.new(0.3, 0, 0.1, 0)
piggyButton.Position = UDim2.new(0.35, 0, 0.2, 0)
piggyButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
piggyButton.Text = "piggy"
piggyButton.Parent = mainFrame

piggyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xRHcjXVs", true))()
end)

-- Create the "piggy 2" Button
local piggy2Button = Instance.new("TextButton")
piggy2Button.Size = UDim2.new(0.3, 0, 0.1, 0)
piggy2Button.Position = UDim2.new(0.35, 0, 0.35, 0)
piggy2Button.BackgroundColor3 = Color3.new(0, 0.5, 0)
piggy2Button.Text = "piggy 2"
piggy2Button.Parent = mainFrame

piggy2Button.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Piggy-open-source-15390", true))()
end)