-- Auto report all players script
while true do
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            game.Players:ReportAbuse(player, "Swearing", "called me fat")
            wait(0.1)
        end
    end
end