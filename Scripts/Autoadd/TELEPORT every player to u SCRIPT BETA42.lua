-- Get the local player
local localPlayer = game.Players.LocalPlayer

-- Variables to control the teleportation
local teleportEnabled = false
local offsetDistance = 10 -- Default distance in studs in front of the player

-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Teleport_GUI"
ScreenGui.Parent = localPlayer.PlayerGui
ScreenGui.ResetOnSpawn = false

-- Create a frame for the controls
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 250, 0, 180)  -- Size of the GUI frame
MainFrame.Position = UDim2.new(0, 10, 0, 10)  -- Position of the frame
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Add drag functionality to MainFrame
local dragToggle = false
local dragInput
local dragStart
local startPos

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragToggle = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragToggle then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Create a title label
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Text = "Teleport Options"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextSize = 20
TitleLabel.TextStrokeTransparency = 0.5
TitleLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.TextScaled = true
TitleLabel.Parent = MainFrame

-- Toggle for Teleportation
local TeleportToggle = Instance.new("TextButton")
TeleportToggle.Size = UDim2.new(1, 0, 0, 25)
TeleportToggle.Position = UDim2.new(0, 0, 0.2, 0)
TeleportToggle.Text = "Toggle Teleport"
TeleportToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportToggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TeleportToggle.BorderSizePixel = 0
TeleportToggle.TextSize = 14
TeleportToggle.Parent = MainFrame

-- Input for distance
local DistanceInput = Instance.new("TextBox")
DistanceInput.Size = UDim2.new(1, 0, 0, 25)
DistanceInput.Position = UDim2.new(0, 0, 0.5, 0)
DistanceInput.Text = tostring(offsetDistance)
DistanceInput.PlaceholderText = "Distance (studs)"
DistanceInput.TextColor3 = Color3.fromRGB(255, 255, 255)
DistanceInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DistanceInput.BorderSizePixel = 0
DistanceInput.TextSize = 14
DistanceInput.Parent = MainFrame

-- Function to update the offset distance
DistanceInput.FocusLost:Connect(function()
    local newDistance = tonumber(DistanceInput.Text)
    if newDistance then
        offsetDistance = newDistance
    end
end)

-- Function to teleport and lock all players to a position in front of the local player
local function teleportAndLockPlayers()
    local localCharacter = localPlayer.Character
    if not localCharacter or not localCharacter:FindFirstChild("HumanoidRootPart") then
        return
    end

    local humanoidRootPart = localCharacter.HumanoidRootPart
    local localCFrame = humanoidRootPart.CFrame

    -- Calculate the position in front of the local player
    local offsetPosition = localCFrame.Position + (localCFrame.LookVector * offsetDistance)

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetHumanoidRootPart = player.Character.HumanoidRootPart

            -- Set the CFrame and position to ensure players stay in front of the local player
            targetHumanoidRootPart.CFrame = CFrame.new(offsetPosition)
            targetHumanoidRootPart.Position = offsetPosition
        end
    end
end

-- Continuous teleport and lock function
local function continuousTeleportAndLock()
    while true do
        if teleportEnabled then
            teleportAndLockPlayers()
        end
        wait(0.1)  -- Adjust the wait time to reduce snapping issues
    end
end

-- Start continuous teleport and lock
spawn(continuousTeleportAndLock)

-- Toggle the teleportation on and off
TeleportToggle.MouseButton1Click:Connect(function()
    teleportEnabled = not teleportEnabled
    TeleportToggle.Text = teleportEnabled and "Toggle Teleport: ON" or "Toggle Teleport: OFF"
end)

print("Teleport Script Loaded(beta) | Credits: Jesse_VIP")  -- Print credits in the output