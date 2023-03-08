for i, v in pairs(getgc(true)) do
   if typeof(v) == "table" and rawget(v, "unscopedPattern") then
       rawset(v, "fireRate", 0.045)
       rawset(v, "maxBullets", 9e9)
       rawset(v, "bullets", 9e9)
   end
   if typeof(v) == "table" and rawget(v, "springs") and v.springs.fire then
       local a = getrawmetatable(v.springs.fire)
       a.Impulse = function() end
   end
end