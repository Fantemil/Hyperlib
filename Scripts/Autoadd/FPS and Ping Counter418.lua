repeat wait() until game:IsLoaded()
wait(2)

local screenGui = Instance.new("ScreenGui")
local fpsLabel = Instance.new("TextLabel")
local pingLabel = Instance.new("TextLabel")

-- Properties:

screenGui.Parent = game.CoreGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- FPS Label
fpsLabel.Name = "Fps"
fpsLabel.Parent = screenGui
fpsLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fpsLabel.BackgroundTransparency = 0.5
fpsLabel.Position = UDim2.new(0.5, -60, 1, -50) -- Centered at the bottom
fpsLabel.Size = UDim2.new(0, 120, 0, 25) -- Smaller size
fpsLabel.Font = Enum.Font.SourceSans
fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpsLabel.TextScaled = true
fpsLabel.TextSize = 14.000
fpsLabel.TextWrapped = true
fpsLabel.Text = "FPS: Calculating..."

-- Ping Label
pingLabel.Name = "Ping"
pingLabel.Parent = screenGui
pingLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
pingLabel.BackgroundTransparency = 0.5
pingLabel.Position = UDim2.new(0.5, -60, 1, -25) -- Below the FPS label
pingLabel.Size = UDim2.new(0, 120, 0, 25) -- Smaller size
pingLabel.Font = Enum.Font.SourceSans
pingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pingLabel.TextScaled = true
pingLabel.TextSize = 14.000
pingLabel.TextWrapped = true
pingLabel.Text = "Ping: Calculating..."

-- Scripts:

local fpsScript = Instance.new('LocalScript', fpsLabel)
local runService = game:GetService("RunService")

runService.RenderStepped:Connect(function(deltaTime)
    local fps = math.floor(1 / deltaTime)
    fpsLabel.Text = "FPS: " .. fps
end)

local pingScript = Instance.new('LocalScript', pingLabel)
local stats = game:GetService("Stats")

runService.RenderStepped:Connect(function()
    local pingValue = stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    pingLabel.Text = "Ping: " .. pingValue
end)
