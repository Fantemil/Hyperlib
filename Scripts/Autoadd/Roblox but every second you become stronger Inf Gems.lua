local args = {
   [1] = "Gems",
   [2] = -999999999, --you can edit this value, make sure it stays NEGATIVE though. negative value will give you money back
   [3] = game:GetService("ReplicatedStorage").Shop.JumpChanger
}

game:GetService("ReplicatedStorage").ShopEvent:FireServer(unpack(args))