while wait(0.1) do
local args = {
    [1] = true,
    [2] = "Classic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GameFinalOutcome"):FireServer(unpack(args))
end