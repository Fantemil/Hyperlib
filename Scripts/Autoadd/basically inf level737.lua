local args = {
    [1] = 10000
}

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage["AwardXp - RemoteEvent"]:FireServer(unpack(args))
