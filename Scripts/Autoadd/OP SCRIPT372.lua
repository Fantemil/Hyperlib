local args = {
    [1] = "Basic Egg",
    [2] = -9e99
}
 
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):InvokeServer(unpack(args))
 