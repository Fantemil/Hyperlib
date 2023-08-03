if not game:IsLoaded() then
    game.Loaded:Wait()
end

--[[ AUTOEXEC SETTINGS ]]-- Dont delete these if ur not using Auto Execute.
getgenv().afkFarm = false --[[ CURRENTLY DOES NOT WORK BECAUSE I CANT CLICK ON THE DAMN PROCEED BUTTON FOR THE GATE!! ]]
getgenv().reserveDungeon = false -- Does not work rn.
getgenv().dungeonRank = "E" --"B" "C" "E" "Red" [FINDS FREE DUNGEONS UNLESS U HAVE BUY DUNGEON ON]

loadstring(game:HttpGet("https://raw.githubusercontent.com/lolpoppyus/Roblox-Lua/master/SoloBloxLeveling.lua",true))()