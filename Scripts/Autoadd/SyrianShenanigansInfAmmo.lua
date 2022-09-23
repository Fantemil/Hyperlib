-- Change "M16A4F" to the name of whatever gun you want
-- Execute this prior to equipping your weapon
-- Once executed you'll have inf ammo so don't reload your firearm as it'll break the gun
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack["M16A4F"]["ACS_Modulo"].Variaveis:GetChildren())do
if v.Name == "Ammo" then
v.Value = math.huge
end
end 