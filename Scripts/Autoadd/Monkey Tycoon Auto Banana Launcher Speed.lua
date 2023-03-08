while true do
    local ohNumber1 = 1
    game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuySpeed:FireServer(ohNumber1)
    wait() -- Edit in the () how fast you want it to be
end