local loadGun;
for i,v in next, getgc(true) do
    if type(v) == 'function' then
        if getinfo(v).name == 'loadGun' then
        loadGun = v;
        end
    end
end
local Weapons = getupvalue(loadGun, 5)
function ModGun(x)
rawset(x, "spread", 0)
rawset(x, "penetration", 99999)
rawset(x, "ammo", math.huge)
rawset(x, "magsize", math.huge)
rawset(x, "c_recoil", 0)
rawset(x, "c_recoil_side", 0)
end
for I, Weapon in next, Weapons do
    ModGun(Weapon)
end