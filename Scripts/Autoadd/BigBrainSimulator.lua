local coin = game:GetService("Workspace").Coins:GetDescendants()

for i, C in pairs(coin) do
    if C:IsA('Part') and C.Name == "Coin" then
        C.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
    end
end