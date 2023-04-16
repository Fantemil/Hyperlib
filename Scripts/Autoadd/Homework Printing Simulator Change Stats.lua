local args = {
    [1] = {
        ["BadGraphics"] = false,
        ["Locker"] = {
            ["Color"] = {
                [1] = 0,
                [2] = 0,
                [3] = 0
            },
            ["Material"] = ""
        },
        ["StaffPaper"] = 0,
        ["GoldMulti"] = 1,
        ["Multiplier"] = 1,
        ["Time"] = 30,
        ["Gold"] = 0,
        ["TrunkPaper"] = 0,
        ["Owned"] = {},
        ["Dead"] = 0,
        ["Godly"] = 0,
        ["Alive"] = 0,
        ["FinishedTutorial"] = true,
        ["Miners"] = 0,
        ["Money"] = 0,
        ["MemeMultiplierTime"] = 0,
        ["MultiplierTime"] = 0,
        ["Staff"] = 0,
        ["GoldMultiplierTime"] = 0,
        ["Verified"] = false,
        ["SludgeLevel1"] = 1,
        ["UnlockedPark"] = false,
        ["DestroyedTree"] = false,
        ["Paper"] = 0,
        ["TrunkCapacity"] = 10,
        ["SludgeLevel"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SaveData"):FireServer(unpack(args))