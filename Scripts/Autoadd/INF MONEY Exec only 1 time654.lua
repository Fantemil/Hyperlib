local args = {
    [1] = {
        ["ItemName"] = "ShrinkPlayer",
        ["Key"] = "x5",
        ["Cash"] = -9223372036854774000
    }
}

game:GetService("ReplicatedStorage").Events.PurchaseTroll:InvokeServer(unpack(args))
