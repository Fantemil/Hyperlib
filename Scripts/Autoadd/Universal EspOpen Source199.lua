--// Made By Zans \\--
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({Name = "Universal Esp", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionConfig"})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ESPEnabled = false
local HighlightEnabled = false
local TracerEnabled = false
local BoxEnabled = false
local Box2DEnabled = false

local function createNameESP(player)
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")

    BillboardGui.Name = "NameESP"
    BillboardGui.Adornee = player.Character:WaitForChild("Head")
    BillboardGui.Size = UDim2.new(0, 100, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
    BillboardGui.AlwaysOnTop = true

    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = player.Name
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextScaled = true

    local distanceLabel = Instance.new("TextLabel")
    distanceLabel.Parent = BillboardGui
    distanceLabel.BackgroundTransparency = 1
    distanceLabel.Position = UDim2.new(0, 0, 0, 30)
    distanceLabel.Size = UDim2.new(1, 0, 0.5, 0)
    distanceLabel.TextColor3 = Color3.new(1, 1, 1)
    distanceLabel.TextScaled = true

    local function updateDistance()
        if BillboardGui.Parent then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            distanceLabel.Text = string.format("%.2f studs", distance)
        end
    end

    spawn(function()
        while BillboardGui.Parent do
            updateDistance()
            wait(0.1)
        end
    end)

    BillboardGui.Parent = player.Character:WaitForChild("Head")
end

local function removeESP(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        if player.Character.Head:FindFirstChild("NameESP") then
            player.Character.Head.NameESP:Destroy()
        end
    end
end

local function createHighlightESP(player)
    local highlight = Instance.new("Highlight")
    highlight.Name = "HighlightESP"
    highlight.Adornee = player.Character
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0
    highlight.Parent = player.Character
    
    local function updateFillColor()
        if player.Team and player.Team.TeamColor then
            highlight.FillColor = player.Team.TeamColor.Color
        else
            highlight.FillColor = Color3.new(1, 1, 1) -- Default color if team or team color is not available
        end
    end
    
    updateFillColor()
    player:GetPropertyChangedSignal("Team"):Connect(updateFillColor)
end

local function removeHigh(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        if player.Character:FindFirstChild("HighlightESP") then
            player.Character.HighlightESP:Destroy()
        end
    end
end

local function createTracerESP(player)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1, 1, 1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    local function updateTracer()
        if TracerEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            Tracer.Visible = true
            local rootPart = player.Character.HumanoidRootPart
            local rootPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(rootPart.Position)
            if onScreen then
                Tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
                Tracer.To = Vector2.new(rootPos.X, rootPos.Y)
            else
                Tracer.Visible = false
            end
        else
            Tracer.Visible = false
        end
    end

    RunService.RenderStepped:Connect(updateTracer)

    player.CharacterRemoving:Connect(function()
        Tracer:Remove()
    end)
end

local function removeTracer(player)
    if player:FindFirstChild("TracerESP") then
        player.TracerESP:Destroy()
    end
end

local function createBoxESP(player)
    local box = Instance.new("BoxHandleAdornment")
    box.Name = "BoxESP"
    box.Size = player.Character:GetExtentsSize() * 1.1
    box.Adornee = player.Character
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Transparency = 0.5
    box.Color3 = Color3.new(1, 0, 0)
    box.Parent = player.Character
end

local function removeBoxESP(player)
    if player.Character:FindFirstChild("BoxESP") then
        player.Character.BoxESP:Destroy()
    end
end

local function createBoxESP2D(player)
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Transparency = 0.5
    Box.Color = Color3.new(1, 0, 0)
    Box.Thickness = 2

    local function updateBox()
        if Box2DEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            Box.Visible = true
            local rootPart = player.Character.HumanoidRootPart
            local pos, visible = workspace.CurrentCamera:WorldToViewportPoint(rootPart.Position)
            if visible then
                local size = player.Character:GetExtentsSize()
                local topLeft = workspace.CurrentCamera:WorldToViewportPoint((rootPart.CFrame * CFrame.new(size.X/-2, size.Y/2, 0)).p)
                local bottomRight = workspace.CurrentCamera:WorldToViewportPoint((rootPart.CFrame * CFrame.new(size.X/2, -size.Y/2, 0)).p)
                Box.Size = Vector2.new(bottomRight.X - topLeft.X, bottomRight.Y - topLeft.Y)
                Box.Position = Vector2.new(topLeft.X, topLeft.Y)
            else
                Box.Visible = false
            end
        else
            Box.Visible = false
        end
    end

    RunService.RenderStepped:Connect(updateBox)

    player.CharacterRemoving:Connect(function()
        Box:Remove()
    end)
end

local function removeBoxESP2D(player)
    -- Implement if needed to remove Box ESP 2D
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(function(character)
        wait(1)
        if ESPEnabled then
            createNameESP(player)
        end
        if HighlightEnabled then
            createHighlightESP(player)
        end
        if TracerEnabled then
            createTracerESP(player)
        end
        if BoxEnabled then
            createBoxESP(player)
        end
        if Box2DEnabled then
            createBoxESP2D(player)
        end
    end)
end

local function onPlayerRemoving(player)
    removeESP(player)
    removeHigh(player)
    removeTracer(player)
    removeBoxESP(player)
    -- Remove Box ESP 2D if needed
    -- removeBoxESP2D(player)
end

local function toggleESP(value)
    ESPEnabled = value
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            if ESPEnabled then
                if player.Character and player.Character:FindFirstChild("Head") then
                    createNameESP(player)
                end
            else
                removeESP(player)
            end
        end
    end
end

local function toggleHighlight(value)
    HighlightEnabled = value
    for _, player in pairs(Players:GetChildren()) do
        if player ~= LocalPlayer then
            if HighlightEnabled then
                if player.Character or player.TeamColor then
                    createHighlightESP(player)
                end
            else
                removeHigh(player)
            end
        end
    end
end

local function toggleTracer(value)
    TracerEnabled = value
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            if TracerEnabled then
                createTracerESP(player)
            else
                removeTracer(player)
            end
        end
    end
end

local function toggleBox(value)
    BoxEnabled = value
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            if BoxEnabled then
                createBoxESP(player)
            else
                removeBoxESP(player)
            end
        end
    end
end

local function toggleBox2D(value)
    Box2DEnabled = value
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            if Box2DEnabled then
                createBoxESP2D(player)
            else
                removeBoxESP2D(player)
            end
        end
    end
end

for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        onPlayerAdded(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        onPlayerAdded(player)
    end
end)

Players.PlayerRemoving:Connect(onPlayerRemoving)

local EspTab = Window:MakeTab({
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

EspTab:AddToggle({
    Name = "Name",
    Default = false,
    Callback = function(value)
        toggleESP(value)
    end
})

EspTab:AddToggle({
    Name = "Highlight",
    Default = false,
    Callback = function(value)
        toggleHighlight(value)
    end
})

EspTab:AddToggle({
    Name = "Tracer",
    Default = false,
    Callback = function(value)
        toggleTracer(value)
    end
})

EspTab:AddToggle({
    Name = "Box 3D",
    Default = false,
    Callback = function(value)
        toggleBox(value)
    end
})

EspTab:AddToggle({
    Name = "Box 2D",
    Default = false,
    Callback = function(value)
        toggleBox2D(value)
    end
})

OrionLib:Init()