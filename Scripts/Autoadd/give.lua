-- dont use math.huge
local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = 99999999999999999 -- the money
}

game:GetService("ReplicatedStorage").GP:FireServer(unpack(args))