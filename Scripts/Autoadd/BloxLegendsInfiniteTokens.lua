local args = {
    [1] = "buy",
    [2] = {
        ["amount"] = -math.huge,
        ["charm"] = "rays charm"
    }
}

game:GetService("ReplicatedStorage").remotes.charm:FireServer(unpack(args))