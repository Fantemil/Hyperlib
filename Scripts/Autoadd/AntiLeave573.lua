local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

game:GetService("GuiService").MenuOpened:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        TeleportService:Teleport(game.PlaceId, player)
    end
end)