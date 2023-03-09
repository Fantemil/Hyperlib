local Old; Old = hookfunc(pcall, function(f, ...)
   if not checkcaller() and islclosure(f) and table.find(getconstants(f), "UserSettings") then
       hookfunc(pcall, Old)
       return false
   end
       
   return Old(f, ...)
end)