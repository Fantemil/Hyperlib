local args = {
    [1] = 512541613, --put how many rebirths you want if you want infinite put it as math.huge
    [2] = "",
    [3] = "Rebirth",
    [4] = "crr"
}

game:GetService("ReplicatedStorage").Remotes.Spins.RewardSpin:FireServer(unpack(args))
