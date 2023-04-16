while wait() do
local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = 2000000000 -- any big number
}

game:GetService("ReplicatedStorage").NL:FireServer(unpack(args))
end