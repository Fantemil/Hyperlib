-- only works in start city

game.RunService.RenderStepped:Connect(function()
    game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
    game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
    game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
end)