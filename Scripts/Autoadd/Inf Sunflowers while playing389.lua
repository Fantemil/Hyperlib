local args = {
    [1] = "", -- insert guid here
    [2] = "Sell"
}

while true do

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Unit - Client"):FireServer(unpack(args))
task.wait()
end