getgenv().Settings = {
    AutoFarm = true,
    WaitTime = 1, -- time between trying to pick up (recommended at least 1 due to anticheat)
    Distance = 7, -- distance between u and item (recommended at least 7)
    autoRejoinOnKick = true, -- will rejoin if you get kicked (Credits to Alpenidze)
    ItemsName = {"Stand Arrow","Rokakaka","Unusual Arrow"} -- I don't know what other items are in this place, so if you want, you can add
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/MirroxGame/Scripts/main/Project%20Upright/ItemsAutoFarm.lua",true))()