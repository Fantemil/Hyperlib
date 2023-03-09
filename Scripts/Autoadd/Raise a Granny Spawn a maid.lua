local args = {
   [1] = game:GetService("ReplicatedStorage").Upgrades.maid
}

game:GetService("ReplicatedStorage").buyUpgrade:FireServer(unpack(args))