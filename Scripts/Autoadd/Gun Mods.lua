for i,v in pairs(game:GetService("ReplicatedStorage").GunSystem.GunData:GetChildren()) do
    local module = require(v)
    module.Get("Gun Mod Created By Exxen#0001")
end
for i, v in pairs(getgc(true)) do
        if type(v) == 'table' then
            if rawget(v, 'ClipSize') then
                v["Ammo"] = math.huge
                v["ClipSize"] = math.huge
                v["Automatic"] = true
                v["Spread"] = 0
                v["RecoilMult"] = 0
                v["FireRate"] = 0.1
                v["EquipTime"] = 0
            end
        end
    end