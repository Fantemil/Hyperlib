
local args = {
    [1] = "Gadgets",
    [2] = {
        ["Tier4Armor"] = true,
        ["Tier3Armor"] = true,
        ["Tier5Armor"] = true,
        ["toiletFlashlight"] = true,
        ["SpiderMinigun"] = true,
        ["MetalPlate"] = true,
        ["Tier1Armor"] = true,
        ["Tier2Armor"] = true,
        ["toiletHeadphones"] = true,
        ["Shocks"] = true,
        ["ToiletCar"] = true,
        ["JetPack"] = true,
    }
}

game:GetService("ReplicatedStorage").UIRemotes.SaveData:InvokeServer(unpack(args))