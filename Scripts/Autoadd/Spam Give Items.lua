--made by sentinelgoated | dm me on discord @sentinelgoated
getgenv().autoblock = true;

spawn(function()
    while autoblock == true do
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        wait(0.5)
    end
end)