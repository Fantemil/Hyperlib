local name = "Pearl Armor"
local value = -999999999999999
local replic = game:GetService("ReplicatedStorage")

replic.Events.purchaseArmor:InvokeServer(name, value)