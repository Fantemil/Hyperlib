while true do
    game:GetService("ReplicatedStorage").GTycoonClient.Remotes.DepositDrops:FireServer()
    wait() -- Edit in the () how fast you want it to be
end