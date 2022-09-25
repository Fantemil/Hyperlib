 function AvoidCrasher(Fenv, F)
   for i, v in pairs(Fenv) do
       if i == "script" and typeof(v) == "Instance" and v.ClassName == F.ClassName and F == v then
           return true
       end
   end
   return false
end
function LoopThroughTable(Tab, F, LookThrough)
   for i, v in pairs(LookThrough) do
       if typeof(v) == "function" and islclosure(v) and getfenv(v) and AvoidCrasher(getfenv(v), F) then
           table.insert(Tab, v)
       end
   end
end
function GetFunctionsFromScript(F)
   local functionstab = {}
   LoopThroughTable(functionstab, F, getgc())
   LoopThroughTable(functionstab, F, debug.getregistry())
   return functionstab
end
function ChangeAmmoGun(Gun)
   if not Gun:FindFirstChild("TriggerScript") then return end
   local T = GetFunctionsFromScript(Gun.TriggerScript)
   for i, v in pairs(GetFunctionsFromScript(Gun.TriggerScript)) do
       if table.find(debug.getconstants(v), "Reloading...") then
           if typeof(debug.getupvalue(v, 3)) ~= "number" then
               debug.setupvalue(v, 4, 99999999)
           else
               hookfunction(v, function() end)
           end
       elseif table.find(debug.getconstants(T[i]), "Ray") then
           debug.setconstant(T[i], 9, 999999999)
       end
   end
end
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   ChangeAmmoGun(v)
end
game.Players.LocalPlayer.CharacterAdded:connect(function()
   repeat
       wait()
   until game.Players.LocalPlayer:FindFirstChild("Backpack") and #game.Players.LocalPlayer.Backpack:GetChildren() > 0
   for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       ChangeAmmoGun(v)
   end
end)