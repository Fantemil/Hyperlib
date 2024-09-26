local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Game Enhancer Pro", HidePremium = false, SaveConfig = true, ConfigFolder = "GameEnhancerPro"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera

-- ConfiguraciÃ³n
local Config = {
    ESP = {
        Enabled = true,
        ShowDistance = true,
        ShowHealth = true,
        ShowTeam = true,
        BoxESP = true,
        TracerESP = true
    },
    Aimbot = {
        Enabled = true,
        Key = Enum.UserInputType.MouseButton2,
        FOV = 400,
        Smoothness = 0.5,
        TargetPart = "Head"
    },
    Hitbox = {
        Enabled = false,
        FriendlySize = Vector3.new(1, 2, 1),
        EnemySize = Vector3.new(15, 15, 15),
        Transparency = 0.5,
        FriendlyColor = Color3.new(0, 1, 0),
        EnemyColor = Color3.new(1, 0, 0),
        Material = Enum.Material.Neon,
        CanCollide = false,
        Massless = true,
        TargetPart = "HumanoidRootPart"
    }
}

-- Funciones de utilidad
local function getPlayerTeamColor(player)
    if player.Team then
        return player.TeamColor.Color
    end
    return Color3.new(1, 1, 1)
end

local function isPlayerAlive(player)
    local character = player.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end

local function isEnemy(player)
    return player.Team ~= LocalPlayer.Team
end

-- ESP
local function createESP(player)
    local esp = Drawing.new("Text")
    esp.Visible = false
    esp.Center = true
    esp.Outline = true
    esp.Font = 2
    esp.Size = 13
    esp.Color = getPlayerTeamColor(player)

    local box = Drawing.new("Square")
    box.Visible = false
    box.Color = esp.Color
    box.Thickness = 1
    box.Filled = false

    local tracer = Drawing.new("Line")
    tracer.Visible = false
    tracer.Color = esp.Color
    tracer.Thickness = 1

    return {
        Text = esp,
        Box = box,
        Tracer = tracer
    }
end

local espObjects = {}

local function updateESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Team ~= LocalPlayer.Team then
            if not espObjects[player] then
                espObjects[player] = createESP(player)
            end

            local esp = espObjects[player]
            local character = player.Character
            if character and isPlayerAlive(player) then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                local humanoid = character:FindFirstChild("Humanoid")
                local head = character:FindFirstChild("Head")

                if humanoidRootPart and humanoid and head then
                    local vector, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)
                    local distance = (humanoidRootPart.Position - Camera.CFrame.Position).Magnitude

                    if onScreen and Config.ESP.Enabled then
                        esp.Text.Position = Vector2.new(vector.X, vector.Y - 40)
                        esp.Text.Visible = true
                        esp.Text.Color = getPlayerTeamColor(player)

                        local text = player.Name
                        if Config.ESP.ShowDistance then
                            text = text .. string.format("\n%.1fm", distance)
                        end
                        if Config.ESP.ShowHealth then
                            text = text .. string.format("\nHP: %.0f", humanoid.Health)
                        end
                        esp.Text.Text = text

                        if Config.ESP.BoxESP then
                            local topLeft = Camera:WorldToViewportPoint((humanoidRootPart.CFrame * CFrame.new(-3, 3, 0)).Position)
                            local bottomRight = Camera:WorldToViewportPoint((humanoidRootPart.CFrame * CFrame.new(3, -3, 0)).Position)
                            esp.Box.Visible = true
                            esp.Box.Size = Vector2.new(bottomRight.X - topLeft.X, bottomRight.Y - topLeft.Y)
                            esp.Box.Position = Vector2.new(topLeft.X, topLeft.Y)
                            esp.Box.Color = esp.Text.Color
                        else
                            esp.Box.Visible = false
                        end

                        if Config.ESP.TracerESP then
                            esp.Tracer.Visible = true
                            esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                            esp.Tracer.To = Vector2.new(vector.X, vector.Y)
                            esp.Tracer.Color = esp.Text.Color
                        else
                            esp.Tracer.Visible = false
                        end
                    else
                        esp.Text.Visible = false
                        esp.Box.Visible = false
                        esp.Tracer.Visible = false
                    end
                else
                    esp.Text.Visible = false
                    esp.Box.Visible = false
                    esp.Tracer.Visible = false
                end
            else
                esp.Text.Visible = false
                esp.Box.Visible = false
                esp.Tracer.Visible = false
            end
        end
    end
end

-- Aimbot
local function getClosestEnemy()
    local closestEnemy = nil
    local closestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Team ~= LocalPlayer.Team and isPlayerAlive(player) then
            local character = player.Character
            if character then
                local targetPart = character:FindFirstChild(Config.Aimbot.TargetPart)
                if targetPart then
                    local screenPos, onScreen = Camera:WorldToScreenPoint(targetPart.Position)
                    if onScreen then
                        local distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
                        if distance < closestDistance and distance < Config.Aimbot.FOV then
                            closestEnemy = targetPart
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end

    return closestEnemy
end

local function aimbot()
    local closestEnemy = getClosestEnemy()
    if closestEnemy then
        local targetPos = closestEnemy.Position
        local cameraCFrame = Camera.CFrame
        local newCFrame = CFrame.new(cameraCFrame.Position, targetPos)
        Camera.CFrame = cameraCFrame:Lerp(newCFrame, Config.Aimbot.Smoothness)
    end
end

-- Hitbox con TeamChecks
local function updateHitboxes()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character and isPlayerAlive(player) then
                local targetPart = character:FindFirstChild(Config.Hitbox.TargetPart)
                if targetPart then
                    if isEnemy(player) then
                        targetPart.Size = Config.Hitbox.EnemySize
                        targetPart.Color = Config.Hitbox.EnemyColor
                    else
                        targetPart.Size = Config.Hitbox.FriendlySize
                        targetPart.Color = Config.Hitbox.FriendlyColor
                    end
                    targetPart.Transparency = Config.Hitbox.Transparency
                    targetPart.Material = Config.Hitbox.Material
                    targetPart.CanCollide = Config.Hitbox.CanCollide
                    targetPart.Massless = Config.Hitbox.Massless
                end
            end
        end
    end
end

-- GUI Tabs
local ESPTab = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local AimbotTab = Window:MakeTab({
    Name = "Aimbot",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local HitboxTab = Window:MakeTab({
    Name = "Hitbox",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- ESP Settings
ESPTab:AddToggle({
    Name = "Enable ESP",
    Default = Config.ESP.Enabled,
    Callback = function(Value)
        Config.ESP.Enabled = Value
    end    
})

ESPTab:AddToggle({
    Name = "Show Distance",
    Default = Config.ESP.ShowDistance,
    Callback = function(Value)
        Config.ESP.ShowDistance = Value
    end    
})

ESPTab:AddToggle({
    Name = "Show Health",
    Default = Config.ESP.ShowHealth,
    Callback = function(Value)
        Config.ESP.ShowHealth = Value
    end    
})

ESPTab:AddToggle({
    Name = "Box ESP",
    Default = Config.ESP.BoxESP,
    Callback = function(Value)
        Config.ESP.BoxESP = Value
    end    
})

ESPTab:AddToggle({
    Name = "Tracer ESP",
    Default = Config.ESP.TracerESP,
    Callback = function(Value)
        Config.ESP.TracerESP = Value
    end    
})

-- Aimbot Settings
AimbotTab:AddToggle({
    Name = "Enable Aimbot",
    Default = Config.Aimbot.Enabled,
    Callback = function(Value)
        Config.Aimbot.Enabled = Value
    end    
})

AimbotTab:AddSlider({
    Name = "FOV",
    Min = 0,
    Max = 1000,
    Default = Config.Aimbot.FOV,
    Color = Color3.fromRGB(255,255,255),
    Increment = 10,
    ValueName = "pixels",
    Callback = function(Value)
        Config.Aimbot.FOV = Value
    end    
})

AimbotTab:AddSlider({
    Name = "Smoothness",
    Min = 0,
    Max = 1,
    Default = Config.Aimbot.Smoothness,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.01,
    ValueName = "factor",
    Callback = function(Value)
        Config.Aimbot.Smoothness = Value
    end    
})

AimbotTab:AddDropdown({
    Name = "Target Part",
    Default = Config.Aimbot.TargetPart,
    Options = {"Head", "HumanoidRootPart"},
    Callback = function(Value)
        Config.Aimbot.TargetPart = Value
    end    
})

-- Hitbox Settings
HitboxTab:AddToggle({
    Name = "Enable Hitbox",
    Default = Config.Hitbox.Enabled,
    Callback = function(Value)
        Config.Hitbox.Enabled = Value
    end    
})

HitboxTab:AddSlider({
    Name = "Enemy Hitbox Size",
    Min = 1,
    Max = 50,
    Default = Config.Hitbox.EnemySize.X,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "studs",
    Callback = function(Value)
        Config.Hitbox.EnemySize = Vector3.new(Value, Value, Value)
    end    
})

HitboxTab:AddSlider({
    Name = "Transparency",
    Min = 0,
    Max = 1,
    Default = Config.Hitbox.Transparency,
    Color = Color3.fromRGB(255,255,255),
    Increment = 0.1,
    ValueName = "alpha",
    Callback = function(Value)
        Config.Hitbox.Transparency = Value
    end    
})

HitboxTab:AddColorpicker({
    Name = "Enemy Hitbox Color",
    Default = Config.Hitbox.EnemyColor,
    Callback = function(Value)
        Config.Hitbox.EnemyColor = Value
    end  
})

HitboxTab:AddColorpicker({
    Name = "Friendly Hitbox Color",
    Default = Config.Hitbox.FriendlyColor,
    Callback = function(Value)
        Config.Hitbox.FriendlyColor = Value
    end  
})

HitboxTab:AddDropdown({
    Name = "Hitbox Material",
    Default = Config.Hitbox.Material.Name,
    Options = {"Neon", "ForceField", "SmoothPlastic"},
    Callback = function(Value)
        Config.Hitbox.Material = Enum.Material[Value]
    end    
})

HitboxTab:AddToggle({
    Name = "Can Collide",
    Default = Config.Hitbox.CanCollide,
    Callback = function(Value)
        Config.Hitbox.CanCollide = Value
    end    
})

HitboxTab:AddDropdown({
    Name = "Target Part",
    Default = Config.Hitbox.TargetPart,
    Options = {"Head", "HumanoidRootPart"},
    Callback = function(Value)
        Config.Hitbox.TargetPart = Value
    end    
})

-- Main loop
RunService.RenderStepped:Connect(function()
    updateESP()
    if Config.Aimbot.Enabled and UserInputService:IsMouseButtonPressed(Config.Aimbot.Key) then
        aimbot()
    end
    if Config.Hitbox.Enabled then
        updateHitboxes()
    end
end)

OrionLib:Init()

print("Game Enhancer Pro loaded. Use the GUI to configure settings.")