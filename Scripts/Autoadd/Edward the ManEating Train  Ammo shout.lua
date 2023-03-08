old = hookmetamethod(game, "__namecall", function(self, ...)
if getnamecallmethod() == "FireServer" and self.name == "RemoteEvent_ShootFastCastProjectile" then
   for i = 1,499 do
       old(self,...)
   end
end
return old(self, ...)
end)