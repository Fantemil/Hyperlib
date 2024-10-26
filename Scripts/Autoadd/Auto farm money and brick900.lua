while true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Important"):WaitForChild("MoneyEvent"):FireServer()

end