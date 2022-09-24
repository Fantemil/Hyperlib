local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function CheckIfVictimIsAlive(Victim)
if Victim.Character and Victim.Character.Humanoid and Victim.Character.Humanoid.Health > 1 then
return true
else
return false
end
end

local Rawmetatable = getrawmetatable(game)
setreadonly(Rawmetatable, false)
local OldNamecall = Rawmetatable.__namecall

Rawmetatable.__namecall = newcclosure(function(self, ...)
local Method = getnamecallmethod()

if tostring(self) == "Remote" and tostring(Method) == "FireServer" then
if ... == "Hit" then

local Hit, Humanoid, Unknown = ...
local Remote = self

if not Unknown then
task.spawn(function()
local Victim = Players:GetPlayerFromCharacter(Humanoid.Parent)

local Alive = CheckIfVictimIsAlive(Victim)
if Alive then
while CheckIfVictimIsAlive(Victim) do task.wait()
local HumanoidRootPart = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local VictimHumanoidRootPart = Humanoid.Parent:WaitForChild("HumanoidRootPart")

HumanoidRootPart.CFrame = VictimHumanoidRootPart.CFrame

Remote:FireServer(Hit, Humanoid, true)
end
end
end)
end
end
end

return OldNamecall(self, ...)
end)