local player = game.Players.LocalPlayer
local mouse = player:GetMouse()



bind = "v" -- has to be lowercase


mouse.KeyDown:connect(function(key)
if key == bind then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       for i,v in pairs(v.Hitboxes.Hitbox:GetChildren()) do
           if v.Name == "DmgPoint" then
           v.Position = v.Position + Vector3.new(0, math.random(-2, 10), 0)
           v.Visible = true
           end
       end
   end
end
end
end)