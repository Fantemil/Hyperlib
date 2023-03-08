--[[
    Free Keys Expires Every 6 Hours
]]

-- Free Key link: https://kylndantas-key-system.kylndantas.repl.co/key

getgenv().isPermanent = false;
getgenv().key = 'YOUR KEY HERE'
loadstring(game:HttpGet("https://raw.githubusercontent.com/KylnDantas/No-Scope-Arcade/main/file.lua", true))()