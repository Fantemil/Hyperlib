getgenv().petToForge = "Glitch"
getgenv().toggleAutoForge = true;
getgenv().forgeSlots = 4 --4 for legendaries, 9 for epics, 16 for the rest

local items = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Frame.Container.Pets.Content.Frame.Items
while wait() and toggleAutoForge do
   local petArgs = {[1] = {}}
   local limitter = 0;
   for i,v in pairs(items:GetDescendants()) do
       if v.Name == "ItemName" then
           if v.Text == petToForge then
               if v.Parent.Shiny.Visible == false then
                   limitter = limitter + 1;
                   if limitter <= forgeSlots then
                       table.insert(petArgs[1], v.Parent.Parent.Name)
                   else
                       game:GetService("ReplicatedStorage").Events.ForgePets:FireServer(unpack(petArgs))
                       break
                   end
               end
           end
       end
   end
end