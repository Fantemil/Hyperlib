local args = {
    [1] = "Camarade Sport V8" --- change name
}

game:GetService("ReplicatedStorage").Event.vehicleEvent:InvokeServer(unpack(args))
