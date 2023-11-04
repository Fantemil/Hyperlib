for i,v in pairs(getgc(true)) do
 if type(v) == "table" and rawget(v, "MagSize") then
     rawset(v, "MagSize", 200)
 end
 end

 for i,v in pairs(getgc(true)) do
 if type(v) == "table" and rawget(v, "RateOfFire") then
     rawset(v, "RateOfFire", 0)
 end
 end

 for i,v in pairs(getgc(true)) do
 if type(v) == "table" and rawget(v, "ReloadTime") then
     rawset(v, "ReloadTime", 0)
 end
 end

 for i,v in pairs(getgc(true)) do
 if type(v) == "table" and rawget(v, "Damage") then
     rawset(v, "Damage", 999)
 end
 end