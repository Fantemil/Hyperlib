local args = {
    [1] = "TruckShipping",
    [2] = {
        [1] = "UnloadTruck"
    }
}

game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer(unpack(args))