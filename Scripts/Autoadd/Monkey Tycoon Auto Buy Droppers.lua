while true do
    local ohNumber1 = 1 -- Edit how many droppers you wanna buy per second
    game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuyDropper:FireServer(ohNumber1)
    wait() -- Edit in the () how fast you want it to be
end