 local args = {
    [1] = "Arcana_1"
}

game:GetService("ReplicatedStorage").Remote.Event.Shop:FindFirstChild("[C-S]TryGetGoods"):FireServer(unpack(args))