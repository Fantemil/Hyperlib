local old; old = hookmetamethod(game, "__namecall", function(self, ...)
   args = {...}
       if getnamecallmethod() == "FireServer" and self.Name == "RemoteEvent" and args[1] == "UpdateState" and string.match(tostring(args[2]), "PlatformStanding") then
               return print("master wyv has saved you from getting kicked")
           end
       return old(self,...)
   end)