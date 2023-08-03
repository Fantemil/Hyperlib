---first script---
local ohTable1 = {
[1] = 2,
[2] = "Cards",
[3] = 10,
[4] = "Currency",
[5] = "Voucher",
[6] = 999999999,
[7] = "Cards Collector",
[8] = "Unlock 10 Cards",
[9] = Color3.new(0, 0.333333, 1),
[10] = 2
}

game:GetService("ReplicatedStorage").Functions.ClaimQuest:InvokeServer(ohTable1)



---Second Script---
local ohTable1 = {
	[1] = 3,
	[2] = "Coins",
	[3] = 2500,
	[4] = "Currency",
	[5] = "Coins",
	[6] = 99999999999999999,
	[7] = "Coins Master",
	[8] = "Mine 2,5K Coins",
	[9] = Color3.new(0, 0.333333, 1),
	[10] = 2
}

game:GetService("ReplicatedStorage").Functions.ClaimQuest:InvokeServer(ohTable1)

