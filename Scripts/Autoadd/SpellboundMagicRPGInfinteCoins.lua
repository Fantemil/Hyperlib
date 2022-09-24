local args = {
[1] = "Coins", -- change coins to XP for unlimited boost x2
[2] = math.huge
}
game:GetService("ReplicatedStorage").Events.GiveRewards:FireServer(args, "FreeTier21")