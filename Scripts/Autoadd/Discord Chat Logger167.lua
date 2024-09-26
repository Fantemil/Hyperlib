--[[
re-scripted darks script cz his dumbahh got his website removed
i also fixed the syn.request shi

Tutorial:
make a discord webhook
copy the webhook url
put the webhooks url in the 'Your Discord Webhook Link Here!'

this basically makes your bot start sending the chat messages from the server ur in
--]]

local marketplaceService = game:GetService("MarketplaceService")
 
local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, Game.PlaceId)
if isSuccessful then
 
local wh = 'Your Discord Webhook Link Here!'
local embed1 = {
       ['title'] = 'Beginning of Message logs on '..info.Name.." at "..tostring(os.date("%m/%d/%y at time %X"))
   }
local a = request({
   Url = wh,
   Headers = {['Content-Type'] = 'application/json'},
   Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed1}, ['content'] = ''}),
   Method = "POST"
})
function logMsg(Webhook, Player, Message)
   local embed = {
       ['description'] = Player..": "..Message.."  " ..tostring(os.date("| time %X")) 
   }
   local a = request({
       Url = Webhook,
       Headers = {['Content-Type'] = 'application/json'},
       Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
       Method = "POST"
   })
end
for i,v in pairs(game.Players:GetPlayers()) do
   v.Chatted:Connect(function(msg)
       logMsg(wh, v.Name, msg)
   end)
end
 
game.Players.PlayerAdded:Connect(function(plr)
   plr.Chatted:Connect(function(msg)
       logMsg(wh, plr.Name, msg)
   end)
end)
end