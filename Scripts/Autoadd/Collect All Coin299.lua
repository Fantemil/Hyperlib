local coins = game.Workspace.Coins:GetChildren()

for _, coin in ipairs(coins) do
    if coin.Transparency == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = coin.CFrame
    wait(0.1)
    end
end
