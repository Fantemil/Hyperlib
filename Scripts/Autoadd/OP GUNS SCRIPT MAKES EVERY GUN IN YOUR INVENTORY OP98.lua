for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
if v:IsA("Tool") and v:FindFirstChild("GunScript_Server") then
require(v.Setting).Auto = true
require(v.Setting).LimitedAmmoEnabled = false
require(v.Setting).Ammo = 8000
require(v.Setting).MaxAmmo = 8000
require(v.Setting).AmmoPerMag = 8000
require(v.Setting).ReloadTime = 0
require(v.Setting).Accuracy = 1
require(v.Setting).BaseDamage = 9000
require(v.Setting).Range = 1000
require(v.Setting).JamChance = 0
require(v.Setting).FireRate = 0
require(v.Setting).Recoil = 0
end
end