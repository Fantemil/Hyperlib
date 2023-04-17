while wait(1) do
    for i, v in next, getgc(true) do
        if type(v) == "table" then
            if rawget(v, "LoadedAmmo") then
                v.LoadedAmmo = 10000000000
                v.RecoilFactor = 0
                v.Spread = 0
            end
            if rawget(v, "ReloadTime") then
                v.ReloadTime = 0
                v.EquipTime = 0
                v.LoadCapacity = 10000000000
            end
        end
    end
end