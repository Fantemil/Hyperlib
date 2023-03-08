local servPlayer = game:GetService("Players")
local currPlayer = game:GetService('Players').LocalPlayer


function getEquippedWeapon(player)
    local char = player.Character
    local weapon = char and char:FindFirstChildWhichIsA("Tool")

    if weapon ~= nil then
        return weapon.Name
    else
        return "Holstered"
    end
end

local currWeapon = getEquippedWeapon(currPlayer)

for _, v in pairs(servPlayer:GetPlayers()) do
    if v.Name ~= currPlayer.Name then
        task.wait(1)
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character[currWeapon],
    [2] = {
        ["p"] = Vector3.new(127.24491882324219, 16.624034881591797, -84.08683776855469),
        ["pid"] = 1,
        ["part"] = v.Character.Head,
        ["d"] = 80.71643829345703,
        ["maxDist"] = 80.71429443359375,
        ["h"] = v.Character.Humanoid,
        ["m"] = Enum.Material.SmoothPlastic,
        ["sid"] = 1,
        ["t"] = 0.8510603182300679,
        ["n"] = Vector3.new(-0.20354677736759186, -0.016248714178800583, 0.9789304733276367)
    }
}

game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
end
end