local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
   local method = getnamecallmethod()
   local args = {...}

   if method == "FireServer" and tostring(self) == "VerifyFire" then
       return
   end
   return namecall(self, table.unpack(args))
end)