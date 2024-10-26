local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

while true do
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLING-ALL-SCRIPT-17590"))()
    wait(5)
    wait(5)
    TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
end