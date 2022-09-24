getgenv().anticomb = true -- toggle false and re-execute if u wanna disable
local old
old = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and self.Name == "CombatTag" and not checkcaller() and getgenv().anticomb then
       return
   end
   return old(self, ...)
end)