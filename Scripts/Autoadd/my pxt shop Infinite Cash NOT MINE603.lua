-- inf cash by zxz

local args = {
    [1] = 2500000 --amount of money you want
}

game:GetService("ReplicatedStorage").Remotes.GiveATM:InvokeServer(unpack(args))