-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local LocalPlayer = Players.LocalPlayer

-- Variables for functionality
local camlockState = false
local Prediction = 0.16
local enemy = nil

-- Function to find the nearest enemy
local function FindNearestEnemy()
    local closestDistance, closestPlayer = math.huge, nil
    local centerPosition = Vector2.new(GuiService:GetScreenResolution().X / 2, GuiService:GetScreenResolution().Y / 2)
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") and character.Humanoid.Health > 0 then
                local position, isVisibleOnViewport = workspace.CurrentCamera:WorldToViewportPoint(character.HumanoidRootPart.Position)
                if isVisibleOnViewport then
                    local distance = (centerPosition - Vector2.new(position.X, position.Y)).Magnitude
                    if distance < closestDistance then
                        closestPlayer = character.HumanoidRootPart
                        closestDistance = distance
                    end
                end
            end
        end
    end
    return closestPlayer
end

-- Function to aim the camera at the nearest enemy's HumanoidRootPart
RunService.Heartbeat:Connect(function()
    if camlockState and enemy then
        if enemy.Parent and enemy.Parent:FindFirstChild("Humanoid") and enemy.Parent.Humanoid.Health > 0 then
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.p, enemy.Position + enemy.Velocity * Prediction)
        else
            -- Re-acquire a new target
            enemy = FindNearestEnemy()
        end
    end
end)

-- Screen GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Function to create a rainbow effect for UIStroke
local function createRainbowUIStroke(stroke)
    local hue = 0
    RunService.Heartbeat:Connect(function()
        hue = (hue + 1) % 360
        stroke.Color = Color3.fromHSV(hue / 360, 1, 1)
    end)
end

-- Create the Game Info TextLabel (Bottom Left)
local gameInfoLabel = Instance.new("TextLabel")
gameInfoLabel.Size = UDim2.new(0, 200, 0, 60)
gameInfoLabel.Position = UDim2.new(0, 10, 1, -70)
gameInfoLabel.BackgroundColor3 = Color3.new(0, 0, 0)
gameInfoLabel.BackgroundTransparency = 0.5
gameInfoLabel.TextColor3 = Color3.new(1, 1, 1)
gameInfoLabel.TextScaled = true
gameInfoLabel.TextWrapped = true
gameInfoLabel.Text = "Game Name: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
gameInfoLabel.Parent = screenGui

local gameInfoUICorner = Instance.new("UICorner")
gameInfoUICorner.CornerRadius = UDim.new(0, 10)
gameInfoUICorner.Parent = gameInfoLabel

local gameInfoUIStroke = Instance.new("UIStroke")
gameInfoUIStroke.Thickness = 3
gameInfoUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
gameInfoUIStroke.Parent = gameInfoLabel

createRainbowUIStroke(gameInfoUIStroke)

-- Create the "Aimbot Toggle" Button (Above Game Info Label)
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 200, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 1, -120)
toggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
toggleButton.BackgroundTransparency = 0.5
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.TextScaled = true
toggleButton.TextWrapped = true
toggleButton.Text = "Aimbot:OFF"
toggleButton.Parent = screenGui

local toggleUICorner = Instance.new("UICorner")
toggleUICorner.CornerRadius = UDim.new(0, 10)
toggleUICorner.Parent = toggleButton

local toggleUIStroke = Instance.new("UIStroke")
toggleUIStroke.Thickness = 3
toggleUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
toggleUIStroke.Parent = toggleButton

createRainbowUIStroke(toggleUIStroke)

-- Create the Username Label (Above Aimbot Button)
local usernameLabel = Instance.new("TextLabel")
usernameLabel.Size = UDim2.new(0, 200, 0, 40)
usernameLabel.Position = UDim2.new(0, 10, 1, -170)
usernameLabel.BackgroundColor3 = Color3.new(0, 0, 0)
usernameLabel.BackgroundTransparency = 0.5
usernameLabel.TextColor3 = Color3.new(1, 1, 1)
usernameLabel.TextScaled = true
usernameLabel.TextWrapped = true
usernameLabel.Text = "Username: " .. LocalPlayer.Name
usernameLabel.Parent = screenGui

local usernameUICorner = Instance.new("UICorner")
usernameUICorner.CornerRadius = UDim.new(0, 10)
usernameUICorner.Parent = usernameLabel

local usernameUIStroke = Instance.new("UIStroke")
usernameUIStroke.Thickness = 3
usernameUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
usernameUIStroke.Parent = usernameLabel

createRainbowUIStroke(usernameUIStroke)

-- Create the Rainbow Outline Frame (Above Username Label)
local rainbowFrame = Instance.new("Frame")
rainbowFrame.Size = UDim2.new(0, 200, 0, 60)
rainbowFrame.Position = UDim2.new(0, 10, 1, -230)
rainbowFrame.BackgroundColor3 = Color3.new(0, 0, 0)
rainbowFrame.BackgroundTransparency = 0.5
rainbowFrame.Parent = screenGui

local rainbowFrameUICorner = Instance.new("UICorner")
rainbowFrameUICorner.CornerRadius = UDim.new(0, 10)
rainbowFrameUICorner.Parent = rainbowFrame

local rainbowFrameUIStroke = Instance.new("UIStroke")
rainbowFrameUIStroke.Thickness = 3
rainbowFrameUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
rainbowFrameUIStroke.Parent = rainbowFrame

createRainbowUIStroke(rainbowFrameUIStroke)

-- Create FPS and Ping Labels (Inside the Rainbow Frame)
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(1, 0, 0.5, 0)
fpsLabel.Position = UDim2.new(0, 0, 0, 0)
fpsLabel.BackgroundTransparency = 1
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.TextScaled = true
fpsLabel.TextWrapped = true
fpsLabel.Text = "FPS: Calculating..."
fpsLabel.Parent = rainbowFrame

local pingLabel = Instance.new("TextLabel")
pingLabel.Size = UDim2.new(1, 0, 0.5, 0)
pingLabel.Position = UDim2.new(0, 0, 0.5, 0)
pingLabel.BackgroundTransparency = 1
pingLabel.TextColor3 = Color3.new(1, 1, 1)
pingLabel.TextScaled = true
pingLabel.TextWrapped = true
pingLabel.Text = "Ping: Calculating..."
pingLabel.Parent = rainbowFrame

-- Function to update FPS and Ping
local lastTime = tick()
local frameCount = 0

local function updateFPSAndPing()
    RunService.Heartbeat:Connect(function()
        frameCount = frameCount + 1
        local currentTime = tick()
        if currentTime - lastTime >= 1 then
            local fps = frameCount / (currentTime - lastTime)
            fpsLabel.Text = string.format("FPS: %.0f", fps)
            lastTime = currentTime
            frameCount = 0
        end

        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        pingLabel.Text = "Ping: " .. ping
    end)
end

-- Initialize FPS and Ping updates
updateFPSAndPing()

-- Toggle Aimbot Functionality
local function toggleAimbot()
    camlockState = not camlockState
    if camlockState then
        enemy = FindNearestEnemy()
        toggleButton.Text = "Aimbot:ON"
    else
        toggleButton.Text = "Aimbot:OFF"
        enemy = nil
    end
end

toggleButton.MouseButton1Click:Connect(toggleAimbot)

-- Handle Keybind for toggling camlock (T key)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.T then
        toggleAimbot()
    end
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Function to create a rainbow effect for UIStroke
local function createRainbowUIStroke(stroke)
    local hue = 0
    RunService.Heartbeat:Connect(function()
        hue = (hue + 1) % 360
        stroke.Color = Color3.fromHSV(hue / 360, 1, 1)
    end)
end

-- Create a toggle button to show/hide the aimbot button and rainbow frame
local toggleVisibilityButton = Instance.new("TextButton")
toggleVisibilityButton.Size = UDim2.new(0, 100, 0, 30)
toggleVisibilityButton.Position = UDim2.new(1, -110, 0, 10) -- Position it at the top right corner
toggleVisibilityButton.BackgroundColor3 = Color3.new(0, 0, 0)
toggleVisibilityButton.BackgroundTransparency = 0.5
toggleVisibilityButton.TextColor3 = Color3.new(1, 1, 1)
toggleVisibilityButton.TextScaled = true
toggleVisibilityButton.TextWrapped = true
toggleVisibilityButton.Text = "Minimize"
toggleVisibilityButton.Parent = screenGui

-- Add UI corner
local toggleVisibilityUICorner = Instance.new("UICorner")
toggleVisibilityUICorner.CornerRadius = UDim.new(0, 10)
toggleVisibilityUICorner.Parent = toggleVisibilityButton

-- Add rainbow outline
local toggleVisibilityUIStroke = Instance.new("UIStroke")
toggleVisibilityUIStroke.Thickness = 3
toggleVisibilityUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
toggleVisibilityUIStroke.Parent = toggleVisibilityButton

createRainbowUIStroke(toggleVisibilityUIStroke)

-- Function to toggle visibility of the aimbot button, rainbow frame, usernameLabel, and gameInfoLabel
local function toggleVisibility()
  toggleButton.Visible = not toggleButton.Visible
  rainbowFrame.Visible = not rainbowFrame.Visible
  usernameLabel.Visible = not usernameLabel.Visible
  gameInfoLabel.Visible = not gameInfoLabel.Visible
  fpsLabel.Visible = not fpsLabel.Visible
  pingLabel.Visible = not pingLabel.Visible

  toggleVisibilityButton.Text = toggleButton.Visible and "Minimize" or "Minimized"
end

toggleVisibilityButton.MouseButton1Click:Connect(toggleVisibility)


-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


-- Handle player respawn to re-acquire target
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if camlockState then
            enemy = FindNearestEnemy()
        end
    end)
end)

-- Re-acquire the nearest enemy when other players respawn
Players.PlayerRemoving:Connect(function(player)
    if player == enemy.Parent then
        enemy = FindNearestEnemy()
    end
end)

-- Initialize the script
enemy = FindNearestEnemy()