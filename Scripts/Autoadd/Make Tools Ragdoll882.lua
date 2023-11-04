--[[
Make your tools 'ragdoll'
Thanks to AnthonyIsntHere for the RightGrip Removal Method
This script has probably already been made idk but this one was made by False | @false.txt on Discord
]]

-- < Variables > --
local Transparency = 1 -- Change to whatever you want the Part's ball transparency, 0 = Visible, 1 = Invisible.
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
local Tools = {}

-- < Loop through tools and add it to the "Tool" table > --
if not Humanoid then return end
Humanoid:UnequipTools()
for _, x in next, Player.Backpack:GetChildren() do
   if x:IsA("Tool") and x:FindFirstChild("Handle") then
      table.insert(Tools, x)
      Humanoid:EquipTool(x)
   end
end

Humanoid:UnequipTools()

-- < Main Code > --
for _, x in next, Tools do
wait()
   x.Parent = Character
   x.Parent = Player.Backpack
   x.Parent = Humanoid
   x.Parent = Character
   local Part = Instance.new("Part", workspace)
   Part.Anchored = false
   Part.CanCollide = true
   Part.Transparency = Transparency
   Part.CFrame = Character.HumanoidRootPart.CFrame
   Part.Size = Vector3.new(4,4,4)
   Part.Shape = "Ball"
   spawn(function()
   while task.wait() do
      if Character:FindFirstChild(tostring(x.Name)) then
         x:FindFirstChild("Handle").CFrame = Part.CFrame
         x:FindFirstChild("Handle").Rotation = Part.Rotation
      else
         Part:Destroy()
         break
      end
      end
      end)
   end