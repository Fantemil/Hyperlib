local DetectedMethods = {
   "BreakJoints";
   'Destroy';
   "ClearAllChildren";
}

local oldnamecall; oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
   local args = {...}
   local method = getnamecallmethod()
   
   if method == "Kick" or method == "kick" and self == game.Players.LocalPlayer then
       return wait(9e9)
   end
   
   if self.Name == "lIIl" and game.IsA(self, "RemoteEvent") then
       return wait(9e9)
   end
   
   if DetectedMethods[method] and self == game.Players.LocalPlayer.Character then
       return wait(9e9)
   end
   
   
   return oldnamecall(self, unpack(args))
end)

local oldnewindex; oldnewindex = hookmetamethod(game, "__newindex", function(t,k,v)
   if t == game.Players.LocalPlayer.Character.Humanoid and k == "Health" then
       if v == 0 then
           return wait(9e9)
       end
   end
   return oldnewindex(t,k,v)
end)

local oldhook; oldhook = hookfunction(Instance.new'RemoteEvent'.FireServer, function(self, ...)
   local args = {...}
   
   if self.Name == "lIIl" and self.Parent == game.ReplicatedStorage then
       return wait(9e9)
   end
   return oldhook(self, unpack(args))
end)

game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(p)
   if p:IsA("BodyGyro") or p:Isa("BodyAngularVelocity") or p:IsA("BodyVelocity") or p:IsA("BodyPosition") then
       p.Name = "Tempby"
   end
end)