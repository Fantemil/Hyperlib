while task.wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("AddCheese"):FireServer()
end