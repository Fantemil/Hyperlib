 while wait() do
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local charX = player.character
local A = charX:WaitForChild("Humanoid")
mouse.KeyUp:connect(function(key)
if key == "r" then
A.Health = 0
end

end)
end