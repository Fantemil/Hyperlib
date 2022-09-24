local tag = "Write Here"




local args = {
   [1] = "SetCodeName",
   [2] = tag
}

game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))