--// Settings \\--
Distance = 7.5

--// Service \\--
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local Rotation = Distance > 0 and -90 or 90
local CanTouch = type(firetouchinterest) == "function"

--// Module Stuff \\--
local Module = require(Player.PlayerScripts.Shared.Client.CombatController)
local Attack = Module.BasicAttack
local Ability = Module.UseAbility

--// NoClip \\--
RunService.RenderStepped:Connect(function()
    Player.Character.Humanoid:ChangeState(11)
end)

--// Collect Medkits \\--
if CanTouch then
    Workspace:WaitForChild("Ignore").ChildAdded:Connect(function(A_1)
        if A_1.Name == "Medkit" and A_1:WaitForChild("TouchInterest",5) then
            repeat wait(0.2) until pcall(function() return Player.Character.Humanoid.Health < Player.Character.Humanoid.MaxHealth end)
            pcall(function()
                firetouchinterest(Player.Character.HumanoidRootPart,A_1,0)
                firetouchinterest(Player.Character.HumanoidRootPart,A_1,1)       
            end)
        end
    end)
end

--// Filter Enemies \\--
function GetEnemy()
    local Enemies = Workspace:GetDescendants()
    local Lowest = math.huge
    local Selected = nil
    for _ = 1, #Enemies do local Model = Enemies[_]
        local Humanoid = Model:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health > 0 and Humanoid.Health < Lowest and Model:IsA("Model") and Model.PrimaryPart and not Players:GetPlayerFromCharacter(Model) then
            Lowest = Humanoid.Health
            Selected = Model
        end
    end
    return Selected
end

--// Attack \\--
while wait() do
    -- Get Enemies
    local EnemyFound = false
    local Model = GetEnemy()
    if Model then
        local Humanoid = Model:FindFirstChildOfClass("Humanoid")
        -- Kill
        repeat
            -- Teleport
            pcall(function()
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(Model.PrimaryPart.Position) * CFrame.Angles(math.rad(Rotation), 0, 0) + Vector3.new(0, Distance, 0)
            end)
            wait()
            -- Attack
            Attack(Module)
            pcall(function()
                Ability(Module,Model.PrimaryPart.Position)
            end)
        until not Model.Parent or Humanoid.Health <= 0 or Model.PrimaryPart == nil
    else
        -- Start & Finish
        game:GetService("ReplicatedStorage").Dungeon.Remotes.StartDungeon:FireServer()
        game:GetService("ReplicatedStorage").Shared.Remotes.Data.ClaimPrizes:FireServer()
        -- Finish
        local Finish = Workspace:FindFirstChild("FinishRoom",true)
        if Finish then
            pcall(function()
                Player.Character.HumanoidRootPart.CFrame = Finish.Hitbox.Part.CFrame
            end)
        end
    end
    -- Get Treasure
    if CanTouch then
        local Chests = Workspace:GetDescendants()
        for _ = 1, #Chests do local Chest = Chests[_]
            if Chest.Name == "Chest" and Chest:FindFirstChild("Hitbox") and Chest.Hitbox:FindFirstChild("TouchInterest") then
                pcall(function()
                    firetouchinterest(Player.Character.HumanoidRootPart,Chest.Hitbox,0)
                    firetouchinterest(Player.Character.HumanoidRootPart,Chest.Hitbox,1)
                end)
            end
        end
    end
end