for i,v in pairs(game.ReplicatedStorage.Modules.GunModules:GetChildren()) do
v = require(v)
v.SpreadMinus = 0
v.SpreadSpeed = 0
v.SpreadAmount = 0
v.MaxSpread = 0
v.ReloadTime = 0
v.Ammo = 1000000
v.RecoilAmount = 0
v.RecoilAmount2 = 0
v.FireRate = 0.1
v.Auto = true
end