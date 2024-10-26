while true do
task.wait()
game:FindService("ReplicatedStorage"):FindFirstChild("shared/network@GlobalFunctions").rollCar:FireServer(6)
game:FindService("ReplicatedStorage"):FindFirstChild("shared/network@GlobalFunctions").rolledCarDecision:FireServer(6, false)
end