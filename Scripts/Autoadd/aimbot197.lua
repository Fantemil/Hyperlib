local settings = {
    aimbotEnabled = false,
    aimbotKey = Enum.UserInputType.MouseButton2,
    fovRadius = 150,
    fovColor = Color3.fromRGB(255, 255, 255),
    fovThickness = 2,
    aimPart = "Head",
    teamCheck = true,
    useWhitelistedTeams = false,
    whitelistedTeams = {"Team1", "Team2"},
    whitelistedPlayers = {"Player1", "Player2"},
    espFontSize = 16,
    espEnabled = true,
    wallCheckEnabled = true,
}

local fovCircle = Drawing.new("Circle")
fovCircle.Visible = false
fovCircle.Radius = settings.fovRadius
fovCircle.Color = settings.fovColor
fovCircle.Thickness = settings.fovThickness
fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

local currentTarget = nil
local espObjects = {}

local function isInFOV(targetPosition, camera)
    local screenPoint = camera:WorldToViewportPoint(targetPosition)
    local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - screenCenter).Magnitude
    return screenPoint.Z > 0 and distanceFromCenter < settings.fovRadius
end

local function shouldAvoidAimingAt(player)
    if settings.teamCheck then
        if player.Team then
            if player.Team == game.Players.LocalPlayer.Team then
                return true
            end
            if settings.useWhitelistedTeams then
                for _, teamName in pairs(settings.whitelistedTeams) do
                    if player.Team.Name == teamName then
                        return true
                    end
                end
            end
        end
    end
    for _, playerName in pairs(settings.whitelistedPlayers) do
        if player.Name == playerName then
            return true
        end
    end
    return false
end

local function isVisible(targetPart)
    if not settings.wallCheckEnabled then
        return true
    end
    
    local origin = workspace.CurrentCamera.CFrame.Position
    local direction = (targetPart.Position - origin).unit * 1000
    local ray = Ray.new(origin, direction)
    local hit, _ = workspace:FindPartOnRayWithIgnoreList(ray, {workspace.CurrentCamera, game.Players.LocalPlayer.Character})
    
    return hit and hit:IsDescendantOf(targetPart.Parent)
end

local function findClosestTarget(camera)
    local closestPlayer = nil
    local closestDistance = settings.fovRadius

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and not shouldAvoidAimingAt(player) then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild(settings.aimPart) then
                local targetPosition = character.HumanoidRootPart.Position
                if isInFOV(targetPosition, camera) and isVisible(character[settings.aimPart]) then
                    local screenPoint = camera:WorldToViewportPoint(targetPosition)
                    local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - fovCircle.Position).Magnitude
                    if distanceFromCenter < closestDistance then
                        closestPlayer = character
                        closestDistance = distanceFromCenter
                    end
                end
            end
        end
    end

    return closestPlayer
end

local function aimAt(target)
    if not target then return end
    local targetPart = target:FindFirstChild(settings.aimPart)
    if not targetPart then return end
    local targetPosition = targetPart.Position
    local camera = workspace.CurrentCamera
    
    local aimDirection = (targetPosition - camera.CFrame.Position).unit
    local newCFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + aimDirection)
    
    camera.CFrame = newCFrame
end

local function createESP(player)
    local espBox = Drawing.new("Square")
    espBox.Visible = false
    espBox.Color = settings.fovColor
    espBox.Thickness = 2
    espBox.Filled = false

    local espText = Drawing.new("Text")
    espText.Visible = false
    espText.Color = settings.fovColor
    espText.Size = settings.espFontSize
    espText.Center = true
    espText.Outline = true
    espText.Font = Drawing.Fonts.UI

    espObjects[player] = {box = espBox, text = espText}
end

local function updateESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Team ~= game.Players.LocalPlayer.Team then
            if not espObjects[player] then
                createESP(player)
            end
            
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = character.HumanoidRootPart
                local screenPoint = workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)

                if screenPoint.Z > 0 then
                    local boxWidth = 50
                    local boxHeight = 75

                    espObjects[player].box.Position = Vector2.new(screenPoint.X - boxWidth / 2, screenPoint.Y - boxHeight / 2)
                    espObjects[player].box.Size = Vector2.new(boxWidth, boxHeight)
                    espObjects[player].box.Visible = true

                    espObjects[player].text.Position = Vector2.new(screenPoint.X, screenPoint.Y - boxHeight / 2 - 20)
                    espObjects[player].text.Text = player.Name
                    espObjects[player].text.Visible = true
                else
                    espObjects[player].box.Visible = false
                    espObjects[player].text.Visible = false
                end
            else
                espObjects[player].box.Visible = false
                espObjects[player].text.Visible = false
            end
        elseif espObjects[player] then
            espObjects[player].box.Visible = false
            espObjects[player].text.Visible = false
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    if settings.aimbotEnabled then
        fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
        fovCircle.Visible = true

        local camera = workspace.CurrentCamera

        if currentTarget and currentTarget.Parent then
            if isInFOV(currentTarget.HumanoidRootPart.Position, camera) and isVisible(currentTarget[settings.aimPart]) then
                aimAt(currentTarget)
            else
                currentTarget = findClosestTarget(camera)
                if currentTarget then
                    aimAt(currentTarget)
                end
            end
        else
            currentTarget = findClosestTarget(camera)
            if currentTarget then
                aimAt(currentTarget)
            end
        end
    else
        fovCircle.Visible = false
        currentTarget = nil
    end

    if settings.espEnabled then
        updateESP()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == settings.aimbotKey then
        settings.aimbotEnabled = not settings.aimbotEnabled
        fovCircle.Visible = settings.aimbotEnabled
        if not settings.aimbotEnabled then
            currentTarget = nil
        end
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if espObjects[player] then
        espObjects[player].box:Remove()
        espObjects[player].text:Remove()
        espObjects[player] = nil
    end
end)
