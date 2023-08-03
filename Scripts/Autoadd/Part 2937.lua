local args = {
    [1] = {
        ["Locked"] = false,
        ["ID"] = "Pet Id In",  --you have to set your pet id in
        ["Equipped"] = false,
        ["Nome"] = "Zoruto"
    },
    [2] = {
        ["Nome"] = "Zoruto",
        ["Coins"] = -99999999999,
        ["Rarity"] = "Epic",
        ["Damage"] = -999999999
    }
}

game:GetService("ReplicatedStorage").__REMOTES.__Improve:InvokeServer(unpack(args))