local args = {
   [1] = "Gems",
   [2] = 0,
   [3] = game:GetService("ReplicatedStorage").Shop.Gift
}

game:GetService("ReplicatedStorage").ShopEvent:FireServer(unpack(args))