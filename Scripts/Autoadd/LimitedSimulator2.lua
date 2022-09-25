 local plr = game.Players.LocalPlayer
local c_handler = plr.PlayerScripts.ClientHandler
local events = game.ReplicatedStorage.Events
local catalog = require(c_handler.Catalog)

local function find_buy(item)
   local result = nil
   for _, v in pairs(getgc()) do
       if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) then
           local constants = debug.getconstants(v)
           if table.find(constants, "You need %s more $ to buy %s! Would you like to buy more cash?") and table.find(constants, "format") then
               if (item ~= nil and debug.getupvalue(v, 13) == item) or item == nil then
                   result = v
               end
           end
       end
   end
   
   return result
end

events.Notification.OnClientEvent:connect(function(item)
   wait(1)
   catalog:LoadItem(item)
   local buy = find_buy(item)
   buy()
end)