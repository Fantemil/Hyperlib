local FEmusic = true;
local musicid = "5693287386"; --edit the id
local shotsound = true
local shotsoundid = "5693287386"--edit the id


for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
local gun = require(v)
gun.magSize = 10000000
gun.damage = 999
gun.pellets = 30
gun.reloadTime = 0
gun.bulletSpeed = 100009999990
gun.range = 200099
gun.minSpread = 0
gun.maxSprea = 0
gun.RPM = 1000000000
gun.fireMode = 1
gun.customDamage.Head = 10000
gun.spreadCooldown = 0
gun.spreadAdd = 0

if shotsound == true then
   gun.shootSound = {shotsoundid,1000000000, 1, true }
end
if FEmusic == true then
       gun.equipSound = { musicid, 1000000000, 1, true }
end
end