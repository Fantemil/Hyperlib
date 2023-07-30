while task.wait() do
	game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/network@GlobalEvents").placeBlock:FireServer()
end