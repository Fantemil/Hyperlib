for _, p in pairs(game.Players:GetPlayers()) do
    if p ~= game.Players.LocalPlayer then
        for i=10,1,-1 do
            local ohInstance1 = game:GetService("Players").LocalPlayer
            local ohInstance2 = p.Character.Head
            local ohInstance3 = p.Character.Humanoid
            local ohNumber4 = 10
            local ohInstance5 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle").HitSound3
            local ohString6 = "Hit"

            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Events.DamagePlayer:FireServer(ohInstance1, ohInstance2, ohInstance3, ohNumber4, ohInstance5, ohString6)
        end
    end
end