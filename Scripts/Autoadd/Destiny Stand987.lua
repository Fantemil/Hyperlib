-----------------------------
-- By Lerkermer + SwagminComp
-- Script Name: Destiny Stand
-----------------------------------------------------------
getgenv().Settings =  {
    ["Owner"] = "" -- Insert a username here!
}
--[[
Example:
getgenv().Settings =  {
    ["Owner"] = "SwagminComp"
}
]]
-- DO NOT REPLACE ["Owner"] OR THE SCRIPT WILL BREAK!
---------------------------------------------------------------------------------
--[[
Main commands:
Summon! - Makes the stand follow you.
Multi! - Enables kill aura while the stand stays visible.
Grow! - Makes the stand a titan.
Aura! - Enables kill aura.
Vanish! - Makes the stand disappear.
Mimic! - Makes the stand mimic what you do (attack, block).
Barrage! - Makes the stand spam punch everybody around you.
Stab! - Makes the stand stab everybody around you.
Banish! - Makes the stand fling everybody around you.
]]
--[[
Miscellaneous commands:
/e leave - Makes the stand leave.
/e shrink - Makes the stand shrink.
/e reset - Resets the stand.
/e rejoin - Makes the stand rejoin.
/e limit - The number of how far a player can be to be attacked.
/e spread - The number of how much the stand should spread while attacking.
/e fling [username] - Flings a specific player.
/e attack [username] - Autokills a specific player.
/e light - Switches the attack mode to spam punching.
/e heavy - Switches the attack mode to hold punching.
]]
--------------------------------------------------------------------------------------------
-- DO NOT TOUCH ANYTHING BELOW UNLESS YOU KNOW WHAT YOU'RE DOING!
getgenv().Commands =  {
    ["Summon"] = "Summon!",
    ["Multi"] = "Multi!",
    ["Grow"] = "Grow!",
    ["Aura"] = "Aura!",
    ["Vanish"] = "Vanish!",
    ["Mimic"] = "Mimic!",
    ["Barrage"] = "Barrage!",
    ["Stab"] = "Stab!",
    ["Banish"] = "Banish!",
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/compwnter/destiny/main/stand"))()
--------------------------------------------------------------------------------------------