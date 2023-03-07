getgenv.Settings = {
_G.SwordSpeed = 3, -- max is 5
_G.SwordHeight = 80,
_G.SwordWidth = 80,



}
local v1 = require(game:GetService("Workspace").Alive[game.Players.LocalPlayer.Name].Sword.WeaponStats)

v1.Stun = 0
v1.Weight = 0
v1.DamageType = "Blood"
v1.Sound = 6216173737
v1.Recharge = 0
v1.WeaponArtRecharge = 0
v1.HWidth = getgenv.Settings._G.SwordHeight
v1.HLength = getgenv.Settings._G.SwordWidth
v1.HolsteredPart = "SwordHip"
v1.HandledPart = "RightGrip"
v1.HasAltFire = true
v1.Nilvar = 100
v1.IsSkill = false
v1.SpeedMultiplier = getgenv.Settings._G.SwordSpeed