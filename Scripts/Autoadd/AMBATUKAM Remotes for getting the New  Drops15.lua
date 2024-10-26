--Script 1
local args = {
    [1] = "Buy",
    [2] = "Geli",
    [3] = "WarpHat",
    [4] = 0
}

game:GetService("ReplicatedStorage").BonusFolderFX.BoughAAccessory:FireServer(unpack(args))

--Script 2
local args = {
    [1] = "Buy",
    [2] = "GojoSword",
    [3] = 0
}

game:GetService("ReplicatedStorage").BonusFolderFX.BoughASword:FireServer(unpack(args))