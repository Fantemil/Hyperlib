local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPSPingGui"
screenGui.Parent = game:GetService("CoreGui")
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FPSLabel"
fpsLabel.Size = UDim2.new(0, 200, 0, 60)  -- Increased size to 200x60
fpsLabel.Position = UDim2.new(0, -10, 0, 10)
fpsLabel.BackgroundTransparency = 1
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.TextStrokeTransparency = 0
fpsLabel.Font = Enum.Font.SourceSans
fpsLabel.TextSize = 40  -- Increased text size to 40
fpsLabel.Parent = screenGui
local pingLabel = Instance.new("TextLabel")
pingLabel.Name = "PingLabel"
pingLabel.Size = UDim2.new(0, 100, 0, 50)
pingLabel.Position = UDim2.new(0, 165, 0, 15) -- Adjusted position to be next to the FPS counter
pingLabel.BackgroundTransparency = 1
pingLabel.TextColor3 = Color3.new(1, 1, 1)
pingLabel.TextStrokeTransparency = 0
pingLabel.Font = Enum.Font.SourceSans
pingLabel.TextSize = 24
pingLabel.Parent = screenGui
local function calculateFPS()
    local lastTime = tick()
    local frames = 0
  game:GetService("RunService").RenderStepped:Connect(function()
        frames = frames + 1
        local currentTime = tick()
        if currentTime - lastTime >= 0.1 then
            local fps = math.floor(frames / (currentTime - lastTime))
            fpsLabel.Text = "FPS: " .. tostring(fps)
            if fps < 10 then
                fpsLabel.TextColor3 = Color3.new(1, 0, 0) -- Red color
            else
                fpsLabel.TextColor3 = Color3.new(1, 1, 1) -- White color
            end
            frames = 0
            lastTime = currentTime
        end
    end)
end
local function calculatePing()
    game:GetService("RunService").Heartbeat:Connect(function()
        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
        pingLabel.Text = "Ping: " .. tostring(math.floor(ping)) .. " ms"
        if ping > 300 then
            pingLabel.TextColor3 = Color3.new(1, 0, 0) -- Red color
        else
            pingLabel.TextColor3 = Color3.new(1, 1, 1) -- White color
        end
    end)
end
calculateFPS()
calculatePing()