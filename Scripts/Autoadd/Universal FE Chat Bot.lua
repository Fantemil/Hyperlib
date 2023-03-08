local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

_G.Owner = "KAP1XO0" -- replace it with ur user NO DISPLAY NAMES

function getChat(message,plrname)

   local Split = message:gsub(" ", "+") -- This takes spaces within the person's message and turns it into for ex: Hi+How+Are+You... to ensure that there are no errors and to also make the URL work
   
   local Response = game:HttpGet("https://api.affiliateplus.xyz/api/chatbot?message=" .. Split .. "&botname=" .. plrname .. "&ownername=" .. _G.Owner .. "&user=1")
   local Data = HttpService:JSONDecode(Response)
   wait(1)
   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Data.message, "All")
end

Players.PlayerChatted:Connect(function(type, plr, message)
   if plr.Name ~= Players.LocalPlayer.Name then
       getChat(message, plr.Name)
   end
end)