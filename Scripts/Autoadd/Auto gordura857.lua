while true do local args = {
    [1] = true,
    [3] = false
}

game:GetService("ReplicatedStorage").Events.COLLECT.COLLECT:InvokeServer(unpack(args)) end