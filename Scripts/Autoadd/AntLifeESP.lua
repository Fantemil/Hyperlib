 --[[
made by: doomed#0708
https://v3rmillion.net/showthread.php?tid=1115952
--]]

_G.killaura = true --set to false after running script to stop killaura

--// CUSTOMIZABLE VARS

--// ANT OPTIONS
_G.antchamColors = {
   ["Fire Ant"] = Color3.fromRGB(255,0,0),
   ["Yellow Crazy Ant"] = Color3.fromRGB(0,255,0),
   ["Carpenter Ant"] = Color3.fromRGB(0,0,255)
}

_G.antdefaultColors = {
   ["Larvae"] = Color3.fromRGB(255,255,255),
   ["Eggs"] = Color3.fromRGB(255,255,255)
}

_G.antdefaultSize = { --increase to make smaller
   ["Queen"] = 1
}

--//SPIDER OPTIONS

_G.spiderchamColors = {
   ["Spider"] = Color3.fromRGB(130,130,130),
   ["Spiderling"] = Color3.fromRGB(160,160,160)
}

_G.spiderdefaultSize = { --increase to make smaller
   ["Eggs"] = 1
}

loadstring(game:HttpGet("https://pastebin.com/raw/ncCVArfN"))() --chams

_G.maxdistance = 500
loadstring(game:HttpGet("https://pastebin.com/raw/JCBj4xL5"))() --ESP

--_G.killaura = true
loadstring(game:HttpGet("https://pastebin.com/raw/FhLDKube"))() --killaura