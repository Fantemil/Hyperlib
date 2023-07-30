 
local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] =   99999999999
}

game:GetService("ReplicatedStorage").NL:FireServer(unpack(args))
