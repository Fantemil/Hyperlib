local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local ownerId = game.CreatorId

game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        local notif = Notification.new("warning", "Owner", "The owner has joined the game.")
        notif:deleteTimeout(3)
    end
end)