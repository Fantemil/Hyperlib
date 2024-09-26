local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
mouse.Button1Down:connect(function()
local Racist = mouse.Target
if Racist.Parent.Humanoid then
local hum = Racist.Parent.Humanoid
hum.Health= 0
end
end)