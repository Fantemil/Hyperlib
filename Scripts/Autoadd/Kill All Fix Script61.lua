-- Must have $1,350 use my hub for money script below
--loadstring(game:HttpGet("https://pastebin.com/raw/xzcsy0pA"))()
-- Press X to teleport the people once your tp'd to the Edge of the Map
--if gun is not modded run the script under the wait

loadstring(game:HttpGet("https://pastebin.com/raw/QxqCNwAN"))()
wait(7)
for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
if v:IsA("Tool") and v:FindFirstChild("GunScript_Server") then
require(v.Setting).Auto = true
require(v.Setting).LimitedAmmoEnabled = false
require(v.Setting).Ammo = 8000
require(v.Setting).MaxAmmo = 8000
require(v.Setting).AmmoPerMag = 8000-- op's the snub
require(v.Setting).ReloadTime = 0
require(v.Setting).Accuracy = 1
require(v.Setting).BaseDamage = 9000
require(v.Setting).Range = 1000
require(v.Setting).JamChance = 0
require(v.Setting).FireRate = 0
require(v.Setting).Recoil = 0
end
end