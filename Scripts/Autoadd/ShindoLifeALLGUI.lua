local library = loadstring(game:HttpGet("https://pastebin.com/raw/GAGA5H8t"))();


local Gamer = library:CreateSection("Shindo Life");
Gamer:Button("~ Press Right Shift To Hide GUI ~");
function LoadMe(link)
    loadstring(game:HttpGet(link))()
end
Gamer:Button("Best GUI", function()
 loadstring(game:HttpGet("https://pastebin.com/raw/i53Y3rew",true))()
end)
Gamer:Button("Inf Spins", function()
    LoadMe('https://pastebin.com/raw/8VLs98S9')
end)
Gamer:Button("GUI 2", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/reavscripts/sl2_autofarm/main/main.lua", true))()
end)
Gamer:Button("GUI 3", function()
    LoadMe('http://assasine.com/Scripts/Shinobi_Life_2_Autofarm.lua')
end)
Gamer:Button("GUI 4", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/Kc7XZKbC'),true))()
end)
Gamer:Button("Kesh Hub", function()
 loadstring(game:HttpGet('https://keshhub.com/scripts/main.lua'))()
end)
Gamer:Button("Auto Quest", function()
    LoadMe('https://pastebin.com/raw/d993kP6G')
end)
Gamer:Button("Auto KG", function()
    LoadMe('https://gist.githubusercontent.com/unholytwig/ac1b8bc4d065d761529556331efa7904/raw/f0165013a1290edca729837a77d70fbb42cfb833/sl2kekkeigenkai.lua')
end)
Gamer:Button('Inf Chakra',function()
    _G.InfChakra = true
    loadstring(game:HttpGet('https://pastebin.com/raw/P0BqvPg7'))()    
end)

library:Ready();