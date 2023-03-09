for i, v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Sniper,
        [2] = {
            ["p"] = Vector3.new(716.1422729492188, 4.201920032501221, -52.15347671508789),
            ["pid"] = 1,
            ["part"] = v.Character.Head,
            ["d"] = 197.02999877929688,
            ["maxDist"] = 2000,
            ["h"] = v.Character.Humanoid,
            ["m"] = Enum.Material.SmoothPlastic,
            ["sid"] = 2,
            ["t"] = 0.468864430009719,
            ["n"] = Vector3.new(0.8855897784233093, 0.29755425453186035, 0.3566398322582245)
        }}
        game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
    end
end