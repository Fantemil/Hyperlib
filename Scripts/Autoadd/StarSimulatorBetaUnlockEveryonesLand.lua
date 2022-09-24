local function unlockLand()
    for _, player in next, game.Players:GetChildren() do
        for _, land in next, workspace["Star_"..player.Name].Player.Land:GetChildren() do
            game.ReplicatedStorage.PlayerData.Unlocker.LandShow:FireServer(land)
        end
    end
end

game.Players.PlayerAdded:Connect(unlockLand)
unlockLand()