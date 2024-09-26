while true do
    local args = {
    [1] = 50000
}

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage:FindFirstChild("AwardSpinSize - RemoteEvent"):FireServer(unpack(args))
wait(0.1)
end