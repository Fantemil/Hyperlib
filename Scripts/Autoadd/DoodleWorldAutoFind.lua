--[[
If a doodle fits ANY of the following settings, it'll automatically stop
Check source for logic

Note:
Make sure you spell the names right, I've added a few examples by default
--]]

getgenv().whitelist = { -- ALWAYS stops if it finds these regardless
   Glubbie = true,
   Wisp = true,
   Moss = true,
   Mold = true,
   Leapo = true,
}
getgenv().holderBlacklist = { -- Ignores whether or not a doodle holds an item
    Wiglet = true,
    Borbo = true,
    Pebblett = true,
    Springling = true,
    Rosebug = true,
    Roscoon = true,
    Bunsweet = true,
}

-- Stops if enemy doodle is/has one of these attributes
getgenv().misprints = true
getgenv().tints = true
getgenv().skins = true
getgenv().nameColor = true
getgenv().equips = true

loadstring(game:HttpGet("https://scripts.subahook.cc/DoodleWorld.lua"))()