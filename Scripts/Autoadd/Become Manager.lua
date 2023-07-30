local teamManager = game:GetService("Teams"):FindFirstChild("Manager")

if teamManager then
    game.Players.LocalPlayer.Team = teamManager
else
    print("Doesn't work or is patched (If this happens contact: Jay_#2655)")
end