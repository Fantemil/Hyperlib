local collectId = require(game:GetService("ReplicatedStorage").Modules.SharedFunctions).Activate(game:GetService("Players").LocalPlayer)-- client.UserId / 256 * 125
local function CollectShit(ponyName, collectType)
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(ponyName, "FTUE", true)
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(ponyName, "Round", 1)
for i=1, 20 do
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(ponyName, collectType, tostring(i))
end
end
-- Collect Gems
for i=1, 3 do
game:GetService("ReplicatedStorage").RemoteEvents.CollectibleInteraction:FireServer({["Chimp"] = ""}, collectId, tostring(i))
end
-- Complete all missions
for IDoN0t=1, 3 do
-- Finish standered 3 round mission
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Pipp", "Progress", 69696969)
task.wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Zipp", "Progress", 69696969)
task.wait(0.1)
game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Sunny", "Progress", 69696969)
task.wait(0.1)
-- Finish collecting shit
CollectShit("Hitch", "CrittersCollected")
task.wait(0.1)
CollectShit("Izzy", "ItemsCollected")
task.wait(0.1)
end