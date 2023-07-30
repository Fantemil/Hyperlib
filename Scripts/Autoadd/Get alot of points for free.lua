local args = {
    [1] = "noise",
    [2] = 40000 -- (It can be any amount, but do not overboard it)
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlrSuperTauntEvent"):FireServer(unpack(args))