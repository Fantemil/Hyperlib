while wait() do

local args = {
    [1] = workspace:WaitForChild("jafethbush"),
    [2] = game:GetService("Players").LocalPlayer.Character.Pistol,
    [3] = "Level Up",
    [4] = "Damage"
}

game:GetService("ReplicatedStorage"):WaitForChild("UpgradeWeapon"):FireServer(unpack(args))

local args = {
    [1] = workspace:WaitForChild("jafethbush"),
    [2] = game:GetService("Players").LocalPlayer.Character.Pistol,
    [3] = "Level Up",
    [4] = "RoF"
}

game:GetService("ReplicatedStorage"):WaitForChild("UpgradeWeapon"):FireServer(unpack(args))
end