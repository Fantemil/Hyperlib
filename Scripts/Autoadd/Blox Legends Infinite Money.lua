local args = {
    [1] = "buy",
    [2] = {
        ["amount"] = -math.huge,
        ["charm"] = "fire charm"
    }
}

game:GetService("ReplicatedStorage").remotes.charm:FireServer(unpack(args))