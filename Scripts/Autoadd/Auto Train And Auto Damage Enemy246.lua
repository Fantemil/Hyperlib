while wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BattleClick"):FireServer()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Train"):InvokeServer()
end