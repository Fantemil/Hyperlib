getgenv().bossAura = true

local player = game:GetService("Players").LocalPlayer
local arena = "FightArea_" .. tostring(player.UserId)

while bossAura and task.wait() do
   local status = game:GetService("Workspace"):FindFirstChild(arena)
   if status then
       for i,v in pairs(status:GetChildren()) do
           if string.match(v.Name, "monster") then
               game:GetService("ReplicatedStorage").Events.DmgEvent:FireServer(v)
           end
       end
   end
end