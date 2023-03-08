for i,v in pairs(game.Players:GetPlayers()) do 
    if v.Name ~= game.Players.LocalPlayer.Name then 
        local instance1 = game:GetService("Players").LocalPlayer
        local instance2 = game:GetService("Players").LocalPlayer
        local instance3 = game.Players[v.Name].Character.Humanoid
        local instance4 = game.Players[v.Name].Character.HumanoidRootPart
        local table1 = {
            0,
            0,
            false,
            false,
     nil,
     nil,
            100,
            100
        }
        local table2 = {
            false,
            5,
            3
        }
        local instance5 = game.Players[v.Name].Character.Head


        local remote = game:GetService("ReplicatedStorage").InflictTarget
        local returnValue = remote:InvokeServer(instance1, instance2, instance3, instance4, math.huge, table1, table2, instance5)
    end
end