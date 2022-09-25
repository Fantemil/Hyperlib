getgenv().Farm = true --Set To False To Stop
while getgenv().Farm do wait()
   local args = {
       [1] = "DmgCentral",
       [2] = "calculateDmg",
       [4] = workspace.Bandit, --Put Mob Name Here
       [5] = "Combat",
       [6] = "Melee",
       [7] = 100000.5,
       [8] = "Stun",
       [9] = 100000.6,
       [12] = nil --[[Color3]]
   }
   
   game:GetService("ReplicatedStorage").Remotes.ServerHandler:FireServer(unpack(args))
end