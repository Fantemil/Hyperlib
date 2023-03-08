while task.wait() do
    pcall(
    function()
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins",480,10)
    end
    )
end