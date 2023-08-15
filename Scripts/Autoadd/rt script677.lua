local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Restaurant Tycoon 2")
local b = w:CreateFolder("Main")
b:Button("Player Instant Cook",function()
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
({...})[3]()
end
MouseMovement.start = function(...)
({...})[3]()
end
MouseSpin.start = function(...)
({...})[3]()
end
end)
b:Button("Auto Collect Money",function()
warn("Requiring API")do
loadstring(game:HttpGet("https://pastebin.com/raw/KMc6aBky"))();
end warn("API Loaded")
local child = object.child
local descendant = object.descendant
local check = object.check
local Tycoon = game.Players.LocalPlayer.Tycoon.Value
descendant.foreach(Tycoon.Items.OftenFiltered.Surface,"Bill",function(Bill)
local Settings = {
["name"] = "CollectBill",
["model"] = Bill.Parent
}
game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)
local Connection,Code = descendant.on_add(Tycoon.Items.OftenFiltered.Surface,function(Bill)
check.it(Bill.Name == "Bill",function()
local Settings = {
["name"] = "CollectBill",
["model"] = Bill.Parent
}
game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)
end)
end)
b:Button("NPC Cook & Reach",function()
local chiefInstantCook = true
local npcReach = true
local Client = game.Players.LocalPlayer
local PS = Client.PlayerScripts
local Module = require(PS.ClientMain.Replications.Workers.WalkDummy)
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)
if npcReach then
hookfunction(Module,function()
return task.wait()
end)
end
if chiefInstantCook then
Worker.event = function(...)
local args = {...}
local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
local M2 = game.ReplicatedStorage.MiscModules.CookingSharedCharacter:FindFirstChild(args[4])
if M2 then
require(M2).finishInteract(npc,args[3],args[4])
end
return
end
end
end)