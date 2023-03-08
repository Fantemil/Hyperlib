local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
bind = "e" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then do 
for _, v in next, game:GetDescendants() do
       if v and v:IsA"Tool" and v.Name == "Stroller" then
           v:destroy()
       end
end
end
end
end)