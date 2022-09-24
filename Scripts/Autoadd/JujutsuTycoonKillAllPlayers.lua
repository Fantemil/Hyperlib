for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        game:GetService("ReplicatedStorage").DamagePlayer:FireServer(v.Character.Humanoid, 1000)
    end
end