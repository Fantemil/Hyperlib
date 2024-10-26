local g = true
while g do
local args = {
    [1] = 9,
    [2] = 0,
    [3] = 50
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RebirthConfirmEvent"):FireServer(unpack(args))
task.wait()
end