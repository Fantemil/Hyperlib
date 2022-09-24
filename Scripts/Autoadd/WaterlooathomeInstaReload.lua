local gun = game.Players.LocalPlayer.Backpack[""] -- Your Guns name, ex: "Rifle"
local gunmisc = gun.Settings.Miscellaneous
local gunws = gun.Settings.WalkSpeeds
gunmisc.ReloadSpeed.Value = 0.001
gunmisc.ReloadSpeedWhileMoving.Value = 0.0001
gunws.Aiming.Value = 16
gunws.Reloading.Value = 16