local Heal = "Bloodfruit"
local bind = 'q'
-- Settings ^


local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local Toggle = false
game:GetService('RunService').Heartbeat:connect(function()
   if Toggle then
       if Humanoid.Health ~= 100 then
           game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(Heal)
       end
   end
end)

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
   if key == bind then
       Toggle = not Toggle
       print(Toggle)
   end
end)