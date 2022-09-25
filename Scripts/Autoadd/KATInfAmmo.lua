function Ammo() 
    for i, v in next, getgc(true) do 
        if type(v) == "table" and rawget(v, "LoadedAmmo") then 
            v.LoadedAmmo = math.huge
        end
    end
end

while wait(3) do
    Ammo()
end