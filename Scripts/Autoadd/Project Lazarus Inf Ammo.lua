local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
   local args = {...}
   if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "SendData" then
       return;
   end
  return old(self,...)
end))

folder = game:GetService("Players").LocalPlayer.Backpack

for i,v in pairs(folder:GetChildren()) do
   if v:IsA("ModuleScript") then
       local gun = require(v)
       gun.StoredAmmo = math.huge
       gun.Ammo = math.huge
       gun.Damage = {Max = 1500000, Min = 10000}
       gun.Spread = {Min = 0, Max = 0}
       gun.Semi = false
       gun.Pitch = { Min = 0, Max = 0 }
       gun.ViewKick = { Pitch = {Min = 0, Max = 0}, Yaw = {Min = 0, Max = 0} }
       end
end

folder.ChildAdded:connect(function(child)
  if child.ClassName == "ModuleScript" then
      task.wait(1)
       local gun = require(child)
       gun.StoredAmmo = math.huge
       gun.Ammo = math.huge
       gun.Damage = {Max = math.huge, Min = math.huge}
       gun.Spread = {Min = 0, Max = 0}
       gun.Semi = false
       gun.Pitch = { Min = 0, Max = 0 }
       gun.ViewKick = { Pitch = {Min = 0, Max = 0}, Yaw = {Min = 0, Max = 0} }
      end
end)