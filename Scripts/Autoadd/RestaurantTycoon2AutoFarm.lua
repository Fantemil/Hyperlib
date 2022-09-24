local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.ClientMain.Replications.Workers.WalkDummy)
setconstant(Module,34,function()
   game:GetService("RunService").Heartbeat:Wait()
end)
local Cooking = game.Players.LocalPlayer.PlayerScripts.CookingNew
local CookProgress = require(Cooking.CookProgress)
local MultiClick = require(Cooking.InputDetectors.MultiClick)
local MouseMovement = require(Cooking.InputDetectors.MouseMovement)
local MouseSpin = require(Cooking.InputDetectors.MouseSpin)

local run = CookProgress.run
CookProgress.run = function(...)
   local ARGS = {...}
   ARGS[3] = 0
   return run(unpack(ARGS))
end

MultiClick.start = function(...)
   local ARGS = {...}
   ARGS[3]()
end

MouseMovement.start = function(...)
   local ARGS = {...}
   ARGS[3]()
end

MouseSpin.start = function(...)
   local ARGS = {...}
   ARGS[3]()
end
local PS = game.Players.LocalPlayer.PlayerScripts
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)


Worker.event = function(...)
   local args = {...}
   local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
   local M2 = game.ReplicatedStorage.Resources.NewCookingResources.SharedCharacterComponents:FindFirstChild(args[4])
   if M2 then
       local Task = require(M2)
       Task.finishInteract(npc,args[3],args[4])
   end
   return
end