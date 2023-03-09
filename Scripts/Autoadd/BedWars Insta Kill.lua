local mt = getrawmetatable(game)
local backup = mt.__namecall
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end

mt.__namecall = newcclosure(function(...)
   local method = getnamecallmethod()
   local args = {...}
   pcall(function()
   if method == "FireServer" or method == "InvokeServer" and args[2] and args[2].chargedAttack then
       args[2].chargedAttack.chargeRatio = 0/0
       return backup(unpack(args))
   end
   end)
   return backup(...)
end)