local args = {
    [1] = "AddStats",
    [2] = "Melee",
    [3] = 0/0
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
 