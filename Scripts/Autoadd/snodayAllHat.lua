local hats = game:GetService("ReplicatedStorage").models.hats:GetChildren()

for i = 1,#hats do
    local v = hats[i]
    
    game:GetService("ReplicatedStorage").Remotes.Data.bungus:FireServer(v.Name)
end