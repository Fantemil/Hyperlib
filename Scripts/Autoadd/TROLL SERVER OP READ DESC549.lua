while true do
    local args = {
        [1] = "!grumble"
    }
    game:GetService("ReplicatedStorage").SommonEntity:FireServer(unpack(args))

    wait(0)
end