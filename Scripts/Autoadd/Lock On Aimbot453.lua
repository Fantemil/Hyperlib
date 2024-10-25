local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()

local targetLock = false
local lockedPlayer = nil
local hotkeyEnabled = false

local lockOnRadius = 800
local fieldOfView = math.rad(15)

local function createGui()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AimBotGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = localPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 250, 0, 100)
    Frame.Position = UDim2.new(0.5, -125, 0, 10)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Parent = ScreenGui
    Frame.Active = true
    Frame.Draggable = true

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, 0, 0.5, 0)
    TitleLabel.Position = UDim2.new(0, 0, 0, 0)
    TitleLabel.Text = "AimBot"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Parent = Frame

    local AimBotToggle = Instance.new("TextButton")
    AimBotToggle.Size = UDim2.new(1, 0, 0.5, 0)
    AimBotToggle.Position = UDim2.new(0, 0, 0.5, 0)
    AimBotToggle.Text = "AimBot: Off"
    AimBotToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    AimBotToggle.Parent = Frame

    AimBotToggle.MouseButton1Click:Connect(function()
        hotkeyEnabled = not hotkeyEnabled
        if hotkeyEnabled then
            AimBotToggle.Text = "AimBot: On"
            AimBotToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            AimBotToggle.Text = "AimBot: Off"
            AimBotToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)

    return AimBotToggle
end

local function initGui()
    if localPlayer.PlayerGui:FindFirstChild("AimBotGUI") then
        localPlayer.PlayerGui.AimBotGUI:Destroy()
    end
    return createGui()
end

local AimBotToggle = initGui()

local function getPlayerInSight()
    local camera = workspace.CurrentCamera
    local closestPlayer = nil
    local closestDistance = lockOnRadius

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local character = player.Character
            local head = character:FindFirstChild("Head")
            local direction = (head.Position - camera.CFrame.Position).Unit
            local angle = math.acos(camera.CFrame.LookVector:Dot(direction))

            local distance = (camera.CFrame.Position - head.Position).Magnitude

            if distance < closestDistance and angle < fieldOfView then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end

    return closestPlayer
end

local function lockOntoPlayer()
    local playerToLock = getPlayerInSight()

    if playerToLock and playerToLock.Character then
        local head = playerToLock.Character:FindFirstChild("Head")
        if head then
            mouse.TargetFilter = head
            lockedPlayer = playerToLock
            targetLock = true
        end
    end
end

local function updateLock()
    if lockedPlayer and lockedPlayer.Character then
        local head = lockedPlayer.Character:FindFirstChild("Head")
        if head then
            local currentCameraPosition = workspace.CurrentCamera.CFrame.Position
            local targetPosition = head.Position
            local aimSpeed = 0.3

            workspace.CurrentCamera.CFrame = CFrame.new(
                currentCameraPosition,
                currentCameraPosition:Lerp(targetPosition, aimSpeed)
            )
        end
    end
end

UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 and hotkeyEnabled then
        targetLock = true
        lockOntoPlayer()
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 and hotkeyEnabled then
        targetLock = false
        mouse.TargetFilter = nil
        lockedPlayer = nil
    end
end)

RunService.RenderStepped:Connect(function()
    if targetLock then
        updateLock()
    end
end)

localPlayer.CharacterAdded:Connect(function(character)
    AimBotToggle = initGui()
    if hotkeyEnabled then
        AimBotToggle.Text = "AimBot: On"
        AimBotToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        AimBotToggle.Text = "AimBot: Off"
        AimBotToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

initGui()