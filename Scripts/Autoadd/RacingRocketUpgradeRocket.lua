local args = {
   [1] = "UpgradeRocket"
}

game:GetService("ReplicatedStorage").RemoteFuncs.Rocket_RemoteFunc:InvokeServer(unpack(args))