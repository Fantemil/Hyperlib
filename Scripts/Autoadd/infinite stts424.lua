local args = {
    [1] = 10000000000000000000000000000000000000000,
    [2] = "StarterGui"
}

game:GetService("ReplicatedStorage").EventuaIly.GetMoney:FireServer(unpack(args))

wait(1)

local args = {
    [1] = 1000000000000000000000000000000000000000000000,
    [2] = "Lunarites",
    [3] = "StarterGui"
}

game:GetService("ReplicatedStorage").EventuaIly.GainCurrency:FireServer(unpack(args))
