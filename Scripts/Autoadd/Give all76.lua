local args = {
    [1] = "Cerberus"
}

game:GetService("ReplicatedStorage").Events.ChangeRaceEvent:FireServer(unpack(args))
