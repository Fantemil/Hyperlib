local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local originalWalkSpeed = humanoid.WalkSpeed
local lastSafePosition = humanoidRootPart.CFrame

-- Enable Anti Fling and Anti Void
local function enableAntiFlingAndVoid()
    -- Anti Fling
    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.CanCollide = false
            part.Velocity = Vector3.new(0, 0, 0)
        end
    end

    antiFlingConnection = game:GetService("RunService").Heartbeat:Connect(function()
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.CanCollide = false
            end
        end
    end)

    local seat1 = character:FindFirstChild("Seat1")
    if seat1 then seat1:Destroy() end

    local seat2 = character:FindFirstChild("Seat2")
    if seat2 then seat2:Destroy() end

    humanoid.RigType = Enum.HumanoidRigType.R15

    -- Anti Void
    antiVoidConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if humanoidRootPart.Position.Y < -100 or humanoidRootPart.Position.Y > 400 then
            humanoidRootPart.CFrame = lastSafePosition
        end
    end)

    -- Store the last safe position separately
    positionConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if humanoidRootPart.Velocity.magnitude < 50 and humanoidRootPart.RotVelocity.magnitude < 50 then
            lastSafePosition = humanoidRootPart.CFrame
        end
    end)

    -- Prevent excessive velocity and rotational velocity
    velocityConnection = game:GetService("RunService").Stepped:Connect(function()
        if humanoidRootPart.Velocity.magnitude > 50 then
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
        if humanoidRootPart.RotVelocity.magnitude > 50 then
            humanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
        end
    end)

    -- Disable Ragdoll state
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
end

-- Disable Anti Fling and Anti Void
local function disableAntiFlingAndVoid()
    -- Restore original WalkSpeed
    humanoid.WalkSpeed = originalWalkSpeed

    -- Disable Anti Fling
    if antiFlingConnection then
        antiFlingConnection:Disconnect()
        antiFlingConnection = nil
    end

    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.CanCollide = true
        end
    end

    humanoid.RigType = Enum.HumanoidRigType.R6

    -- Disable Anti Void
    if antiVoidConnection then
        antiVoidConnection:Disconnect()
        antiVoidConnection = nil
    end

    -- Disable velocity and rotational velocity check
    if velocityConnection then
        velocityConnection:Disconnect()
        velocityConnection = nil
    end

    -- Disable position tracking
    if positionConnection then
        positionConnection:Disconnect()
        positionConnection = nil
    end

    -- Enable Ragdoll state
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
end