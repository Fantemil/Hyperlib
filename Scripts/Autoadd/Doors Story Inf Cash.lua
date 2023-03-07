local args = {
   [1] = "Headphone Cube",
   [2] = "-9e9"
}

game:GetService("ReplicatedStorage").RemoteFunctionsAndEvents.RemoteEvents.BuyEvent:FireServer(unpack(args))