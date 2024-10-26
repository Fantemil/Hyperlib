-- Instances:
local AimbotGUI = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local EnableToggle = Instance.new("TextButton")
local AimbotLabel = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

-- Properties:
AimbotGUI.Name = "AimbotGUI"
AimbotGUI.ResetOnSpawn = false -- Para que el GUI no se reinicie al morir
AimbotGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = AimbotGUI
Background.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Background.Position = UDim2.new(0.5, -100, 0.5, -75)
Background.Size = UDim2.new(0, 180, 0, 150) -- Ajustado para ser menos ancho y largo
Background.Active = true
Background.Draggable = true -- Hacer que el panel sea movible

Title.Name = "Title"
Title.Parent = Background
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "Aimbot GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000

EnableToggle.Name = "EnableToggle"
EnableToggle.Parent = Background
EnableToggle.BackgroundColor3 = Color3.fromRGB(65, 105, 225) -- Color azul oscuro
EnableToggle.Position = UDim2.new(0.5, -50, 0.5, -30)
EnableToggle.Size = UDim2.new(0, 100, 0, 50)
EnableToggle.Font = Enum.Font.SourceSans
EnableToggle.Text = "Enable Aimbot"
EnableToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
EnableToggle.TextSize = 14.000

AimbotLabel.Name = "AimbotLabel"
AimbotLabel.Parent = Background
AimbotLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimbotLabel.Position = UDim2.new(0.5, -50, 0.5, 20)
AimbotLabel.Size = UDim2.new(0, 100, 0, 20)
AimbotLabel.Font = Enum.Font.SourceSans
AimbotLabel.Text = "Aimbot: OFF"
AimbotLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
AimbotLabel.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = Background
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.Position = UDim2.new(0, 0, 1, -20) -- Ajuste de posiciÃ³n para los crÃ©ditos
Credits.Size = UDim2.new(1, 0, 0, 20)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Made by Bloodscript"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextSize = 14.000

-- Drawing FOV circle
local fov = 100
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = false -- Comenzamos con el FOV invisible
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128) -- Purple color
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local aimbotEnabled = false -- Variable para controlar el estado del aimbot

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer
    local localTeam = localPlayer.Team

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and (not player.Team or player.Team ~= localTeam) then
            local part = player.Character and player.Character:FindFirstChild(trg_part)
            if part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                if distance < last and isVisible and distance < fov then
                    last = distance
                    nearest = player
                end
            end
        end
    end

    return nearest
end

local function toggleAimbot()
    aimbotEnabled = not aimbotEnabled

    if aimbotEnabled then
        EnableToggle.Text = "Disable Aimbot"
        AimbotLabel.Text = "Aimbot: ON"
        AimbotLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        FOVring.Visible = true -- Mostrar el FOV cuando se activa el aimbot
    else
        EnableToggle.Text = "Enable Aimbot"
        AimbotLabel.Text = "Aimbot: OFF"
        AimbotLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        FOVring.Visible = false -- Ocultar el FOV cuando se desactiva el aimbot
    end
end

EnableToggle.MouseButton1Click:Connect(toggleAimbot)

RunService.RenderStepped:Connect(function()
    updateDrawings()
    if aimbotEnabled then
        local closest = getClosestPlayerInFOV("Head")
        if closest and closest.Character:FindFirstChild("Head") then
            lookAt(closest.Character.Head.Position)
        end
    end
end)

-- FunciÃ³n para actualizar el dibujo del campo de visiÃ³n cada frame
game:GetService("RunService").RenderStepped:Connect(updateDrawings)
