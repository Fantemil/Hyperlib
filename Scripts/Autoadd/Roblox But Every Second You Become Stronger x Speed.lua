local args = {
   [1] = "Gems",
   [2] = 0,
   [3] = game:GetService("ReplicatedStorage").Shop.x2Speed
}

game:GetService("ReplicatedStorage").ShopEvent:FireServer(unpack(args))