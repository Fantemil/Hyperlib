_G.STOPLOOTING = false
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key)
   if key == "k" then
       _G.STOPLOOTING = true
   end
end)

while _G.STOPLOOTING ~= true do
   wait()
   local lootfile = game:GetService("Workspace").RunTime.GroundLoot
   for i,v in pairs(lootfile:GetChildren()) do
       local items = tostring(v.Name)
       local itemsgsubed = items:gsub('[%a]-[%p][%a][%x][%p]','','1')
       wait()
       local TargetFunc = game:GetService("ReplicatedStorage").Knit.Services.GroundItemService.RF.PickUpItem;
       TargetFunc:InvokeServer(itemsgsubed);
   end
end