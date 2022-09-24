pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/reddythedev/robloxthings/main/'..game.PlaceId))()
end)

local Settings = {
    InviteCode = "YFgFhUWNFC"
}

local HttpService = game:GetService("HttpService")
local RequestFunction

if syn and syn.request then
    RequestFunction = syn.request
elseif request then
    RequestFunction = request
elseif http and http.request then
    RequestFunction = http.request
elseif http_request then
    RequestFunction = http_request
end

local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"

if not RequestFunction then
    return print("Your executor does not support http requests.")
end

for i = 6453, 6464 do
    local DiscordInviteRequest = function()
        local Request = RequestFunction({
            Url = string.format(DiscordApiUrl, tostring(i)),
            Method = "POST",
            Body = HttpService:JSONEncode({
                nonce = HttpService:GenerateGUID(false),
                args = {
                    invite = {code = Settings.InviteCode},
                    code = Settings.InviteCode
                },
                cmd = "INVITE_BROWSER"
            }),
            Headers = {
                ["Origin"] = "https://discord.com",
                ["Content-Type"] = "application/json"
            }
        })
    end
    spawn(DiscordInviteRequest)
end