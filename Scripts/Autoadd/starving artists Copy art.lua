local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/snnwer/roblox-other/main/starving-artists/api.lua", true))()

api:copy(
"cummy bally", -- victim's name
1, -- number of canvas the art you want to copy is on, if that player has more than 3 canvases experimentate because it counts them in a weird way
0.05, -- time between pixels, recommended is 0.05
true, -- enable notifications
"random" -- pixel placing style, default is "random", can be "rows" and "reverserows"
)