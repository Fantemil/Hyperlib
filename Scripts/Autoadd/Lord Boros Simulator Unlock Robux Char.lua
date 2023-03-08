local ambatukam = {
    [1] = {
        ["PetName"] = "Rainbow BlackHole"
    }
}

game:GetService("ReplicatedStorage").Modules.Events.ReceivePet:InvokeServer(unpack(ambatukam))