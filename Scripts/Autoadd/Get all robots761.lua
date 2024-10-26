while true do
task.wait()
local args = {
    [1] = 2,
    [2] = {
        [1] = 1,
        [2] = 1,
        [3] = 14
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Project"):WaitForChild("RemoteEvent"):WaitForChild("ControlMessageEvent"):FireServer(unpack(args))
end