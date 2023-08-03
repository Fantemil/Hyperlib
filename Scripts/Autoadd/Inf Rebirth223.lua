while true do
task.wait()
game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(math.huge,math.huge)
game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
end