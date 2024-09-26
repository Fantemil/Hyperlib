local WeaponModule = require(game:GetService("Players").LocalPlayer.PlayerScripts.Weapons.WeaponManager)
local EquippedWeapon = WeaponModule.equippedWeapon

if EquippedWeapon and EquippedWeapon.stats then
    EquippedWeapon.stats.attackSpeed = 0
    EquippedWeapon.stats.range = 1000000
end