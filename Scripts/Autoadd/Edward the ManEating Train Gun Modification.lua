for i,v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v,"IntValue_MaxDamageRange") ~= nil then
--add other tables below this--
       v.IntValue_PelletCount = 100
       v.IntValue_MaxMagazine = 1000
       v.IntValue_MaxReserve = 1000
   end
end