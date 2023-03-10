while true do task.wait()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FinishLoading"):FireServer()
end