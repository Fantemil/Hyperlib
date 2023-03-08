--ngl but this code under there is that same as Nukevscity and lazium
--Ui Lib
local Library = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
--Script Ui
local Windows = Library:Window("laziumscript.com") --change the name of ui at "Lazium"
-- Server 
local Server = Windows:Server("Script","") --change the server name at "Home"
-- Channel
local GPO = Server:Channel("Grand Piece Online", "") --change the channel name at "Home"

--Button
GPO:Button("Jakekill's Script", function() -- change the button name at "Jakekill's Script"
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Jakekill871/public-scripts/master/GrandPieceOnlineGUI'),true))() -- Paste your script at here     
end)

GPO:Button("Dolce Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/tree"))()
end)

GPO:Button("Lunar Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0xRinFin/GPO/main/Lunar%20Hub%20GPO%20FREE.lua"))()     
end)

GPO:Button("Arpon AG", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ArponAG/Scripts/main/gpo.lua', true))()
end)

GPO:Button("CFA Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CFA-HUB/CFA-HUB/main/cfahubfree.lua"))()      
end)

GPO:Button("Extreme HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/KeySystemUI/main/KeySystemUI-Obfuscated.lua"))()
end)