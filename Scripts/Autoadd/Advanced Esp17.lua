-- Load the Orion library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Create the main window
local Window = OrionLib:MakeWindow({
    Name = "Advanced ESP UI",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionConfig"
})

-- Create a tab
local Tab = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a section to the tab
local Section = Tab:AddSection({
    Name = "ESP Settings"
})

-- ESP settings
local espEnabled = false
local espConnections = {}
local espSettings = {
    NameColor = Color3.fromRGB(255, 182, 193), -- Light Pink
    FullHealthColor = Color3.fromRGB(0, 255, 0),
    LowHealthColor = Color3.fromRGB(255, 0, 0),
    DistanceColor = Color3.fromRGB(173, 216, 230), -- Light Blue
    WalkSpeedColor = Color3.fromRGB(255, 105, 180), -- Hot Pink
    BackgroundTransparency = 0.5,
    TextOffset = Vector3.new(0, 3.5, 0),
    MaxDistance = 5000 -- Maximum distance to show ESP
}

-- Function to create a combined ESP text label
local function createESPLabel(adornee, offset, color, text)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = adornee
    billboardGui.Size = UDim2.new(5, 0, 1.5, 0)
    billboardGui.StudsOffset = offset
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel", billboardGui)
    textLabel.Text = text
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.TextColor3 = color
    textLabel.BackgroundTransparency = espSettings.BackgroundTransparency
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = true
    textLabel.BorderSizePixel = 0
    textLabel.Font = Enum.Font.SourceSans -- Set font
    textLabel.TextWrapped = true -- Ensure text wraps

    return billboardGui, textLabel
end

-- Function to create ESP for a player
local function createESP(player)
    local function refreshESP(character)
        -- Remove any existing ESP for the character
        for _, v in pairs(character:GetChildren()) do
            if v:IsA("BoxHandleAdornment") or v:IsA("BillboardGui") then
                v:Destroy()
            end
        end

        -- Create a BoxHandleAdornment for the player
        local espBox = Instance.new("BoxHandleAdornment")
        espBox.Adornee = character
        espBox.Size = character:GetExtentsSize()
        espBox.AlwaysOnTop = true
        espBox.ZIndex = 5
        espBox.Transparency = 0.7
        espBox.Color3 = player.Team and player.TeamColor.Color or Color3.fromRGB(255, 255, 255)
        espBox.Parent = character

        -- Create a combined ESP label
        local textGui, textLabel = createESPLabel(character, espSettings.TextOffset, espSettings.NameColor, "")
        textGui.Parent = character

        -- Update ESP text
        local function updateESP()
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local health = humanoid.Health
                local maxHealth = humanoid.MaxHealth
                local walkSpeed = humanoid.WalkSpeed
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
                local healthColor = health > maxHealth * 0.5 and espSettings.FullHealthColor or espSettings.LowHealthColor
                textLabel.Text = string.format("Name: %s\nHealth: %d\nStuds: %d\nWalkSpeed: %d", player.Name, health, math.floor(distance), walkSpeed)
                textLabel.TextColor3 = healthColor
            end
        end
        updateESP()
        local healthChangedConnection = character:FindFirstChildOfClass("Humanoid").HealthChanged:Connect(updateESP)
        local renderSteppedConnection = game:GetService("RunService").RenderStepped:Connect(updateESP)

        -- Recreate ESP on death and respawn
        local characterDiedConnection = character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
            if player.Character then
                player.CharacterAdded:Wait()
                refreshESP(player.Character)
            end
        end)

        -- Store connections for cleanup
        espConnections[player] = {espBox, textGui, healthChangedConnection, renderSteppedConnection, characterDiedConnection}
    end

    if player.Character then
        refreshESP(player.Character)
    end

    player.CharacterAdded:Connect(function(character)
        refreshESP(character)
    end)
end

-- Function to remove ESP from a player
local function removeESP(player)
    if espConnections[player] then
        for _, conn in ipairs(espConnections[player]) do
            if typeof(conn) == "RBXScriptConnection" then
                conn:Disconnect()
            else
                conn:Destroy()
            end
        end
        espConnections[player] = nil
    end
end

-- Toggle function for ESP
local function toggleESP(enabled)
    espEnabled = enabled
    if espEnabled then
        for _, player in ipairs(game.Players:GetPlayers()) do
            createESP(player)
        end
        game.Players.PlayerAdded:Connect(createESP)
        game.Players.PlayerRemoving:Connect(removeESP)
    else
        for _, player in ipairs(game.Players:GetPlayers()) do
            removeESP(player)
        end
    end
end

-- Add a toggle button in the UI
Section:AddToggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(value)
        toggleESP(value)
    end
})

-- Add additional settings and controls
Section:AddColorPicker({
    Name = "Name Color",
    Default = espSettings.NameColor,
    Callback = function(value)
        espSettings.NameColor = value
    end
})

Section:AddSlider({
    Name = "Update Rate",
    Min = 0.01,
    Max = 1,
    Default = espSettings.UpdateRate,
    Increment = 0.01,
    Callback = function(value)
        espSettings.UpdateRate = value
    end
})

Section:AddButton({
    Name = "Reset Settings",
    Callback = function()
        espSettings = {
            NameColor = Color3.fromRGB(255, 182, 193), -- Light Pink
            FullHealthColor = Color3.fromRGB(0, 255, 0),
            LowHealthColor = Color3.fromRGB(255, 0, 0),
            DistanceColor = Color3.fromRGB(173, 216, 230), -- Light Blue
            WalkSpeedColor = Color3.fromRGB(255, 105, 180), -- Hot Pink
            BackgroundTransparency = 0.5,
            TextOffset = Vector3.new(0, 3.5, 0),
            MaxDistance = 5000 -- Maximum distance to show ESP
        }
    end
})

-- Add a notification system
OrionLib:MakeNotification({
    Name = "ESP Loaded",
    Content = "The ESP system has been successfully loaded.",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Initialize the UI
OrionLib:Init()