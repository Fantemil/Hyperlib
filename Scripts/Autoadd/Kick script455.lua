  
local uid = plr.UserId
  
local player = game:GetService("Players"):GetPlayerByUserId(uid)
  
if player then
  
player:Kick()
  
end