local init = require(game:GetService("ReplicatedStorage").PlayerData.InitialPlayerData)

for _,v in next, init.Conversion do 
    game:GetService("ReplicatedStorage").Resources.BuildingRemo:InvokeServer(_, math.huge)
end

for _,v in next, workspace['Star_'..game.Players.LocalPlayer.Name]:GetDescendants() do 
    if v.Name == 'HP' then 
        game:GetService("ReplicatedStorage").Attack.UpdateHPEvent:FireServer(v.Parent, 'Axe')
    end
end