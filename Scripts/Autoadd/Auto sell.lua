--CHANGE TO FALSE TO DISABLE AUTO SELL

getgenv().Sell = true
    
    
    spawn(function()
     local playerHead = game.Players.LocalPlayer.Character.Head
     while wait() do
        if not getgenv().Sell then break end
        for i, v in pairs(game:GetService("Workspace").MAP.SellZones.SellZoneBase:GetChildren()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            firetouchinterest(playerHead, v.Parent, 1)
            
            wait()
            end
        end
     end
end)
