local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self,...)
   if getnamecallmethod() == 'FireServer' and tostring(self) == 'Jumped' then
       local args = {...}  
           return wait(math.huge)
   end
   return namecall(self,...)
end)
setreadonly(mt,true)