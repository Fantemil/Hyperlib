-- Re-execute if broke!

_G.autoWin = true
_G.maxToleratedTime = 12 -- Keep above 12 or else you won't win

if game.PlaceId == 12292508604 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jagrosh1/roblox-scripts/main/lose-speed-per-second/2-4-2023/main.lua',true))()
end