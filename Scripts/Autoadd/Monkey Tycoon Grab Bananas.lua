while true do
    local ohNumber1 = 30 -- Edit number of Banaanas you want per second
    game:GetService("ReplicatedStorage").GTycoonClient.Remotes.GrabDrops:FireServer(ohNumber1)
    wait(1) -- Edit in the () how fast you want it to be
end