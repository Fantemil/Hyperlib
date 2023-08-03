local Amount = 100

for i,v in pairs(game.Players.LocalPlayer.PlayerData:GetChildren()) do
    if string.find(v.Name, "Level") then
        for i = 1, Amount * 2 do
            local args = {
                [1] = v,
                [2] = "0.5"
            }

            game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Stats.Stats.SpendPoints:FireServer(unpack(args))
        end
    end
end