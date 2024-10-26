-- made by zans
local webhookURL = "YOU WEBHOOK DISCORD URL"

local function sendToWebhook(url, payload)
    local HttpService = game:GetService("HttpService")
    local response = http_request({
        Url = url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(payload)
    })
end

local embeds = {
        ["title"] = "You Title",
        ["description"] = "You Description",
        ["color"] = 255,
        ["fields"] = {
            {["name"] = "Username", ["value"] = game.Players.LocalPlayer.Name, ["inline"] = true},
            {["name"] = "Place Id", ["value"] = game.PlaceId, ["inline"] = true},
            {["name"] = "Job Id", ["value"] = game.JobId, ["inline"] = true}
        },
        ["footer"] = {["text"] = "Time Executed"},
        ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
}

-- use embeds
local message = {
    ["content"] = "You Content",
    ["username"] = "Webhook Username",
    ["embeds"] = {embeds}
}

sendToWebhook(webhookURL, message)
