local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer  -- Reference to the player executing the script
local bombName = "Bomb" 

local function createBaseplate()
    local baseplate = Instance.new("Part")
    baseplate.Size = Vector3.new(5, 1, 5)
    baseplate.CFrame = CFrame.new(4.25679731, 40.192234, 0.0179801397)
    baseplate.Anchored = true
    baseplate.BrickColor = BrickColor.new("Bright blue")
    baseplate.Parent = Workspace
    return baseplate
end

local baseplate = createBaseplate()

local function isHoldingBomb()
    return player.Character and player.Character:FindFirstChild(bombName) ~= nil
end

local function teleportToRandomPlayer()
    local otherPlayers = Players:GetPlayers()
    if #otherPlayers < 2 then return end

    local randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    while randomPlayer == player or (randomPlayer.Character and randomPlayer.Character:FindFirstChild(bombName)) do
        randomPlayer = otherPlayers[math.random(1, #otherPlayers)]
    end

    local destination = randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart")
    local character = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

    if destination and character then
        character.CFrame = destination.CFrame
    end
end

local function teleportToBaseplate()
    local character = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if baseplate and character then
        character.CFrame = baseplate.CFrame + Vector3.new(0, 3, 0)
    end
end

RunService.Heartbeat:Connect(function()
    if isHoldingBomb() then
        teleportToRandomPlayer()
    else
        teleportToBaseplate()
    end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Position = UDim2.new(0, 10, 0, 10)  
frame.Size = UDim2.new(0, 200, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Dark background color
frame.BorderSizePixel = 0

local joinDiscordButton = Instance.new("TextButton")
joinDiscordButton.Parent = frame
joinDiscordButton.Position = UDim2.new(0, 0, 0, 0)
joinDiscordButton.Size = UDim2.new(1, 0, 0.5, 0)
joinDiscordButton.Text = "Join Discord"
joinDiscordButton.TextSize = 10
joinDiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
joinDiscordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.com/invite/bRMmg4q9f7")
    print("Credits to Jam")
end)

local creditsButton = Instance.new("TextButton")
creditsButton.Parent = frame
creditsButton.Position = UDim2.new(0, 0, 0.5, 0)
creditsButton.Size = UDim2.new(1, 0, 0.5, 0)
creditsButton.Text = "Credits to Jam"
creditsButton.TextSize = 10
creditsButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
creditsButton.MouseButton1Click:Connect(function()
    print("Credits to Jam (the owner)")
end)