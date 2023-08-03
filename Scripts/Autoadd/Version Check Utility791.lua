local scriptversion = 20 -- you can use setclipboard(tostring(game.PlaceVersion)) to get the current game version to enter here for your script.
local player = game:GetService("Players").LocalPlayer 
local gameversion = game.PlaceVersion -- Grabs game version

if scriptversion ~= gameversion then -- checks if scriptversion matches gameversion
    player:Kick("An update has been detected since the last update!")
end