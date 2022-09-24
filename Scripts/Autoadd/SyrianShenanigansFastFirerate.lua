-- Change "M16A4F" to the name of whatever gun you want
-- Ensure you execute this prior to equipping your desired weapon
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack["M16A4F"]["ACS_Modulo"].Variaveis:GetChildren())do
if v.Name == "Settings" then
gunmod = require(v)
gunmod.FireRate = 1000 -- I suggest not tweaking this value any higher as it can lag your game (Base firerate is 800)
gunmod.VRecoil = { 0, 0 }
gunmod.HRecoil = { 0, 0 }
gunmod.RecoilPunch = 0 
gunmod.MinRecoilPower = 0 
gunmod.MaxRecoilPower = 0 
gunmod.MinSpread = 0 
gunmod.MaxSpread = 0
gunmod.BDrop = 0
gunmod.CanBreak = false
gunmod.MaxSway = 0 
gunmod.SwayBase = 0
gunmod.FireModes = {
ChangeFiremode = true, 
Semi = true, 
Burst = false, 
Auto = true, 
Explosive = true
    }
end
end