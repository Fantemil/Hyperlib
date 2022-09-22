local A_1 = 
{
 ["Price"] = 0, 
 ["Type"] = "Coins", 
 ["Name"] = "Basic Box"
}
local Event = game:GetService("ReplicatedStorage").TankEvent
Event:FireServer(A_1)