local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)
frame.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
frame.Visible = true

local titleLabel = Instance.new("TextLabel", frame)
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "ÐÑÐ±ÐµÑÐ¸ÑÐµ Ð¸Ð³ÑÐ¾ÐºÐ°"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
titleLabel.TextScaled = true

local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
closeButton.TextScaled = true

local hideButton = Instance.new("TextButton", screenGui)
hideButton.Size = UDim2.new(0, 30, 0, 30)
hideButton.Position = UDim2.new(0, 5, 0, 5)
hideButton.Text = "-"
hideButton.TextColor3 = Color3.new(1, 1, 1)
hideButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
hideButton.TextScaled = true

local dropdownButton = Instance.new("TextButton", frame)
dropdownButton.Size = UDim2.new(1, -10, 0, 30)
dropdownButton.Position = UDim2.new(0, 5, 0, 40)
dropdownButton.Text = "ÐÑÐ±ÑÐ°ÑÑ Ð¸Ð³ÑÐ¾ÐºÐ°"
dropdownButton.TextColor3 = Color3.new(0, 0, 0)
dropdownButton.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
dropdownButton.TextScaled = true

local playerList = Instance.new("ScrollingFrame", screenGui)
playerList.Size = UDim2.new(0, 200, 0, 0)
playerList.Position = UDim2.new(0.5, 105, 0.5, -75)
playerList.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
playerList.Visible = false
playerList.CanvasSize = UDim2.new(0, 0, 5, 0)
playerList.ScrollBarThickness = 10

local followButton = Instance.new("TextButton", frame)
followButton.Size = UDim2.new(0, 90, 0, 30)
followButton.Position = UDim2.new(0.5, -95, 1, -40)
followButton.Text = "ÐÑÐ¸Ð»Ð¸Ð¿Ð°Ð½Ð¸Ðµ"
followButton.TextColor3 = Color3.new(1, 1, 1)
followButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
followButton.TextScaled = true

local teleportButton = Instance.new("TextButton", frame)
teleportButton.Size = UDim2.new(0, 90, 0, 30)
teleportButton.Position = UDim2.new(0.5, 5, 1, -40)
teleportButton.Text = "Ð¢ÐµÐ»ÐµÐ¿Ð¾ÑÑ"
teleportButton.TextColor3 = Color3.new(1, 1, 1)
teleportButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
teleportButton.TextScaled = true

local following = false
local targetPlayer = nil

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ ÐºÐ½Ð¾Ð¿Ð¾Ðº Ñ Ð¸Ð¼ÐµÐ½Ð°Ð¼Ð¸ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
local function createPlayerButton(playerName)
    local button = Instance.new("TextButton", playerList)
    button.Size = UDim2.new(1, -10, 0, 30)
    button.Position = UDim2.new(0, 5, 0, #playerList:GetChildren() * 35)
    button.Text = playerName
    button.TextColor3 = Color3.new(0, 0, 0)
    button.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
    button.TextScaled = true

    button.MouseButton1Click:Connect(function()
        targetPlayer = game.Players:FindFirstChild(playerName)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
        end
        dropdownButton.Text = "ÐÑÐ±ÑÐ°Ð½: " .. playerName
        playerList.Visible = false
        playerList.Size = UDim2.new(0, 200, 0, 0)
    end)
end

-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ ÐºÐ½Ð¾Ð¿Ð¾Ðº Ð´Ð»Ñ Ð²ÑÐµÑ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
local function updatePlayerList()
    playerList:ClearAllChildren()
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            createPlayerButton(otherPlayer.Name)
        end
    end
end

updatePlayerList()

-- ÐÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ¿Ð¸ÑÐºÐ° Ð¸Ð³ÑÐ¾ÐºÐ¾Ð² Ð¿ÑÐ¸ Ð¸Ñ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ð¸ Ð¸ ÑÐ´Ð°Ð»ÐµÐ½Ð¸Ð¸
game.Players.PlayerAdded:Connect(updatePlayerList)
game.Players.PlayerRemoving:Connect(updatePlayerList)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð²ÐºÐ»ÑÑÐµÐ½Ð¸Ñ/Ð²ÑÐºÐ»ÑÑÐµÐ½Ð¸Ñ ÑÐµÐ¶Ð¸Ð¼Ð° "Ð¿ÑÐ¸Ð»Ð¸Ð¿Ð°Ð½Ð¸Ðµ"
local RunService = game:GetService("RunService")
local followConnection

followButton.MouseButton1Click:Connect(function()
    following = not following
    followButton.BackgroundColor3 = following and Color3.new(0, 1, 0) or Color3.new(0.2, 0.6, 0.2)
    
    if following then
        followConnection = RunService.Heartbeat:Connect(function()
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and frame.Visible then
                player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            end
        end)
    else
        if followConnection then
            followConnection:Disconnect()
        end
    end
end)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°ÑÐ¸Ð¸ Ðº Ð²ÑÐ±ÑÐ°Ð½Ð½Ð¾Ð¼Ñ Ð¸Ð³ÑÐ¾ÐºÑ
teleportButton.MouseButton1Click:Connect(function()
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
    end
end)

-- ÐÐ¾ÐºÐ°Ð·Ð°ÑÑ/ÑÐºÑÑÑÑ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
dropdownButton.MouseButton1Click:Connect(function()
    playerList.Visible = not playerList.Visible
    playerList.Size = playerList.Visible and UDim2.new(0, 200, 0, 150) or UDim2.new(0, 200, 0, 0)
end)

-- ÐÐ°ÐºÑÑÑÑ GUI
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    if followConnection then
        followConnection:Disconnect()
    end
end)

-- Ð¡ÐºÑÑÑÑ/Ð¿Ð¾ÐºÐ°Ð·Ð°ÑÑ GUI
hideButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)