--Toggle
getgenv().autoFish = true

--LocalData Variables
local l__ReplicatedStorage__2 = game:GetService("ReplicatedStorage")
local v5 = require(l__ReplicatedStorage__2.LoadModule)
local v6 = v5("LocalData")

local throwRod

for i, v in pairs(getgc(true)) do
   if type(v) == "function" and not is_synapse_function(v) and getinfo(v).name == "tryCastRod" then
       throwRod = v
   end
end

while task.wait() and autoFish do
   --Makes sure that you have your rod equipped
   if v6:GetData("ToolHolding") ~= "Fishing Rod" then
       game:GetService("ReplicatedStorage").Events.SetToolHolding:FireServer("Fishing Rod")
   end

   --Uses the game's own function (grabbed from gc above) to cast the rod
   throwRod(game.Players.LocalPlayer:GetMouse())
end