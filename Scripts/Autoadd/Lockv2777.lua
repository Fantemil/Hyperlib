--51cles lock v2 what got added? a GUI to change ur prediction and i also added--
--air prediction and a revert changes button just incase if you wanna go back to the settings that are already made for you--
--also i changed it from head to UpperTorso so its more easy to air kids-- 

local Settings = {
    ["Key"] = Enum.KeyCode.C,
    ["Part"] = "UpperTorso",
    ["Prediction"] = 0.126749,
}

local AirPrediction = {
    ["UseAirPrediction"] = true,
    ["AirPrediction"] = 0.1241,
}

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local locking = false
local targetPart = nil


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CameraLockGui"
ScreenGui.Parent = LocalPlayer.PlayerGui

local function createDraggableFrame()
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 400)  
    frame.Position = UDim2.new(0.5, -200, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 2
    frame.BorderColor3 = Color3.fromRGB(200, 200, 200)
    frame.Parent = ScreenGui

    local titleBar = Instance.new("TextLabel")
    titleBar.Size = UDim2.new(1, 0, 0, 30)
    titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    titleBar.Text = "Camera Lock Settings"
    titleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleBar.TextSize = 16
    titleBar.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    titleBar.TextStrokeTransparency = 0.7
    titleBar.Parent = frame

    local dragInput, dragStart, startPos
    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragInput = input
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragInput = nil
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput then
            update(input)
        end
    end)

    return frame
end

local frame = createDraggableFrame()


local function createSetting(name, position, defaultValue, callback)
    local settingFrame = Instance.new("Frame")
    settingFrame.Size = UDim2.new(0.5, -10, 0, 30)  
    settingFrame.Position = position
    settingFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    settingFrame.BorderSizePixel = 0
    settingFrame.Parent = frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, -10, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Text = name
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 12
    label.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    label.BorderSizePixel = 0
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = settingFrame

    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0.4, -10, 1, 0)
    textBox.Position = UDim2.new(0.6, 0, 0, 0)
    textBox.Text = tostring(defaultValue)
    textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextSize = 12
    textBox.ClearTextOnFocus = false
    textBox.BorderSizePixel = 0
    textBox.Parent = settingFrame

    textBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local value = tonumber(textBox.Text)
            if value then
                callback(value)
            end
        end
    end)

    return textBox
end

local airPredictionBox = createSetting("Air Prediction", UDim2.new(0, 10, 0, 40), AirPrediction.AirPrediction, function(value)
    AirPrediction.AirPrediction = value
end)

local predictionBox = createSetting("Prediction", UDim2.new(0.5, 10, 0, 40), Settings.Prediction, function(value)
    Settings.Prediction = value
end)


local revertButton = Instance.new("TextButton")
revertButton.Size = UDim2.new(1, -20, 0, 40)
revertButton.Position = UDim2.new(0, 10, 0, 340)
revertButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
revertButton.Text = "Revert All Changes"
revertButton.TextColor3 = Color3.fromRGB(255, 255, 255)
revertButton.TextSize = 16
revertButton.BorderSizePixel = 0
revertButton.Parent = frame

revertButton.MouseButton1Click:Connect(function()
    AirPrediction.AirPrediction = 0.110
    Settings.Prediction = 0.110

    airPredictionBox.Text = tostring(AirPrediction.AirPrediction)
    predictionBox.Text = tostring(Settings.Prediction)
end)


local guiVisible = true
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.P and not gameProcessed then
        guiVisible = not guiVisible
        ScreenGui.Enabled = guiVisible
    end
end)


local function getClosestPlayerToMouse()
    local closestPlayer = nil
    local shortestDistance = math.huge
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild(Settings.Part) then
            local partPosition = player.Character[Settings.Part].Position
            local screenPoint = Camera:WorldToScreenPoint(partPosition)
            local distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPoint.X, screenPoint.Y)).magnitude
            
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end
    
    return closestPlayer
end

local function lockCameraToPlayer(player)
    if player and player.Character and player.Character:FindFirstChild(Settings.Part) then
        targetPart = player.Character[Settings.Part]
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
    end
end

local function toggleLock()
    locking = not locking
    if locking then
        local closestPlayer = getClosestPlayerToMouse()
        if closestPlayer then
            lockCameraToPlayer(closestPlayer)
        end
    else
        targetPart = nil
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Settings.Key and not gameProcessed then
        toggleLock()
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if locking and targetPart then
        local targetPosition = targetPart.Position
        local cameraPosition = Camera.CFrame.Position
        local direction = (targetPosition - cameraPosition).unit

        local prediction = AirPrediction.UseAirPrediction and AirPrediction.AirPrediction or Settings.Prediction

        local smoothedPosition = cameraPosition + direction * prediction

        local cameraLookAt = CFrame.new(cameraPosition, targetPosition)

       
        Camera.CFrame = cameraLookAt + (Camera.CFrame.Position - cameraPosition)
    end
end)
