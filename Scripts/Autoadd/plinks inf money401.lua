local args = {
    [1] = {
        ["Funny"] = "durpiei1",
        ["Cash"] = 1000000000000000000 --set the amount of money here
    }
}

game:GetService("ReplicatedStorage").Add:FireServer(unpack(args))
