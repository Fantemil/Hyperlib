for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        local args = {
            [1] = v.Name
        }

        game:GetService("ReplicatedStorage").KickPlayer:FireServer(unpack(args))
    end
end