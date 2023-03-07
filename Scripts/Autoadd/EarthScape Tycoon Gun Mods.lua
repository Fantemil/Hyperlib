for _,t in pairs(getgc(true)) do
if type(t) == 'table' then
    if rawget(t, "Ammo") then
     rawset(t, "Ammo", math.huge)
    if rawget(t,'FireRate') then
    rawset(t,'FireRate', 1000)
    if rawget(t,'ReloadTime') then
    rawset(t,'ReloadTime', 0.5)
    if rawget(t,'Shells') then
    rawset(t,'Shells', 5)
    if rawget(t,'RecoilMax') then
    rawset(t,'RecoilMax', 0)
    if rawget(t,'GunType') then
    rawset(t,'GunType', 'Auto')
    if rawget(t,'RecoilMin') then
    rawset(t,'RecoilMin', 0)
    if rawget(t,'HipSpread') then
    rawset(t,'HipSpread', 0)
    if rawget(t,'AimSpread') then
    rawset(t,'AimSPread', 0)
end
end
end
end
end
end
end
end
end
end
end