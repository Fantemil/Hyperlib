local team = game:GetService("Teams"):FindFirstChild("CEO")

if team then
    game.Players.LocalPlayer.Team = team
else
    print("Imagine it doesn't work")
end