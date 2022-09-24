local args = {
    [1] = "IncreaseStat",
    [2] = "XP",
    [3] = 10000
}

game:GetService("ReplicatedStorage").FUNCTION:InvokeServer(unpack(args))