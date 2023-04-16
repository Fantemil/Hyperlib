while wait(0.1) do
local args = {
    [1] = "dur",
}

game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))

end