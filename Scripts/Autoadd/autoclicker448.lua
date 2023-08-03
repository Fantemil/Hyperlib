getgenv().autoclick = true --turn off by changing to false
while getgenv().autoclick == true do
game:GetService("ReplicatedStorage").Click:FireServer()
task.wait()
end