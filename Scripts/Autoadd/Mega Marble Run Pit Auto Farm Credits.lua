_G.Running = true
while _G.Running == true do
firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game:GetService("Workspace").Movers.Begining["Touch Me To Go to Spawn Area"].Head, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game:GetService("Workspace").Movers.Begining["Touch Me To Go to Spawn Area"].Head, 1)
end