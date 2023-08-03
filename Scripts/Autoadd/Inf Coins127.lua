while task.wait() do
    pcall(
    function()
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",4800000,1000000)
    end
    )
end