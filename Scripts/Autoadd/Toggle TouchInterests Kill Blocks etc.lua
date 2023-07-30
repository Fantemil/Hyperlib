getgenv().myzaza = false
getgenv().yareyaredaze = game.Players.LocalPlayer:GetMouse()

yareyaredaze.KeyDown:connect(function(key)
if key == "z" then
   if myzaza == true then
       getgenv().myzaza = false
       else
           getgenv().myzaza = true
   end
   end
       end)
local players = game:GetService("Players")
local player = players.LocalPlayer
local camera = workspace.CurrentCamera

local function getPartsInViewport(maxDistance)
local partsInViewport = {}
for _, part in ipairs(workspace:GetDescendants()) do
if part:IsA("BasePart") then
local distance = player:DistanceFromCharacter(part.Position)
if distance <= maxDistance then
local _, isVisible = camera:WorldToViewportPoint(part.Position)
if isVisible then
table.insert(partsInViewport, part)
end
end
end
end
return partsInViewport
end
while true do
   wait()
local parts = getPartsInViewport(50)

for _, part in ipairs(parts) do
if part and  part:FindFirstChildWhichIsA("TouchTransmitter") then
if myzaza == true then
part.CanTouch = false
else
   part.CanTouch = true
   end
end
end
end