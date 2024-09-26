-- Load the iceministerq notification library
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "ESP Example",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local ESPTab = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local espObjects = {}
local espConnections = {}
local notifyDarkSlender = false
local notifySlender = false
local lastNotificationTime = {["Dark Slender"] = 0, ["Slender"] = 0}
local soundPlaying = false

-- Function to check if the entity is near the player
local function isEntityNearPlayer(player, entityPosition)
    local playerPos = player.Character:FindFirstChild("HumanoidRootPart").Position
    local forwardVector = player.Character.HumanoidRootPart.CFrame.LookVector
    local toEntity = (entityPosition - playerPos).Unit
    local dotProduct = forwardVector:Dot(toEntity)
    local angle = math.acos(dotProduct)

    -- Consider anything within 90 degrees (left, right, front, or behind) as "near"
    return angle <= math.rad(90) and (playerPos - entityPosition).Magnitude < 50
end

-- Function to create ESP for an entity with Tracers
local function createESPForPart(part, humanoid, name, player, notify)
    local box = Drawing.new("Square")
    box.Visible = false
    box.Thickness = 2
    box.Transparency = 1
    
    local nameTag = Drawing.new("Text")
    nameTag.Visible = false
    nameTag.Size = 20
    nameTag.Center = true
    nameTag.Outline = true
    nameTag.OutlineColor = Color3.new(0, 0, 0)
    
    local tracer = Drawing.new("Line")
    tracer.Visible = false
    tracer.Thickness = 2
    tracer.Transparency = 1
    
    table.insert(espObjects, box)
    table.insert(espObjects, nameTag)
    table.insert(espObjects, tracer)
    
    local connection = game:GetService("RunService").RenderStepped:Connect(function()
        if part and part.Parent and player.Character then
            local partPos = part.Position

            if isEntityNearPlayer(player, partPos) then
                local currentTime = tick()
                if currentTime - lastNotificationTime[name] > 3 then
                    NotificationLibrary:SendNotification("Warning", name .. " is near you!", 3)
                    lastNotificationTime[name] = currentTime
                end
            end

            -- Update ESP visuals
            local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            if onScreen then
                local size = (part.Size.Magnitude * 100) / screenPos.Z
                local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                
                box.Color = color
                box.Size = Vector2.new(size, size)
                box.Position = Vector2.new(screenPos.X - box.Size.X / 2, screenPos.Y - box.Size.Y / 2)
                box.Visible = true
                
                local headPos = workspace.CurrentCamera:WorldToViewportPoint(part.Position + Vector3.new(0, part.Size.Y / 2 + 1, 0))
                nameTag.Color = color
                nameTag.Text = string.format("%s | Health: %d | WalkSpeed: %d | Distance: %d studs", name, math.floor(humanoid.Health), humanoid.WalkSpeed, math.floor((player.Character.HumanoidRootPart.Position - partPos).Magnitude))
                nameTag.Position = Vector2.new(headPos.X, headPos.Y - nameTag.Size)
                nameTag.Visible = true

                tracer.Color = color
                tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
                tracer.To = Vector2.new(screenPos.X, screenPos.Y)
                tracer.Visible = true
            else
                box.Visible = false
                nameTag.Visible = false
                tracer.Visible = false
            end
        else
            box.Visible = false
            nameTag.Visible = false
            tracer.Visible = false
        end
    end)

    table.insert(espConnections, connection)
end

-- Function to add ESP to a model with a single name tag and tracer
local function addESPToModel(modelName, player, notify)
    local threatsFolder = workspace:FindFirstChild("Threats")
    if threatsFolder then
        local model = threatsFolder:FindFirstChild(modelName)
        if model then
            local headPart = model:FindFirstChild("Head") or model:FindFirstChildWhichIsA("BasePart")
            local humanoid = model:FindFirstChildOfClass("Humanoid")
            if headPart and humanoid then
                createESPForPart(headPart, humanoid, modelName, player, notify)
            end
        else
            warn("Model '"..modelName.."' not found in Threats folder.")
        end
    else
        warn("Threats folder not found in workspace.")
    end
end

-- Function to check if player was killed by Slender or Dark Slender
local function monitorPlayerDeaths(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Died:Connect(function()
            local killer = humanoid:FindFirstChildOfClass("ObjectValue")
            if killer and killer.Name == "creator" then
                local killerName = killer.Value.Name
                if killerName == "Slender" or killerName == "Dark Slender" then
                    NotificationLibrary:SendNotification("Warning", "You were killed by " .. killerName, 5)
                end
            end
        end)
    end)
end

-- Clean up ESP objects and connections
local function removeESP()
    for _, object in pairs(espObjects) do
        object:Remove()
    end
    espObjects = {}

    for _, connection in pairs(espConnections) do
        connection:Disconnect()
    end
    espConnections = {}
end

-- Toggle for Dark Slender ESP
ESPTab:AddToggle({
    Name = "Dark Slender ESP",
    Default = false,
    Callback = function(Value)
        if Value then
            addESPToModel("Dark Slender", game.Players.LocalPlayer, notifyDarkSlender)
        else
            removeESP()
        end
    end    
})

-- Toggle for Slender ESP
ESPTab:AddToggle({
    Name = "Slender ESP",
    Default = false,
    Callback = function(Value)
        if Value then
            addESPToModel("Slender", game.Players.LocalPlayer, notifySlender)
        else
            removeESP()
        end
    end    
})

-- Toggle for Dark Slender Notifications
ESPTab:AddToggle({
    Name = "Dark Slender Notifications",
    Default = false,
    Callback = function(Value)
        notifyDarkSlender = Value
    end    
})

-- Toggle for Slender Notifications
ESPTab:AddToggle({
    Name = "Slender Notifications",
    Default = false,
    Callback = function(Value)
        notifySlender = Value
    end    
})

-- Monitor player deaths
monitorPlayerDeaths(game.Players.LocalPlayer)

-- Initialize the Orion UI
OrionLib:Init()