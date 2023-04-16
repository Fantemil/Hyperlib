_G.Attack = not _G.Attack 

local Punch = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Punch.LeftHandDamager
local remote = game:GetService("Workspace")[game.Players.LocalPlayer.Name].Punch
local Mobs = {"Dummy","Bandit","Dark Bandit","Bandit King","Goblin","Elite Goblin","Goblin Lord","Castle Guard","Strong Castle Guard","Knight","Enchanted Knight"}

while _G.Attack and task.wait(0.8) do
    for i,v in pairs(game:GetService("Workspace").EnemiesAndSpawns:GetChildren()) do
        for i2,v2 in pairs(v:GetChildren()) do
            if v2:IsA("Model") and table.find(Mobs, v2.Name) then
                remote:Activate()
                firetouchinterest(v2.HumanoidRootPart, Punch,0)
                firetouchinterest(v2.HumanoidRootPart, Punch,1)
            end
        end
    end
end