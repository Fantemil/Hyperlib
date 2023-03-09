local settings = {
   Enabled = true,
   Accuracy = 100
}

local silentAim
silentAim = hookmetamethod(game, "__namecall", function(self, ...)
   local args = {...}
   
   if self.Name == "ServerEvent" and args[1] == "Accuracy" and settings.Enabled then
       args[2] = settings.Accuracy/100
   end
   
   return silentAim(self, unpack(args))
end)