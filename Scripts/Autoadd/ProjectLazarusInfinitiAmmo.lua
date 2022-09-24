for i,v in next, getreg() do
    if typeof(v) == "table" then
        if v.Ammo then
            v.Ammo = math.huge
            v.StoredAmmo = math.huge
            v.MagSize = math.huge
            v.MaxAmmo = math.huge
        end
    end
end