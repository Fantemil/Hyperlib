for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
if string.find(v.Name,"Too") then
_G.gunremote = v
end
end
while wait() do
for i,p in pairs(game.Players:GetChildren()) do
pcall(function()
local A_1 =  {
["Function"] = "Hurt",
["Victim"] = p.Character.Humanoid,
["Damage"] = 40.3
}
local Event = _G.gunremote
for i = 1,3 do
Event:FireServer(A_1)
end
end)
end
end