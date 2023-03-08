local plr = game:GetService("Players").LocalPlayer;

local old;
old = hookmetamethod(game, "__index", function(self, key)
   if not checkcaller() and key == "PlatformStand" and self.ClassName == "Humanoid" and self.Parent and plr.Character and self.Parent == plr.Character then -- Prevents PlatformStanding detections
       return false
   end
   return old(self, key)
end)

game.DescendantAdded:Connect(function(d)
   if d.ClassName:find("Body") and plr.Character and d:IsDescendantOf(plr.Character) then
       
       local old_idx;
       local old_nc;
       
       old_idx = hookmetamethod(d, "__index", newcclosure(function(self, ...) -- Prevent indexing (checking properties, name, etc)
           if not checkcaller() and self == d then
               local s,e = pcall(old_idx, self, ...)
               
               if not s then
                   return error(e)
               end
               return
           end
           return old_idx(self, ...)
       end))
       
       old_nc = hookmetamethod(d, "__namecall", newcclosure(function(self, ...) -- Prevent namecalling (functions)
           if not checkcaller() and self == d then
               local s,e = pcall(old_nc, self, ...)
               
               if not s then
                   return error(e)
               end
               return
           end
           return old_nc(self, ...)
       end))
   end
end)