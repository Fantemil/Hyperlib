_G.Speed = 1000000

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = function(self, ...)
   if getnamecallmethod() == 'Kick' then
       return wait(9e9)
   end
   return old(self, ...)
end
local oldd = mt.__index
mt.__index = function(self, property)
   if property == 'WalkSpeed' then
       return 16
   end
   return oldd(self, property)
end
setreadonly(mt, true)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speed