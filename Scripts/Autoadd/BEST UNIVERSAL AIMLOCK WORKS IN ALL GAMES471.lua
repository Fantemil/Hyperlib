local aimbotEnabled = false
local aimbotToggleKey = Enum.KeyCode.E -- Key to toggle aimbot
local aimbotFOV = 360 -- Full circle FOV for rage aimbot
local aimbotMaxRange = 1000

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local FOVCircle = Drawing.new("Circle")
FOVCircle.Color = Color3.fromRGB(255, 0, 0) -- Red circle for rage aimbot
FOVCircle.Thickness = 2
FOVCircle.NumSides = 32
FOVCircle.Radius = aimbotFOV / 2
FOVCircle.Visible = false -- Initially hidden

local SnapLine = Drawing.new("Line")
SnapLine.Color = Color3.fromRGB(255, 0, 0) -- Red snap line for rage aimbot
SnapLine.Thickness = 2
SnapLine.Visible = false -- Initially hidden

local HeadDot = Drawing.new("Circle")
HeadDot.Color = Color3.fromRGB(255, 0, 0) -- Red head dot for rage aimbot
HeadDot.Thickness = 2
HeadDot.NumSides = 32
HeadDot.Radius = 5
HeadDot.Visible = false -- Initially hidden

local DistanceLabels = {} -- Table to store distance labels

-- Function to create or update distance label
local function updateDistanceLabel(player, distance)
    if not DistanceLabels[player] then
        DistanceLabels[player] = Drawing.new("Text")
        DistanceLabels[player].Color = Color3.fromRGB(255, 255, 255)
        DistanceLabels[player].Size = 18
        DistanceLabels[player].Outline = true
        DistanceLabels[player].Center = true
    end
    
    local head = player.Character.Head
    local screenPoint, onScreen = Camera:WorldToViewportPoint(head.Position)
    if onScreen then
        DistanceLabels[player].Position = Vector2.new(screenPoint.X, screenPoint.Y - 30) -- Offset above the head
        DistanceLabels[player].Text = string.format("%.1f", distance) .. " studs" -- Display distance in studs
        DistanceLabels[player].Visible = true
    else
        DistanceLabels[player].Visible = false
    end
end

-- Function to update FOV circle position and size
local function updateFOVCircle()
    local viewportSize = Camera.ViewportSize
    FOVCircle.Position = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2) -- Center the circle in the middle of the screen
    FOVCircle.Radius = aimbotFOV / 2
end

-- Function to update snap line position
local function updateSnapLine(targetPosition)
    local viewportSize = Camera.ViewportSize
    SnapLine.From = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2) -- Start from the center of the screen
    local screenPoint, onScreen = Camera:WorldToViewportPoint(targetPosition)
    SnapLine.To = Vector2.new(screenPoint.X, screenPoint.Y)
    SnapLine.Visible = true
end

-- Function to update head dot position
local function updateHeadDot(targetPosition)
    local screenPoint, onScreen = Camera:WorldToViewportPoint(targetPosition)
    HeadDot.Position = Vector2.new(screenPoint.X, screenPoint.Y)
    HeadDot.Visible = true
end

-- Function to check if target is visible
local function isTargetVisible(targetPart)
    -- Implement your visibility check logic here
    return true
end

-- Function to get the closest player within FOV
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local distance = (head.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance and distance <= aimbotMaxRange then
                local screenPoint, onScreen = Camera:WorldToViewportPoint(head.Position)
                local viewportSize = Camera.ViewportSize
                local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(viewportSize.X / 2, viewportSize.Y / 2)).magnitude
                if distanceFromCenter <= aimbotFOV / 2 and isTargetVisible(head) then
                    shortestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end

    return closestPlayer, shortestDistance
end

-- Toggle aimbot on key press
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == aimbotToggleKey then
        aimbotEnabled = not aimbotEnabled
        FOVCircle.Visible = aimbotEnabled
        SnapLine.Visible = aimbotEnabled
        HeadDot.Visible = aimbotEnabled
        print("Aimbot toggled: " .. tostring(aimbotEnabled))
    end
end)

-- Aimbot logic
RunService.RenderStepped:Connect(function()
    updateFOVCircle()

    local closestPlayer, shortestDistance = getClosestPlayer()

    -- Update distance labels for all players
    for player, label in pairs(DistanceLabels) do
        if player.Character and player.Character:FindFirstChild("Head") then
            local distance = (player.Character.Head.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            updateDistanceLabel(player, distance)
        else
            label.Visible = false
        end
    end

    if aimbotEnabled and closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
        local head = closestPlayer.Character.Head
        updateSnapLine(head.Position)
        updateHeadDot(head.Position)
        local targetCFrame = CFrame.new(Camera.CFrame.Position, head.Position)
        Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, 1) -- Instant lock-on with no smoothing
        updateDistanceLabel(closestPlayer, shortestDistance)
    else
        SnapLine.Visible = false
        HeadDot.Visible = false
    end
end)
