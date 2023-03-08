local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
local args = {...}
if getnamecallmethod() == 'FireServer' and self.Name == 'Walking' then
  args[1] = false
end
return old(self, unpack(args))
end)
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
local args = {...}
if getnamecallmethod() == 'FireServer' and self.Name == 'Aiming' then
  args[1] = true
end
return old(self, unpack(args))
end)