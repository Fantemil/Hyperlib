local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GameRemotes = ReplicatedStorage:WaitForChild("GameRemotes")
local Attack = GameRemotes:WaitForChild("Attack")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local strafeEnabled = false -- you can set this to true or false to enable or disable strafing

-- Create UI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local targetGui = Instance.new("Frame")
targetGui.Size = UDim2.new(0, 275, 0, 120)
targetGui.Position = UDim2.new(0.5, -137.5, 0.7, 0)
targetGui.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
targetGui.BorderSizePixel = 1
targetGui.BorderColor3 = Color3.fromRGB(60, 60, 60)
targetGui.Visible = false
targetGui.Parent = screenGui

local uiGradient = Instance.new("UIGradient")
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 182, 193)), -- light pink
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 20, 147)), -- deep pink
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(173, 216, 230)) -- light blue
}
uiGradient.Parent = targetGui

local function animateBackground()
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
    local tween = TweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
    tween:Play()
end

animateBackground()

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = targetGui

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0.25, 0)
nameLabel.Position = UDim2.new(0, 0, 0, 5)
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.BackgroundTransparency = 1
nameLabel.Font = Enum.Font.GothamBold
nameLabel.TextSize = 14
nameLabel.Text = "Targeting: None"
nameLabel.Parent = targetGui

local healthLabel = Instance.new("TextLabel")
healthLabel.Size = UDim2.new(1, 0, 0.25, 0)
healthLabel.Position = UDim2.new(0, 0, 0.25, 5)
healthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
healthLabel.BackgroundTransparency = 1
healthLabel.Font = Enum.Font.Gotham
healthLabel.TextSize = 12
healthLabel.Text = "N/A"
healthLabel.Parent = targetGui

local healthBarBackground = Instance.new("Frame")
healthBarBackground.Size = UDim2.new(0.8, 0, 0.15, 0)
healthBarBackground.Position = UDim2.new(0.1, 0, 0.5, 0)
healthBarBackground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
healthBarBackground.Parent = targetGui

local healthBar = Instance.new("Frame")
healthBar.Size = UDim2.new(1, 0, 1, 0)
healthBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
healthBar.Parent = healthBarBackground

local uiCornerBar = Instance.new("UICorner")
uiCornerBar.CornerRadius = UDim.new(0, 10)
uiCornerBar.Parent = healthBarBackground

local tracer = Drawing.new("Line")
tracer.Thickness = 1

-- Function to get the closest player
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            local distance = (v.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance then
                closestPlayer = v.Character
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

local function updateHealthBar(currentHealth, maxHealth)
    healthBar:TweenSize(UDim2.new(currentHealth / maxHealth, 0, 1, 0), "Out", "Quad", 0.2, true)
end

local function fadeIn(target)
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(target, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

local function fadeOut(target)
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(target, tweenInfo, {BackgroundTransparency = 1})
    tween:Play()
end

-- Create neon purple circle parts around the player (complete circle)
local radius = 15 -- adjusting the radius to 15
local numParts = 36 -- number of parts to create the circle
local circleParts = {}

for i = 1, numParts do
    local part = Instance.new("Part")
    part.Anchored = true
    part.CanCollide = false
    part.Material = Enum.Material.Neon
    part.Color = Color3.fromRGB(128, 0, 255) -- making it more neon
    part.Size = Vector3.new(1, 0.1, (2 * math.pi * radius) / numParts) -- making sure parts connect seamlessly
    part.Transparency = 0
    part.Parent = workspace
    table.insert(circleParts, part)
end

local function updateCirclePosition()
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        for _, part in ipairs(circleParts) do
            part.Transparency = 1
        end
        return
    end

    local cframe = character.HumanoidRootPart.CFrame
    local angleIncrement = math.rad(360 / numParts)
    for i, part in ipairs(circleParts) do
        local angle = angleIncrement * i
        part.CFrame = cframe * CFrame.new(math.cos(angle) * radius, -2, math.sin(angle) * radius) * CFrame.Angles(0, -angle, 0)
        part.Transparency = 0
    end
end

RunService.RenderStepped:Connect(function()
    local mouseLoc = UserInputService:GetMouseLocation()
    local hue = tick() % 5 / 5
    tracer.Color = Color3.fromHSV(hue, 1, 1)

    local target = getClosestPlayer()
    if target then
        local humanoid = target:FindFirstChild("Humanoid")
        if humanoid then
            local health = math.floor(humanoid.Health)
            local maxHealth = math.floor(humanoid.MaxHealth)
            local distance = (target.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude

            nameLabel.Text = "Targeting: " .. target.Name
            healthLabel.Text = tostring(health)

            if health < maxHealth and distance <= 17 then
                healthBar.BackgroundColor3 = health > maxHealth * 0.5 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
                updateHealthBar(health, maxHealth)
                if not targetGui.Visible then
                    targetGui.Visible = true
                    fadeIn(targetGui)
                end

                if strafeEnabled and distance <= radius then
                    local strafeSpeed = 0.05 -- adjust the strafing speed here
                    local strafeAngle = math.rad((tick() * 100) % 360) -- continuous strafing
                    local strafeX = math.cos(strafeAngle) * 1 -- 1 stud horizontally
                    local strafeZ = math.sin(strafeAngle) * 1 -- 1 stud horizontally
                    player.Character:SetPrimaryPartCFrame(
                        target.Head.CFrame * CFrame.new(strafeX, 7, strafeZ) * CFrame.Angles(0, -strafeAngle, 0)
                    )
                end
            else
                if targetGui.Visible then
                    fadeOut(targetGui)
                    delay(0.5, function()
                        targetGui.Visible = false
                    end)
                end
            end

            local screenPosition, onScreen = workspace.CurrentCamera:WorldToViewportPoint(target.HumanoidRootPart.Position)
            if onScreen then
                tracer.From = Vector2.new(mouseLoc.X, mouseLoc.Y)
                tracer.To = Vector2.new(screenPosition.X, screenPosition.Y)
                tracer.Visible = true
            else
                tracer.Visible = false
            end
        end
    else
        nameLabel.Text = "Targeting: None"
        healthLabel.Text = "N/A"
        targetGui.Visible = false
        tracer.Visible = false
    end

    targetGui.BorderColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    updateCirclePosition()
end)

while true do
    task.wait(0.1)
    local target = getClosestPlayer()
    if target and target:FindFirstChild("Humanoid") and target.Humanoid.Health > 0 then
        local args = {target}
        Attack:InvokeServer(unpack(args))
    end
end
