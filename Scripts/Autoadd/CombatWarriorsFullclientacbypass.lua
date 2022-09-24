local fw = require(game.ReplicatedStorage.Framework.Nevermore);
syn_context_set(2)
local acc = fw("AntiCheatHandlerClient")
syn_context_set(7)
local func = acc.createNotification
hookfunc(func, function() return end)
local hook
hook = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and self.Name == "LogKick" then
       return wait(9e9)
   end
   if getcallingscript() == "AntiCheatHandler" and getnamecallmethod() == "Destroy" then
       return wait(9e9)
   end
   if getnamecallmethod() == "Kick" and not checkcaller() then
       return wait(9e9)
   end
   
   return hook(self, ...)
end)
nhk = hookfunc(Instance.new, function(...)
   if getcallingscript() == "AntiCheatHandler" then
       return wait(9e9) end
   return nhk(...)
end)
lolz = hookfunc(task.spawn, function(...)
   if getcallingscript() == "AntiCheatHandler" then return wait(9e9) end
   if getcallingscript() == "AntiCheatHandlerClient" then return wait(9e9) end
   return lolz(...)
end)
syn_context_set(2)
local acc = fw("Flag")
syn_context_set(7)

local func = acc.setFlags
local func1 = acc.addFlags
local func2 = acc.getIsMaxed
local func3 = acc.getFlags
hookfunc(func, function() return wait(9e9) end)
hookfunc(func1, function() return wait(9e9) end)
hookfunc(func2, function() return wait(9e9) end)
hookfunc(func3, function() return wait(9e9) end)
syn_context_set(2)
hookfunc(string.format, function()
   if getcallingscript() == "AntiCheatHandler" then
       return
   end
end)
hookfunc(fw("AntiCheatHandler").punish, function()
   return;
end)