-- place into your auto exec if u wana
getgenv().emotesEnabled = true
getgenv().animationsEnabled = true

getgenv().emotes = { -- you can have upto 8 emotes and you can call them whatever you want
    cum=3823158750,
    penis=3360692915,
    cock=4212499637,
    balls=7466046574,
    TOWNY=3576747102,
    obama=5917570207
}

getgenv().animationPack = 'Robot' -- [leave blank to use the table below] to see a list of valid animations visit https://pastebin.com/raw/XppaAPF7

getgenv().animations = { -- if you dont have an animation pack on it will use these
    run = {'rbxassetid://656118852'},
    walk = {'rbxassetid://656121766'},
    jump = {'rbxassetid://656117878'},
    idle = {
        'rbxassetid://656117400',-- Animation1 (The order DOES matter)
        'rbxassetid://656118341' -- Animation2
    },
    fall = {'rbxassetid://656115606'},
    swim = {
        'rbxassetid://656119721',-- swim (The order DOES matter)
        'rbxassetid://656121397' -- swimIdle
    },
    climb = {'rbxassetid://656114359'}
}


loadstring(game:HttpGet('https://raw.githubusercontent.com/wallop560/randomScripts/main/AnimationChanger.lua'))()