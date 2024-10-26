local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UniversalButton = Instance.new("TextButton")
local ESPButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")

local UniversalFrame = Instance.new("Frame")
local InfJumpButton = Instance.new("TextButton")
local SpeedTextbox = Instance.new("TextBox")
local JumpPowerTextbox = Instance.new("TextBox")

local ESPSubmenu = Instance.new("Frame")
local BoxButton = Instance.new("TextButton")
local TracersButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true

Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Menu"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true

UniversalButton.Parent = MainFrame
UniversalButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UniversalButton.Position = UDim2.new(0.1, 0, 0.25, 0)
UniversalButton.Size = UDim2.new(0.8, 0, 0.1, 0)
UniversalButton.Font = Enum.Font.SourceSansBold
UniversalButton.Text = "Universal"
UniversalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UniversalButton.TextScaled = true

ESPButton.Parent = MainFrame
ESPButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ESPButton.Position = UDim2.new(0.1, 0, 0.4, 0)
ESPButton.Size = UDim2.new(0.8, 0, 0.1, 0)
ESPButton.Font = Enum.Font.SourceSansBold
ESPButton.Text = "ESP"
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.TextScaled = true

CloseButton.Parent = ScreenGui
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0, 10, 0, 10)
CloseButton.Size = UDim2.new(0, 50, 0, 50)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "CHK"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.Active = true
CloseButton.Draggable = true

Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits.Size = UDim2.new(1, 0, 0, 30)
Credits.Position = UDim2.new(0, 0, 0.85, 0)
Credits.Font = Enum.Font.SourceSansBold
Credits.Text = "Credits: CHAKAON"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true

UniversalFrame.Parent = ScreenGui
UniversalFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UniversalFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
UniversalFrame.Size = UDim2.new(0, 400, 0, 300)
UniversalFrame.Visible = false
UniversalFrame.Active = true
UniversalFrame.Draggable = true

local UniversalTitle = Instance.new("TextLabel")
UniversalTitle.Parent = UniversalFrame
UniversalTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
UniversalTitle.Size = UDim2.new(1, 0, 0, 50)
UniversalTitle.Font = Enum.Font.SourceSansBold
UniversalTitle.Text = "Universal"
UniversalTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
UniversalTitle.TextScaled = true

InfJumpButton.Parent = UniversalFrame
InfJumpButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InfJumpButton.Position = UDim2.new(0.1, 0, 0.25, 0)
InfJumpButton.Size = UDim2.new(0.8, 0, 0.1, 0)
InfJumpButton.Font = Enum.Font.SourceSansBold
InfJumpButton.Text = "InfJump"
InfJumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InfJumpButton.TextScaled = true

SpeedTextbox.Parent = UniversalFrame
SpeedTextbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedTextbox.Position = UDim2.new(0.1, 0, 0.4, 0)
SpeedTextbox.Size = UDim2.new(0.8, 0, 0.1, 0)
SpeedTextbox.Font = Enum.Font.SourceSansBold
SpeedTextbox.Text = "SPEED"
SpeedTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedTextbox.TextScaled = true

JumpPowerTextbox.Parent = UniversalFrame
JumpPowerTextbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JumpPowerTextbox.Position = UDim2.new(0.1, 0, 0.55, 0)
JumpPowerTextbox.Size = UDim2.new(0.8, 0, 0.1, 0)
JumpPowerTextbox.Font = Enum.Font.SourceSansBold
JumpPowerTextbox.Text = "JUMPPOWER"
JumpPowerTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPowerTextbox.TextScaled = true

ESPSubmenu.Parent = ScreenGui
ESPSubmenu.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ESPSubmenu.Position = UDim2.new(0.5, -200, 0.5, -150)
ESPSubmenu.Size = UDim2.new(0, 400, 0, 300)
ESPSubmenu.Visible = false
ESPSubmenu.Active = true
ESPSubmenu.Draggable = true

local ESPSubmenuTitle = Instance.new("TextLabel")
ESPSubmenuTitle.Parent = ESPSubmenu
ESPSubmenuTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ESPSubmenuTitle.Size = UDim2.new(1, 0, 0, 50)
ESPSubmenuTitle.Font = Enum.Font.SourceSansBold
ESPSubmenuTitle.Text = "ESP"
ESPSubmenuTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPSubmenuTitle.TextScaled = true

BoxButton.Parent = ESPSubmenu
BoxButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BoxButton.Position = UDim2.new(0.1, 0, 0.25, 0)
BoxButton.Size = UDim2.new(0.8, 0, 0.1, 0)
BoxButton.Font = Enum.Font.SourceSansBold
BoxButton.Text = "Box"
BoxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxButton.TextScaled = true

TracersButton.Parent = ESPSubmenu
TracersButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TracersButton.Position = UDim2.new(0.1, 0, 0.4, 0)
TracersButton.Size = UDim2.new(0.8, 0, 0.1, 0)
TracersButton.Font = Enum.Font.SourceSansBold
TracersButton.Text = "Tracers"
TracersButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TracersButton.TextScaled = true

local function enableBox()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local box = Instance.new("BoxHandleAdornment")
            box.Size = player.Character.HumanoidRootPart.Size
            box.Adornee = player.Character.HumanoidRootPart
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Transparency = 0.5
            box.Color3 = Color3.new(0, 1, 0) -- Verde
            box.Parent = player.Character.HumanoidRootPart
        end
    end
end

BoxButton.MouseButton1Click:Connect(enableBox)

-- FunciÃ³n para activar Tracers
local function enableTracers()
    local player = game.Players.LocalPlayer

    for _, tracer in ipairs(workspace:GetChildren()) do
        if tracer:IsA("Part") and tracer.Name == "Tracer" then
            tracer:Destroy()
        end
    end

    for _, targetPlayer in ipairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local tracer = Instance.new("Part")
            tracer.Name = "Tracer"
            tracer.Anchored = true
            tracer.CanCollide = false
            tracer.Size = Vector3.new(0.1, 0.1, 0.1)
            tracer.BrickColor = BrickColor.new("Bright green")
            tracer.Transparency = 0.5

            local attachment0 = Instance.new("Attachment", player.Character.HumanoidRootPart)
            local attachment1 = Instance.new("Attachment", targetPlayer.Character.HumanoidRootPart)

            local beam = Instance.new("Beam")
            beam.Attachment0 = attachment0
            beam.Attachment1 = attachment1
            beam.FaceCamera = true
            beam.Color = ColorSequence.new(Color3.fromRGB(0, 255, 0))
            beam.Width0 = 0.1
            beam.Width1 = 0.1
            beam.Parent = tracer

            tracer.Parent = workspace
        end
    end
end

TracersButton.MouseButton1Click:Connect(enableTracers)

-- Conexiones de eventos para el menÃº principal
UniversalButton.MouseButton1Click:Connect(function()
    UniversalFrame.Visible = not UniversalFrame.Visible
    ESPSubmenu.Visible = false
end)

ESPButton.MouseButton1Click:Connect(function()
    ESPSubmenu.Visible = not ESPSubmenu.Visible
    UniversalFrame.Visible = false
end)

CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    UniversalFrame.Visible = false
    ESPSubmenu.Visible = false
end)

local infJumpEnabled = false

local function enableInfJump()
    infJumpEnabled = not infJumpEnabled
    if infJumpEnabled then
        InfJumpButton.Text = "InfJump (On)"
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()

        mouse.KeyDown:Connect(function(key)
            if key == " " and infJumpEnabled then
                player.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            end
        end)
    else
        InfJumpButton.Text = "InfJump"
    end
end

InfJumpButton.MouseButton1Click:Connect(enableInfJump)

local function changeSpeed()
    local newSpeed = tonumber(SpeedTextbox.Text)
    if newSpeed then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = newSpeed
        end
    end
end

SpeedTextbox.FocusLost:Connect(changeSpeed)

local function changeJumpPower()
    local newJumpPower = tonumber(JumpPowerTextbox.Text)
    if newJumpPower then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = newJumpPower
        end
    end
end

JumpPowerTextbox.FocusLost:Connect(changeJumpPower)

MainFrame.Visible = false