_G.wl_key ='INSERT_KEY_HERE' -- But the key discord.gg/betterdahood or else the script will auto-kick you 

--Alt Control Settings
getgenv().mainId = 123 -- Put your main accounts user id here
getgenv().alts = { -- Replace the 123s with your alt IDs (copy and paste line for more alts, max is 39) (make sure they are in numbered order)
    123,
    1234, 
    12345,
}

--Loadstring
loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHood/main/whitelist_output.lua'))()
