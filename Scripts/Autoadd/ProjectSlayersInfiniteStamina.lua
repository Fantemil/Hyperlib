local old
old = hookfunction(getrenv()._G.Stamina, function(self, ...)
   local args = {...}

   if typeof(args[1]) == "number" then
       args[1] = 0
   end

   return old(self, unpack(args))
end)