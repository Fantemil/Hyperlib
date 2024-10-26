local constantSpeed = 50 -- change to change speed
local accelerationRate = 20 -- how fast speed increases towards constantSpeed
local maxSpeed = 60 -- preffered to not get banned
local speedEnabled = false -- set to true for mobile users

local Players = game:GetService("Players")
local RunService = game:GetService("RunService") local player = Players.LocalPlayer local UserInputService = game:GetService("UserInputService")

local currentSpeed = 0
local targetSpeed = 0
local accelerating = false

local function updateSpeed()
    if speedEnabled then
        local moveDirection = player.Character.Humanoid.MoveDirection
        local currentVelocity = player.Character.HumanoidRootPart.Velocity
        local currentHorizontalSpeed = Vector3.new(currentVelocity.X, 0, currentVelocity.Z).Magnitude
        
        if accelerating then
            currentSpeed = currentSpeed + accelerationRate * RunService.RenderStepped:Wait()
            currentSpeed = math.clamp(currentSpeed, 0, constantSpeed)
        else
            currentSpeed = currentHorizontalSpeed
        end
        
        local velocity = moveDirection * currentSpeed
        player.Character.HumanoidRootPart.Velocity = Vector3.new(velocity.X, currentVelocity.Y, velocity.Z)
        
        player.Character.HumanoidRootPart.Velocity = Vector3.new(player.Character.HumanoidRootPart.Velocity.X, currentVelocity.Y, player.Character.HumanoidRootPart.Velocity.Z)
    else

        currentSpeed = 0
        accelerating = false
    end
end

RunService.RenderStepped:Connect(updateSpeed)

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        speedEnabled = not speedEnabled
        if speedEnabled then
            targetSpeed = constantSpeed
            accelerating = true
        else

            currentSpeed = 0
            accelerating = false
        end
    end
end)