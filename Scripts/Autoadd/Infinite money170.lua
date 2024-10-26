while true do
    local args = {
    [1] = 17,
    [2] = "complete the obby",
    [3] = 22,
    [5] = 100,
    [6] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("eventCompleted"):FireServer(unpack(args))

    task.wait(0.1)
end