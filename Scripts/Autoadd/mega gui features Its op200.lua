local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local mouse = player:GetMouse()
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local Camera = workspace.CurrentCamera
local CameraPart = nil

local flySpeed = 50
local walkSpeed = 16
local jumpPower = 50
local FOV = 70
local noClip = false
local flyEnabled = false
local espEnabled = false
local tracersEnabled = false
local chamsEnabled = false
local aimbotEnabled = false
local infiniteJumpEnabled = false
local expandHitboxes = false
local loopTeleportEnabled = false

local function createButton(parent, position, text, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    button.TextColor3 = Color3.fromRGB(0, 255, 0)
    button.Text = text
    button.MouseButton1Click:Connect(callback)
    return button
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")

ScreenGui.Parent = CoreGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(0.5, -200, 0.5, -300)
Frame.Size = UDim2.new(0, 400, 0, 600)
Frame.Visible = true

ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 120, 0, 50)
ToggleButton.Position = UDim2.new(0.9, 0, 0.9, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60
ToggleButton.TextColor3 = Color3.fromRGB(0, 255, 0)
ToggleButton.Text = "Toggle GUI"
ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

local function toggleESP()
    espEnabled = not espEnabled
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= player then
            local highlight = v.Character:FindFirstChild("Highlight") or Instance.new("Highlight", v.Character)
            highlight.Enabled = espEnabled
        end
    end
end
createButton(Frame, UDim2.new(0, 100, 0, 20), "Toggle ESP", toggleESP)

local function toggleChams()
    chamsEnabled = not chamsEnabled
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= player then
            for _, part in pairs(v.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.Material = chamsEnabled and Enum.Material.Neon or Enum.Material.Plastic
                end
            end
        end
    end
end
createButton(Frame, UDim2.new(0, 100, 0, 80), "Toggle Chams", toggleChams)

local function toggleTracers()
    tracersEnabled = not tracersEnabled
   end
createButton(Frame, UDim2.new(0, 100, 0, 140), "Toggle Tracers", toggleTracers)

local function toggleXRay()
end
createButton(Frame, UDim2.new(0, 100, 0, 200), "Toggle X-Ray", toggleXRay)

local function increaseFOV()
    FOV = FOV + 10
    Camera.FieldOfView = FOV
end
createButton(Frame, UDim2.new(0, 100, 0, 260), "Increase FOV", increaseFOV)

local function decreaseFOV()
    FOV = FOV - 10
    Camera.FieldOfView = FOV
end
createButton(Frame, UDim2.new(0, 100, 0, 320), "Decrease FOV", decreaseFOV)

local function toggleNoClipCamera()
    noClip = not noClip
    RunService.Stepped:Connect(function()
        if noClip then
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end
createButton(Frame, UDim2.new(0, 100, 0, 380), "Toggle No-Clip Camera", toggleNoClipCamera)

local function toggleFly()
    flyEnabled = not flyEnabled
    if flyEnabled then
        CameraPart = Instance.new("Part", workspace)
        CameraPart.Size = Vector3.new(0.5, 0.5, 0.5)
        CameraPart.Anchored = true
        CameraPart.Transparency = 1
        RunService.RenderStepped:Connect(function()
            CameraPart.CFrame = Camera.CFrame * CFrame.new(0, 0, -flySpeed / 10)
            Camera.CameraSubject = CameraPart
        end)
    else
        Camera.CameraSubject = humanoid
        CameraPart:Destroy()
    end
end
createButton(Frame, UDim2.new(0, 100, 0, 440), "Toggle Fly", toggleFly)

local function increaseFlySpeed()
    flySpeed = flySpeed + 10
end
createButton(Frame, UDim2.new(0, 100, 0, 500), "Increase Fly Speed", increaseFlySpeed)

local function decreaseFlySpeed()
    flySpeed = flySpeed - 10
end
createButton(Frame, UDim2.new(0, 100, 0, 560), "Decrease Fly Speed", decreaseFlySpeed)

mouse.Button2Down:Connect(function()
    if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
        local pos = mouse.Hit.p
        character:SetPrimaryPartCFrame(CFrame.new(pos + Vector3.new(0, 5, 0)))
    end
end)

UIS.JumpRequest:Connect(function()
    if infiniteJumpEnabled then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

createButton(Frame, UDim2.new(0, 100, 0, 620), "Enable Infinite Jump", function()
    infiniteJumpEnabled = not infiniteJumpEnabled
end)
