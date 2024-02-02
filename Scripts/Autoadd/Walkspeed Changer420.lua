getgenv().playerSpeed = 100

local mt = getrawmetatable(game)
local old = mt.__newindex 
setreadonly(mt, false)
mt.__newindex = function(self, idx, val)
if idx == 'WalkSpeed' then 
return old(self, idx, playerSpeed)
end 
return old(self, idx, val)
end 
setreadonly(mt, true)
