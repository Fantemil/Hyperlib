-Options
local Method = "Claws" --Fist/Claws/Sword
_G.Enabled = true
--Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
print()
--Instances
local Map = workspace.Map
local Mobs = workspace.Mobs
local Remotes = ReplicatedStorage.Remotes
local Client = Players.LocalPlayer

--#region Functions
local spawn, wait = task.spawn, task.wait

local FireServer = Instance.new("RemoteEvent").FireServer
local InvokeServer = Instance.new("RemoteFunction").InvokeServer

function Call(self, ...) --Caching the FireServer and InvokeServer functions for optimization
    local Method = self.ClassName == ("RemoteEvent") and FireServer or self.ClassName == ("RemoteFunction") and InvokeServer

    return spawn(Method, self, ...)
end

function Teleport(Position, Offset, Speed)
    local Distance = Client:DistanceFromCharacter(Position + (Offset or Vector3.zero))
    
    if Distance < 2500 then
        local Tween = TweenService:Create(
            Client.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = CFrame.new(Position + (Offset or Vector3.zero)
        )})

        Tween:Play()

        return Tween.Completed:Wait()
    else
        Client.Character.HumanoidRootPart.CFrame = Position + (Offset or Vector3.zero)
        
        return wait()
    end
end

local Initiate_S = Remotes.To_Server.Handle_Initiate_S_

local AttackMethods = {
    Fist = "fist_combat",
    Sword = "Sword_Combat_Slash",
    Claws = "claw_Combat_Slash"
}

function Attack()
    local Method = AttackMethods[Method]

    for Cycle=1, 5 do
        Call(
            Initiate_S,
            Method,
            Client,
            Client.Character,
            Client.Character.HumanoidRootPart,
            Client.Character.Humanoid,
             Cycle ~= 5 and Cycle or Cycle == 5 and 919
        )
    end
end

local Orbs = {
    "InstaKill",
    "HealthRegen",
    "StaminaRegen",
    "BloodMoney",
    "DoublePoints",
}

function ClaimOrbs()
    for i, Orb in next, Map:GetChildren() do
        if table.find(Orbs, Orb.Name) then
            pcall(Teleport, Orb:FindFirstChildOfClass("MeshPart").CFrame.Position, nil, 256)
        end
    end
end

function CreateInstance(Class, Properties)
    local Instance = Instance.new(Class)

    for Property, Value in Properties do
        Instance[Property] = Value
    end

    return Instance
end
--#endregion

--Main
local BodyVelocity = CreateInstance("BodyVelocity", {MaxForce = Vector3.new(1/0, 1/0, 1/0), Velocity = Vector3.zero, Name = "BV"})
local BodyAngularVelocity = CreateInstance("BodyAngularVelocity", {MaxTorque = Vector3.new(1/0, 1/0, 1/0), AngularVelocity = Vector3.zero, Name = "BAV"})

spawn(function()
    while _G.Enabled do
        for i, Mob in next, Mobs:GetChildren() do
            Mob = Mob:FindFirstChildOfClass("Model")

            pcall(function()
                BodyVelocity:Clone().Parent = Client.Character.LowerTorso
                BodyAngularVelocity:Clone().Parent = Client.Character.LowerTorso

                Teleport(Mob.HumanoidRootPart.CFrame.Position, Vector3.new(0, 50, 0), 128)
            end)        
            
            repeat
                local Status = pcall(function()
                    if #Mobs:GetChildren() == 0 then
                        spawn(ClaimOrbs)
                    end

                    Client.Character.HumanoidRootPart.CFrame = Mob.HumanoidRootPart.CFrame
                    wait(0.25)
                    Attack()
                    Teleport(Mob.HumanoidRootPart.CFrame.Position, Vector3.new(0, 50, 0), 256)
                    repeat wait() until Client:WaitForChild("combotangasd123", 9e9).Value == 0 and wait(0.25)
                end)
                if not Status or not _G.Enabled then
                    break
                end

            until wait() and not _G.Enabled

            pcall(function()
                Client.Character.LowerTorso:FindFirstChildOfClass("BodyVelocity"):Destroy()
                Client.Character.LowerTorso:FindFirstChildOfClass("BodyAngularVelocity"):Destroy()    
            end)
        end
        wait()
    end
end)
spawn(function()
    while _G.Enabled do
        local Chest = game:GetService("Workspace").Debree:FindFirstChild("Loot_Chest")
        
        if Chest and #Chest:WaitForChild("Drops"):GetChildren() > 0 then
            local Remote = Chest:WaitForChild("Add_To_Inventory")
        
            for _,Drop in next, Chest:WaitForChild("Drops"):GetChildren() do
                Call(Remote, Drop.Name)
            end
        end
        wait(3)
    end
end)