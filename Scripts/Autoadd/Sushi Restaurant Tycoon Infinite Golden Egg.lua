while true do
task.wait(0.1)
game:GetService("ReplicatedStorage").Remotes.GetEggs:InvokeServer(true)
end