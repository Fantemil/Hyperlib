local args = {
    [1] = "ChangeHeight",
    [2] = 150,
    [3] = false
}

game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer(unpack(args))