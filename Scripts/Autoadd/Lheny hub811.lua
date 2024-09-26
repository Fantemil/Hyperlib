while true do
    local args = {
    [1] = 1000
}

game:GetService("ReplicatedStorage").Honeypot.Internal.RemoteStorage:FindFirstChild("AwardXp - RemoteEvent"):FireServer(unpack(args))
wait(0.5)
end
