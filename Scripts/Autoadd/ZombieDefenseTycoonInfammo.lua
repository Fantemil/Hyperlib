--[[ Variables ]]
local GC = getgc(true)
for Number,v in pairs(GC) do
if type(v)=="table" then
       local Table = v
       if rawget(Table,"MagSize") then
           Table["MagSize"] = math.huge
           Table["RateOfFire"] = 0
           Table["Spread"] = 0
       end
end
end