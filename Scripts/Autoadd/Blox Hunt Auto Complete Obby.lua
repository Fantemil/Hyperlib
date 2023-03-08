getgenv().AutoToken = true -- true,false
-- make by thanhtam8765
local player = game.Players.LocalPlayer.Character.Head
while getgenv().AutoToken do
for i, v in pairs(game:GetService("Workspace").Lobby.LobbyObby.Token:GetChildren()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(player, v.Parent, 1)
        wait()
        firetouchinterest(player, v.Parent, 0)
    end
end
end