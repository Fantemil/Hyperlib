_G.enabled = true

spawn(function()
   while _G.enabled do
       game:GetService("Players").LocalPlayer.PlayerGui.OnlineGameplay.Gameplay.Started.Value = true
       wait()
   end
end)

local Send = function(Key)
   local VM = game:GetService('VirtualInputManager')
   VM:SendKeyEvent(true,Enum.KeyCode[Key],false,game)
   VM:SendKeyEvent(false,Enum.KeyCode[Key],false,game)
end
for life = 1, 20, 1 do
   spawn(function()
       while _G.enabled do
           Send('One')
           wait()
       end
   end)
end

if _G.enabled == true then
game:GetService("Players").LocalPlayer.PlayerGui.OnlineGameplay.Enabled = true
game:GetService("Players").LocalPlayer.PlayerGui.Notification.Noti:Fire("Auto farm is now running!", 3)
game:GetService("Players").LocalPlayer.PlayerGui.Notification.Noti:Fire("Thanks for using :)", 3)
else
game:GetService("Players").LocalPlayer.PlayerGui.OnlineGameplay.Enabled = false
game:GetService("Players").LocalPlayer.PlayerGui.Notification.Noti:Fire("Auto farm is turned off!", 3)
end