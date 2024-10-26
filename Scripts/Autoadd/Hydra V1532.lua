local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("Universal", game.Players.LocalPlayer.UserId, "Guest")

local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Universal", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")

local espEnabled = false
local espColor = Color3.new(1, 0, 0)
local espTransparency = 0.5
local walkspeedEnabled = false
local defaultWalkspeed = 16
local originalWalkspeed
local showHealth = false

local function setWalkspeed(value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        humanoid.WalkSpeed = value
    end
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")
if humanoid then
    originalWalkspeed = humanoid.WalkSpeed
end

Section1:Slider({
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

Section1:Toggle({
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

local function addESP(player)
    if player ~= game.Players.LocalPlayer then
        local character = player.Character or player.CharacterAdded:Wait()
        character.ChildAdded:Connect(function(child)
            if child:IsA("BasePart") and espEnabled then
                local highlight = Instance.new("BoxHandleAdornment")
                highlight.Adornee = child
                highlight.AlwaysOnTop = true
                highlight.ZIndex = 0
                highlight.Size = child.Size
                highlight.Color3 = espColor
                highlight.Transparency = espTransparency
                highlight.Parent = child
            end
        end)
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") and espEnabled then
                local highlight = Instance.new("BoxHandleAdornment")
                highlight.Adornee = part
                highlight.AlwaysOnTop = true
                highlight.ZIndex = 0
                highlight.Size = part.Size
                highlight.Color3 = espColor
                highlight.Transparency = espTransparency
                highlight.Parent = part
            end
        end

        if showHealth then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local billBoard = Instance.new("BillboardGui")
                billBoard.Adornee = character:WaitForChild("Head")
                billBoard.Size = UDim2.new(4, 0, 1, 0)
                billBoard.StudsOffset = Vector3.new(0, 2, 0)
                billBoard.AlwaysOnTop = true
                billBoard.MaxDistance = 5000 

                local healthLabel = Instance.new("TextLabel", billBoard)
                healthLabel.Size = UDim2.new(1, 0, 1, 0)
                healthLabel.BackgroundTransparency = 1
                healthLabel.Text = tostring(math.floor(humanoid.Health)) .. "/" .. tostring(math.floor(humanoid.MaxHealth))
                healthLabel.TextColor3 = Color3.new(1, 1, 1)
                healthLabel.TextScaled = true

                humanoid.HealthChanged:Connect(function()
                    healthLabel.Text = tostring(math.floor(humanoid.Health)) .. "/" .. tostring(math.floor(humanoid.MaxHealth))
                end)

                billBoard.Parent = character
            end
        end
    end
end

local function removeESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character then
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    local adornments = part:GetChildren()
                    for _, adornment in pairs(adornments) do
                        if adornment:IsA("BoxHandleAdornment") then
                            adornment:Destroy()
                        end
                    end
                end
            end
            for _, child in pairs(character:GetChildren()) do
                if child:IsA("BillboardGui") then
                    child:Destroy()
                end
            end
        end
    end
end

Section1:Toggle({
    Title = "Enable ESP",
    Description = "Enable/Disable ESP for all players",
    Default = false
    }, function(value)
    espEnabled = value
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            addESP(player)
        end
        game.Players.PlayerAdded:Connect(addESP)
    else
        removeESP()
    end
end)

Section1:Slider({
    Title = "ESP Transparency",
    Description = "Adjust ESP transparency",
    Default = 0.5,
    Min = 0,
    Max = 1
    }, function(value)
    espTransparency = value
    if espEnabled then
        removeESP()
        for _, player in pairs(game.Players:GetPlayers()) do
            addESP(player)
        end
    end
end)

Section1:ColorPicker({
    Title = "ESP Color",
    Description = "Pick a color for ESP",
    Default = Color3.new(1, 0, 0),
    }, function(value)
    espColor = value
    if espEnabled then
        removeESP()
        for _, player in pairs(game.Players:GetPlayers()) do
            addESP(player)
        end
    end
end)

Section1:Toggle({
    Title = "Show Health",
    Description = "Show/Hide health of players",
    Default = false
    }, function(value)
    showHealth = value
    if espEnabled then
        removeESP()
        for _, player in pairs(game.Players:GetPlayers()) do
            addESP(player)
        end
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    local character = player.Character
    if character then
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                local adornments = part:GetChildren()
                for _, adornment in pairs(adornments) do
                    if adornment:IsA("BoxHandleAdornment") then
                        adornment:Destroy()
                    end
                end
            end
        end
        for _, child in pairs(character:GetChildren()) do
            if child:IsA("BillboardGui") then
                child:Destroy()
            end
        end
    end
end)
