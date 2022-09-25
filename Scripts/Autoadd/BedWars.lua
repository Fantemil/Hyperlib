while wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        game:GetService("ReplicatedStorage").BedWars.RemoteEvent:FireServer("DamagePlayer", game:GetService("Players").LocalPlayer, v)
    end
end