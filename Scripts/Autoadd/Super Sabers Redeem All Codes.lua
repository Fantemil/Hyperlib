local moduule = require(game:GetService("ReplicatedStorage").Utilities.CodeStats)

for i,_ in pairs(moduule) do
   local ohString1 = i
   game:GetService("ReplicatedStorage").Events.RemoteFunctions.RedeemCode:InvokeServer(ohString1)
end