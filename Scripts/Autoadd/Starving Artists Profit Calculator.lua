local player = game:GetService("Players")["ReplaceMeWithPlayerName"]
local MessageRemote = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
local leaderstats = player.leaderstats
local sold = leaderstats.Sold
local bought = leaderstats.Bought
local profit = math.floor(sold.Value - bought.Value)
local RobloxTax = profit * 0.30
local total = profit - RobloxTax
if profit < 0 then MSG = "Your total debt is ="
else
MSG = "Your total profit is = "
end
MessageRemote:FireServer(player.Name.." "..MSG..tostring(math.floor(total)),"All")