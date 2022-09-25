while true do
wait()
local args = {
    [1] = 1,
    [2] = true
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events"):FindFirstChild("Checkpoint Touched"):FireServer(unpack(args))

end