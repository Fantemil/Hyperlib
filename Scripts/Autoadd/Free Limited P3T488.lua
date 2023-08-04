local args = {
    [1] = "Loffy",
}

game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.BuyPetRobux:FireServer(unpack(args))