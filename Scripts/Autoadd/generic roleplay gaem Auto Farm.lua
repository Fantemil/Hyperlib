--// Services \\--
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variables \\--
local Player = Players.LocalPlayer
local BuyKart = Workspace:WaitForChild("BarbStores"):WaitForChild("FarmKart"):WaitForChild("CustomerSeat")
local Karts = Workspace:WaitForChild("Karts")
local RiceFolder = Workspace:WaitForChild("Rice")
local RemoteEvent = ReplicatedStorage:WaitForChild("RemoteEvent")

--// Get Tool \\--
function GetTool(Name)
    local Tool = Player.Character and Player.Character:FindFirstChild(Name) or Player.Backpack:FindFirstChild(Name)
    if Tool and Player.Character then
        Tool.Parent = Player.Character
        task.wait()
        return Tool
    end
end

--// Get Rice \\--
function GetRice()
    for _, Rice in next, RiceFolder:GetChildren() do
        local Model = Rice:FindFirstChildOfClass("Model")
        if Model and Model.PrimaryPart and Rice:FindFirstChild("Health") and Rice.Health.Value > 0 and Rice:FindFirstChild("Reward") and Rice.Reward.Value > 0 then
            return Rice, Model.PrimaryPart
        end
    end
end

--// Use Kart \\--
function UseKart(Kart)
    task.wait()
    if Kart.Name == Player.Name then
        -- Sickles
        local Sickles = {Kart:WaitForChild("LeftSickle"), Kart:WaitForChild("RightSickle")}
        -- Farm Rice
        while Kart.Parent == Karts and task.wait() do
            -- Sit
            if Kart:FindFirstChild("VehicleSeat") and Kart.VehicleSeat.Occupant ~= Player.Character.Humanoid then
                Kart.VehicleSeat:Sit(Player.Character.Humanoid)
            end
            -- Rice
            local Rice, Part = GetRice()
            if Rice and Kart.PrimaryPart then
                Kart:SetPrimaryPartCFrame(Part.CFrame * CFrame.new(0, 5, -3))
                for _, Sickle in next, Sickles do
                    firetouchinterest(Sickle, Part, 0)
                    firetouchinterest(Sickle, Part, 1)
                end
            end
        end
    end
end

--// Get Kart \\--
while true do
    if not Karts:FindFirstChild(Player.Name) then
        local Tool = GetTool("FarmKart")
        local Humanoid = Player.Character and Player.Character:FindFirstChild("Humanoid")
        if Humanoid and Humanoid.Health <= 0 then
            RemoteEvent:FireServer("Respawn")
        elseif Tool then
            Tool:Activate()
        else
            BuyKart:Sit(Player.Character.Humanoid)
        end
    else
        UseKart(Karts[Player.Name])
    end
    task.wait(2.3)
end