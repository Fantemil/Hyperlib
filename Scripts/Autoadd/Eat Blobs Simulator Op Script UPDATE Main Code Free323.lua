--[[
    Made By InfinityMercury
      Have fun :)
]]
getgenv().FarmSettings = {
    ['Farm Afk Methods'] = {
        ['Teleport Orb To You'] = false,    -- not recommended as it may end up lagging
        ['Teleport You To Orb'] = false,    -- recommended (but may end up dying)
        ['Advance Teleport You To Orb'] = false,    -- this option is still in beta but I highly recommend it
        ['Tween Goto Orb To You'] = false,   -- super recommended (But in beta (But Works))
    };
    ['Normal Farm Methods'] = {
        ['Speed'] = false,  -- increases its speed to facilitate the collection of orbs
        ['Size Up'] = false,    -- most recommended, increases the size of the orbs making it easier for the player to pick them up faster (but it washes a little)
    };
    ['Kill Farm'] = {
        ['Kill Players'] = true,   -- kill all players who are weaker than you
    };
};


loadstring(game:HttpGet(
    'https://pastebin.com/raw/Ymw7Gyae'
))('Loader.lua')