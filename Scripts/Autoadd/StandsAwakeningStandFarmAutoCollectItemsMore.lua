local dsinv = "https://discord.gg/EGwQdWPG3y"

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/muzrblx/muz-scripts/main/NanoLoader/Scripts/"..game.PlaceId..".lua")
end)
if f == true then
    loadstring(d)()
else
    game.Players.LocalPlayer:Kick("Game not supported "..dsinv)
    setclipboard(dsinv)
end