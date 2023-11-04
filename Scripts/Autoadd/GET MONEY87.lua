while task.wait() do
local args = {
    [1] = "Datastore",
    [2] = 0
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("payOut"):FireServer(unpack(args))
end