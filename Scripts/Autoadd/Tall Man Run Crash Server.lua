local args = {
    [1] = "ChangeHeight",
    [2] = 150000,
    [3] = false
}

game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer(unpack(args))
local args = {
    [1] = "ChangeMultify",
    [2] = "Width",
    [3] = 150000,
    [4] = false
}

game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer(unpack(args))