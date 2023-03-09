local settings = {repeatamount = 10, inclusions = {"SayMessageRequest"}} --Remote Name

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

local function isincluded(uh)
   for i,o in next, settings.inclusions do
       if uh.Name == o then
           return true
       end
   end
   return false
end

mt.__namecall = function(uh, ...)
   local args = {...}
   local method = getnamecallmethod()
   if method == "FireServer" or method == "InvokeServer" and isincluded(uh) then
       for i = 1,settings.repeatamount do
           old(uh, ...)
       end
   end
   return old(uh, ...)
end

setreadonly(mt, true)