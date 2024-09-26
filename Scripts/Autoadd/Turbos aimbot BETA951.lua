local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local camera = workspace.CurrentCamera

-- Customizable parameters
local settings = {
    fovRadius = 100,  -- Radius of the FOV circle in pixels
    fovCircleColor = Color3.fromRGB(255, 0, 0),  -- Color of the FOV circle
    fovCircleTransparency = 0.5,  -- Transparency of the FOV circle
    lockOnTextColor = Color3.new(1, 0, 0),  -- Color of the lock-on text
    lockOnTextSize = 20,  -- Size of the lock-on text
    wallCheckEnabled = true,  -- Enable or disable wall check
    guiOnRespawn = true,  -- Whether to keep or close GUI on respawn
    hitParts = {"Head", "HumanoidRootPart", "Torso"},  -- List of customizable hit parts
}

local aimAssistEnabled = false  -- Start with aim assist disabled
local fovCircle, lockOnLabel

-- Function to create or recreate the GUI
local function createGui()
    -- Remove existing GUI if it exists
    local existingGui = player:FindFirstChild("LockOnGui")
    if existingGui then
        existingGui:Destroy()
    end

    -- Create the GUI dynamically
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LockOnGui"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Create a Frame for the FOV circle
    fovCircle = Instance.new("Frame")
    fovCircle.Size = UDim2.new(0, settings.fovRadius * 2, 0, settings.fovRadius * 2)  -- Diameter of the circle
    fovCircle.Position = UDim2.new(0.5, -settings.fovRadius, 0.5, -settings.fovRadius)  -- Centered on screen
    fovCircle.BackgroundColor3 = settings.fovCircleColor  -- Customizable color
    fovCircle.BackgroundTransparency = settings.fovCircleTransparency  -- Customizable transparency
    fovCircle.BorderSizePixel = 0
    fovCircle.Parent = screenGui

    -- Add a UICorner to make the Frame a circle
    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0.5, 0)  -- Makes the frame a circle
    uicorner.Parent = fovCircle

    -- Create a TextLabel for lock-on notification
    lockOnLabel = Instance.new("TextLabel")
    lockOnLabel.Size = UDim2.new(0.3, 0, 0.1, 0)  -- Adjust size (30% width, 10% height)
    lockOnLabel.Position = UDim2.new(0.35, 0, 0.9, 0)  -- Position near the bottom center of the screen
    lockOnLabel.BackgroundTransparency = 0.5  -- Semi-transparent background
    lockOnLabel.Text = ""  -- Start with no text
    lockOnLabel.TextColor3 = settings.lockOnTextColor  -- Customizable text color
    lockOnLabel.TextScaled = true  -- Scale text to fit the label
    lockOnLabel.TextSize = settings.lockOnTextSize  -- Customizable text size
    lockOnLabel.TextStrokeTransparency = 0.8  -- Optional: add stroke for better visibility
    lockOnLabel.Visible = false  -- Hide by default
    lockOnLabel.Parent = screenGui

    return screenGui
end

-- Function to check if a body part is within the FOV circle
local function isInFOV(part)
    local screenPoint, onScreen = camera:WorldToScreenPoint(part.Position)
    local targetPosition = Vector2.new(screenPoint.X, screenPoint.Y)
    local fovCenter = Vector2.new(fovCircle.AbsolutePosition.X + settings.fovRadius, fovCircle.AbsolutePosition.Y + settings.fovRadius)
    local distanceToFOVCenter = (targetPosition - fovCenter).Magnitude

    -- Return true if the part is within or on the edge of the FOV circle
    return distanceToFOVCenter <= settings.fovRadius
end

-- Function to check line-of-sight
local function isInLineOfSight(targetCharacter)
    local rayOrigin = camera.CFrame.Position
    local targetPart = targetCharacter:FindFirstChild(settings.hitParts[1])
    
    if not targetPart then return false end

    local rayDirection = (targetPart.Position - rayOrigin).unit * (rayOrigin - targetPart.Position).magnitude
    local ray = Ray.new(rayOrigin, rayDirection)
    local part, position = workspace:FindPartOnRay(ray, player.Character)

    -- Return true if the ray does not hit any part other than the player's character
    return not part or part:IsDescendantOf(targetCharacter)
end

-- Function to find the closest player and check FOV, line-of-sight, and wall check
local function findClosestPlayer()
    local closestPlayer = nil
    local closestHitPart = nil
    local shortestDistance = math.huge  -- Start with a large distance

    -- Loop through all players
    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character then
            local character = targetPlayer.Character
            local closestPart = nil
            local closestPartDistance = math.huge

            -- Collect all parts specified in hitParts setting
            for _, partName in ipairs(settings.hitParts) do
                local part = character:FindFirstChild(partName)
                if part then
                    -- Check if the part is within FOV and calculate the distance
                    if isInFOV(part) then
                        local screenPoint, onScreen = camera:WorldToScreenPoint(part.Position)
                        local distanceToCrosshair = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        
                        -- Select the closest part to the crosshair
                        if distanceToCrosshair < closestPartDistance and onScreen then
                            closestPart = part
                            closestPartDistance = distanceToCrosshair
                        end
                    end
                end
            end

            if closestPart then
                if not settings.wallCheckEnabled or isInLineOfSight(character) then
                    if closestPartDistance < shortestDistance then
                        closestPlayer = targetPlayer
                        closestHitPart = closestPart
                        shortestDistance = closestPartDistance
                    end
                end
            end
        end
    end

    -- Return the closest player and their closest hit part (or nil if no valid target is found)
    return closestPlayer, closestHitPart
end

-- Function to smoothly lock onto the target's selected hit part
RunService.RenderStepped:Connect(function()
    if aimAssistEnabled then
        local targetPlayer, targetPart = findClosestPlayer()
        
        if targetPlayer and targetPart then
            -- Update lock-on label text size and visibility
            lockOnLabel.TextSize = settings.lockOnTextSize
            lockOnLabel.Visible = true
            lockOnLabel.Text = "Locked onto: " .. targetPlayer.Name  -- Display player's name

            -- Calculate the direction to the target's closest hit part
            if targetPart then
                local targetPosition = targetPart.Position
                local aimDirection = (targetPosition - camera.CFrame.Position).unit

                -- Instantly lock onto the target part
                camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + aimDirection)
            end
        else
            -- Hide the GUI if no target is locked onto
            lockOnLabel.Visible = false
        end
    else
        -- Hide the GUI when aim assist is disabled
        lockOnLabel.Visible = false
    end
end)

-- Enable aim assist when "E" is pressed
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        aimAssistEnabled = true
    end
end)

-- Disable aim assist when "E" is released
UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        aimAssistEnabled = false
    end
end)

-- Handle player respawn
local function onCharacterAdded(character)
    if settings.guiOnRespawn then
        -- Create or recreate the GUI when the player respawns
        createGui()
    end
end

-- Connect to the player's character added event
player.CharacterAdded:Connect(onCharacterAdded)

-- Initialize GUI on script start if character is already loaded
if player.Character then
    createGui()
end
