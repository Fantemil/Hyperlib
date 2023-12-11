if game:GetService("CoreGui"):FindFirstChild("Library") then game:GetService("CoreGui").Library:Destroy() end
local C = workspace.Activations.TrickOrTreat:GetChildren() 
workspace.FallenPartsDestroyHeight = 'nan'
local hou = 1
local old
old =
  hookmetamethod(
  game,
  "__namecall",
  newcclosure(
      function(Self, ...)
          local Args = {...}
          if Args[1] == "BlowBubble" then
              getgenv().event = Self
          end
          if Args[1] == "HatchEgg" then
              getgenv().hatch = Self
          end
          return old(Self, ...)
      end
  )
)
local vim = game:GetService("VirtualInputManager")
if not getgenv().event then
  vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
  task.wait()
  vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
  task.wait(.75)
end
local lp = game:GetService"Players".LocalPlayer
local char = lp.Character
local ESP = {
    Chests = {}
}
local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/Mb49kKTP"))()
MAINTTL = "ZeldaHub"
local Root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local Camera = workspace.CurrentCamera
local win = VLib:Window("BGH", Color3.fromRGB(196, 40, 28))
local libary = game:GetService("CoreGui").Library
libary.DisplayOrder = -1
libary.MainFrame.Draggable = true
libary.MainFrame.Active = true
local tabs = libary.MainFrame.LeftFrame.TabHolder
function t(house)
if Ch then
   CC = true
   house.Root.CanCollide = true
   house.Root.Anchored = true
   Root.CFrame = house.Root.CFrame + Vector3.new(0, 10, 0)
   repeat task.wait(.1)
   vim:SendKeyEvent(true, Enum.KeyCode.W, false,game)
   task.wait()
   vim:SendKeyEvent(false, Enum.KeyCode.W, false,game)
   until house.Tag.BillboardGui.Tag.Text ~= "DELIVER PRESENT"
   task.wait(.5)
   CC = false
  end
end
local MT = win:Tab("Main")
local ST = win:Tab("Misc")
local ET = win:Tab("Eggs")
ST:Label("Select sell area")
local sells = {}

for i, v in workspace.Activations:GetChildren() do
  if v.Name:lower():find("sell") then
  table.insert(sells, v)
  end
end

table.sort(sells, function(a, b)
  return string.len(a.Name) < string.len(b.Name)
end)
for i, v in sells do ST:Button(v.Name, function() SellArea = v end) end
MT:Toggle("Blow Bubbles", function(l)
Bl = l
end)
MT:Toggle("Auto Hatch", function(l)
Hatching = l
end)
MT:Toggle("Collect Pickups", function(l)
PU = l
end)
MT:Toggle("Collect Christmas Houses", function(l)
Ch = l
end)
MT:Button("Sell", function() if SellArea then Root.CFrame = SellArea:FindFirstChildWhichIsA("Part").CFrame else error("No sell area selected, will not sell.") end end)
MT:Button("Collect all chests", function()
for i, v in workspace.Activations:GetChildren() do
if v.Name:find("Chest") then
Root.CFrame = v.Root.CFrame + Vector3.new(0,5,0)
task.wait(.5)
end
end
end)
ET:Label("Select an egg to hatch when auto hatch is activated")
for i, v in workspace.Eggs:GetChildren() do
ET:Button(v.Name, function()
SelectedEgg = v
end)
end
function addLabel(tab, Text)
tab:Label(tostring(Text))
end
function button(tab, table)
local Callback = table.Callback
local text = table.Text
tab:Button(tostring(text), Callback)
end
function convert(V3)
return Vector2.new(Camera:WorldToViewportPoint(V3).X, Camera:WorldToViewportPoint(V3).Y)
end
function refresh()
 task.spawn(function()
 if Bl then
 getgenv().event:FireServer("BlowBubble")
 task.wait(.1) end
 end)
 task.spawn(function()
 if Hatching and SelectedEgg then -- SelectedEgg is the model of the egg
  Root.CFrame = SelectedEgg.Hotkey.CFrame
  task.wait()
  vim:SendKeyEvent(true, Enum.KeyCode.R, false, game)
  task.wait()
  vim:SendKeyEvent(true, Enum.KeyCode.R, false, game)
 end
 end)
 task.spawn(function()
  for i, v in workspace.Pickups:GetChildren() do
  if PU then
  Root.CFrame = v:FindFirstChildWhichIsA("Part").CFrame task.wait(.15)
  end
  end
 end)
 task.spawn(function()
 if hou > #C then hou = 1 end
 if Ch and not CC then
 t(C[hou])
 hou+=1
 end
 end)
end
function drawline(fromtable, totable, color)
 local line = Drawing.new("Line")
 line.Thickness = 1
 line.From = fromtable
 line.To = totable
 line.Color = color
 line.Visible = true
 line.Transparency = .5
 return line
end
game:GetService("RunService").Heartbeat:Connect(function()
task.spawn(refresh)
end)
lp.CharacterAdded:Connect(function(c)
char = c
task.delay(.5, function()
Root = c.HumanoidRootPart
end)
end)