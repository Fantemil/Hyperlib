while true do
wait(0.1)
local args = {
    [1] = {
        [1] = {
            [1] = "\6"
        }
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end