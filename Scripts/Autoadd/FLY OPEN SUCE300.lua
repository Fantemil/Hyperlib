local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local pushPart

local function createPushPart()
    if pushPart then
        pushPart:Destroy()
    end

    pushPart = Instance.new("Part")
    pushPart.Size = Vector3.new(3, 3, 3)
    pushPart.Anchored = false
    pushPart.CanCollide = true
    pushPart.CanTouch = true
    pushPart.CanQuery = true
    pushPart.Position = humanoidRootPart.Position + Vector3.new(0, 2, 0)
    pushPart.Transparency = 1  --> Set transparency to 1 <--
    pushPart.Parent = workspace

    local weld = Instance.new("WeldConstraint")
    weld.Part0 = humanoidRootPart
    weld.Part1 = pushPart
    weld.Parent = pushPart

    pushPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
end

local isActive = false

local function togglePushPart()
    isActive = not isActive
    if isActive then
        createPushPart()
    else
        if pushPart then
            pushPart:Destroy()
            pushPart = nil
        end
    end
end

local userInput = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local moveDirection = Vector3.new(0, 0, 0)
local moveSpeed = 250

local function onInputBegan(input)
    if input.KeyCode == Enum.KeyCode.K then
        togglePushPart()
    end
    if input.KeyCode == Enum.KeyCode.W then
        moveDirection = Vector3.new(0, 0, -1)
    elseif input.KeyCode == Enum.KeyCode.S then
        moveDirection = Vector3.new(0, 0, 1)
    elseif input.KeyCode == Enum.KeyCode.A then
        moveDirection = Vector3.new(-1, 0, 0)
    elseif input.KeyCode == Enum.KeyCode.D then
        moveDirection = Vector3.new(1, 0, 0)
    elseif input.KeyCode == Enum.KeyCode.Space then
        moveDirection = Vector3.new(0, 1, 0)
    elseif input.KeyCode == Enum.KeyCode.LeftShift then
        moveDirection = Vector3.new(0, -1, 0)
    end
end

local function onInputEnded(input)
    if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S or 
       input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D or 
       input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.LeftShift then
        moveDirection = Vector3.new(0, 0, 0)
    end
end

userInput.InputBegan:Connect(onInputBegan)
userInput.InputEnded:Connect(onInputEnded)

character:WaitForChild("Humanoid").Died:Connect(function()
    if pushPart then
        pushPart:Destroy()
        pushPart = nil
    end
end)

runService.RenderStepped:Connect(function()
    if pushPart then
        pushPart.Position = humanoidRootPart.Position + Vector3.new(0, 2, 0)

        if moveDirection.Magnitude > 0 then
            pushPart.Velocity = humanoidRootPart.CFrame:VectorToWorldSpace(moveDirection * moveSpeed)
        else
            pushPart.Velocity = Vector3.new(0, 0, 0)
        end

        if (humanoidRootPart.Position - pushPart.Position).Magnitude < (pushPart.Size.X / 2) then
            pushPart.CanCollide = true
        else
            pushPart.CanCollide = false
        end
    end
end)
