local afkScript = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("Input")

if afkScript then
    afkScript:Destroy()
end

while wait(2) do
    for i,v in pairs(game.Players.LocalPlayer.PlayerData.Swords:GetChildren()) do
        game:GetService("ReplicatedStorage").Remotes.FuseSword:FireServer(v)
    end
end