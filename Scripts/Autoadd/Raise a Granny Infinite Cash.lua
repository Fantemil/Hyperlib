local args = {
   [1] = -math.huge, --change math.huge to any number you want but keep math.huge for inf
   [2] = false,
   [3] = "food"
}

game:GetService("ReplicatedStorage").changeCash:FireServer(unpack(args))