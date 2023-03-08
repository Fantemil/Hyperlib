for _,v in pairs(getgc(true)) do
if type(v) == "table" and rawget(v,"Mode") then
if v.Name == "Big Cannon" then
v.FireRate = 10
v.Mode = 2
v.Range = 5000
else
v.FireRate = 8
v.Range = 5000
end
end
end