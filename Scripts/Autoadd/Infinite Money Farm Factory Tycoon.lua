getgenv().infiniteMoney = true -- set this to true to stop
while getgenv().infiniteMoney == true do
    game:GetService("ReplicatedStorage").Remote.Event.Offline["[S-C]TryGetFreeReward"]:FireServer()
    task.wait()
end