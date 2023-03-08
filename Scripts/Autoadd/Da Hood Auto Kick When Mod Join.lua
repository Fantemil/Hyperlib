-- https://discord.gg/CkSYPCYxtM for hundreds of other scripts

local bitch = {
 163721789,
 15427717,
 201454243,
 822999,
 63794379,
 17260230,
 28357488,
 93101606,
 8195210,
 89473551,
 16917269,
 85989579,
 1553950697,
 476537893,
 155627580,
 31163456,
 7200829,
 25717070,
 201454243,
 15427717,
 63794379,
 16138978,
 60660789,
 17260230,
 16138978,
 1161411094,
 9125623,
 11319153,
 34758833,
 194109750,
 35616559,
 1257271138,
 28885841,
 23558830,
 25717070,

 
}

for l, c in pairs(game.Players:GetChildren()) do
for i, v in pairs(bitch) do
if c.UserId == v then
local Vanis = game.Players.LocalPlayer
Vanis:Kick("Hoe Detected")
end
end
end
game.Players.PlayerAdded:Connect(function(plr)
for i, v in pairs(bitch) do
if plr.UserId == v then
local Vanis = game.Players.LocalPlayer
Vanis:Kick("Hoe Detected")
end
end
end)