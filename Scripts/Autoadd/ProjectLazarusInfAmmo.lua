local Tables = {}

for i,v in next, getreg() do
if typeof(v) == "table" then
if v.Ammo then
table.insert(Tables, v)
end
end
end

local function Upload()
for i,v in next, Tables do
v.Ammo = 10000
v.StoredAmmo = 10000
v.MagSize = 10000
v.MaxAmmo = 10000
end
end

while wait(15) do
Tables = {}

for i,v in next, getreg() do
if typeof(v) == "table" then
if v.Ammo then
table.insert(Tables, v)
end
end
end

Upload()
end