local money = {
   [1] = -9999,
   [2] = "Buy"
}

game:GetService("ReplicatedStorage").Pay:FireServer(unpack(money))