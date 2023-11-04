while task.wait(1) do
game:GetService("ReplicatedStorage"):WaitForChild("IncrementRepeat"):FireServer()
end