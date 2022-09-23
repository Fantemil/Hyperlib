local plr = game.Players.LocalPlayer.Name

for _,v in pairs(game:GetService("Workspace").playerModels:GetDescendants()) do
    if v.Name == plr then
        v.ball.spinner.LimitsEnabled = false
    end
end