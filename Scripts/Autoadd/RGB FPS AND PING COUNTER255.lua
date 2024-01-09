local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Fps = Instance.new("TextLabel")
Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundTransparency = 1.000
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Position = UDim2.new(0, 10, 0, 10)
Fps.Font = Enum.Font.SourceSans
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

local Ping = Instance.new("TextLabel")
Ping.Name = "Ping"
Ping.Parent = ScreenGui
Ping.BackgroundTransparency = 1.000
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Position = UDim2.new(1, -135, 0, 10)
Ping.Font = Enum.Font.SourceSans
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

local function rainbowColor(t)
    local frequency = 1 / 3
    local r = math.sin(frequency * t + 0) * 127 + 128
    local g = math.sin(frequency * t + 2) * 127 + 128
    local b = math.sin(frequency * t + 4) * 127 + 128
    return Color3.fromRGB(r, g, b)
end

local fpsScript = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(deltaTime)
    local fps = 1 / deltaTime
    fpsScript.Parent.Text = ("FPS: " .. math.round(fps))
    fpsScript.Parent.TextColor3 = rainbowColor(tick())
end)

local pingScript = Instance.new('LocalScript', Ping)
local Stats = game:GetService("Stats")
local pingValue = Stats.Network.ServerStatsItem["Data Ping"]
RunService.RenderStepped:Connect(function()
    pingScript.Parent.Text = ("Ping: " .. pingValue:GetValueString())
    pingScript.Parent.TextColor3 = rainbowColor(tick())
end)