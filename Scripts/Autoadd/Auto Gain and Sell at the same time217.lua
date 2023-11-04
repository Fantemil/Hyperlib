while wait() do
	game.ReplicatedStorage.RemoteEvent:FireServer({"GainMuscle"})
	game.ReplicatedStorage.RemoteEvent:FireServer({"SellMuscle"})
end