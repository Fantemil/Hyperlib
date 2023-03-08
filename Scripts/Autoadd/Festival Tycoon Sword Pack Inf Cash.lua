-- Remotespy was used to make this
local args = {
    [1] = 1000000000000
}
wait(0.5)
game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))

local args = {
    [1] = 500000
}

game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(unpack(args))