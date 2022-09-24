for i,v in pairs(getgc(true)) do
   if type(v) == 'table' and rawget(v, "MidairJump") then
       v.MidairJump = 9e9
   end
   end