UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Universal", game.Players.LocalPlayer.UserId, "Guest")

-- Categories
local MainCategory = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local VisualsCategory = Window:Category("Visuals", "http://www.roblox.com/asset/?id=8395621517")
local MiscCategory = Window:Category("Misc", "http://www.roblox.com/asset/?id=8395621517")

-- SubButtons
local MainSubButton = MainCategory:Button("Main Features", "http://www.roblox.com/asset/?id=8395747586")
local VisualsSubButton = VisualsCategory:Button("Visual Settings", "http://www.roblox.com/asset/?id=8395747586")
local MiscSubButton = MiscCategory:Button("Misc Settings", "http://www.roblox.com/asset/?id=8395747586")

-- Sections
local MainSection = MainSubButton:Section("Main", "Left")
local VisualsSection = VisualsSubButton:Section("Visuals", "Left")
local MiscSection = MiscSubButton:Section("Misc", "Left")

-- Variables
local espEnabled = false
local espColor = Color3.new(1, 0, 0)
local espTransparency = 0.5
local walkspeedEnabled = false
local defaultWalkspeed = 16
local originalWalkspeed
local showHealth = false
local noclipEnabled = false
local flyEnabled = false
local flySpeed = 50
local flyDirection = Vector3.new(0, 0, 0)
local defaultFOV = 70

-- Walkspeed function
local function setWalkspeed(value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        humanoid.WalkSpeed = value
    end
end

-- Store original walkspeed
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")
if (humanoid) then
    originalWalkspeed = humanoid.WalkSpeed
end

-- Walkspeed slider and toggle
MainSection:Slider({
    Title = "Walkspeed",
    Description = "Adjust player speed",
    Default = defaultWalkspeed,
    Min = 0,
    Max = 300
    }, function(value)
    defaultWalkspeed = value
    if walkspeedEnabled then
        setWalkspeed(defaultWalkspeed)
    end
end)

MainSection:Toggle({
    Title = "Enable Custom Speed",
    Description = "Enable/Disable custom walkspeed",
    Default = false
    }, function(value)
    walkspeedEnabled = value
    if walkspeedEnabled then
        setWalkspeed(defaultWalkspeed)
    else
        setWalkspeed(originalWalkspeed)
    end
end)

-- Fly functions
local flying = false
local flyKey = Enum.KeyCode.E -- Change this to the desired key for toggling fly

local function startFlying()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if humanoid and rootPart then
        humanoid.PlatformStand = true
        local bodyGyro = Instance.new("BodyGyro", rootPart)
        bodyGyro.P = 9e4
        bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bodyGyro.cframe = rootPart.CFrame

        local bodyVelocity = Instance.new("BodyVelocity", rootPart)
        bodyVelocity.velocity = Vector3.new(0, 0, 0)
        bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)

        local function flyLoop()
            if flying and rootPart then
                bodyGyro.cframe = workspace.CurrentCamera.CFrame
                local camera = workspace.CurrentCamera
                local moveDirection = Vector3.new()
                if flyDirection.Magnitude > 0 then
                    moveDirection = (camera.CFrame.LookVector * flyDirection.Z + camera.CFrame.RightVector * flyDirection.X + camera.CFrame.UpVector * flyDirection.Y).Unit
                end
                bodyVelocity.velocity = moveDirection * flySpeed
            else
                bodyGyro:Destroy()
                bodyVelocity:Destroy()
                humanoid.PlatformStand = false
            end
        end

        game:GetService("RunService").RenderStepped:Connect(flyLoop)
    end
end

local function toggleFly()
    flying = not flying
    if flying then
        startFlying()
    end
end

-- Input handling for WASD movement
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.W then
            flyDirection = flyDirection + Vector3.new(0, 0, 1)
        elseif input.KeyCode == Enum.KeyCode.S then
            flyDirection = flyDirection + Vector3.new(0, 0, -1)
        elseif input.KeyCode == Enum.KeyCode.D then
            flyDirection = flyDirection + Vector3.new(1, 0, 0)
        elseif input.KeyCode == Enum.KeyCode.A then
            flyDirection = flyDirection + Vector3.new(-1, 0, 0)
        elseif input.KeyCode == Enum.KeyCode.Space then
            flyDirection = flyDirection + Vector3.new(0, -1, 0)
        elseif input.KeyCode == Enum.KeyCode.LeftControl then
            flyDirection = flyDirection + Vector3.new(0, 1, 0)
        elseif input.KeyCode == flyKey then
            flyEnabled = not flyEnabled
            toggleFly()
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.W then
            flyDirection = flyDirection - Vector3.new(0, 0, 1)
        elseif input.KeyCode == Enum.KeyCode.S then
            flyDirection = flyDirection - Vector3.new(0, 0, -1)
        elseif input.KeyCode == Enum.KeyCode.D then
            flyDirection = flyDirection - Vector3.new(1, 0, 0)
        elseif input.KeyCode == Enum.KeyCode.A then
            flyDirection = flyDirection - Vector3.new(-1, 0, 0)
        elseif input.KeyCode == Enum.KeyCode.Space then
            flyDirection = flyDirection - Vector3.new(0, -1, 0)
        elseif input.KeyCode == Enum.KeyCode.LeftControl then
            flyDirection = flyDirection - Vector3.new(0, 1, 0)
        end
    end
end)

MiscSection:Toggle({
    Title = "Enable Fly",
    Description = "Enable/Disable flying",
    Default = false
    }, function(value)
    flyEnabled = value
    toggleFly()
end)

MiscSection:Slider({
    Title = "Fly Speed",
    Description = "Adjust the flying speed",
    Default = flySpeed,
    Min = 0,
    Max = 300
    }, function(value)
    flySpeed = value
end)

-- Noclip function
local function toggleNoclip()
    noclipEnabled = not noclipEnabled
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    if noclipEnabled then
        game:GetService("RunService").Stepped:Connect(function()
            if noclipEnabled then
                for _, v in pairs(character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    else
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
    end
end

MiscSection:Toggle({
    Title = "Enable Noclip",
    Description = "Enable/Disable noclip",
    Default = false
    }, function(value)
    noclipEnabled = not value -- Inverting the value to make the toggle work correctly
    toggleNoclip()
end)

-- FOV Changer function
local function setFOV(value)
    workspace.CurrentCamera.FieldOfView = value
end

-- FOV slider
VisualsSection:Slider({
    Title = "Field of View",
    Description = "Adjust the camera FOV",
    Default = defaultFOV,
    Min = 1,
    Max = 120
    }, function(value)
  setFOV(value)
end)

local function createHealthBarInternal(humanoid, character)
    local healthGui = Instance.new("BillboardGui")
    healthGui.Name = "HealthDisplay"
    healthGui.Size = UDim2.new(2, 0, 0.2, 0)
    healthGui.StudsOffset = Vector3.new(0, 2, 0)
    healthGui.AlwaysOnTop = true

    local healthFrame = Instance.new("Frame")
    healthFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    healthFrame.Size = UDim2.new(1, 0, 1, 0)
    healthFrame.Parent = healthGui

    local healthBar = Instance.new("Frame")
    healthBar.BackgroundColor3 = Color3.new(0, 1, 0)
    healthBar.Size = UDim2.new(humanoid.Health / humanoid.MaxHealth, 0, 1, 0)
    healthBar.Parent = healthFrame

    humanoid.HealthChanged:Connect(function()
        healthBar.Size = UDim2.new(humanoid.Health / humanoid.MaxHealth, 0, 1, 0)
    end)

    healthGui.Parent = character
end


local function createESP(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local highlight = Instance.new("Highlight")
    highlight.FillColor = espColor
    highlight.FillTransparency = espTransparency
    highlight.OutlineColor = espColor
    highlight.OutlineTransparency = espTransparency
    highlight.Parent = character

    if showHealth then
        local humanoid = character:WaitForChild("Humanoid")
        createHealthBarInternal(humanoid, character)
    end

    player.CharacterAdded:Connect(function(newCharacter)
        highlight.Parent = newCharacter
        if showHealth then
            local humanoid = newCharacter:WaitForChild("Humanoid")
            createHealthBarInternal(humanoid, newCharacter)
        end
    end)
end

MainSection:Toggle({
    Title = "Enable ESP",
    Description = "Enable/Disable ESP",
    Default = false
    }, function(value)
    espEnabled = value
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            if espEnabled then
                createESP(player)
            else
                for _, highlight in pairs(player.Character:GetDescendants()) do
                    if highlight:IsA("Highlight") then
                        highlight:Destroy()
                    end
                end
                for _, billboardGui in pairs(player.Character:GetDescendants()) do
                    if billboardGui:IsA("BillboardGui") then
                        billboardGui:Destroy()
                    end
                end
            end
        end
    end
end)

MainSection:ColorPicker({
    Title = "ESP Color",
    Description = "Choose the ESP color",
    Default = espColor
    }, function(value)
    espColor = value
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                for _, highlight in pairs(player.Character:GetDescendants()) do
                    if highlight:IsA("Highlight") then
                        highlight.FillColor = espColor
                        highlight.OutlineColor = espColor
                    end
                end
            end
        end
    end
end)

MainSection:Slider({
    Title = "ESP Transparency",
    Description = "Adjust the ESP transparency",
    Default = espTransparency,
    Min = 0,
    Max = 1
    }, function(value)
    espTransparency = value
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                for _, highlight in pairs(player.Character:GetDescendants()) do
                    if highlight:IsA("Highlight") then
                        highlight.FillTransparency = espTransparency
                        highlight.OutlineTransparency = espTransparency
                    end
                end
            end
        end
    end
end)

MainSection:Toggle({
    Title = "Show Health Bar",
    Description = "Enable/Disable health bar",
    Default = false
    }, function(value)
    showHealth = value
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if showHealth then
                    local humanoid = player.Character:WaitForChild("Humanoid")
                    createHealthBarInternal(humanoid, player.Character)
                else
                    for _, billboardGui in pairs(player.Character:GetDescendants()) do
                        if billboardGui:IsA("BillboardGui") then
                            billboardGui:Destroy()
                        end
                    end
                end
            end
        end
    end
end)

-- Initialize ESP for existing players
game.Players.PlayerAdded:Connect(function(player)
    if espEnabled then
        createESP(player)
    end
end)