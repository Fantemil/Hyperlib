-- skid this nerd ð¤ð¤ð¤

for i, v in pairs(getgc(true)) do
if type(v) == 'table' then
if rawget(v, 'Spread') and rawget(v, 'FireRate') then
v.FireRate = 0.07
v.ReloadTime = 0.1
v.Spread = 0.0001
v.SpreadAim = 0.0001
v.SpreadMove = 0.0001

for ii, vv in pairs(v) do
    if typeof(ii) == 'string' and(  string.find(i, 'Recoil') or string.find(ii, 'Intens')  ) then
        v[ii] = 0.0001
    end
end
end
end
end