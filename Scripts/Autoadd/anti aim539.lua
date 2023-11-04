local function aa()
    local args = {
        [1] = "Tilt",
        [2] = math.random(-1, 1)
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
while true do
    aa()
    task.wait(0.1)
end
