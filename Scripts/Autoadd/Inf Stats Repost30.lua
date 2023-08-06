--[[
This is https://raw.githubusercontent.com/AdminEvilDRagon/hatchstat/main/hatchstats.lua except all the parts are split up
OP - https://scriptblox.com/script/F2P-UPDATE-Egg-Hatching-Simulator-2-Inf-stats-6655
]]--
-- Eggs
local args = {
            [1] = -100000,
            [2] = "Teleport World",
            [3] = "Eggs",
            [4] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))

-- Gems
local args = {
            [1] = -1e+18,
            [2] = "Village",
            [3] = "Gems",
            [4] = true
} 
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))

-- Coins
local args = {
    [1] = -1e+18,
    [2] = "Village",
    [3] = "Coins",
    [4] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyingLocation"):FireServer(unpack(args))
