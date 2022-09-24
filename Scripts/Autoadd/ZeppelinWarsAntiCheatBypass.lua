local mt = getrawmetatable(game)
setreadonly(mt, false)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
   local method = getnamecallmethod()
   local args = {...}

   if method == "FireServer" then
       if tostring(self) == "SettingEvent" then
           if args[1] == "CL" then
               return;
           end
       elseif tostring(self) == "KickEvent" then
           return;
       elseif tostring(self) ~= "KickEvent" and tostring(self) ~= "SettingEvent" then
            return namecall(self, table.unpack(args))
       end
   else
       return namecall(self, table.unpack(args))
   end
end)

print("Loaded Anti-Cheat Bypass!");