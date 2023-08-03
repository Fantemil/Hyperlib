local plr = game.Players.LocalPlayer

local holder = plr.PlayerGui.Notifications.NotifHolder
local robux = plr.PlayerRobux

local s, e = pcall(function()
   _G.magnet:Disconnect()
   _G.magnet = nil
end)

if e == nil then
   warn("AUTOBUY WAS RESET")
else
   warn("AUTOBUY WAS LOADED")
end

_G.magnet = holder.ChildAdded:Connect(function(v)
   if v:WaitForChild("Holder"):WaitForChild("PurchaseDecor"):WaitForChild("TextLabel").Text ~= "New Item!" then
       return
   end
   
   local item = plr.PlayerGui.Main.Frames.Store.ItemPreview.ItemDetails
   local button = item.Item.Purchase.TextButton
   local yes = item.Parent.Prompt.MainPrompt.Yes
   local stock = string.gsub(v:WaitForChild("Holder"):WaitForChild("Stock").Text, "%D", "")
   
   repeat task.wait() until item.Item.Stock.TextLabel.Text:find(stock)
   
   local split = button.Text:split("$")        
   local num = split[2]
   local split = num:split(",")
   local required
   
   for i,v in pairs(split) do
       if required == nil then
           required = v
       else
           required = required .. v
       end
   end
   
   if (tonumber(robux.Value) > tonumber(required)) then
       for i,v in pairs(getconnections(button.MouseButton1Click)) do
           v:Fire()
       end
       for i,v in pairs(getconnections(yes.MouseButton1Click)) do
           v:Fire()
       end
   end
end)