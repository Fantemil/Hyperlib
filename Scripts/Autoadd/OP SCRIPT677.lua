local args = {
    [1] = "Starter Egg",
    [2] = -9e99
}
 
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):InvokeServer(unpack(args))
 