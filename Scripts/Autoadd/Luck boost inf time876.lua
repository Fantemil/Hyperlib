local args = {
    [1] = "logFunnelStep",
    [2] = 8
}

while task.wait() do

game:GetService("ReplicatedStorage"):WaitForChild("ComsEvents"):WaitForChild("Tasks"):WaitForChild("TaskHandler"):FireServer(unpack(args))
end