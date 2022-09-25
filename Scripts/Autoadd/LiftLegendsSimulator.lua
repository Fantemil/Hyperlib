 while wait() do
    game.ReplicatedStorage.Network.Port1:FireServer("Click")
    game.ReplicatedStorage.Network.Port1:FireServer("SellEnergy")
    local rando = math.random(1,2)
    if rando == 1 then
        game.ReplicatedStorage.Network.Port1:FireServer("PurchaseAll", "Endurance")
    elseif rando == 2 then
        game.ReplicatedStorage.Network.Port1:FireServer("PurchaseAll", "Strength")
    end
end