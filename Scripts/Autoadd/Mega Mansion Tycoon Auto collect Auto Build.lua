--[[
tarvax Mega Mansion Simulator is licensed under Creative Commons Attribution 4.0 International
Author: tarvax https://v3rmillion.net/member.php?action=profile&uid=591293
]]--

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

local tycoons = game:GetService("Workspace")["Zednov's Tycoon Kit"].Tycoons;
local players = game:GetService("Players");
local player = players.LocalPlayer;
local character = player.Character;
local tycoon = nil;
getgenv().run = false;
wait(0.5);
getgenv().run = true;

local get_by_path = function(root_obj,path_string)
   if(not root_obj) then
      wait(1);
      return nil;
   end
   for part in string.gmatch(path_string,"[^%.]+") do
      local found = nil;
      if(type(root_obj) == 'table' and root_obj[part] ~= nil) then
         found = root_obj[part];
      else
         found = root_obj:FindFirstChild(part);
         if(found) then
         else
            return nil;
         end
      end
      if(found) then root_obj = found; end
   end
   return root_obj;
end
while wait() and tycoon == nil and getgenv().run == true do
   for _,loop_tycoon in pairs(tycoons:GetChildren()) do
      if(loop_tycoon.ClassName == "Model" and loop_tycoon.Owner.Value == player) then
         tycoon = loop_tycoon;
      end
   end
end
if(tycoon == nil) then return; end
while wait() and getgenv().run == true do
   local giver = get_by_path(tycoon,"Essentials.Giver");
   if(giver == nil) then
      giver = get_by_path(tycoon,"PurchasedObjects.Level2.level1finished.Giver");
   end
   if(giver == nil) then
      local models = get_by_path(game:GetService("Workspace"),"ClientApartmentObjects.Level3Start.phStart");
        if(models == nil) then continue; end
      for _,model in pairs(models:GetChildren()) do
         if(model.ClassName == "Model") then
            for _,part in pairs(model:GetChildren()) do
               if(get_by_path(part,"TouchInterest")) then
                  giver = part;
               end
            end
         end
      end
   end
   if(giver == nil) then continue; end
   firetouchinterest(character.LeftFoot,giver,0);
   wait(0.1);
   firetouchinterest(character.LeftFoot,giver,1);
   wait(0.1);
   local cheapest = nil;
   local cheapest_price = nil;
   local levels = tycoon.Buttons:GetChildren();
   table.insert(levels,game:GetService("Workspace").ClientButtons);
   for _,level in pairs(levels) do
      for i,button in pairs(level:GetChildren()) do
         if(
            button:FindFirstChild("extra") ~= nil and
            get_by_path(button,"Head.TouchInterest") ~= nil and
            button.extra.Transparency <= 0
         ) then
            local price = nil;
            if(get_by_path(button,"BillboardGui.Frame.ImageLabel.PriceText2") ~= nil) then
                    price = nil;
            elseif(get_by_path(button,"Price") ~= nil) then
               price = button.Price.Value;
            elseif(get_by_path(button,"BillboardGui.Frame.ImageLabel.PriceText") ~= nil) then
               local price_string = get_by_path(button,"BillboardGui.Frame.ImageLabel.PriceText").Text
               local mult = price_string:sub(-1);
               if(mult == "K") then
                  price = tonumber(price_string:sub(2,-2)) * 1000;
               elseif(mult == "M") then
                  price = tonumber(price_string:sub(2,-2)) * 1000 * 1000;
               else
                  price = tonumber(get_by_path(button,"BillboardGui.Frame.ImageLabel.PriceText").Text);
               end
            end
            if(price ~= nil) then
               if(cheapest == nil) then
                  cheapest = button;
                  cheapest_price = price;
               elseif(price < cheapest_price) then
                  cheapest = button;
                  cheapest_price = price;
               end
            end
         end
      end
   end
   if(
      get_by_path(cheapest,"Head") ~= nil and
      cheapest_price < player.leaderstats.Cash.Value
   ) then
      firetouchinterest(character.LeftFoot,cheapest.Head,0);
      wait(0.1);
      if(get_by_path(cheapest,"Head") ~= nil) then
         firetouchinterest(character.LeftFoot,cheapest.Head,1);
         wait(0.1);
      end
        player.PlayerGui.UI.Store.Visible = false;
   end
end