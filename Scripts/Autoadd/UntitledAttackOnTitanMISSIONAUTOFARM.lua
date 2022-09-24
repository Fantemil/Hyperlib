local lobbyid = 6372960231
local PlaceID = game.PlaceId

if (PlaceID == lobbyid)
then
   game:GetService("TeleportService"):Teleport(7664622578, LocalPlayers)
else
   getgenv().autofarm = true
   getgenv().tpseed = 150 --put to 199 max if you like taking risks. You won't get banned or kicked for this speed but you may die cause sometimes the script breaks > 150
   loadstring(game:HttpGet("https://leadmarker.xyz/Scripts/AttackOnTitties.lua"))()
end