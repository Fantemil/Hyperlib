local Config = {
    Fov = 40,
    Smoothness = 0.6,
    Prediction = 0.03,
    TargetPart = "Head",
    TeamCheck = false,
    WallCheck = false,
    FovColor = Color3.fromRGB(65, 105, 225)
}

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Camera = workspace.CurrentCamera

local fovCircle = Drawing.new("Circle")
fovCircle.Visible = true
fovCircle.Thickness = 2
fovCircle.Color = Config.FovColor
fovCircle.Filled = false
fovCircle.Radius = Config.Fov
fovCircle.Position = Camera.ViewportSize / 2

local function Health(player)
    local character = player.Character
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function TeamCheck(player)
    return Config.TeamCheck and player.Team == Players.LocalPlayer.Team
end

local function WallCheck(player)
    if not Config.WallCheck then return true end

    local character = player.Character
    if character and character:FindFirstChild(Config.TargetPart) then
        local targetPart = character[Config.TargetPart]
        local origin = Camera.CFrame.Position
        local direction = (targetPart.Position - origin)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {Players.LocalPlayer.Character, player.Character}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

        local raycastResult = workspace:Raycast(origin, direction.Unit * direction.Magnitude, raycastParams)

        return raycastResult == nil
    end
    return false
end

local function Closest()
    local closest, minDist = nil, math.huge
    local screenCenter = Camera.ViewportSize / 2

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and Health(player) and not TeamCheck(player) and WallCheck(player) then
            local targetPart = player.Character and player.Character:FindFirstChild(Config.TargetPart)
            if targetPart then
                local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
                local distance = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude

                if onScreen and distance < minDist and distance < Config.Fov then
                    minDist = distance
                    closest = player
                end
            end
        end
    end

    return closest
end

local function Predict(position, velocity)
    return position + velocity * Config.Prediction
end

local function Aim(target)
    local predictedPos = Predict(target.Position, target.Velocity)
    local direction = (predictedPos - Camera.CFrame.Position).Unit
    Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + direction), Config.Smoothness)
end

local function UpdateFov()
    fovCircle.Position = Camera.ViewportSize / 2
end

RunService.RenderStepped:Connect(function()
    UpdateFov()
    local closest = Closest()

    if closest and closest.Character:FindFirstChild(Config.TargetPart) then
        Aim(closest.Character[Config.TargetPart])
    end
end)