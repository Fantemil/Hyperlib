while wait(0.1) do
local args = {
    [1] = "str",
}

game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))

end