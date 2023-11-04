local team = game:GetService("Teams"):FindFirstChild("TEAM")

if team then
    game.Players.LocalPlayer.Team = team
else
    print(";)")
end