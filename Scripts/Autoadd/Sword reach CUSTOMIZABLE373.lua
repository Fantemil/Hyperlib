local plr = game.Players.LocalPlayer
local backpack = plr.Backpack
local char = plr.Character
local reach = 99
local viewhitbox = true
local color = Color3.fromRGB(170,0,0)
local surfacecolor = Color3.fromRGB(255,85,0)

if not char:FindFirstChild("ClassicSword") then
   backpack.ClassicSword.Parent = char
end

local sword = char:FindFirstChild("ClassicSword")
if viewhitbox then
   if sword.Handle:FindFirstChildOfClass("SelectionBox") then
      sword.Handle.SelectionBox:Remove()
   end
   local box = Instance.new("SelectionBox")
   box.Parent = sword.Handle
   box.Color3 = color
   box.LineThickness = 0.12
   box.SurfaceTransparency = 0
   box.SurfaceColor3 = surfacecolor
   box.Transparency = 0.9
   box.Adornee = box.Parent
else
   if sword.Handle:FindFirstChildOfClass("SelectionBox") then
       sword.Handle.SelectionBox:Remove()
   end
end
sword.Handle.Size = Vector3.new(0.5,0.5,reach)
char.Handle.CanQuery = false