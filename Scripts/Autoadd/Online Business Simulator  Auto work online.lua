while wait() do
local args = {
    [1] = 100000
}

game:GetService("ReplicatedStorage").PlrEvents.YourName:FireServer(unpack(args))
end