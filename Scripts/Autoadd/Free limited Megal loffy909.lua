for range = 1, 100 do

local args = {
    [1] = "Mega Loffy",
}

game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.BuyPetRobux:FireServer(unpack(args))


end