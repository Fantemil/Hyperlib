local mt = getrawmetatable(game)
setreadonly(mt, false)
local index = mt.__index

local Mods = {
    -- Guns (Spas, Sniper, etc)
    ["RecoilMax"] = 0,
    ["RecoilMin"] = 0,
    ["MuzzleFlashSize0"] = 0,
    ["MuzzleFlashSize1"] = 0,
    ["FlashBrightness"] = 0,
    ["AmmoCapacity"] = 9e9,
    ["ShotCooldown"] = 0,
    ["CurrentAmmo"] = 9e9,
    ["BulletSpeed"] = 9e9,
    ["FireMode"] = "Automatic",
    ["GravityFactor"] = 0,
    ["MaxSpread"] = 0,
    ["MinSpread"] = 0,
    ["HitDamage"] = 9e9,
    ["NumProjectiles"] = 1,
    -- Melee (Shovel, Sword, etc)
    ["Cooldown"] = 0,
    ["Value"] = 0,
    ["DirtDamage"] = 9e9,
    ["SwingCooldown"] = 0,
    ["HitRate"] = 0,
}

mt.__index = function(a,b)
    if Mods[tostring(a)] then
        if tostring(b) == "Value" then
            return Mods[tostring(a)]
        end
    end
    return index(a,b)
end