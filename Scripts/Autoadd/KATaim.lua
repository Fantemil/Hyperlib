 local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local mouse = localPlayer:GetMouse()

local function getClosestPlayerToCursor(x, y)
   local closestPlayer = nil
   local shortestDistance = math.huge

   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
       if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Torso") then
           local pos = currentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
           local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(x, y)).magnitude

           if magnitude < shortestDistance then
               closestPlayer = v
               shortestDistance = magnitude
           end
end
   end

   return closestPlayer
end

local mt = getrawmetatable(game)
local oldIndex = mt.__index
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
local newClose = newcclosure or function(f) return f end

mt.__index = newClose(function(t, k)
   if not checkcaller() and t == mouse and tostring(k) == "X" and string.find(getfenv(2).script.Name, "Client") and getClosestPlayerToCursor() then
    local closest = getClosestPlayerToCursor(oldIndex(t, k), oldIndex(t, "Y")).Character.Torso
    local pos = currentCamera:WorldToScreenPoint(closest.Position)
    return pos.X
   end
   if not checkcaller() and t == mouse and tostring(k) == "Y" and string.find(getfenv(2).script.Name, "Client") and getClosestPlayerToCursor() then
    local closest = getClosestPlayerToCursor(oldIndex(t, "X"), oldIndex(t, k)).Character.Torso
    local pos = currentCamera:WorldToScreenPoint(closest.Position)
    return pos.Y
   end
   if t == mouse and tostring(k) == "Hit" and string.find(getfenv(2).script.Name, "Client") and getClosestPlayerToCursor() then
       return getClosestPlayerToCursor(mouse.X, mouse.Y).Character.Torso.CFrame
   end

   return oldIndex(t, k)
end)

if setreadonly then setreadonly(mt, true) else make_writeable(mt, false) end