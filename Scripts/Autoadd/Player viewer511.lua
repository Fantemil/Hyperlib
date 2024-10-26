-- Ensure this script runs on the client
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PlayerViewGUI"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local function createButton(name, position, onClickFunction)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0, 50, 0, 50)
    button.Position = position
    button.Text = name
    button.Parent = ScreenGui
    button.MouseButton1Click:Connect(onClickFunction)
    return button
end

local players = Players:GetPlayers()
local currentIndex = 1

local function updateView()
    local player = players[currentIndex]
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        Camera.CameraSubject = player.Character.Humanoid
        Camera.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, -10)
    end
end

local function nextPlayer()
    currentIndex = currentIndex + 1
    if currentIndex > #players then
        currentIndex = 1
    end
    updateView()
end

local function previousPlayer()
    currentIndex = currentIndex - 1
    if currentIndex < 1 then
        currentIndex = #players
    end
    updateView()
end

createButton("<", UDim2.new(0, 10, 0, 10), previousPlayer)
createButton(">", UDim2.new(0, 70, 0, 10), nextPlayer)

updateView()