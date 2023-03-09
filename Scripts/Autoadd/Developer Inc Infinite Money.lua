while task.wait() do
    spawn(function()
        game:GetService("ReplicatedStorage").Remotes.investmentFunction:InvokeServer("Startups", -(game:GetService("Players").LocalPlayer.leaderstats.Cash.Value/100))
    end)
end