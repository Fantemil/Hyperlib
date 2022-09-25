local args = {
    [1] = "First",
    [2] = 9999999999999999999

}

game:GetService("ReplicatedStorage").RE.ticket:FireServer(unpack(args))