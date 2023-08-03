local plr = game.Players.LocalPlayer.Name
local v = game:GetService("Workspace").Criminals[plr]
v.MaxStamina.Value = 1000
wait(.3)
v.Stamina.Value = 1000
v.Detection.Value = 0
v.Crit.Value = 200
