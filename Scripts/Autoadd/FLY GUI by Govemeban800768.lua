local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://2865227271"
sound.Volume = 1
sound.Looped = false  -- Ð£ÑÑÐ°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÐ¼ Looped Ð² false, ÑÑÐ¾Ð±Ñ Ð¼ÑÐ·ÑÐºÐ° Ð¸Ð³ÑÐ°Ð»Ð° Ð¾Ð´Ð¸Ð½ ÑÐ°Ð·

-- ÐÑÐ¸Ð¼ÐµÑ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ñ Ð·Ð²ÑÐºÐ° Ð² ÑÐ¾Ð´Ð¸ÑÐµÐ»ÑÑÐºÐ¸Ð¹ Ð¾Ð±ÑÐµÐºÑ (Ð½Ð°Ð¿ÑÐ¸Ð¼ÐµÑ, Ð² Workspace)
sound.Parent = workspace

-- ÐÐ¾ÑÐ¿ÑÐ¾Ð¸Ð·Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Ð·Ð²ÑÐºÐ°
sound:Play()

-- Ð£Ð´Ð°Ð»ÑÐµÐ¼ Ð·Ð²ÑÐº, ÐºÐ¾Ð³Ð´Ð° Ð¾Ð½ Ð·Ð°ÐºÐ°Ð½ÑÐ¸Ð²Ð°ÐµÑÑÑ
sound.Ended:Connect(function()
    sound:Destroy()
end)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local camera = game.Workspace.CurrentCamera

local flySpeed = 50
local riseSpeed = 10
local initialRiseTime = 2
local turningSpeed = 0.1
local flying = false

local bodyVelocity
local bodyGyro

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ Ð¿Ð°Ð½ÐµÐ»Ð¸ Ð¸Ð½ÑÑÑÑÐºÑÐ¸Ð¹
local function createInstructionPanel()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 50)
    frame.Position = UDim2.new(1, 0, 1, -60) -- ÐÐ°ÑÐ°Ð»ÑÐ½Ð°Ñ Ð¿Ð¾Ð·Ð¸ÑÐ¸Ñ Ð·Ð° ÑÐºÑÐ°Ð½Ð¾Ð¼
    frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    frame.ClipsDescendants = true -- ÐÐ³ÑÐ°Ð½Ð¸ÑÐ¸Ð²Ð°ÐµÑ ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ð¼Ð¾Ðµ Ð²Ð½ÑÑÑÐ¸ ÑÐ°Ð¼ÐºÐ¸
    frame.Parent = screenGui

    local instructionLabel = Instance.new("TextLabel")
    instructionLabel.Size = UDim2.new(1, -10, 1, -10) -- ÐÑÑÐ°Ð²Ð»ÑÐµÑ Ð¾ÑÑÑÑÐ¿Ñ Ð¿Ð¾ ÐºÑÐ°ÑÐ¼
    instructionLabel.Position = UDim2.new(0, 5, 0, 5) -- Ð¦ÐµÐ½ÑÑÐ¸ÑÑÐµÑ ÑÐµÐºÑÑ Ð²Ð½ÑÑÑÐ¸ ÑÐ°Ð¼ÐºÐ¸ Ñ Ð¾ÑÑÑÑÐ¿Ð°Ð¼Ð¸
    instructionLabel.Text = "Type ;fly/;unfly to the chat"
    instructionLabel.TextColor3 = Color3.new(1, 1, 1)
    instructionLabel.BackgroundTransparency = 1
    instructionLabel.Font = Enum.Font.Highway
    instructionLabel.TextSize = 24
    instructionLabel.TextWrapped = true -- ÐÐ²ÑÐ¾Ð¼Ð°ÑÐ¸ÑÐµÑÐºÐ¸ Ð¿ÐµÑÐµÐ½Ð¾ÑÐ¸Ñ ÑÐµÐºÑÑ Ð½Ð° Ð½Ð¾Ð²ÑÑ ÑÑÑÐ¾ÐºÑ
    instructionLabel.Parent = frame

    -- ÐÐ½Ð¸Ð¼Ð°ÑÐ¸Ñ Ð¿Ð¾ÑÐ²Ð»ÐµÐ½Ð¸Ñ Ð¿Ð°Ð½ÐµÐ»Ð¸
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local slideIn = TweenService:Create(frame, tweenInfo, {Position = UDim2.new(1, -310, 1, -60)})
    slideIn:Play()

    -- ÐÐ°Ð´ÐµÑÐ¶ÐºÐ° Ð¸ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ñ Ð¸ÑÑÐµÐ·Ð½Ð¾Ð²ÐµÐ½Ð¸Ñ
    slideIn.Completed:Connect(function()
        wait(3) -- ÐÑÐµÐ¼Ñ, ÑÐµÑÐµÐ· ÐºÐ¾ÑÐ¾ÑÐ¾Ðµ Ð¿Ð°Ð½ÐµÐ»Ñ Ð¸ÑÑÐµÐ·Ð°ÐµÑ
        local slideOut = TweenService:Create(frame, tweenInfo, {Position = UDim2.new(1, 0, 1, -60)})
        slideOut:Play()
        slideOut.Completed:Connect(function()
            screenGui:Destroy()
        end)
    end)
end

-- ÐÑÐ·Ð¾Ð² Ð¿Ð°Ð½ÐµÐ»Ð¸ Ð¿ÑÐ¸ Ð·Ð°Ð¿ÑÑÐºÐµ ÑÐºÑÐ¸Ð¿ÑÐ°
createInstructionPanel()

-- ÐÑÑÐ°Ð²ÑÐ°ÑÑÑ ÑÐ°ÑÑÑ ÑÐºÑÐ¸Ð¿ÑÐ° Ð¿ÑÐ¾ ÑÐ»Ð°Ð¹ Ð¸ Ð°Ð½ÑÐ»Ð°Ð¹
local function initialRise()
    local startTime = tick()

    while tick() - startTime < initialRiseTime do
        bodyVelocity.Velocity = Vector3.new(0, riseSpeed, 0)
        RunService.RenderStepped:Wait()
    end
end

local function startFlying()
    if flying then return end

    flying = true
    humanoid.PlatformStand = true

    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = rootPart

    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
    bodyGyro.CFrame = rootPart.CFrame
    bodyGyro.Parent = rootPart

    initialRise()

    RunService.RenderStepped:Connect(function()
        if flying then
            local moveDirection = humanoid.MoveDirection * flySpeed
            local camLookVector = camera.CFrame.LookVector

            if camLookVector.Y < -0.5 and moveDirection.Magnitude > 0 then
                moveDirection = moveDirection + Vector3.new(0, math.abs(camLookVector.Y) * flySpeed, 0)
            else
                moveDirection = moveDirection + Vector3.new(0, camLookVector.Y * flySpeed, 0)
            end

            bodyVelocity.Velocity = moveDirection

            -- ÐÐ¿ÑÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ðµ ÑÐ³Ð»Ð° Ð½Ð°ÐºÐ»Ð¾Ð½Ð°
            local tiltAngle = 20 -- Ð£Ð³Ð¾Ð» Ð½Ð°ÐºÐ»Ð¾Ð½Ð°
            local tiltFactor = moveDirection.Magnitude / flySpeed -- Ð¤Ð°ÐºÑÐ¾Ñ Ð½Ð°ÐºÐ»Ð¾Ð½Ð° Ð½Ð° Ð¾ÑÐ½Ð¾Ð²Ðµ ÑÐºÐ¾ÑÐ¾ÑÑÐ¸

            -- ÐÐ¿ÑÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ðµ Ð½Ð°Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð°ÐºÐ»Ð¾Ð½Ð° (Ð²Ð¿ÐµÑÐµÐ´ Ð¸Ð»Ð¸ Ð½Ð°Ð·Ð°Ð´)
            local tiltDirection = 1 -- ÐÐ°ÐºÐ»Ð¾Ð½ Ð½Ð°Ð·Ð°Ð´ Ð¿Ð¾ ÑÐ¼Ð¾Ð»ÑÐ°Ð½Ð¸Ñ

            -- ÐÐ¿ÑÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ðµ Ð½Ð°ÐºÐ»Ð¾Ð½Ð° Ð¾ÑÐ½Ð¾ÑÐ¸ÑÐµÐ»ÑÐ½Ð¾ Ð½Ð°Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ ÐºÐ°Ð¼ÐµÑÑ
            if camera.CFrame:VectorToObjectSpace(moveDirection).Z < 0 then
                tiltDirection = -1 -- ÐÐ°ÐºÐ»Ð¾Ð½ Ð²Ð¿ÐµÑÐµÐ´ Ð¿ÑÐ¸ Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ð¸ Ð²Ð¿ÐµÑÐµÐ´
            end

            -- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð½Ð°ÐºÐ»Ð¾Ð½Ð° Ð² Ð·Ð°Ð²Ð¸ÑÐ¸Ð¼Ð¾ÑÑÐ¸ Ð¾Ñ Ð½Ð°Ð¿ÑÐ°Ð²Ð»ÐµÐ½Ð¸Ñ Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ñ
            local tiltCFrame = CFrame.Angles(math.rad(tiltAngle) * tiltFactor * tiltDirection, 0, 0)

            local targetCFrame = CFrame.new(rootPart.Position, rootPart.Position + camLookVector) * tiltCFrame
            bodyGyro.CFrame = bodyGyro.CFrame:Lerp(targetCFrame, turningSpeed)
        end
    end)
end

local function stopFlying()
    flying = false
    humanoid.PlatformStand = false

    if bodyVelocity then bodyVelocity:Destroy() end
    if bodyGyro then bodyGyro:Destroy() end
end

local function onChatMessage(message)
    if message:lower() == ";fly" then
        startFlying()
    elseif message:lower() == ";unfly" then
        stopFlying()
    end
end

player.Chatted:Connect(onChatMessage)