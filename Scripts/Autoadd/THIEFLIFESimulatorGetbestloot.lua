for i,v in pairs(game:GetService("Workspace").Loot.Places:GetDescendants()) do
    if v.Name == "LootType" and v.Value == "HighValueWeappons" then
        game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(v.Parent.Name)
        wait(3)
    end
end

for i,v in pairs(game:GetService("Workspace").Loot.Places:GetDescendants()) do
    if v.Name == "LootType" and v.Value == "DiamondLoot" then
        game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(v.Parent.Name)
        wait(3)
    end
end

for i,v in pairs(game:GetService("Workspace").Loot.Places:GetDescendants()) do
    if v.Name == "LootType" and v.Value == "LavaStone" then
        game:GetService("ReplicatedStorage").Events.Loot.RequestLoot:FireServer(v.Parent.Name)
        wait(3)
    end
end