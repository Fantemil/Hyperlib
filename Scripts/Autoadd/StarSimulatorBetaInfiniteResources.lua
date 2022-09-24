local Convertables = require(game:GetService("ReplicatedStorage").PlayerData.InitialPlayerData)
local Player = game.Players.LocalPlayer

for i = 1,50 do
wait()
    for _,v in pairs(workspace['Star_'..Player.Name].Player.Land:GetDescendants()) do
        spawn(function()
            if string.find(v.Name,'Ore_') or string.find(v.Name,'Tree_')  then
                for _,v2 in pairs(v:GetChildren()) do
                    game:GetService("ReplicatedStorage").Attack.UpdateHPEvent:FireServer(v2,'Axe')
                end
            end
        end)
    end
end

for _,v in pairs(Convertables.Conversion) do
    game:GetService("ReplicatedStorage").Resources.Conversion:InvokeServer(_,"2000")
    game:GetService("ReplicatedStorage").Resources.BuildingRemo:InvokeServer(_,2000)
end