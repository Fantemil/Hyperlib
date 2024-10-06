--- inf cash enter any value
local args = {
    [1] = 9999
}

game:GetService("ReplicatedStorage").AddCash:FireServer(unpack(args))
--- inf tix enter any value
local args = {
    [1] = 9999999
}

game:GetService("ReplicatedStorage").AddTix:FireServer(unpack(args))
--- spam roll btw the amount doesnt work sometimes it does idk
local args = {
    [1] = 999
}

game:GetService("ReplicatedStorage").RollRemoteEvent:FireServer(unpack(args))
