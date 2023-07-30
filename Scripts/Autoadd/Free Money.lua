local args = {
    [1] = {
        ["name"] = "ProcessCake",
        ["type"] = "Normal"
    },
    [2] = "HiddenStatue",
    [3] = {
        ["conveyor"] = BrickColor.new(333),
        ["effect"] = "Award OOO Money",
        ["shortSides"] = BrickColor.new(333),
        ["dataType"] = "Frosting",
        ["noobExpression"] = "Money Crave",
        ["roof"] = BrickColor.new(333),
        ["name"] = "Golden",
        ["list"] = "RANK",
        ["frosting"] = BrickColor.new(333),
        ["mesh"] = "rbxassetid://7423129413",
        ["sides"] = BrickColor.new(333),
        ["texture"] = "rbxassetid://124475508"
    }
}

game:GetService("ReplicatedStorage").dToolkit.Network.RemoteEvent:FireServer(unpack(args))
