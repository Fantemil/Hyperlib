-- ConfiguraciÃ³n inicial del GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ESPButton = Instance.new("TextButton")
local FlyButton = Instance.new("TextButton")
local JumpBoostButton = Instance.new("TextButton")
local TeleportButton = Instance.new("TextButton")
local AutoHackButton = Instance.new("TextButton")
local BeastRoleButton = Instance.new("TextButton")
local ChatButton = Instance.new("TextButton")
local RadarFrame = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")

local UIS = game:GetService("UserInputService")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
MainFrame.Size = UDim2.new(0, 250, 0, 450)
MainFrame.Active = true
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.Size = UDim2.new(0, 250, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Flee the Facility GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18

-- BotÃ³n para cerrar el GUI
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0.9, -20, 0, 5)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- Cierra el GUI
end)

-- CrÃ©ditos
Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Credits.Position = UDim2.new(0, 0, 0.92, 0)
Credits.Size = UDim2.new(0, 250, 0, 20)
Credits.Font = Enum.Font.SourceSansItalic
Credits.Text = "By Bloodscript"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextSize = 14

-- Botones para las funciones
ESPButton.Name = "ESPButton"
ESPButton.Parent = MainFrame
ESPButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ESPButton.Position = UDim2.new(0.1, 0, 0.15, 0)
ESPButton.Size = UDim2.new(0, 200, 0, 30)
ESPButton.Font = Enum.Font.SourceSans
ESPButton.Text = "Toggle ESP"
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.TextSize = 18

FlyButton.Name = "FlyButton"
FlyButton.Parent = MainFrame
FlyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
FlyButton.Position = UDim2.new(0.1, 0, 0.25, 0)
FlyButton.Size = UDim2.new(0, 200, 0, 30)
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = "Toggle Fly"
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.TextSize = 18

JumpBoostButton.Name = "JumpBoostButton"
JumpBoostButton.Parent = MainFrame
JumpBoostButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
JumpBoostButton.Position = UDim2.new(0.1, 0, 0.35, 0)
JumpBoostButton.Size = UDim2.new(0, 200, 0, 30)
JumpBoostButton.Font = Enum.Font.SourceSans
JumpBoostButton.Text = "Jump Boost"
JumpBoostButton.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpBoostButton.TextSize = 18

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = MainFrame
TeleportButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TeleportButton.Position = UDim2.new(0.1, 0, 0.45, 0)
TeleportButton.Size = UDim2.new(0, 200, 0, 30)
TeleportButton.Font = Enum.Font.SourceSans
TeleportButton.Text = "Teleport"
TeleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton.TextSize = 18

AutoHackButton.Name = "AutoHackButton"
AutoHackButton.Parent = MainFrame
AutoHackButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AutoHackButton.Position = UDim2.new(0.1, 0, 0.55, 0)
AutoHackButton.Size = UDim2.new(0, 200, 0, 30)
AutoHackButton.Font = Enum.Font.SourceSans
AutoHackButton.Text = "Auto Hack"
AutoHackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoHackButton.TextSize = 18

BeastRoleButton.Name = "BeastRoleButton"
BeastRoleButton.Parent = MainFrame
BeastRoleButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BeastRoleButton.Position = UDim2.new(0.1, 0, 0.65, 0)
BeastRoleButton.Size = UDim2.new(0, 200, 0, 30)
BeastRoleButton.Font = Enum.Font.SourceSans
BeastRoleButton.Text = "Show Beast"
BeastRoleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BeastRoleButton.TextSize = 18

ChatButton.Name = "ChatButton"
ChatButton.Parent = MainFrame
ChatButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ChatButton.Position = UDim2.new(0.1, 0, 0.75, 0)
ChatButton.Size = UDim2.new(0, 200, 0, 30)
ChatButton.Font = Enum.Font.SourceSans
ChatButton.Text = "Auto Chat"
ChatButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatButton.TextSize = 18

-- FunciÃ³n ESP Mejorada
local ESPEnabled = false
ESPButton.MouseButton1Click:Connect(function()
    ESPEnabled = not ESPEnabled
    ESPButton.Text = ESPEnabled and "ESP On" or "ESP Off"
    
    if ESPEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                createESP(player.Character)
            end
        end
        
        for _, computer in pairs(workspace:GetDescendants()) do
            if computer:IsA("Model") and computer.Name == "Computer" then
                createESP(computer)
            end
        end
    else
        removeESP()
    end
end)

function createESP(model)
    if not model then return end
    
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Name = "ESPBox"
    espBox.Size = model:GetExtentsSize()
    espBox.Adornee = model:FindFirstChildOfClass("Part")
    espBox.Color3 = Color3.fromRGB(255, 0, 0)
    espBox.Transparency = 0.7
    espBox.AlwaysOnTop = true
    espBox.ZIndex = 5
    espBox.Parent = model:FindFirstChildOfClass("Part")
end

function removeESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            for _, child in pairs(player.Character:GetChildren()) do
                if child:IsA("BoxHandleAdornment") and child.Name == "ESPBox" then
                    child:Destroy()
                end
            end
        end
    end
    
    for _, computer in pairs(workspace:GetDescendants()) do
        if computer:IsA("Model") and computer.Name == "Computer" then
            for _, part in pairs(computer:GetChildren()) do
                if part:IsA("BoxHandleAdornment") and part.Name == "ESPBox" then
                    part:Destroy()
                end
            end
        end
    end
end

-- Modo de Vuelo
local flying = false
local speed = 50
FlyButton.MouseButton1Click:Connect(function()
    flying = not flying
    FlyButton.Text = flying and "Fly On" or "Fly Off"

    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if flying then
        humanoid.PlatformStand = true
        while flying do
            wait()
            local moveDir = humanoid.MoveDirection
            character.HumanoidRootPart.Velocity = moveDir * speed
        end
    else
        humanoid.PlatformStand = false
        character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
end)

-- Aumentador de Salto
JumpBoostButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        humanoid.JumpPower = 100 -- Ajusta el valor segÃºn sea necesario
    end
end)

-- TeletransportaciÃ³n Personalizada
TeleportButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local mouse = player:GetMouse()

    if character and mouse then
        character:SetPrimaryPartCFrame(CFrame.new(mouse.Hit.Position))
    end
end)

-- Auto-Hack para Computadoras
AutoHackButton.MouseButton1Click:Connect(function()
    while true do
        wait(1) -- Intervalo para realizar hacks

        for _, computer in pairs(workspace:GetDescendants()) do
            if computer:IsA("Model") and computer.Name == "Computer" then
                local hackPart = computer:FindFirstChild("HackPart")
                if hackPart and hackPart:IsA("Part") then
                    -- Inicia el hackeo aquÃ­
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, hackPart, 1)
                end
            end
        end
    end
end)

-- Mostrar el Rol del Beast
BeastRoleButton.MouseButton1Click:Connect(function()
    local players = game.Players:GetPlayers()
    for _, player in pairs(players) do
        if player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid:FindFirstChild("Role") then
                if humanoid.Role.Value == "Beast" then
                    print(player.Name .. " es el Beast.")
                end
            end
        end
    end
end)

-- Mensajes de Chat AutomÃ¡tico
ChatButton.MouseButton1Click:Connect(function()
    local messages = {"Â¡Estoy aquÃ­ para ganar!", "Â¡Vamos equipo!", "Â¡No dejemos que el Beast nos atrape!"}
    while true do
        wait(5) -- Intervalo entre mensajes
        local randomMessage = messages[math.random(1, #messages)]
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(randomMessage, "All")
    end
end)

-- FunciÃ³n de Radar (Visualiza Jugadores y Computadoras en un marco)
local radarFrame = Instance.new("Frame")
radarFrame.Parent = MainFrame
radarFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
radarFrame.Position = UDim2.new(0.05, 0, 0.85, 0)
radarFrame.Size = UDim2.new(0, 240, 0, 80)
radarFrame.Visible = false

local radarLabel = Instance.new("TextLabel")
radarLabel.Parent = radarFrame
radarLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
radarLabel.Size = UDim2.new(1, 0, 1, 0)
radarLabel.Text = "Radar Activado"
radarLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
radarLabel.TextSize = 14
radarLabel.TextWrapped = true

local function updateRadar()
    while radarFrame.Visible do
        wait(1) -- Intervalo de actualizaciÃ³n

        local radarText = "Jugadores:\n"
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                radarText = radarText .. player.Name .. "\n"
            end
        end

        radarText = radarText .. "\nComputadoras:\n"
        for _, computer in pairs(workspace:GetDescendants()) do
            if computer:IsA("Model") and computer.Name == "Computer" then
                radarText = radarText .. "Computadora\n"
            end
        end

        radarLabel.Text = radarText
    end
end

-- BotÃ³n para activar el radar
local RadarButton = Instance.new("TextButton")
RadarButton.Name = "RadarButton"
RadarButton.Parent = MainFrame
RadarButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
RadarButton.Position = UDim2.new(0.1, 0, 0.85, 0)
RadarButton.Size = UDim2.new(0, 200, 0, 30)
RadarButton.Font = Enum.Font.SourceSans
RadarButton.Text = "Toggle Radar"
RadarButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RadarButton.TextSize = 18

RadarButton.MouseButton1Click:Connect(function()
    radarFrame.Visible = not radarFrame.Visible
    if radarFrame.Visible then
        updateRadar()
    end
end)
