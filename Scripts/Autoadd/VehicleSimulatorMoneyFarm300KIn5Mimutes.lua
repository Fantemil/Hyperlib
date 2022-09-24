local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

local function GetCar()
    local Car = nil
    
    for i,v in pairs(workspace.Vehicles:GetChildren()) do
        if (v:FindFirstChild("owner")) then
            if (v.owner.Value == LocalPlayer.Name) then
                Car = v
            end
        end
    end
    
    return Car
end

RunService.Stepped:Connect(function()
    local Car = GetCar()
    
    if (Car) then
        ReplicatedStorage.Simchassis.Modules.VehicleSeats.seat_player:InvokeServer(Car.Chassis:WaitForChild("VehicleSeat"))
        
        if (not CurrentCamera:FindFirstChild("SimCloud")) then
            ReplicatedStorage["Game Modes V2"].Shared.Remotes.RemoteFunctions.join_mode:InvokeServer(14)
        end
        
        for i,v in pairs(Car:GetDescendants()) do
            if (v:IsA("Part")) then
                v.CFrame = CFrame.new(v.Position.X, 500, v.Position.Z)
                v.CanCollide = false
                
                if (not v:FindFirstChild("BodyVelocity")) then
                    local Velocity = Instance.new("BodyVelocity", v)
                    
                    Velocity.Velocity = Vector3.new()
                    Velocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    Velocity.P = 1250
                end
                
                for i2,v2 in pairs(CurrentCamera:GetChildren()) do
                    if (v2.Name:find("Checkpoint")) then
                        v.CFrame = CFrame.new(v2.Position.X, 500, v2.Position.Z)
                    end
                end
            end
        end
    end
end)