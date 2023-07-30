-- NOTICE! use this script after you execute to make it faster: 
local Cooldown; Cooldown = hookfunction(wait, function(v)
    v = 0;
    return Cooldown(v);
end);



local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
 
 
local Player = Players.LocalPlayer
local Event = ReplicatedStorage:WaitForChild("event")
local Trainer = require(ReplicatedStorage:WaitForChild("trainer"))
local Events = require(Player:WaitForChild("PlayerGui"):WaitForChild("framework"):WaitForChild("events"))
 
 
local Beys = Workspace:WaitForChild("beyblades")
local Battles = Workspace:WaitForChild("battles")
local Specials = Workspace:WaitForChild("specials")
 
 
function GetBey()
    local Bey = Beys:FindFirstChild(Player.Name)
    if Bey and Bey.PrimaryPart then
        return Bey
    end
    return false
end
 
 
Battles.ChildRemoved:Connect(function(A_1)
    if A_1.Name == Player.Name .. "_Target" then
        task.wait()
        Event:FireServer("BattleTower")
    end
end)
 
 
Event:FireServer("BattleTower")
 
 
Events.TrainerBattleResult = function()
    task.wait()
    Trainer.close()
end
 
 
while task.wait() do
 
    local Bey = GetBey()
    if Bey then
 
        while Bey.Parent and task.wait() do
            local Enemy = Beys:FindFirstChild(Player.Name .. "_Target")
                pcall(function()
                    Enemy:FindFirstChildOfClass("Humanoid").Health = 0
                end)
            end
        end
    end