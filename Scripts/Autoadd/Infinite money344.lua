while wait () do
local args = {
    [1] = 1000000
}

game:GetService("ReplicatedStorage"):WaitForChild("Honeypot"):WaitForChild("Internal"):WaitForChild("RemoteStorage"):WaitForChild("GiveLuckyBlockReward - RemoteEvent"):FireServer(unpack(args))
end