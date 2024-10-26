local args = {
    [1] = "Rare", -- change to whatever blocks you get
    [2] = {
        ["moneyValue"] = math.huge,
        ["blockName"] = "Rare", -- change to whatever blocks you get
        ["chance"] = 8,
        ["color"] = Color3.new(0, 1, 0),
        ["id"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BlockHit"):FireServer(unpack(args))
