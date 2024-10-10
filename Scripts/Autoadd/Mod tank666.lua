local tank = workspace.Tanks["Tank-" .. game.Players.LocalPlayer.Name]
for i,v in pairs(tank.AvailableAmmo:GetChildren()) do 
     v.Value = 10000
    end
tank.AvailableAmmo:GetChildren().Value = 10000
tank.Settings.AbilityCooldown.Value = 0
tank.Settings.LoadedShots.Value = 100
tank.Settings.MaxFireRate.Value = 0.1
tank.Settings.MaxLoadedSpecial.Value = 100
tank.Settings.MaxLoadedStandard.Value = 100
tank.Settings.MineMaxDetectionDistance.Value = 1000
tank.Settings.ReloadTime.Value = 0
tank.Settings.SpecialAmmoSpeed.Value = 100
