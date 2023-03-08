local args = {
    [1] = {
        ["ImageID"] = "rbxassetid://11746951753",
        ["Name"] = "SpeedCoil",
        ["Cost"] = -100000 --change to any amount not too high or it will break
    }
}

game:GetService("ReplicatedStorage").PurchasePet:FireServer(unpack(args))