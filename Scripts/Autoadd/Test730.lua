-- Configuration
local config = {
    TeamCheck = false,   -- Set to true to only target players on different teams
    FOV = 150,           -- Field of View
    Smoothing = 1,       -- Camera smoothing factor
    KeyToToggle = Enum.KeyCode.F, -- Key to toggle the aimbot
}

-- Services
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- GUI
local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Radius = config.FOV
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = workspace.CurrentCamera.ViewportSize / 2

-- Function to get the closest visible player
local function getClosestVisiblePlayer(camera)
    local ray = Ray.new(camera.CFrame.Position, camera.CFrame.LookVector)
    local closestPlayer = nil
    local closestDistance = math.huge
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("Head") then
                local headPosition = character.Head.Position
                local targetPosition = ray:ClosestPoint(headPosition)
                local distance = (targetPosition - headPosition).Magnitude
                
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    
    return closestPlayer
end

-- Function to toggle the aimbot
local aimbotEnabled = false

local function toggleAimbot()
    aimbotEnabled = not aimbotEnabled
    FOVring.Visible = aimbotEnabled
end

-- Function to update the aimbot
local function updateAimbot()
    if aimbotEnabled then
        local currentCamera = workspace.CurrentCamera
        local crosshairPosition = currentCamera.ViewportSize / 2
        local closestPlayer = getClosestVisiblePlayer(currentCamera)
        
        if closestPlayer then
            local headPosition = closestPlayer.Character.Head.Position
            local headScreenPosition = currentCamera:WorldToScreenPoint(headPosition)
            local distanceToCrosshair = (Vector2.new(headScreenPosition.X, headScreenPosition.Y) - crosshairPosition).Magnitude
            
            if distanceToCrosshair < config.FOV then
                currentCamera.CFrame = currentCamera.CFrame:Lerp(CFrame.new(currentCamera.CFrame.Position, headPosition), config.Smoothing)
            end
        end
    end
end

-- Connect the toggleAimbot function to the toggle key
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == config.KeyToToggle then
        toggleAimbot()
    end
end)

-- Connect the updateAimbot function to the RenderStepped event
local aimbotConnection

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == config.KeyToToggle then
        if aimbotEnabled then
            FOVring:Remove()
            aimbotConnection:Disconnect()
        else
            FOVring.Position = workspace.CurrentCamera.ViewportSize / 2
            FOVring.Radius = config.FOV
            aimbotConnection = RunService.RenderStepped:Connect(updateAimbot)
        end
    end
end)
