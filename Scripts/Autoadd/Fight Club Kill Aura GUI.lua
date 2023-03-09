local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local mouse = localPlayer:GetMouse()

local function g()
   local closestPlayer = nil
   local shortestDistance = math.huge

   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
       if v.Name ~= localPlayer.Name then
           if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
               local magnitude = (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude

               if magnitude < shortestDistance then
                   closestPlayer = v
                   shortestDistance = magnitude
               end
end
       end
   end

   return closestPlayer
end
local met = getrawmetatable(game)
setreadonly(met,false)
local old = met.__namecall
met.__namecall = function(t,...)
local args = {...}
if(getnamecallmethod()=="FireServer") then
if(tostring(t) == "RemoteEvent") and bana == true then
 for i = 0,25 do old(t,...)end
end

end
return old(t,...)
end
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("script for") -- Creates the window

local b = w:CreateFolder("fight club") -- Creates the folder(U will put here your buttons,etc)
local c = w:CreateFolder("by booga guy") -- Creates the folder(U will put here your buttons,etc)

c:Button("On",function()
getgenv().burger = true
while burger == true do
   wait()
spawn(function()
for i = 0,5 do
for i,e in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
                  if e:IsA("Tool") then do
local args = {
   [1] = g().Character.Humanoid
}

e.RemoteEvent:FireServer(unpack(args))
end
end
end
end
end)
end

end)
c:Button("Off",function()
   getgenv().burger = false
   end)
c:Button("insta kill on",function()
   getgenv().bana = true
end)
c:Button("insta kill Off",function()
   getgenv().bana = false
   end)