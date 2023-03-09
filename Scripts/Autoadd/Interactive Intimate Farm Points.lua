local balls = true

local m = game.Players.LocalPlayer:GetMouse()

spawn(function()
   while true do
       if not balls then repeat wait() until balls end
           
       game.Players.LocalPlayer.PlayerGui.ThingsOnScreen.Electricution_Script.Activated.Value = true
       game.Players.LocalPlayer.PlayerGui.ThingsOnScreen.Electricution_Script.Activated.Value = false
       wait()

   end
end)

m.KeyDown:connect(function(k)
k = k:lower()
if k == "n" then
if not balls then
   balls = true
elseif balls then
   balls = false
end
end
end)