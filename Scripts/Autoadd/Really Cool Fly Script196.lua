local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local flying = false
local speed = 50
local maxSpeed = 200
local minSpeed = 10
local speedIncrement = 5
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local flyConnections = {}

local function fly()
    if not flying then
        flying = true
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
        bodyVelocity.Parent = humanoidRootPart

        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.CFrame = humanoidRootPart.CFrame
        bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
        bodyGyro.P = 3000
        bodyGyro.Parent = humanoidRootPart

        local function onRenderStep()
            local moveDirection = Vector3.new()
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.LookVector * speed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.LookVector * speed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.RightVector * speed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.RightVector * speed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.UpVector * speed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.UpVector * speed)
            end

            bodyVelocity.Velocity = moveDirection
            bodyGyro.CFrame = workspace.CurrentCamera.CFrame
        end

        table.insert(flyConnections, RunService.RenderStepped:Connect(onRenderStep))
    end
end

local function stopFly()
    flying = false
    for _, v in pairs(humanoidRootPart:GetChildren()) do
        if v:IsA("BodyVelocity") or v:IsA("BodyGyro") then
            v:Destroy()
        end
    end
    for _, connection in pairs(flyConnections) do
        connection:Disconnect()
    end
    flyConnections = {}
end

local function toggleFly()
    if flying then
        stopFly()
    else
        fly()
    end
end

local function adjustSpeed(increment)
    speed = math.clamp(speed + increment, minSpeed, maxSpeed)
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.G then
        toggleFly()
    elseif input.KeyCode == Enum.KeyCode.Equals then
        adjustSpeed(speedIncrement)
    elseif input.KeyCode == Enum.KeyCode.Minus then
        adjustSpeed(-speedIncrement)
    end
end)

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    stopFly()
end)

player.CharacterRemoving:Connect(stopFly)
