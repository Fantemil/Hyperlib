local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)

mt.__namecall = function(self,...)
   local args = {...}
   local method = getnamecallmethod()

   if method == "FireServer" and args[1] == "InflictFire"  then
       return wait(9e9)
   end
   return namecall(self,...)
end