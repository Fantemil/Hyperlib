local Amount = 1000000
game.ReplicatedStorage.Remotes.Shop:FireServer("Buy1", {
    Cost = {Value = -Amount},
    Name = "Power Potion"
})