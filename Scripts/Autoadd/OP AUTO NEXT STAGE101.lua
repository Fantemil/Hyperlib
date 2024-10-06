while true do
	task.wait(0.01)
	game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("NextStage"):FireServer()
end