--[[
 WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()


bind = "r" 


mouse.KeyDown:connect(function(key)
if key == bind then
game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()

end
end)


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()


bind = "q" 


mouse.KeyDown:connect(function(key)
if key == bind then
game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
end
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()


bind = "e" 


mouse.KeyDown:connect(function(key)
if key == bind then
game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end
end)