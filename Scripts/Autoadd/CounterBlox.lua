 local Remote = game.ReplicatedStorage.Events['HitPart']
 
for _,v in pairs(game:GetService"Players":GetChildren()) do
if v.Team ~= game.Players.LocalPlayer.Team then
if v.Character and v.Character.Head then
local Arguments = {
[1] = workspace[v.Name].Head,
[2] = workspace[v.Name].Head.Position,
[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
[4] = math.rad(1,100000),
[5] = workspace[game.Players.LocalPlayer.Name].Gun,
[8] = 8, --damage multiplier
[9] = false,
[10] = false,
[11] = Vector3.new(),
[12] = math.rad(1,100000),
[13] = Vector3.new()
}
 
Remote:FireServer(unpack(Arguments))
end
end
end