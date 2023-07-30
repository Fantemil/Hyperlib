_G.WebhookLucky = ""   --webhook for lucky notifier 
 

getgenv().timeuntilitemcheck = 20 --how many seconds until it checks if you got any item ( recommended for lucky farm 1-10 second )

getgenv().WhatToFarm = {
    ["Lucky Arrow"] = true,
    ["Rokakaka"] = false,
    ["Pure Rokakaka"] = false,
    ["Diamond"] = false,
    ["DEO's Diary"] = false,
    ["Steel Ball"] = false,
    ["Rib Cage of The Saint's Corpse"] = false,
    ["Stone Mask"] = false,
    ["Gold Coin"] = false,
    ["Quinton's Glove"] = false,
    ["Ancient Scroll"] = false,
    ["Zepellin's Headband"] = false,
    ["Mysterious Arrow"] = false
}
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/hackbloxfruits/main/hop"))()