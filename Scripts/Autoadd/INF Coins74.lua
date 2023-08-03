--Made By: Shag420#6729

--Execute a few times to receive more coins 
while task.wait() do
local args = {
    [1] = "AddFish",
    [2] = "10"
}

game:GetService("ReplicatedStorage").F.RPC:InvokeServer(unpack(args))
local args = {
    [1] = "SellAllFish"
}

game:GetService("ReplicatedStorage").F.RPC:InvokeServer(unpack(args))
end