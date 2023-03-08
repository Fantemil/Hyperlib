 while wait() do
local args = {
    [1] = {
        [1] = {
            [1] = "\7"
        }
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end