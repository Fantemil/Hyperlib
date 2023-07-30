-- Made by Zer0 0ne c:
local Me = game:GetService("Players").LocalPlayer
local TP = game:GetService("TeleportService")
local VKick = Me.PlayerGui.ChatGame.Votekick
VKick.Title:GetPropertyChangedSignal("Text"):Connect(function()
if VKick.Title.Text == "Votekick " .. Me.Name .. " out of the server?" then
        TP:Teleport(game.PlaceId, Me)
    end
end)