--BROUGHT TO YOU BY RSCRIPTS.NET--

getgenv().gifts = true
-- // getgenv loop similar to _G, uses global environment on your exploit -- \\

spawn(function()
    -- // Indication that we will be using our Characters Head to touch -- \\
    local plr = game:GetService("Players").LocalPlayer.Character.Head
    while wait() do
        if not getgenv().gifts then break end
        for i,v in pairs(game:GetService("Workspace").CoinEvent.Coins:GetDescendants()) do
            -- // Checks if there's a "TouchTransmitter" ClassName within the Coins ^ right there -- \\
            if v:IsA("TouchTransmitter") and v.Parent then
                -- // fires the touchinterest of the Coin which we indicated on the for loop inside the "i,v in pairs" -- \\
                firetouchinterest(plr, v.Parent, 0)
                -- // uses "firetouchinterest" function to fire the Event using the players Head which was indicated on "local plr" right above while wait() do -- \\
            end
        end
    end
end)