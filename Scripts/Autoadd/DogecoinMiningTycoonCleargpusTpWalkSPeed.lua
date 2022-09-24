--[[
(v1.1 Update Logs)
- Added 3 more games (Drop The Number, Evade, and Baking Tycoon)

Current games - Rate My Avatar, Dogecoin Mining Tycoon, Airsoft 3, Baking Tycoon, Drop The Number, Evade

Credits to:
0x37 for: UI library
cykahvh / x1mv for: basically the entire script
Also, some other people for some small stuff I got from v3rmillion and Synapse Discord lol.

--]]

local GN = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/introsequence.lua"))()
rconsoleprint("\n")
rconsoleprint('@@RED@@')
wait(1)
rconsoleprint('- status: checking for game id... - \n')
wait(0.4)
if game.PlaceId == 6708206173 then do -- rate my avatar
        rconsoleprint('- game found: "'.. GN ..'", loading... - \n')
  loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/ratemyavatar.lua"))()
end
elseif game.PlaceId == 6542731310 then do -- dogecoin mining tycoon
    rconsoleprint('- game found: "'.. GN ..'", loading... - \n')
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/dcmt.lua"))()
    end
elseif game.PlaceId == 6498452578 then do
    rconsoleprint('- game found: "'.. GN ..'", loading... - \n') -- airsoft 3
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/airsoft3.lua"))()
    end
elseif game.PlaceId == 10150367093 then do
    rconsoleprint('- game found: "'.. GN ..'", loading... - \n') -- Baking Tycoon 
    print'Ploting up a fleeby side'
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/bakingtycoon.lua"))()
    end
elseif game.PlaceId == 8563844698 then do
    rconsoleprint('- game found: "'.. GN ..'", loading... - \n') -- Drop The Number
    print'Ploting up a fleeby side'
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/dropthenumber.lua"))()
    end
elseif game.PlaceId == 9872472334 then do
    rconsoleprint('- game found: "'.. GN ..'", loading... - \n') -- Evade
    print'Ploting up a fleeby side'
    loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/evade.lua"))()
    end
  else
    messagebox('no game found.', 'caracal.lua', 0)
 rconsoleprint('- game not supported. loading universal... - \n') -- universal lol
 loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/caracal.lua/main/universial.lua"))()
 print'Game Not Supported'
end
rconsoleprint("- status: loaded. -")
wait(10.4)
rconsoleprint("\n \n")
rconsoleprint("@@BLUE@@")
rconsoleprint("full source of the hub on my github (unobfuscated, i'm not a pussy) \n")
rconsoleprint("github.com/x1mv \n \n \n \n \n \n \n -- made by x1mv/cykahvh --")