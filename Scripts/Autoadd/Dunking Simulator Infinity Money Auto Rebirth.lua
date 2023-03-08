getgenv().a = true -- make false to turn off

while a do
    task.wait()
    game:GetService("ReplicatedStorage").Remote.Shoes.SellShoes:FireServer(
        game:GetService("Players").LocalPlayer.ownedShoes["2"],
        0,
        math.huge
    )
    game:GetService("ReplicatedStorage").Rebirth:FireServer()
end