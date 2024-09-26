while wait(0.1) do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimDailyQuest"):FireServer()
end