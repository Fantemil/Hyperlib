while true do
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v:IsA("Tool") then
         local deez = require(v.Setting)
         deez.FireRate = 0
         deez.Auto = true
         deez.ReloadTime = 0
         deez.AmmoPerMag = 999
         deez.Spread = 0
         deez.Recoil = 0
         deez.ShotgunReload = false
         deez.BulletPerShot = 20
         deez.BulletPerBurst = 20
         deez.BulletTracerEnabled = false
         deez.BulletShellEnabled = false
         deez.BulletLightEnabled = false
      end
   end
task.wait()
end