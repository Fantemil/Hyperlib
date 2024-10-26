local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()

local aimBotEnabled = false
local triggerBotEnabled = true
local shootDelay = 0.005
local targetLock = false
local ignoreTeam = false
local lockOnRadius = 10000
local fieldOfView = math.rad(15)

local function createGui()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AimBotGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = localPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 180, 0, 120)
    Frame.Position = UDim2.new(0.5, -90, 0.1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Frame.BackgroundTransparency = 0.1
    Frame.BorderSizePixel = 0
    Frame.Parent = ScreenGui
    Frame.Active = true
    Frame.Draggable = true

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, 0, 0.3, 0)
    TitleLabel.Position = UDim2.new(0, 0, 0, 0)
    TitleLabel.Text = "Lock On"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 16
    TitleLabel.Parent = Frame

    local AimBotToggle = Instance.new("TextButton")
    AimBotToggle.Size = UDim2.new(0.9, 0, 0.25, 0)
    AimBotToggle.Position = UDim2.new(0.05, 0, 0.35, 0)
    AimBotToggle.Text = "AimBot Module: Off"
    AimBotToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    AimBotToggle.Font = Enum.Font.GothamBold
    AimBotToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    AimBotToggle.TextSize = 13
    AimBotToggle.Parent = Frame

    local AimBotCorner = Instance.new("UICorner")
    AimBotCorner.CornerRadius = UDim.new(0, 8)
    AimBotCorner.Parent = AimBotToggle

    AimBotToggle.MouseButton1Click:Connect(function()
        aimBotEnabled = not aimBotEnabled
        if aimBotEnabled then
            AimBotToggle.Text = "AimBot Module: On"
            AimBotToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            AimBotToggle.Text = "AimBot Module: Off"
            AimBotToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)

    local TeamCheckToggle = Instance.new("TextButton")
    TeamCheckToggle.Size = UDim2.new(0.9, 0, 0.25, 0)
    TeamCheckToggle.Position = UDim2.new(0.05, 0, 0.65, 0)
    TeamCheckToggle.Text = "Ignore Team: Off"
    TeamCheckToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    TeamCheckToggle.Font = Enum.Font.GothamBold
    TeamCheckToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TeamCheckToggle.TextSize = 13
    TeamCheckToggle.Parent = Frame

    local TeamCheckCorner = Instance.new("UICorner")
    TeamCheckCorner.CornerRadius = UDim.new(0, 8)
    TeamCheckCorner.Parent = TeamCheckToggle

    TeamCheckToggle.MouseButton1Click:Connect(function()
        ignoreTeam = not ignoreTeam
        if ignoreTeam then
            TeamCheckToggle.Text = "Ignore Team: On"
            TeamCheckToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            TeamCheckToggle.Text = "Ignore Team: Off"
            TeamCheckToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
end

createGui()

local function isCrosshairOverPlayer()
    local target = mouse.Target
    if target and target.Parent:FindFirstChild("Humanoid") then
        local targetPlayer = Players:GetPlayerFromCharacter(target.Parent)
        return targetPlayer and targetPlayer ~= localPlayer and targetPlayer or nil
    end
    return nil
end

local function click()
    mouse1press()
    wait(shootDelay)
    mouse1release()
end

local function getClosestPlayer()
    local camera = workspace.CurrentCamera
    local closestPlayer = nil
    local closestDistance = lockOnRadius

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
            if ignoreTeam or player.Team ~= localPlayer.Team then
                local head = player.Character:FindFirstChild("Head")
                local torso = player.Character:FindFirstChild("Torso") or player.Character:FindFirstChild("UpperTorso") or player.Character:FindFirstChild("LowerTorso")
                if head and torso then
                    local directionToHead = (head.Position - camera.CFrame.Position).Unit
                    local directionToTorso = (torso.Position - camera.CFrame.Position).Unit

                    local angleToHead = math.acos(camera.CFrame.LookVector:Dot(directionToHead))
                    local angleToTorso = math.acos(camera.CFrame.LookVector:Dot(directionToTorso))
                    local distanceToHead = (camera.CFrame.Position - head.Position).Magnitude
                    local distanceToTorso = (camera.CFrame.Position - torso.Position).Magnitude

                    if distanceToHead < closestDistance and angleToHead < fieldOfView then
                        closestPlayer = player
                        closestDistance = distanceToHead
                    elseif distanceToTorso < closestDistance and angleToTorso < fieldOfView then
                        closestPlayer = player
                        closestDistance = distanceToTorso
                    end
                end
            end
        end
    end

    return closestPlayer
end

RunService.RenderStepped:Connect(function()
    if triggerBotEnabled then
        local targetPlayer = isCrosshairOverPlayer()
        if targetPlayer then
            click()
        end
    end

    if aimBotEnabled and targetLock then
        local playerToAimAt = getClosestPlayer()
        if playerToAimAt and playerToAimAt.Character then
            local targetPosition = playerToAimAt.Character.Head.Position
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.Position, targetPosition)
        end
    end
end)

UIS.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and aimBotEnabled then
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            targetLock = true
        end
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        targetLock = false
    end
end)