for i = 1,50 do
task.wait()
game:GetService("ReplicatedStorage").Win:FireServer(i)
end