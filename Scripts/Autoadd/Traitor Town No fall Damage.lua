local __namecall;
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
   local method = getnamecallmethod()
   if method == "FireServer" and self.IsA(self, "RemoteEvent") and self == game.GetService(game, "ReplicatedStorage").ServerEvents.Fall then
       return
   end  
   return __namecall(self, ...)
end)