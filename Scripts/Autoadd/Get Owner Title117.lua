local args = {
    [1] = "EquipTitle",
    [2] = "THE OWNER"
}

game:GetService("ReplicatedStorage").Remotes.UpdateData:FireServer(unpack(args))
