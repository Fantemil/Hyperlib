local active_players = {}
for i,v in ipairs(game.Players:GetPlayers()) do
    if not table.find(active_players,v.Name) then
        table.insert(active_players,v.Name)
    end
end

for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Humanoid") and not table.find(active_players,v.Parent.Name) then
local args = {
    [1] = "hit",
    [2] = {
        [1] = v,
        [2] = math.huge
    }
}

game:GetService("Players").LocalPlayer.Character.Sword.RemoteFunction:InvokeServer(unpack(args))
end
end