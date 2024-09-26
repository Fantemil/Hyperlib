--Add Money 
local args = {
    [1] = "Common",
    [2] = -50000000
}

game:GetService("ReplicatedStorage"):WaitForChild("BuyAura"):FireServer(unpack(args))

Not recommended to go high.

--Add Value
local args = {
    [1] = 3000000
}

game:GetService("ReplicatedStorage"):WaitForChild("PlayerValue"):FireServer(unpack(args))

Don't go past 2.5T 

