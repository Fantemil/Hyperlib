while true do
    wait(0.1)

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").CoinToPlayer:FireServer(unpack(args))
end
