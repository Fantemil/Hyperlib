for i, v in pairs(getgc(true)) do
if type(v) == 'table' then
if rawget(v, 'mag') and rawget(v, 'recoil') then
v.mag = 100;
v.fire_rate = 1600;
v.fire_mode = "auto";
v.pellets = 7;
v.fire_distance = 300;
v.spread = 1
v.recoil = function() end
end
end
end