local Games = game:GetService'HttpService':JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/SupportedGames"))
local function run()
    for i,v in pairs(Games) do
        if v == game.GameId then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/"..i))()
            return
        end
    end
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/Universal"))()
end
run()