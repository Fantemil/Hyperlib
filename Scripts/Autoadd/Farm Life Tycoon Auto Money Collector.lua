local player = game:GetService("Players").LocalPlayer
local tycoon = tostring(player.TycoonPointer.Value)

_G.loop = true --Set to false and execute again if you want to stop the script
while _G.loop == true do
   wait(0.1)
   for i, v in pairs(game:GetService("Workspace").Tycoons[tycoon].Buttons:GetDescendants()) do
       if v.Name == "DevProductID" then
           v.Parent.Parent:Destroy()
       else
           if v.Name == "Trigger" and v.ClassName == "Part" then
               cash = tonumber(game:GetService("Workspace").Tycoons[tycoon].Data.Money.Value)
               if cash >= tonumber(v.Parent.Configuration.Cost.Value) then
                   firetouchinterest(v, player.Character.HumanoidRootPart, 0)
                   firetouchinterest(v, player.Character.HumanoidRootPart, 1)
               end
           end
       end
       for i, v in pairs(game:GetService("Workspace").Tycoons[tycoon].Entities:GetChildren()) do
           if v.Name == "MoneyCollector" then
               firetouchinterest(v.Trigger, player.Character.HumanoidRootPart, 0)
               firetouchinterest(v.Trigger, player.Character.HumanoidRootPart, 1)
           end
       end
   end
end
--Made by Zenco