local args = {
    [1] = "chuoka",
    [2] = {
        ["number"] = -9999999999999999999999999999999,
        ["cardsInfo"] = {}
    }
}

game:GetService("ReplicatedStorage").eventsAndFunctions.RemoteFunction:InvokeServer(unpack(args))