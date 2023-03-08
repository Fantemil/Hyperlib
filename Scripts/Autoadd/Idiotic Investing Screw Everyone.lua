local bid = game:GetService("ReplicatedStorage").RoundInfo["1"]
local BidValue = nil
if bid.Value == 400 then
BidValue = 400
else
BidValue = bid.Value - 100
end
pcall(function()
for i, v in pairs(game:GetService("ReplicatedStorage").PlayerInfo:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if BidValue < v.RoundInfo.Credits.Value then
game:GetService("ReplicatedStorage").Screw_Event:InvokeServer(v.Name)
end
end
end
end)