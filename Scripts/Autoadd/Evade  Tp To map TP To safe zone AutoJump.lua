--[[supported game: doors, evade, bee swarm sim, psx, stands awakening,
build a boat for treasure]]

_G.entered989 = true

if game.PlaceId == 5780309044 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud_Hub-stands.lua"))()
elseif game.PlaceId == 9872472334 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud-Evade.lua"))()
elseif game.PlaceId == 537413528 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Cloud_Hub-boat.lua"))()
elseif game.PlaceId == 1537690962 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/BSS-cloud.lua"))()
elseif game.PlaceId == 6284583030 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/Psx/Cloud_Hub.lua"))()
elseif game.PlaceId == 6839171747 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripters/CloudHub/main/Doors-CloudHub.lua"))()
    end