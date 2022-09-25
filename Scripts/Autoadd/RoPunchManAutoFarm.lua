getgenv().settings = {
    ['MinHP'] = 0,
    ['MaxHP'] = 100
}

local old
local char = game:GetService("Players").LocalPlayer.Character
local combat = game:GetService("ReplicatedStorage").Remotes.Melee.Combat
local dash = game:GetService("ReplicatedStorage").Remotes.Player.Dash

if not char then warn("error") return end 
old = hookmetamethod(game, "__index", function(Index, Value)
    if Value == "Position" and Index.Parent == char then 
        return Vector3.new(0,0,0)
    end
    return old(Index, Value)
end)

local function attack()
    for Index, Value in next, game:GetService("Workspace").FightableNPCS:GetChildren() do 
        
        if Value:FindFirstChild("Humanoid") and Value.Humanoid.MaxHealth > settings.MinHP and Value.Humanoid.MaxHealth <= settings.MaxHP then 
            repeat 
                char.HumanoidRootPart.CFrame = Value.PrimaryPart.CFrame + (Value.PrimaryPart.CFrame.lookVector*-5)
                combat:FireServer("Combat", 5)
                
                game:GetService("RunService").Heartbeat:wait()
                dash:FireServer(Value.PrimaryPart.CFrame)
            until not Value:FindFirstChild("Humanoid") or Value.Humanoid.Health <= 0
        end
    end
end

local function addStamina()
    game:GetService("ReplicatedStorage").Remotes.Player.STAMRemove:FireServer(-9e18)    
end

addStamina()
while wait() do 
    attack()
end