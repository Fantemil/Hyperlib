
local args = {
    [1] = {
        ["Cash"] = 1000000000000000000000000000000 -- max money u can use
    }
}

game:GetService("ReplicatedStorage").Add:FireServer(unpack(args))
