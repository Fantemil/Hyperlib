-- Don't use if you have 0 money!
-- and remember to rejoin before rebirth!

while task.wait() do
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.investmentFunction:InvokeServer("Startups", -(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value/100))
    end)
end