local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Universal ESP",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionESPHack"
})

local ESPTab = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local ESPSection = ESPTab:AddSection({
    Name = "ESP Settings"
})

-- ESP Settings
local ESPEnabled = false
local BoxESPEnabled = false
local HealthESPEnabled = false
local NameESPEnabled = false
local TracerESPEnabled = false
local DistanceESPEnabled = false

-- ESP Colors
local BoxESPColor = Color3.fromRGB(255, 0, 0)
local HealthESPColor = Color3.fromRGB(0, 255, 0)
local NameESPColor = Color3.fromRGB(255, 255, 255)
local TracerESPColor = Color3.fromRGB(255, 255, 0)
local DistanceESPColor = Color3.fromRGB(255, 255, 255)

-- ESP Functions
local function CreateESP(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local humanoid = character:WaitForChild("Humanoid")
    local head = character:WaitForChild("Head")

    -- Box ESP
    local boxESP = Drawing.new("Square")
    boxESP.Visible = false
    boxESP.Color = BoxESPColor
    boxESP.Thickness = 1
    boxESP.Transparency = 1
    boxESP.Filled = false

    -- Health ESP
    local healthESP = Drawing.new("Text")
    healthESP.Visible = false
    healthESP.Color = HealthESPColor
    healthESP.Size = 14
    healthESP.Center = true
    healthESP.Outline = true

    -- Name ESP
    local nameESP = Drawing.new("Text")
    nameESP.Visible = false
    nameESP.Color = NameESPColor
    nameESP.Size = 18
    nameESP.Center = true
    nameESP.Outline = true

    -- Tracer ESP
    local tracerESP = Drawing.new("Line")
    tracerESP.Visible = false
    tracerESP.Color = TracerESPColor
    tracerESP.Thickness = 1
    tracerESP.Transparency = 1

    -- Distance ESP
    local distanceESP = Drawing.new("Text")
    distanceESP.Visible = false
    distanceESP.Color = DistanceESPColor
    distanceESP.Size = 14
    distanceESP.Center = true
    distanceESP.Outline = true

    local function UpdateESP()
        if not character:IsDescendantOf(game.Workspace) then
            boxESP.Visible = false
            healthESP.Visible = false
            nameESP.Visible = false
            tracerESP.Visible = false
            distanceESP.Visible = false
            return
        end

        local vector, onScreen = game.Workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)

        if onScreen and ESPEnabled then
            -- Update Box ESP
            if BoxESPEnabled then
                local rootPos, _ = game.Workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)
                local headPos, _ = game.Workspace.CurrentCamera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                local legPos, _ = game.Workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position - Vector3.new(0, 3, 0))

                boxESP.Size = Vector2.new(2000 / rootPos.Z, headPos.Y - legPos.Y)
                boxESP.Position = Vector2.new(rootPos.X - boxESP.Size.X / 2, rootPos.Y - boxESP.Size.Y / 2)
                boxESP.Color = BoxESPColor
                boxESP.Visible = true
            else
                boxESP.Visible = false
            end

            -- Update Health ESP
            if HealthESPEnabled then
                local health = math.floor(humanoid.Health)
                local maxHealth = math.floor(humanoid.MaxHealth)
                healthESP.Text = health .. "/" .. maxHealth
                healthESP.Position = Vector2.new(vector.X, vector.Y + 40)
                healthESP.Color = HealthESPColor
                healthESP.Visible = true
            else
                healthESP.Visible = false
            end

            -- Update Name ESP
            if NameESPEnabled then
                nameESP.Text = player.Name
                nameESP.Position = Vector2.new(vector.X, vector.Y - 40)
                nameESP.Color = NameESPColor
                nameESP.Visible = true
            else
                nameESP.Visible = false
            end

            -- Update Tracer ESP
            if TracerESPEnabled then
                tracerESP.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
                tracerESP.To = Vector2.new(vector.X, vector.Y)
                tracerESP.Color = TracerESPColor
                tracerESP.Visible = true
            else
                tracerESP.Visible = false
            end

            -- Update Distance ESP
            if DistanceESPEnabled then
                local distance = (workspace.CurrentCamera.CFrame.Position - humanoidRootPart.Position).Magnitude
                distanceESP.Text = math.floor(distance) .. "m"
                distanceESP.Position = Vector2.new(vector.X, vector.Y + 20)
                distanceESP.Color = DistanceESPColor
                distanceESP.Visible = true
            else
                distanceESP.Visible = false
            end
        else
            boxESP.Visible = false
            healthESP.Visible = false
            nameESP.Visible = false
            tracerESP.Visible = false
            distanceESP.Visible = false
        end
    end

    game:GetService("RunService").RenderStepped:Connect(UpdateESP)
end

-- Create ESP for existing players
for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
        CreateESP(player)
    end
end

-- Create ESP for new players
game.Players.PlayerAdded:Connect(function(player)
    CreateESP(player)
end)

-- ESP Toggles
ESPSection:AddToggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(Value)
        ESPEnabled = Value
    end
})

ESPSection:AddToggle({
    Name = "Box ESP",
    Default = false,
    Callback = function(Value)
        BoxESPEnabled = Value
    end
})

ESPSection:AddToggle({
    Name = "Health ESP",
    Default = false,
    Callback = function(Value)
        HealthESPEnabled = Value
    end
})

ESPSection:AddToggle({
    Name = "Name ESP",
    Default = false,
    Callback = function(Value)
        NameESPEnabled = Value
    end
})

ESPSection:AddToggle({
    Name = "Tracer ESP",
    Default = false,
    Callback = function(Value)
        TracerESPEnabled = Value
    end
})

ESPSection:AddToggle({
    Name = "Distance ESP",
    Default = false,
    Callback = function(Value)
        DistanceESPEnabled = Value
    end
})

-- Color Pickers
ESPSection:AddColorpicker({
    Name = "Box ESP Color",
    Default = BoxESPColor,
    Callback = function(Value)
        BoxESPColor = Value
    end
})

ESPSection:AddColorpicker({
    Name = "Health ESP Color",
    Default = HealthESPColor,
    Callback = function(Value)
        HealthESPColor = Value
    end
})

ESPSection:AddColorpicker({
    Name = "Name ESP Color",
    Default = NameESPColor,
    Callback = function(Value)
        NameESPColor = Value
    end
})

ESPSection:AddColorpicker({
    Name = "Tracer ESP Color",
    Default = TracerESPColor,
    Callback = function(Value)
        TracerESPColor = Value
    end
})

ESPSection:AddColorpicker({
    Name = "Distance ESP Color",
    Default = DistanceESPColor,
    Callback = function(Value)
        DistanceESPColor = Value
    end
})

OrionLib:Init()