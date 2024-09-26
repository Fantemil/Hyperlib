local args = {
    [1] = 99999999999999
}

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage:FindFirstChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
