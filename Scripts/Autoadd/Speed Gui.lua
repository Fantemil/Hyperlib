
local player = game.Players.LocalPlayer
local Menu = Instance.new("ScreenGui")
Menu.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Position = UDim2.new(0.5, -50, 0, 10)
frame.Size = UDim2.new(0, 100, 0, 20)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = Menu

local speedLabel = Instance.new("TextLabel")
speedLabel.Position = UDim2.new(0, 0, 0, 0)
speedLabel.Size = UDim2.new(1, 0, 1, 0)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.Font = Enum.Font.SourceSans
speedLabel.TextSize = 14
speedLabel.Text = "Speed: 0"
speedLabel.Parent = frame

local humanoid = player.Character:WaitForChild("Humanoid")

humanoid.Running:Connect(function(speed)
    speedLabel.Text = "Speed: " .. math.floor(speed + 0.5)
end)
