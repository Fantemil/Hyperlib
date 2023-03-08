local packs = {"Pack1", "Pack2", "Pack3", "Pack4", "Pack5", "Pack6"}
for i,Pack in pairs(packs) do
game:GetService("ReplicatedStorage").EventTickets:FireServer(Pack, -5000)
end