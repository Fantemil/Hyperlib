print("Fuck this forum, its now dead.")
local modification = {repeatamount = 4}

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = function(uh, ...)
   local args = {...}
   local method = getnamecallmethod()
   if method == "FireServer" and uh.Name == "Remote" then
       for i = 1,modification.repeatamount do
           old(uh, ...)
       end
   end
   return old(uh, ...)
end

setreadonly(mt, true)