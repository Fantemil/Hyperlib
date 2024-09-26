local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

local BoxESPEnabled = true
local BoxColor = Color3.fromRGB(0, 255, 0)
local BoxTransparency = 0.5
local BoxThickness = 2
local OuterGlowColor = Color3.fromRGB(0, 0, 0)
local OuterGlowThickness = 4
local Font = Drawing.Fonts.UI
local HealthBarThickness = 2

local HealthGradient = {
    Color3.fromRGB(255, 0, 0), 
    Color3.fromRGB(255, 165, 0), 
    Color3.fromRGB(0, 255, 0)
}

local function createBox()
    local box = Drawing.new("Square")
    box.Color = BoxColor
    box.Thickness = BoxThickness
    box.Transparency = BoxTransparency
    box.Filled = false

    local glow = Drawing.new("Square")
    glow.Color = OuterGlowColor
    glow.Thickness = OuterGlowThickness
    glow.Transparency = BoxTransparency
    glow.Filled = false

    local healthBar = Drawing.new("Square")
    healthBar.Thickness = HealthBarThickness
    healthBar.Transparency = 0.8
    healthBar.Filled = true

    local nameTag = Drawing.new("Text")
    nameTag.Color = Color3.fromRGB(255, 255, 255)
    nameTag.Size = 16
    nameTag.Center = true
    nameTag.Outline = true
    nameTag.Font = Font

    local distanceTag = Drawing.new("Text")
    distanceTag.Color = Color3.fromRGB(255, 255, 255)
    distanceTag.Size = 14
    distanceTag.Center = true
    distanceTag.Outline = true
    distanceTag.Font = Font

    return {box = box, glow = glow, healthBar = healthBar, nameTag = nameTag, distanceTag = distanceTag}
end

local function updateHealthColor(healthPercentage)
    if healthPercentage > 0.5 then
        return HealthGradient[2]:Lerp(HealthGradient[3], (healthPercentage - 0.5) * 2)
    else
        return HealthGradient[1]:Lerp(HealthGradient[2], healthPercentage * 2)
    end
end

local function updateBox(elements, player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid") then
        local rootPart = character.HumanoidRootPart
        local humanoid = character.Humanoid
        local pos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
        local distance = (Camera.CFrame.Position - rootPart.Position).magnitude

        if onScreen then
            local size = (Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(3, 3, 0)) - Camera:WorldToViewportPoint(rootPart.Position + Vector3.new(3, 3, 0))).magnitude
            elements.box.Size = Vector2.new(size, size * 2)
            elements.box.Position = Vector2.new(pos.X - size / 2, pos.Y - size)
            elements.box.Visible = true

            elements.glow.Size = Vector2.new(size, size * 2)
            elements.glow.Position = Vector2.new(pos.X - size / 2, pos.Y - size)
            elements.glow.Visible = true

            local healthPercentage = humanoid.Health / humanoid.MaxHealth
            elements.healthBar.Color = updateHealthColor(healthPercentage)
            elements.healthBar.Size = Vector2.new(HealthBarThickness, size * 2 * healthPercentage)
            elements.healthBar.Position = Vector2.new(pos.X - size / 2 - 6, pos.Y - size + size * 2 * (1 - healthPercentage))
            elements.healthBar.Visible = true

            elements.nameTag.Position = Vector2.new(pos.X, pos.Y - size - 20)
            elements.nameTag.Text = player.Name .. " (" .. math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth) .. ")"
            elements.nameTag.Visible = true

            elements.distanceTag.Position = Vector2.new(pos.X, pos.Y + size + 10)
            elements.distanceTag.Text = math.floor(distance) .. " Studs"
            elements.distanceTag.Visible = true

            for _, corner in pairs({"TopLeft", "TopRight", "BottomLeft", "BottomRight"}) do
                if not elements[corner] then
                    elements[corner] = Drawing.new("Circle")
                    elements[corner].Color = BoxColor
                    elements[corner].Radius = 4
                    elements[corner].Transparency = BoxTransparency
                    elements[corner].Filled = true
                end
                elements[corner].Visible = true
                if corner == "TopLeft" then
                    elements[corner].Position = Vector2.new(elements.box.Position.X, elements.box.Position.Y)
                elseif corner == "TopRight" then
                    elements[corner].Position = Vector2.new(elements.box.Position.X + size, elements.box.Position.Y)
                elseif corner == "BottomLeft" then
                    elements[corner].Position = Vector2.new(elements.box.Position.X, elements.box.Position.Y + size * 2)
                else
                    elements[corner].Position = Vector2.new(elements.box.Position.X + size, elements.box.Position.Y + size * 2)
                end
            end
        else
            elements.box.Visible = false
            elements.glow.Visible = false
            elements.healthBar.Visible = false
            elements.nameTag.Visible = false
            elements.distanceTag.Visible = false
            for _, corner in pairs({"TopLeft", "TopRight", "BottomLeft", "BottomRight"}) do
                if elements[corner] then
                    elements[corner].Visible = false
                end
            end
        end
    else
        elements.box.Visible = false
        elements.glow.Visible = false
        elements.healthBar.Visible = false
        elements.nameTag.Visible = false
        elements.distanceTag.Visible = false
        for _, corner in pairs({"TopLeft", "TopRight", "BottomLeft", "BottomRight"}) do
            if elements[corner] then
                elements[corner].Visible = false
            end
        end
    end
end

local function setupPlayer(player)
    if player ~= Players.LocalPlayer then
        local elements = createBox()
        RunService.RenderStepped:Connect(function()
            if BoxESPEnabled then
                updateBox(elements, player)
            else
                elements.box.Visible = false
                elements.glow.Visible = false
                elements.healthBar.Visible = false
                elements.nameTag.Visible = false
                elements.distanceTag.Visible = false
                for _, corner in pairs({"TopLeft", "TopRight", "BottomLeft", "BottomRight"}) do
                    if elements[corner] then
                        elements[corner].Visible = false
                    end
                end
            end
        end)
    end
end

Players.PlayerAdded:Connect(setupPlayer)
for _, player in ipairs(Players:GetPlayers()) do
    setupPlayer(player)
end

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F2 then
        BoxESPEnabled = not BoxESPEnabled
    end
end)
