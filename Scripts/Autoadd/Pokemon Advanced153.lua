--Get all pokemon
for i,v in pairs (game.Players.LocalPlayer.PlayerGui.GameGui.LocalScript.Pokemon:GetChildren()) do
for i,v in pairs(v:GetChildren()) do
local A_1 = "IncreaseStat"
local A_2 = v.Stat.Value
local A_3 = 1
local Event = game:GetService("ReplicatedStorage").FUNCTION
Event:InvokeServer(A_1, A_2, A_3)
end
end