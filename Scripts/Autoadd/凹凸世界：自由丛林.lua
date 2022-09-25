while true do 
    wait()
local args = {
    [1] = 2,
    [2] = {
        [1] = 1,
        [2] = 2,
        [3] = 2
    }
}

game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(unpack(args))
end