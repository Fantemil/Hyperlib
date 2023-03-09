local v1 = {
    [1] = "Minigun", 
    [2] = "Knife", 
    [3] = "Radio"
}
local event = game:GetService("ReplicatedStorage").Events.LoadoutChange
event:FireServer(v1)