 local args = {"Exchange", -999999999999}

   local meta = getrawmetatable(game)
   setreadonly(meta, false)
   local old_meta = meta.__namecall

   meta.__namecall = function(self, ...)
       local method = getnamecallmethod()

       if method == "InvokeServer" then
           return old_meta(self, unpack(args))
       end
       return old_meta(self, ...)
   end

   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.82981086, 8.83678341, 192.163284, -0.953716636, 0.114250578, -0.278157085, 6.33216102e-09, 0.925011098, 0.379940152, 0.300706774, 0.362355232, -0.882198453)