local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == 'FireServer' and self.Name == 'DamageObject' then
   args[2] = 1000
 end
 return old(self, unpack(args))
end)