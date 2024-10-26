while true do
task.wait(0.1)
    math.randomseed(os.time())
    local args = {
        [1] = tostring((math.random() * 4) - 2),
        [2] = tostring((math.random() * 4) - 2),
        [3] = tostring((math.random() * 4) - 2)
    }
    game:GetService("ReplicatedStorage").VMchange:FireServer(unpack(args))
end