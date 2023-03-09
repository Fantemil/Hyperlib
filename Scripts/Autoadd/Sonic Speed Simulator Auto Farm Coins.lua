getgenv().autocoins = true

wait(0.5)
spawn(function()
   while wait() do
       if getgenv().autocoins == true then
       local args = {[1] = "Green Hill Obby 1"}
       game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.RequestTeleportToZone:InvokeServer(unpack(args))
       end
   end
end)

wait(0.7)
spawn(function()
  while wait() do
   if getgenv().autocoins == true then
local args = {[1] = "Green Hill Obby 1"}
game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.FinishObby:InvokeServer(unpack(args))
       end
   end
end)