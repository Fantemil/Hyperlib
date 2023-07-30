local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local CurrentCamera = workspace.CurrentCamera
local Debris = workspace.Debris
local VParts = Debris.VParts

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Forward = 0
local Sideways = 0
local RocketSpeed = 300
local Break = false

VParts.ChildAdded:Connect(function(RPG_Rocket)
    if not Players.LocalPlayer.Character:FindFirstChild("RPG-7") then
        return
    end
    
    task.wait()

    if RPG_Rocket.Name == "RPG_Rocket" then
        CurrentCamera.CameraSubject = RPG_Rocket

        LocalPlayer.Character.HumanoidRootPart.Anchored = true

        pcall(function()
            RPG_Rocket.BodyForce:Destroy()
            RPG_Rocket.RotPart.BodyAngularVelocity:Destroy()
            RPG_Rocket.Sound:Destroy()
        end)
        
        local BV = Instance.new("BodyVelocity", RPG_Rocket)
        BV.MaxForce = Vector3.new(1e9, 1e9, 1e9)
        BV.Velocity = Vector3.new()
        
        local BG = Instance.new("BodyGyro", RPG_Rocket)
        BG.P = 9e4
        BG.MaxTorque = Vector3.new(1e9, 1e9, 1e9)

        task.spawn(function()
            while true do
                RunService.RenderStepped:Wait()

                TweenService:Create(BV, TweenInfo.new(0.2), {Velocity = ((CurrentCamera.CFrame.LookVector * Forward) + (CurrentCamera.CFrame.RightVector * Sideways)) * RocketSpeed}):Play()
                BG.CFrame = CurrentCamera.CoordinateFrame
                workspace.CurrentCamera.CFrame = RPG_Rocket.CFrame * CFrame.new(Vector3.new(0, 1, 1))
                
                if Break then
                    Break = false
                    break
                end
            end
            
            CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end)    

        UserInputService.InputBegan:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode.W then
                Forward = 1
            elseif Key.KeyCode == Enum.KeyCode.S then
                Forward = -1
            elseif Key.KeyCode == Enum.KeyCode.D then
                Sideways = 1
            elseif Key.KeyCode == Enum.KeyCode.A then
                Sideways = -1
            end
        end)

        UserInputService.InputEnded:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode.W or Key.KeyCode == Enum.KeyCode.S then
                Forward = 0
            elseif Key.KeyCode == Enum.KeyCode.D or Key.KeyCode == Enum.KeyCode.A then
                Sideways = 0
            end
        end)
    end
end)

Debris.ChildAdded:Connect(function(A)
    task.wait()
    pcall(function()
        Break = ((A.Name == "RPG_Explosion_Long" or A.Name == "RPG_Explosion_Short"))
    end)
end)