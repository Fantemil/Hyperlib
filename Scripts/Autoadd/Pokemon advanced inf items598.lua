--Get all items
for i,v in pairs (game.Players.LocalPlayer.PlayerGui.GameGui.LocalScript.Inventory:GetChildren()) do
	for i,v in pairs(v:GetChildren()) do
local A_1 = "IncreaseStat"
local A_2 = v.Stat.Value
local A_3 = 837362826386274628647264862746263833482478247847282478274872382732738723872382738273873827382738273827482838338383838383838383838383838383838388383388383838383838338383838383838383833838383838383838383838838338383838388384844844884484848484884484848448484
local Event = game:GetService("ReplicatedStorage").FUNCTION
Event:InvokeServer(A_1, A_2, A_3)
end
end
