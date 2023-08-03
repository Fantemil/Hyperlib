local A_1 = "EquipItem"
local A_2 = "C8E6D218-6984-4591-9CFC-A86406CF3F50"
local A_3 = 
{
	["itemType"] = "Weapon", 
	["item"] = "Nightmare Axe", 
	["slot"] = "Main"
}
local Event = game:GetService("ReplicatedStorage").Utility.Postie.Sent
Event:FireServer(A_1, A_2, A_3)