for i = 1,10000 --[[amount of the thing your adding don't go above 10k]] do
   game.ReplicatedStorage.Remotes.Stats:FireServer(game.Players.LocalPlayer.Data.Level --[[change level to whatever you wanna get example: Gem]], 0.5)
end