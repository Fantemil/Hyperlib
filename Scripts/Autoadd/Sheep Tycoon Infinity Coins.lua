local args = {
    [1] = 17, -- max is 17 dont change it
    [2] = Vector3.new(-162.36593627929688, 3.311232566833496, 938.9034423828125)
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))