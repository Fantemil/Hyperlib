local screenGui = Instance.new("ScreenGui")
screenGui.Name = "StatsGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local statsLabel = Instance.new("TextLabel")
statsLabel.Size = UDim2.new(0, 150, 0, 40)
statsLabel.Position = UDim2.new(0, 10, 1, -50)
statsLabel.BackgroundColor3 = Color3.new(0, 0, 0)
statsLabel.BackgroundTransparency = 0.5
statsLabel.TextColor3 = Color3.new(1, 1, 1)
statsLabel.TextStrokeTransparency = 0
statsLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
statsLabel.TextScaled = true
statsLabel.Text = "FPS: 0\nPing: 0"
statsLabel.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = statsLabel

local uiStroke = Instance.new("UIStroke")
uiStroke.Parent = statsLabel
uiStroke.Thickness = 3
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local function updateFPSAndPing()
    local lastUpdate = tick()
    while true do
        local now = tick()
        local fps = math.floor(1 / (now - lastUpdate))
        lastUpdate = now

        local stats = game:GetService("Stats")
        local pingValue = stats.Network.ServerStatsItem["Data Ping"]:GetValueString()

        statsLabel.Text = "FPS: " .. fps .. "\nPing: " .. pingValue

        wait(0.01)
    end
end

coroutine.wrap(updateFPSAndPing)()

local function rainbowEffect()
    local hue = 0
    while true do
        hue = hue + 1 / 360
        if hue > 1 then hue = 0 end
        uiStroke.Color = Color3.fromHSV(hue, 1, 1)
        wait(0.03)
    end
end

coroutine.wrap(rainbowEffect)()