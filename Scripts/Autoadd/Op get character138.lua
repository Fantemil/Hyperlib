local args = {
    [1] = "Basic Case",
    [2] = {
        ["Refund"] = 1250,
        ["Pity"] = 0,
        ["Item"] = "Supreme Clockhead 2.0",
        ["Type"] = "Character"
    }
}

game:GetService("ReplicatedStorage").Events.RemoteEvents.ClaimPityItem:FireServer(unpack(args))
