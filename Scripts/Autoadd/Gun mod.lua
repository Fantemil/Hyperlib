for i , v in pairs(getgc(true)) do

   if type(v) == "table" and rawget(v,"spread") then
      v.spread = 0
      v.base_recoil = 0
      v.magazine = 9e+18
      v.fire_rate = 0.1
   end
end