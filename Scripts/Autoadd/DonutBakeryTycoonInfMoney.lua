getgenv().autoIron = true;
getgenv().autoWheat = true;
getgenv().autoWood = true;

while getgenv().autoIron == true do
local args = {
    [1] = "Harvest_Iron",
    [2] = workspace.IronOre_Field.IronOre,
    [3] = 1000000,
    [4] = 0
}
game:GetService("ReplicatedStorage").Events.ClientRemote:FireServer(unpack(args))
wait()
end

while getgenv().autoWheat == true do
local args = {
    [1] = "Harvest_Wheat",
    [2] = workspace.Wheat_Field.Wheat,
    [3] = 1000000,
    [4] = 0
}
game:GetService("ReplicatedStorage").Events.ClientRemote:FireServer(unpack(args))
wait()
end

while getgenv().autoWood == true do
local args = {
    [1] = 1000000,
    [2] = "Wood"
}
workspace.DiamondStoreEvents.AddMoney:FireServer(unpack(args))
wait()
end