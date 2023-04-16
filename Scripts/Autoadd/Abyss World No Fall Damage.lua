local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self,...)
   if getnamecallmethod() == 'FireServer' and tostring(self) == 'FallReport' then
           return
       end
   return namecall(self,...)
end)
setreadonly(mt,true)