local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = game.Workspace.CurrentCamera
local localPlayer = Players.LocalPlayer

local aimKey = Enum.KeyCode.E  -- Key to enable aimbot
local fov = 200  -- Field of view for aimbot
local espEnabled = true  -- Toggle for ESP
local espLines = {}

-- Create ESP line function
local function createESPLine()
    local line = Drawing.new("Line")
    line.Color = Color3.new(1, 0, 0)  -- Red line for enemies
    line.Thickness = 2
    line.Transparency = 1
    return line
end

-- Update ESP for each player
local function updateESPLine(line, target)
    local head = target.Character and target.Character:FindFirstChild("Head")
    if head then
        local headPosition = Camera:WorldToViewportPoint(head.Position)
        line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)  -- Start from bottom center
        line.To = Vector2.new(headPosition.X, headPosition.Y)  -- End at head position
        line.Visible = true
    else
        line.Visible = false
    end
end

-- Raycasting to check if there's a wall between local player and target
local function isVisible(target)
    if target and target.Character and target.Character:FindFirstChild("Head") then
        local origin = Camera.CFrame.Position
        local targetPosition = target.Character.Head.Position
        local ray = Ray.new(origin, (targetPosition - origin).unit * 1000)
        local part, hitPosition = workspace:FindPartOnRay(ray, localPlayer.Character)

        if part then
            -- Check if the part hit is part of the target character
            return part:IsDescendantOf(target.Character)
        end
    end
    return false
end

-- Get distance from center of the screen
local function getDistanceFromCenter(position)
    local screenCenter = Camera.ViewportSize / 2
    return (Vector2.new(position.X, position.Y) - screenCenter).Magnitude
end

-- Find the closest visible enemy in the FOV and check team
local function getClosestEnemyInFOV()
    local closestEnemy = nil
    local shortestDistance = fov

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Team ~= localPlayer.Team and player.Character and player.Character:FindFirstChild("Head") then
            local headPosition = Camera:WorldToViewportPoint(player.Character.Head.Position)
            local distance = getDistanceFromCenter(headPosition)

            -- Check if player is within the FOV and is visible (not behind a wall)
            if distance < shortestDistance and isVisible(player) then
                closestEnemy = player
                shortestDistance = distance
            end
        end
    end

    return closestEnemy
end

-- Lock the camera onto a player's head
local function aimAt(target)
    if target and target.Character and target.Character:FindFirstChild("Head") then
        local headPosition = target.Character.Head.Position
        local lookVector = (headPosition - Camera.CFrame.Position).unit
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + lookVector)
    end
end

-- Continuously update aimbot and ESP lines
RunService.RenderStepped:Connect(function()
    -- Aimbot functionality
    if UserInputService:IsKeyDown(aimKey) then
        local closestEnemy = getClosestEnemyInFOV()
        if closestEnemy then
            aimAt(closestEnemy)
        end
    end

    -- ESP functionality
    if espEnabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Team ~= localPlayer.Team then
                if not espLines[player] then
                    espLines[player] = createESPLine()
                end
                updateESPLine(espLines[player], player)
            elseif espLines[player] then
                espLines[player].Visible = false
            end
        end
    end
end)

-- Handle players joining and leaving
Players.PlayerAdded:Connect(function(player)
    if player.Team ~= localPlayer.Team and espEnabled then
        espLines[player] = createESPLine()
    end
end)

Players.PlayerRemoving:Connect(function(player)
    if espLines[player] then
        espLines[player]:Remove()
        espLines[player] = nil
    end
end)