while true do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PickDroidFunction"):InvokeServer()
task.wait()
end