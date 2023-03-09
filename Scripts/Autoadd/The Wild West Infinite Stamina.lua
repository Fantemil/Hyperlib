local mt = getrawmetatable(game)
local oldnamecall = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
   local method = getnamecallmethod()
   if tostring(self) == "LowerStamina" and tostring(method) == "FireServer" then
      return
   end

   return oldnamecall(self, ...)
end)

setreadonly(mt, true)