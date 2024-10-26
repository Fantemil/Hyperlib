while wait()do
local args = {
    [1] = "Gems2"
}

game:GetService("ReplicatedStorage"):WaitForChild("Spin"):FireServer(unpack(args))
end