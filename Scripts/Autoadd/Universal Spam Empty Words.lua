request = game:HttpGet("https://raw.githubusercontent.com/sweqtyy/sweqtyy.github.io/master/beemovie.json")
decoded = game.HttpService:JSONDecode(request)


local lyrics = {}

for i in decoded.script:gmatch("[^\r\n]+") do
 table.insert(lyrics, i)
end

for i, v in pairs(lyrics) do
 wait(3)
 game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
end