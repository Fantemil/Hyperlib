local FlyKey = Enum.KeyCode.V
local SpeedKey = Enum.KeyCode.LeftControl

local SpeedKeyMultiplier = 3
local FlightSpeed = 999
local FlightAcceleration = 4
local TurnSpeed = 16

-- made by zeezy

-- enjoy :3

local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
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
local Flight = function(delta)
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
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            BaseVelocity = BaseVelocity + (Camera.CFrame.UpVector * FlightSpeed)
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
            StarterGui:SetCore("SendNotification",{
                Title = "zeezyfly",
                Text = "Flight disabled"
            })
            Connection:Disconnect()
            Connection = nil
        else
            StarterGui:SetCore("SendNotification",{
                Title = "zeezyfly",
                Text = "Flight enabled"
            })
            CurrentVelocity = UserRootPart.Velocity
            Connection = RunService.Heartbeat:Connect(Flight)
        end
    end
end)

StarterGui:SetCore("SendNotification",{
    Title = "zeezyfly",
    Text = "Loaded successfully"
})