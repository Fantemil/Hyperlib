local args = {
    [1] = {
        [1] = {
            ["ButtonName"] = 1,
            ["DataType"] = "Inventory",
            ["ItemReference"] = "EvilAngel",
            ["Multiplier"] = 9,
            ["Size"] = 9
        }
    }
}
game:GetService("ReplicatedStorage").Shared.Merge.GiveReward:InvokeServer(unpack(args))