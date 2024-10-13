local args = {
    [1] = "AddEnergy"
}

while true do

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ChangeBattle"):InvokeServer(unpack(args))
task.wait()
end