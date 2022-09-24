function Invite()
    if not isfolder("Mint") then makefolder("Mint") end
    if isfile("Mint.txt") == false then
        (syn and syn.request or http_request)({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "JUEu7XFBXD"
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
            writefile("Mint.txt", "discord")
        })
    end
end
do
    Invite()
    local inv = "https://discord.gg/JUEu7XFBXD"
    local games
    local checker = pcall(function()
        games = game:HttpGet(
            "https://raw.githubusercontent.com/TrustsenseDev/UnknownHub-V1/main/Games/" .. game.PlaceId .. ".lua")
    end)
    if checker then
        loadstring(games)()
    else
        game:GetService "Players".LocalPlayer:Kick(
            "Mint Hub don't support this game, discord link was copied to your clipboard.")
        Invite()
        setclipboard(inv)
    end
end