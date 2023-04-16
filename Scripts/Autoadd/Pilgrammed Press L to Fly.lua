local FlyKey = Enum.KeyCode.L
local SpeedKey = Enum.KeyCode.LeftControl

local SpeedKeyMultiplier = 2
local FlightSpeed = 50
local FlightAcceleration = 10
local TurnSpeed = 5

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local User = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local UserCharacter = nil
local UserRootPart = nil
local Connection = nil

workspace.Changed:Connect(function()
    Camera = workspace.CurrentCamera
end)

local setCharacter = function(c)
    UserCharacter = c
    UserRootPart = c:WaitForChild("HumanoidRootPart")
end

User.CharacterAdded:Connect(setCharacter)
if User.Character then
    setCharacter(User.Character)
end

local CurrentVelocity = Vector3.new(0,0,0)
local Flying = false
local Jumping = false

local function onJump()
    if Flying then
        Jumping = true
    end
end

User.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Jumped:Connect(onJump)
end)

local function fly(delta)
    local BaseVelocity = Vector3.new(0,0,0)
    if not UserInputService:GetFocusedTextBox() then
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            BaseVelocity = BaseVelocity + (Camera.CFrame.LookVector * FlightSpeed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            BaseVelocity = BaseVelocity - (Camera.CFrame.RightVector * FlightSpeed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            BaseVelocity = BaseVelocity - (Camera.CFrame.LookVector * FlightSpeed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            BaseVelocity = BaseVelocity + (Camera.CFrame.RightVector * FlightSpeed)
        end
        if Jumping then
            BaseVelocity = BaseVelocity + (Camera.CFrame.UpVector * FlightSpeed)
            Jumping = false
        end
     if UserInputService:IsKeyDown(SpeedKey) then
      BaseVelocity = BaseVelocity * SpeedKeyMultiplier
     end
    end
    if UserRootPart then
        local car = UserRootPart:GetRootPart()
        if car.Anchored then return end
        if not isnetworkowner(car) then return end
        CurrentVelocity = CurrentVelocity:Lerp(
            BaseVelocity,
            math.clamp(delta * FlightAcceleration, 0, 1)
        )
        car.Velocity = CurrentVelocity + Vector3.new(0,2,0)
        if car ~= UserRootPart then
            car.RotVelocity = Vector3.new(0,0,0)
            car.CFrame = car.CFrame:Lerp(CFrame.lookAt(
                car.Position,
                car.Position + CurrentVelocity + Camera.CFrame.LookVector
            ), math.clamp(delta * TurnSpeed, 0, 1))
        end
    end
end

UserInputService.InputBegan:Connect(function(userInput,gameProcessed)
    if gameProcessed then return end
    if userInput.KeyCode == FlyKey then
        if Connection then
            Connection:Disconnect()
            Connection = nil
            Flying = false
        else
            Flying = true
            CurrentVelocity = UserRootPart.Velocity
            Connection = RunService.Heartbeat:Connect(fly)
        end
    end
end)