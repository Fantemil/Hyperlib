--script for inf money
local args = {
    [1] = game:GetService("Players").NAME, -- put a random player's name in the server here
    [2] = -1e6 -- any amount you want
}

game:GetService("ReplicatedStorage").GiveMoney:FireServer(unpack(args))



--script for inf fruits
local args = {
    [1] = "Legendary" -- Epic,Uncommon,Common
}

game:GetService("Players").LocalPlayer.PlayerGui.SpinGui.LOL.Spin.Spin.Reward:FireServer(unpack(args))