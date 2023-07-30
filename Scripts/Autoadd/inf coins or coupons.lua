local current_currency = "Coins" -- change to Coins or Coupons
local args = { 
[1] = -92233720368547758, 
[2] = {
["Scout"] = {},
["Butcher"] = {},
["Bagger"] = {},
["Brave"] = {
  ["A_Brave_Glow_HEAD"] = "A_Brave_Glow_HEAD"
},
["Detective"] = {},
["Engineer"] = {}, 
["Scary"] = {}, 
["Custom"] = {},
["Clown"] = {},
["Leader"] = {}
},
[3] = "A_Brave_Glow_HEAD",
[4] = "Brave",
[5] = current_currency
}
game:GetService("ReplicatedStorage").RemoteFunctions.BuyltemFunction:InvokeServer(unpack(args))