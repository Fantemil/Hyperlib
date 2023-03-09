getgenv().AutoCoin = true

while AutoCoin do
    for i, v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        wait()
    end
end