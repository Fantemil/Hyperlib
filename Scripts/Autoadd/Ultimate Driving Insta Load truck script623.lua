local args = {
    [1] = "TruckShipping",
    [2] = {
        [1] = "LoadTruck"
    }
}

game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer(unpack(args))