while true do
local args = {
    [1] = 14,
    [2] = "kill the dummy",
    [3] = 200,
    [4] = 8,
    [5] = 30,
    [6] = true
}

game:GetService("ReplicatedStorage").events.eventCompleted:FireServer(unpack(args))
   task.wait(0.1)
end