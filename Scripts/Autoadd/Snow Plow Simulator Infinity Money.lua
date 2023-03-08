local args = {
   [1] = -999999999999999,
   [2] = "1 Stick",
   [3] = true
}

game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))