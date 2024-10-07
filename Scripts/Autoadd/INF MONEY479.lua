while true do
	task.wait()
	game:GetService("ReplicatedStorage"):WaitForChild("Rewards"):WaitForChild("Cash"):FireServer()
end