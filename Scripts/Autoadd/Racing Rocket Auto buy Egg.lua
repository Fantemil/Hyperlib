local args = {
   [1] = "Draw",
   [2] = "Egg10"                   -- Egg number
}

game:GetService("ReplicatedStorage").RemoteFuncs.Pet_RemoteFunc:InvokeServer(unpack(args))