--// Anything you need is in game:GetService("ReplicatedStorage").Cosmetics made by @kylosilly
local args = {
    [1] = "EQUIP",
    [2] = "SitAnim", -- "CharAura", "SitAnim" "Effect", "DisplayItem", "DeathSound", "ChairSkin", "DeathEffect"
    [3] = "Limited",
    [4] = "Zen" -- Inside the theme (arg3) enter exact name
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Equip"):FireServer(unpack(args))