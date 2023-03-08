local player = game:GetService("Players").LocalPlayer
local tycoons = game:GetService("Workspace").Tycoons
local presents = game:GetService("Workspace").Presents
local inputBegan = game:GetService("UserInputService").InputBegan
local offset = Vector3.new(0, 0, 0)

local myTycoon = nil

for i = 1, 7 do
 local tycoon = tycoons[i]
 if tycoon.Owner.Value == player.Name then
   myTycoon = tycoon
   break
 end
end

local function pickupDrops(tycoon)
 if tycoon then
   for _, drops in pairs(tycoon.Drops:GetChildren()) do
     drops.CanCollide = false
     drops.CFrame = player.Character.HumanoidRootPart.CFrame
   end
 end
end

local function getUnopenedPresents()
 local unopenedPresents = {}
 for _, present in pairs(presents:GetDescendants()) do
   if present:IsA("ProximityPrompt") and present.Enabled then
     local presentMesh = present.Parent
     table.insert(unopenedPresents, presentMesh)
   end
 end
 return unopenedPresents
end

local function teleportToPresent()
 local unopenedPresents = getUnopenedPresents()
 if #unopenedPresents > 0 then
   local present = unopenedPresents[math.random(#unopenedPresents)]
   player.Character.HumanoidRootPart.CFrame = present.CFrame + offset
 end
end

task.spawn(function()
 while true do
   if loopDrops then
     pickupDrops(myTycoon)
   end
   task.wait(1)
 end
end)

inputBegan:Connect(function(input)
 if input.KeyCode == Enum.KeyCode.Q then
   loopDrops = not loopDrops
 elseif input.KeyCode == Enum.KeyCode.R then
   teleportToPresent()
 end
end)