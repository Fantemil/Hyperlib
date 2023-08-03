-- Super Simon Says script by Andot/Timeflaire
-- This script is Open Source, feel free to do whatever you want with it
-- Recommended to put this on autoexec, it checks for the game, so it will not interfere with other games
loadstring(game:HttpGet("https://raw.githubusercontent.com/TimeFlaire/autoexec/main/misc.lua",true))()

--[[
-- Paste this in your executor and spam it to lag the server
for i = 1, (math.huge^math.huge * math.huge^math.huge)*math.huge^math.huge,.1 do
pcall(function()
 while true do
     game:GetService("ReplicatedStorage").ServerEvents.SimonCommand:InvokeServer(true,true,1)
        task.wait(.1)
     game:GetService("ReplicatedStorage").ServerEvents.SimonCommand:InvokeServer(true,true,2)
        task.wait(.1)
     game:GetService("ReplicatedStorage").ServerEvents.SimonCommand:InvokeServer(true,true,3)
  task.wait(.1)
     game:GetService("ReplicatedStorage").ServerEvents.SimonCommand:InvokeServer(true,true,4)
  task.wait(.1)
 end
end)
end
 ]]
 
 