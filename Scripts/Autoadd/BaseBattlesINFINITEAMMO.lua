local ammo = 999

local old
old = hookfunction(require(game:GetService("ReplicatedStorage").Libraries.Weapon).new, function(...)
    local ret = old(...)
    ret["maxAmmo"] = ammo
    ret["ammo"] = ammo
    return ret
end)