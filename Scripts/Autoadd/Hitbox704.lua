-- Create a ScreenGui to hold the GUI elements
local gui = Instance.new("ScreenGui")
gui.Name = "TribeGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.3, 0)
frame.Position = UDim2.new(0.4, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 5
frame.Parent = gui

-- Create Hitbox button
local hitboxButton = Instance.new("TextButton")
hitboxButton.Size = UDim2.new(0.8, 0, 0.2, 0)
hitboxButton.Position = UDim2.new(0.1, 0, 0.2, 0)
hitboxButton.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
hitboxButton.Text = "Hitbox"
hitboxButton.Parent = frame
hitboxButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Hitbox-13000"))()
end)

-- Create FPS Boost button
local fpsBoostButton = Instance.new("TextButton")
fpsBoostButton.Size = UDim2.new(0.8, 0, 0.2, 0)
fpsBoostButton.Position = UDim2.new(0.1, 0, 0.5, 0)
fpsBoostButton.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
fpsBoostButton.Text = "FPS Boost"
fpsBoostButton.Parent = frame
fpsBoostButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FPS-BOOST-2022-3864"))()
end)

-- Create Discord button
local discordButton = Instance.new("TextButton")
discordButton.Size = UDim2.new(0.8, 0, 0.2, 0)
discordButton.Position = UDim2.new(0.1, 0, 0.8, 0)
discordButton.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
discordButton.Text = "Discord"
discordButton.Parent = frame
discordButton.MouseButton1Click:Connect(function()
    local message = "Hi"
    game:GetService("GuiService"):CopyToClipboard(message)
end)

-- Create close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.9, 0, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.Parent = frame
closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)