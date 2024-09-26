local ReplicatedStorage = game:GetService("ReplicatedStorage")
local logEvent = ReplicatedStorage:WaitForChild("LogEvent")

local screenGui = Instance.new("ScreenGui")
local consoleFrame = Instance.new("Frame", screenGui)
consoleFrame.Size = UDim2.new(0.6, 0, 0.5, 0)
consoleFrame.Position = UDim2.new(0.2, 0, 0.2, 0)
consoleFrame.BackgroundColor3 = Color3.new(0, 0, 0)
consoleFrame.BorderSizePixel = 2
consoleFrame.BorderColor3 = Color3.new(0.2, 0.2, 0.2)

local titleLabel = Instance.new("TextLabel", consoleFrame)
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Text = "Console logs"
titleLabel.BackgroundColor3 = Color3.new(0, 0.5, 1)
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextStrokeTransparency = 0.5
titleLabel.BorderSizePixel = 0

local logLabel = Instance.new("TextLabel", consoleFrame)
logLabel.Size = UDim2.new(1, 0, 0.9, 0)
logLabel.Position = UDim2.new(0, 0, 0.1, 0)
logLabel.Text = ""
logLabel.BackgroundTransparency = 1
logLabel.TextColor3 = Color3.new(1, 1, 1)
logLabel.TextSize = 14
logLabel.Font = Enum.Font.SourceSans
logLabel.TextWrapped = true
logLabel.TextStrokeTransparency = 0.5
logLabel.TextYAlignment = Enum.TextYAlignment.Top

local function onLogReceived(message)
    logLabel.Text = logLabel.Text .. message .. "\n"
end

logEvent.OnClientEvent:Connect(onLogReceived)
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")