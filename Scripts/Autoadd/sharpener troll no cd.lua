--I RECOMMEND NOT LOOKING AT THIS CODE. it looks fuckin trash lol
-- Variables

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Settings

bind = "r"

-- Script

mouse.KeyDown:connect(function(key)
if key == bind then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharpener's Axe").Sharpen:FireServer()
end
end)