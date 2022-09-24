--inf bag cap
local A_1 = "InfinitePack"local A_2 = 0 local Event = game:GetService("ReplicatedStorage").Purchased Event:FireServer(A_1,A_2)

--unlimited coins
 game:GetService("ReplicatedStorage").Purchased:FireServer("SnackPack", -999999999999999)
--Do not change the value, also dont spam too much