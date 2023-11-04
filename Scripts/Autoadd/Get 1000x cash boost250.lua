-- Credits to XFuscator on scriptblox
local args = {
 [1] = "1000xCash",
 [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("DailySpin"):WaitForChild("AddToInventory"):FireServer(unpack(args))