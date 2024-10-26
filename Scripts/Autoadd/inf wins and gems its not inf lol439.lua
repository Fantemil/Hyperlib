while true do
local args = {
    [1] = 237,
    [2] = 9000000000000
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):WaitForChild("Client"):FireServer(unpack(args))
wait(0.001)
end