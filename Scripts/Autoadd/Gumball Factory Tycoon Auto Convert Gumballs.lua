setsimulationradius(1000,1000)
_G.test = true
while _G.test do
    wait()
for i,v in pairs(game.Workspace.Tycoons[game.Players.LocalPlayer.Team.Name].Gumballs:GetChildren()) do
    if v.Name == "Gumball" and isnetworkowner(v) then
        v.CFrame = Game.Workspace.Tycoons[game.Players.LocalPlayer.Team.Name].Interact.Guminator.Converter.CFrame
    end
end
end