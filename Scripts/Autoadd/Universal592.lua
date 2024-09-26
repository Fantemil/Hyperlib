-- Load AkiriUI library
local AkiriUI = loadstring(game:HttpGet("https://akiri.best/assets/files/gayasf.ui2?key=5y1lxXSfWKhlQkSqhUuFyB8kPp8hsCau"))()

-- Load AkaliNotif for notifications
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = AkaliNotif.Notify

-- Notify user
xpcall(function()
    Notify({
        Title = "Meowbucks Pussycat Script",
        Description = "Universal aiming script loaded successfully!",
        Duration = 5
    })
end, function(err)
    warn("Notification Error: " .. err)
end)

-- Create an FOV Circle
local function createFOVCircle()
    local success, FOVCircle = xpcall(function()
        local circle = Drawing.new("Circle")
        circle.Thickness = 2
        circle.NumSides = 30
        circle.Radius = 150
        circle.Filled = false
        circle.Transparency = 1
        circle.Color = Color3.fromRGB(255, 255, 255)
        circle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
        return circle
    end, function(err)
        warn("Error creating FOV Circle: " .. err)
    end)
    return success and FOVCircle or nil
end

local fovCircle = createFOVCircle()

-- Create ESP elements
local function createESP(player)
    local success, espElements = xpcall(function()
        local elements = {}

        -- Box ESP
        local box = Drawing.new("Square")
        box.Thickness = 2
        box.Color = Color3.fromRGB(255, 0, 0)
        box.Filled = false
        box.Transparency = 1
        table.insert(elements, box)

        -- Name ESP
        local name = Drawing.new("Text")
        name.Size = 16
        name.Color = Color3.fromRGB(255, 255, 255)
        name.Center = true
        name.Outline = true
        table.insert(elements, name)

        -- Health ESP
        local healthBar = Drawing.new("Line")
        healthBar.Thickness = 5
        healthBar.Color = Color3.fromRGB(0, 255, 0)
        healthBar.Transparency = 1
        table.insert(elements, healthBar)

        local function update()
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = player.Character.HumanoidRootPart
                local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(humanoidRootPart.Position)

                if onScreen then
                    -- Update box
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        local headPos = workspace.CurrentCamera:WorldToViewportPoint(head.Position)
                        box.Size = Vector2.new(2000 / headPos.Z, 2000 / headPos.Z)
                        box.Position = Vector2.new(screenPos.X - box.Size.X / 2, screenPos.Y - box.Size.Y / 2)
                    end

                    -- Update name
                    name.Position = Vector2.new(screenPos.X, screenPos.Y - 50)
                    name.Text = player.Name

                    -- Update health bar
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        local healthPercent = humanoid.Health / humanoid.MaxHealth
                        healthBar.From = Vector2.new(screenPos.X - 50, screenPos.Y + 50)
                        healthBar.To = Vector2.new(screenPos.X - 50, screenPos.Y + 50 - (100 * healthPercent))
                        healthBar.Color = Color3.fromRGB(0, math.floor(255 * (1 - healthPercent)), math.floor(255 * healthPercent))
                    end
                else
                    -- Hide ESP if off screen
                    box.Visible = false
                    name.Visible = false
                    healthBar.Visible = false
                end
            end
        end

        return elements, update
    end, function(err)
        warn("Error creating ESP: " .. err)
        return {}
    end)
    return success and espElements or {}
end

-- Get the nearest target within the FOV circle
local function getNearestTarget()
    local success, nearestTarget, shortestDistance = xpcall(function()
        local target = nil
        local distance = fovCircle and fovCircle.Radius or 150

        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game:GetService("Players").LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local targetPos = workspace.CurrentCamera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                local dist = (Vector2.new(targetPos.X, targetPos.Y) - fovCircle.Position).Magnitude
                if dist < distance and player.Team ~= game:GetService("Players").LocalPlayer.Team then
                    distance = dist
                    target = player
                end
            end
        end

        return target, distance
    end, function(err)
        warn("Error finding nearest target: " .. err)
        return nil, 150
    end)
    return success and nearestTarget or nil
end

-- Silent Aim Function
local function silentAim()
    xpcall(function()
        local target = getNearestTarget()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local aimPart = target.Character:FindFirstChild("HumanoidRootPart")
            if aimPart then
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, aimPart.Position)
            end
        end
    end, function(err)
        warn("Silent Aim Error: " .. err)
    end)
end

-- Aimbot Function
local function aimbot()
    xpcall(function()
        local target = getNearestTarget()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local aimPart = target.Character:FindFirstChild("HumanoidRootPart")
            if aimPart then
                local prediction = (aimPart.Velocity * 0.1) -- Adjust this factor based on speed
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, aimPart.Position + prediction)
            end
        end
    end, function(err)
        warn("Aimbot Error: " .. err)
    end)
end

-- Aim Assist Function
local function aimAssist()
    xpcall(function()
        local target = getNearestTarget()
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local aimPart = target.Character:FindFirstChild("HumanoidRootPart")
            local currentAim = workspace.CurrentCamera.CFrame.LookVector
            local targetAim = (aimPart.Position - workspace.CurrentCamera.CFrame.Position).unit

            -- Blend between current aim and target aim to create a smooth aim assist effect
            local blendFactor = 0.1
            local newAim = currentAim:Lerp(targetAim, blendFactor)
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + newAim)
        end
    end, function(err)
        warn("Aim Assist Error: " .. err)
    end)
end

-- Wait for the game to fully load
repeat wait(1) until game:IsLoaded()

-- Main feature wrapper with error handling
xpcall(function()
    -- Initialize Features
    local espElements = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer then
            local elements, update = createESP(player)
            espElements[player.UserId] = {elements = elements, update = update}
        end
    end

    -- Update ESP elements continuously
    game:GetService("RunService").RenderStepped:Connect(function()
        for _, espData in pairs(espElements) do
            for _, element in pairs(espData.elements) do
                element.Visible = true
            end
            espData.update()
        end
        -- Execute aimbot and silent aim
        aimbot()
        silentAim()
        aimAssist()
    end)
end, function(err)
    warn("Main Script Error: " .. err)
end)

-- Setup additional features with coroutine and error handling
local function setup()
    coroutine.wrap(function()
        xpcall(function()
            -- Example additional setup logic
            local player = game:GetService("Players").LocalPlayer
            if player and player.Character then
                player.Character:WaitForChild("HumanoidRootPart")
            end
        end, function(err)
            warn("Setup Error: " .. err)
        end)
    end)()
end

setup()

-- Update FOV Circle position every frame
game:GetService("RunService").RenderStepped:Connect(function()
    if fovCircle then
        fovCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    end
end)