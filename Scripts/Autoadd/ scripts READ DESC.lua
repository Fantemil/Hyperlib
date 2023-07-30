local gui = loadstring(game:HttpGet("https://gitlab.com/0x45.xyz/droplib/-/raw/master/drop-minified.lua"))():Init(config,game.CoreGui)


local lpg = gui:CreateCategory("Delta - Blox Fruits")

lpg:CreateButton("(Best No Key) Neva Hub",function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2"))() end)
lpg:CreateButton("(Best No Key) Hoho Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))() end)
lpg:CreateButton("(Best No Key) Zen Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))() end)

lpg:CreateButton("Mukuro Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))() end)
lpg:CreateButton("Mango Hub",function() loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))() end)
lpg:CreateButton("Table Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/master/table'))() end)
lpg:CreateButton("Tawan Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/kill55547/TAWAN_HUB/main/hub.lua.txt'))() end)
lpg:CreateButton("Tuper Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/TUPERX/TUPERX/Main/MenuBF/README.md'))() end)
lpg:CreateButton("Unique Hub",function() loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Unique-Hub-LEAK-6735'))() end)
lpg:CreateButton("BlazeX Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/WindowsXp12/BlxzeRBLX/main/BLxzeHub.lua'))() end)
lpg:CreateButton("2x Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/2XHUB-UPDBIG/main/README.md'))() end)
lpg:CreateButton("PlaybackX Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))() end)
lpg:CreateButton("East Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Brineeee/EastHub/main/lua'))() end)
lpg:CreateButton("Chiba Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))() end)
lpg:CreateButton("One X Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/xOne2/One-x-HUB/main/README.md'))() end)
lpg:CreateButton("Putaya Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Putaya/HITBOXKAK/main/PutayaFree'))() end)
lpg:CreateButton("Zen Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))() end)
lpg:CreateButton("Project Meow Hub",function() loadstring(game:HttpGet('https://rawscripts.net/raw/Project-Meow_421'))() end)

lpg:CreateButton("(BUGGY) Fusion Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/script/main/fusion1'))() end)

lpg:CreateButton("(BUGGY) MasterX Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/BlodyXHub/Xeniel_All/main/ForAll'))() end)

lpg:CreateButton("(BUGGY) Quartyz Hub",function() loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))() end)

local req = (syn and syn.request) or (http and http.request) or http_request or request

req(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "EwERJNgMvy",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })