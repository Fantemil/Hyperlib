while wait(0.00000005) do
local args = {
    [1] = {
        ["Value"] = 999,
        ["Type"] = "Collect"
    }
}

game:GetService("ReplicatedStorage").DropEvent:FireServer(unpack(args))
end