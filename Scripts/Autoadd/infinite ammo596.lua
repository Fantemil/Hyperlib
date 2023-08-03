local freddy = math.huge
local glen = freddy


local mt = getrawmetatable(game);
make_writeable(mt);
local old_index = mt.__index;

mt.__index = function(alfred,gilbert)
   if tostring(alfred) == "Ammo" then
   if tostring(gilbert) == "Value" then
       return glen;
   end
   end
   return old_index(alfred,gilbert);
   end