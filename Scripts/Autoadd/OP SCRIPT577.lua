local args = {
    [1] = "BEST BRONS",
    [2] = -9e999
}
 
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):InvokeServer(unpack(args))
 