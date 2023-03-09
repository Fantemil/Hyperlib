local RunService = game.GetService(game,"RunService")
local Players = game.GetService(game,"Players")
local Inset = game.GetService(game,"GuiService").GetGuiInset(game.GetService(game,"GuiService"))
local LocalPlayer = Players.LocalPlayer


local Mouse = Players.LocalPlayer.GetMouse(Players.LocalPlayer)
local Camera = workspace.CurrentCamera

local AimSettings = {
TeamCheck = false,
FriendCheck = false,
UseFov = true,
FovRadius = 200,
}

local Circle = Drawing.new("Circle")
Circle.Filled = false
Circle.Color = Color3.fromRGB(255,0,0)
Circle.Radius = AimSettings.FovRadius
Circle.Thickness = 1


local function GetClosestPlayerToFov()

local plr, comparePlr
local MousePos = Vector2.new(Mouse.X, Mouse.Y)
for i,v in pairs(Players.GetChildren(Players)) do
local Char = v.Character
if v == LocalPlayer then continue end
if not LocalPlayer.Character then continue end
if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then continue end
if Char and Char.FindFirstChild(Char,"HumanoidRootPart") and Char.FindFirstChild(Char,"HumanoidRootPart").Color == LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Color then continue end
if not v.Character then continue end

if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Char.FindFirstChild(Char, "HumanoidRootPart") and Char.FindFirstChildWhichIsA(Char,"Humanoid") and Char.FindFirstChild(Char, "Humanoid").Health > 0 then
local ScreenPos, onScreen = Camera.WorldToScreenPoint(Camera, Char.FindFirstChild(Char, "HumanoidRootPart").Position)
if onScreen then
local distance = (MousePos - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude
if distance < AimSettings.FovRadius then
if comparePlr == nil then comparePlr = v  end
local DistanceChar = (LocalPlayer.Character.HumanoidRootPart.Position - Char.FindFirstChild(Char, "HumanoidRootPart").Position).Magnitude
local DistanceOld = (LocalPlayer.Character.HumanoidRootPart.Position - comparePlr.Character.FindFirstChild(comparePlr.Character, "HumanoidRootPart").Position).magnitude
if DistanceChar <= DistanceOld then
plr = v
end
comparePlr = v
end
end
end
end
return plr
end

local function getmap()
   local map = {}
   for i,v in pairs(game.Workspace:GetChildren()) do
        if not v:FindFirstChild("Humanoid") then
               table.insert(map, v)
               end
   end
   table.insert(map,game.Players.LocalPlayer.Character)
   
   game.Players.LocalPlayer.CharacterAdded:Connect(function(chare)
       table.insert(map, chare)
       end)
   return map
   end
   
   local map = getmap()

   local old
   old = hookfunction(game.Workspace.FindPartOnRayWithIgnoreList, newcclosure(function(self, ...)
local args = {...}
       if not checkcaller() and typeof(args[1]) == "Ray" and typeof(args[2]) == "table" and tostring(getcallingscript()) == "client_main" then -- tostring(getcallingscript()) == "client_main" and
           local nearest = GetClosestPlayerToFov()
           local ray = args[1]
local originz = args[1].Origin
local player = game:GetService("Players").LocalPlayer
local PlrChar = player.Character
        if nearest and nearest.Character and nearest.Character.FindFirstChild(nearest.Character,"Head") and PlrChar and PlrChar:FindFirstChild("HumanoidRootPart") and getcallingscript().Parent and getcallingscript().Parent.Parent and getcallingscript().Parent.Parent:FindFirstChild("handle") and getcallingscript().Parent.Parent:FindFirstChild("handle"):FindFirstChild("fire") and ray.Origin == getcallingscript().Parent.Parent:FindFirstChild("handle"):FindFirstChild("fire").WorldPosition then
local direction = (nearest.Character.FindFirstChild(nearest.Character,"Head").Position - originz).Unit * 1000
               args[1] = Ray.new(originz, direction)
args[2] = map
              return old(self, unpack(args))
else
return old(self, ...)
           end
       end
       return old(self, ...)
       end))
     
RunService.RenderStepped.Connect(RunService.RenderStepped,function()
if AimSettings.UseFov then
Circle.Position = Vector2.new(Mouse.X + Inset.X, Mouse.Y + Inset.Y)
Circle.Visible = true
else
Circle.Visible = false
end
end)