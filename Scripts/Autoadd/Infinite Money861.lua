local args = {
    [1] = "Money",
    [2] = math.huge -- change it to what ever money you want if you want infinite keep it as math.huge
}

game:GetService("ReplicatedStorage").Events.PlayerData.SetPlayerDataRemoteFunction:InvokeServer(unpack(args))
