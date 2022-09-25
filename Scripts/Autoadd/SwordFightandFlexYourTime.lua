 local plr = game:GetService("Players").LocalPlayer
local mt = getrawmetatable(game)
setreadonly(mt,false)

local backup = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
  if self == plr and (getnamecallmethod() == "Kick" or getnamecallmethod() == "kick") then
      return wait(9e9)
  end
  return backup(self,...)
end)

setreadonly(mt,true)