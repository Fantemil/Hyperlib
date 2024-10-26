local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Customizable parameters
local settings = {
    fovRadius = 100,  -- Radius of the FOV circle in pixels
    fovCircleColor = Color3.fromRGB(255, 0, 0),  -- Color of the FOV circle
    fovCircleTransparency = 0.5,  -- Transparency of the FOV circle
    lockOnTextColor = Color3.new(1, 0, 0),  -- Color of the lock-on text
    lockOnTextSize = 20,  -- Size of the lock-on text
    wallCheckEnabled = true,  -- Enable or disable wall check
    hitParts = {"Head", "HumanoidRootPart", "Torso", "UpperTorso", "LowerTorso"}  -- Customizable hit parts
}

local aimAssistEnabled = false
local fovCircle, lockOnLabel

-- Function to create or recreate the GUI
local function createGui()
    -- Remove existing GUI if it exists
    local existingGui = player.PlayerGui:FindFirstChild("UniversalAimAssistGui")
    if existingGui then
        existingGui:Destroy()
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "UniversalAimAssistGui"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- FOV Circle
    fovCircle = Instance.new("Frame")
    fovCircle.Size = UDim2.new(0, settings.fovRadius * 2, 0, settings.fovRadius * 2)
    fovCircle.Position = UDim2.new(0.5, -settings.fovRadius, 0.5, -settings.fovRadius)
    fovCircle.BackgroundColor3 = settings.fovCircleColor
    fovCircle.BackgroundTransparency = settings.fovCircleTransparency
    fovCircle.BorderSizePixel = 0
    fovCircle.Parent = screenGui

    -- Make the frame circular
    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0.5, 0)
    uicorner.Parent = fovCircle

    -- Lock-On Label
    lockOnLabel = Instance.new("TextLabel")
    lockOnLabel.Size = UDim2.new(0.3, 0, 0.1, 0)
    lockOnLabel.Position = UDim2.new(0.35, 0, 0.9, 0)
    lockOnLabel.BackgroundTransparency = 0.5
    lockOnLabel.Text = ""
    lockOnLabel.TextColor3 = settings.lockOnTextColor
    lockOnLabel.TextScaled = true
    lockOnLabel.TextSize = settings.lockOnTextSize
    lockOnLabel.Visible = false
    lockOnLabel.Parent = screenGui
end

-- Function to check if a part is within the FOV
local function isInFOV(part)
    if not part then return false end
    local screenPoint, onScreen = camera:WorldToScreenPoint(part.Position)
    local targetPosition = Vector2.new(screenPoint.X, screenPoint.Y)
    local fovCenter = Vector2.new(fovCircle.AbsolutePosition.X + settings.fovRadius, fovCircle.AbsolutePosition.Y + settings.fovRadius)
    return (targetPosition - fovCenter).Magnitude <= settings.fovRadius and onScreen
end

-- Function to check line-of-sight
local function isInLineOfSight(part)
    if not part then return false end
    local rayOrigin = camera.CFrame.Position
    local direction = (part.Position - rayOrigin).unit * (part.Position - rayOrigin).Magnitude
    local ray = Ray.new(rayOrigin, direction)
    local hitPart = workspace:FindPartOnRay(ray, player.Character)

    return not hitPart or hitPart:IsDescendantOf(part.Parent)
end

-- Function to find the closest valid player based on custom hit parts
local function findClosestPlayer()
    local closestPlayer, closestPart, shortestDistance = nil, nil, math.huge

    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character then
            local character = targetPlayer.Character
            for _, partName in ipairs(settings.hitParts) do
                local part = character:FindFirstChild(partName)
                if part and isInFOV(part) then
                    local screenPoint, onScreen = camera:WorldToScreenPoint(part.Position)
                    local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)).Magnitude
                    if distance < shortestDistance and onScreen then
                        if not settings.wallCheckEnabled or isInLineOfSight(part) then
                            closestPlayer = targetPlayer
                            closestPart = part
                            shortestDistance = distance
                        end
                    end
                end
            end
        end
    end

    return closestPlayer, closestPart
end

-- Function to lock onto the target
RunService.RenderStepped:Connect(function()
    if aimAssistEnabled then
        local targetPlayer, targetPart = findClosestPlayer()

        if targetPlayer and targetPart then
            lockOnLabel.Text = "Locked onto: " .. targetPlayer.Name
            lockOnLabel.Visible = true
            local aimDirection = (targetPart.Position - camera.CFrame.Position).unit
            camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + aimDirection)
        else
            lockOnLabel.Visible = false
        end
    else
        lockOnLabel.Visible = false
    end
end)

-- Enable and disable aim assist with the "E" key
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        aimAssistEnabled = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        aimAssistEnabled = false
    end
end)

-- Handle respawn and GUI recreation
player.CharacterAdded:Connect(function()
    createGui()
end)

-- Initialize the GUI when the script starts
if player.Character then
    createGui()
end
