local delay = 0.25 -- don't even ask why I added a delay.

-- Starting the Webhook/Service
local HttpService = game:GetService("HttpService")

-- Webhook URL
local webhookURL = "[REPLACE_SILLY_WEBHOOK_HERE!]"

-- Use other silly Http Request function, if it doesn't work from the weaker executor. (btw this may support all mobile executor, I haven't tested in PC.)
local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request)

-- PUT/REPLACE YOUR SCRIPT IN HERE:
print("hewwo, I like minors!")

--  Webhook script 2, they Function to execute the scripts with a delay. (don't even ask why with the delay again.)
local function executeScripts()
    for _, scriptContent in ipairs(scripts) do
        spawn(function()
            loadstring(scriptContent)()
        end)
        wait(delay)
    end
end

-- Prepare the silly payload for the webhook! ^w^
local payload = {
    content = "",
    embeds = {
        {
            title = "[**EXAMPLE TITLE**]",
            description = game.Players.LocalPlayer.DisplayName .. " has executed the script.", -- Only Grabs The display name
            type = "rich",
            color = tonumber(0xff0000), -- HEX COLOR
            fields = {
                {
                    name = "Hardware ID:", -- basically.. like HWID, lol.
                    value = game:GetService("RbxAnalyticsService"):GetClientId(),
                    inline = true
                }
            }
        }
    }
}

-- Sending the request from ur silly Webhook discord in a funny progress :3
local response = httpRequest({
    Url = webhookURL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode(payload)
})