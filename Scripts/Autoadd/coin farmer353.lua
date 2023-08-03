getgenv().morbin = true --false to stop
while getgenv().morbin == true do
task.wait()
local args = {
    [1] = "(x:-370.17205810546875, y:31.68347930908203, z:-484.21160888671875)"
}

game:GetService("ReplicatedStorage").RemoteEvents.RewardCurrencyPickup:FireServer(unpack(args))
end