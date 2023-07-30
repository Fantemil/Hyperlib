for _, i in pairs(game.Players:GetPlayers()) do
local e = i.Name

if e ~= game.Players.LocalPlayer.Name then
print(e)
local args = {
    [1] = "GRAB",
    [2] = game:GetService("Players")[e].Character
 }
game:GetService("ReplicatedStorage").RemoteEvents.NeighborControls:FireServer(unpack(args))
end
end