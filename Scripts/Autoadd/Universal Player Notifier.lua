local notifLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Notification%20Library/main.lua"))()

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
  notifLib:CreateDefaultNotif({
 TweenSpeed = 1,
 Title = "notification",
 Text = player.DisplayName .. " joined.",
 Duration = 5
})
end)

Players.PlayerRemoving:Connect(function(player)
 notifLib:CreateDefaultNotif({
 TweenSpeed = 1,
 Title = "notification",
 Text = player.DisplayName .. " left.",
 Duration = 5
})
end)