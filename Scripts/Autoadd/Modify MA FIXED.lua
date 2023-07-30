local player = game:GetService("Players").LocalPlayer
local gun = player.Backpack.M4A1
local gunStates = require(gun.GunStates)

local function exploit()
    gunStates.Damage = 50
    gunStates.CurrentAmmo = 100
    gunStates.FireRate = 0
    gunStates.Range = 9999
    gunStates.Spread = 0
end

exploit()


local function modify()
    for _, child in pairs(player.Backpack:GetChildren()) do
        if child:IsA("Tool") and child.Name == "M4A1" then
            local gunStates = require(child.GunStates)
            gunStates.Damage = 9999
            gunStates.HeadDamage = 9999
            gunStates.FireRate = 0
            gunStates.Range = 9999
            gunStates.Spread = 0
        end
    end
end

modify()