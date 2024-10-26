local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- UI Setup
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local speedLabel = Instance.new("TextLabel", screenGui)
local uiGradient = Instance.new("UIGradient", speedLabel)
local uiCorner = Instance.new("UICorner", speedLabel)
local uiStroke = Instance.new("UIStroke", speedLabel)

speedLabel.Size = UDim2.new(0, 300, 0, 70)
speedLabel.Position = UDim2.new(0.5, -150, 0, 50)
speedLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.Font = Enum.Font.GothamBold
speedLabel.TextSize = 30
speedLabel.Text = "Speed: 0 km/h | 0 mph"
speedLabel.Active = true
speedLabel.Draggable = true

-- UI Enhancements
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 150)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 180, 255))
}
uiGradient.Rotation = 45

uiCorner.CornerRadius = UDim.new(0, 15)

uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(255, 255, 255)

-- Speed Calculation with Faster Decay
local lastPosition = character.HumanoidRootPart.Position
local speedHistory = {}
local historySize = 5 -- Reduced history size for quicker response

local function averageSpeed()
    local total = 0
    for _, speed in ipairs(speedHistory) do
        total = total + speed
    end
    return total / #speedHistory
end

-- Update the speed every 0.5 seconds
while true do
    local currentPosition = character.HumanoidRootPart.Position
    local distance = (currentPosition - lastPosition).Magnitude
    local speedInStudsPerSecond = distance
    local speedInKmph = math.floor(speedInStudsPerSecond * 3.6)
    local speedInMph = math.floor(speedInStudsPerSecond * 2.23694)

    -- Clear the history if speed drops to zero for faster decay
    if speedInKmph == 0 then
        speedHistory = {}
    end

    table.insert(speedHistory, speedInKmph)
    if #speedHistory > historySize then
        table.remove(speedHistory, 1)
    end

    local smoothedSpeed = math.floor(averageSpeed())

    speedLabel.Text = string.format("Speed: %d km/h | %d mph", smoothedSpeed, math.floor(smoothedSpeed * 0.621371))

    lastPosition = currentPosition
    wait(0.5)
end