--by Scriptifer#9511
-- hats needed down below:
--[[
   https://www.roblox.com/catalog/6162120283/Grill
   https://www.roblox.com/catalog/9726775757/Meat-Heart
   https://www.roblox.com/catalog/90819252/Burger-Bob
   https://www.roblox.com/catalog/6277873145/Grilled-Sausage
]]
local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local character = localplayer.Character
local grill = character["Meshes/烧烤架Accessory"].Handle
local meat = character["HeartAccessory"].Handle
local burger = character["BurgerBob"].Handle
local sausage = character["Sosig"].Handle
local grillheadweld = Instance.new("Weld")
local grillatt = Instance.new("Attachment")
local grillatt0 = Instance.new("Attachment")
local meatatt0 = Instance.new("Attachment")
local burgeratt0 = Instance.new("Attachment")
local sausageatt0 = Instance.new("Attachment")
local meatap = Instance.new("AlignPosition")
local meatao = Instance.new("AlignOrientation")
local burgerap = Instance.new("AlignPosition")
local burgerao = Instance.new("AlignOrientation")
local sausageap = Instance.new("AlignPosition")
local sausageao = Instance.new("AlignOrientation")
local apgrill = Instance.new("AlignPosition")
local aogrill = Instance.new("AlignOrientation")
local foodhide = Instance.new("Attachment")
local gui = game:GetObjects("rbxassetid://10855320807")[1]
local guiplayerbutton = game:GetObjects("rbxassetid://10855345028")[1]
local eating = false
local waitforit = false
local foodbypass = 120
local players_expanded = false
local food_expanded = false
local selectedplayer
local selectedmeat = "meat"
character.Humanoid.RootPart.Anchored = true
pcall(function()
 settings().Physics.AllowSleep = false
 settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)
local function playertoeat(player, food)
 if not waitforit then
  if food == "meat" then
   local att = Instance.new("Attachment")
   local righthand = player.Character:FindFirstChild("Right Arm") or player.Character:FindFirstChild("RightHand")
   local righthandatt = righthand:FindFirstChild("RightGripAttachment")
   att.Parent = player.Character.Head
   meatap.Attachment1 = righthandatt
   meatao.Attachment1 = righthandatt
   waitforit = true
   spawn(function()
    task.wait(math.random(5, 14))
    foodbypass = 120
    meatap.Attachment1 = att
    meatao.Attachment1 = att
    task.wait(math.random(5, 8))
    foodbypass = 60
    meatap.Attachment1 = foodhide
    meatao.Attachment1 = foodhide
    waitforit = false
   end)
   att.Position = Vector3.new(0.046, -0.386, -0.721)
   spawn(function()
    while true do
     att.Position = Vector3.new(0.046, -0.386, -0.721)
     task.wait(0.1)
     att.Position = Vector3.new(0.046, -0.586, -0.721)
     task.wait(0.1)
    end
   end)
  elseif food == "burger" then
   local att = Instance.new("Attachment")
   local righthand = player.Character:FindFirstChild("Right Arm") or player.Character:FindFirstChild("RightHand")
   local righthandatt = righthand:FindFirstChild("RightGripAttachment")
   att.Parent = player.Character.Head
   burgerap.Attachment1 = righthandatt
   burgerao.Attachment1 = righthandatt
   waitforit = true
   spawn(function()
    task.wait(math.random(5, 14))
    foodbypass = 120
    burgerap.Attachment1 = att
    burgerao.Attachment1 = att
    task.wait(math.random(5, 8))
    foodbypass = 60
    burgerap.Attachment1 = foodhide
    burgerao.Attachment1 = foodhide
    waitforit = false
   end)
   att.Position = Vector3.new(0, -0.4, -1.05)
   spawn(function()
    while true do
     att.Position = Vector3.new(0, -0.5, -1.05)
     task.wait(0.1)
     att.Position = Vector3.new(0, -0.3, -1.05)
     task.wait(0.1)
    end
   end)
  elseif food == "sausage" then
   local att = Instance.new("Attachment")
   local righthand = player.Character:FindFirstChild("Right Arm") or player.Character:FindFirstChild("RightHand")
   local righthandatt = righthand:FindFirstChild("RightGripAttachment")
   local correctrighthandatt = Instance.new("Attachment")
   correctrighthandatt.Parent = righthand
   att.Parent = player.Character.Head
   att.Orientation = Vector3.new(75, 0, 40)
   correctrighthandatt.WorldCFrame = righthandatt.CFrame
   correctrighthandatt.Orientation = Vector3.new(-90, 40, 0)
   sausageap.Attachment1 = righthandatt
   sausageao.Attachment1 = righthandatt
   waitforit = true
   spawn(function()
    task.wait(math.random(5, 14))
    foodbypass = 120
    sausageap.Attachment1 = att
    sausageao.Attachment1 = att
    task.wait(math.random(5, 8))
    foodbypass = 60
    sausageap.Attachment1 = foodhide
    sausageao.Attachment1 = foodhide
    waitforit = false
   end)
   att.Position = Vector3.new(0.004, -0.742, -1.934)
   spawn(function()
    while true do
     att.Position = Vector3.new(0.004, -0.742, -1.934)
     task.wait(0.1)
     att.Position = Vector3.new(0.004, -0.542, -1.934)
     task.wait(0.1)
    end
   end)
  end
 end
end
task.wait(1)
grill:BreakJoints()
spawn(function()
 task.wait(1)
 meat:BreakJoints()
 burger:BreakJoints()
 sausage:BreakJoints()
 meatap.Enabled = true
 meatao.Enabled = true
 burgerap.Enabled = true
 burgerao.Enabled = true
 sausageap.Enabled = true
 sausageao.Enabled = true
end)
meatatt0.Parent = meat
burgeratt0.Parent = burger
sausageatt0.Parent = sausage
meatap.Parent = meat
meatao.Parent = meat
burgerap.Parent = burger
burgerao.Parent = burger
sausageap.Parent = sausage
sausageao.Parent = sausage
meatap.MaxForce = math.huge
meatap.Responsiveness = 200
meatao.MaxTorque = math.huge
meatao.Responsiveness = 200
burgerap.MaxForce = math.huge
burgerap.Responsiveness = 200
burgerao.MaxTorque = math.huge
burgerao.Responsiveness = 200
sausageap.MaxForce = math.huge
sausageap.Responsiveness = 200
sausageao.MaxTorque = math.huge
sausageao.Responsiveness = 200
meatap.Attachment0 = meatatt0
sausageap.Attachment0 = sausageatt0
burgerap.Attachment0 = burgeratt0
meatao.Attachment0 = meatatt0
sausageao.Attachment0 = sausageatt0
burgerao.Attachment0 = burgeratt0
meatap.Attachment1 = foodhide
sausageap.Attachment1 = foodhide
burgerap.Attachment1 = foodhide
meatao.Attachment1 = foodhide
sausageao.Attachment1 = foodhide
burgerao.Attachment1 = foodhide
meatap.Enabled = false
meatao.Enabled = false
burgerap.Enabled = false
burgerao.Enabled = false
sausageap.Enabled = false
sausageao.Enabled = false
foodhide.Parent = grill
foodhide.Position = Vector3.new(0, -10, 0)
grillheadweld.Parent = character.Head
grillheadweld.Part0 = grillheadweld.Parent
grillheadweld.Part1 = grill
grillheadweld.C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
grillheadweld.C1 = CFrame.new(0, 4.32499981, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
grillatt0.Parent = grill
grillatt.Parent = workspace.Terrain
grillatt.WorldCFrame = grill.CFrame
apgrill.Parent = grill
apgrill.Responsiveness = 200
apgrill.MaxForce = math.huge
apgrill.Attachment0 = grillatt0
apgrill.Attachment1 = grillatt
aogrill.Parent = grill
aogrill.Responsiveness = 200
aogrill.MaxTorque = math.huge
aogrill.Attachment0 = grillatt0
aogrill.Attachment1 = grillatt
spawn(function()
 task.wait(1)
 character.Humanoid.Sit = true
 character.Humanoid.RootPart.Anchored = true
 task.wait(2)
 character.Humanoid.RootPart.Anchored = false
 character.Humanoid.RootPart.Velocity = Vector3.new(0, 0, 0)
 task.wait(2)
 character.Humanoid.RootPart.Anchored = true
end)
spawn(function()
 task.wait(0.1)
 grillheadweld:Destroy()
end)
gui.Parent = game:GetService("CoreGui")
gui.Frame.Active = true
gui.Frame.Draggable = true
gui.Frame.TextButton.Activated:Connect(function()
 if selectedplayer then
  playertoeat(selectedplayer, selectedmeat)
 end
end)
gui.Frame.Main.Expand.Activated:Connect(function()
 players_expanded = not players_expanded
 if players_expanded then
  gui.Frame.Main.Expand.Rotation = 180
 else
  gui.Frame.Main.Expand.Rotation = 0
 end
 gui.Frame.Main.ScrollingFrame.Visible = players_expanded
end)
gui.Frame.Food.Expand.Activated:Connect(function()
 food_expanded = not food_expanded
 if food_expanded then
  gui.Frame.Food.Expand.Rotation = 180
 else
  gui.Frame.Food.Expand.Rotation = 0
 end
 gui.Frame.Food.Frame.Visible = food_expanded
end)
gui.Frame.Food.Frame.burger.Activated:Connect(function()
 selectedmeat = "burger"
 gui.Frame.Food.FoodName.Text = "Burger"
end)
gui.Frame.Food.Frame.meat.Activated:Connect(function()
 selectedmeat = "meat"
 gui.Frame.Food.FoodName.Text = "Meat"
end)
gui.Frame.Food.Frame.sausage.Activated:Connect(function()
 selectedmeat = "sausage"
 gui.Frame.Food.FoodName.Text = "Sausage"
end)
for _, v in pairs(players:GetPlayers()) do
 local buttonn = guiplayerbutton:Clone()
 buttonn.Parent = gui.Frame.Main.ScrollingFrame
 buttonn.Text = v.Name
 buttonn.Name = v.Name
 buttonn.Activated:Connect(function()
  selectedplayer = v
  gui.Frame.Main.PlayerName.Text = v.Name
 end)
end
players.PlayerAdded:Connect(function(v)
 local buttonn = guiplayerbutton:Clone()
 buttonn.Parent = gui.Frame.Main.ScrollingFrame
 buttonn.Text = v.Name
 buttonn.Name = v.Name
 buttonn.Activated:Connect(function()
  selectedplayer = v
  gui.Frame.Main.PlayerName.Text = v.Name
 end)
end)
players.PlayerRemoving:Connect(function(v)
 local buttonn = gui.Frame.Main.ScrollingFrame:FindFirstChild(v.Name)
 if buttonn then
  buttonn:Destroy()
 end
end)
-- net bypass below - netless
spawn(function()
 while true do
  grill.Velocity = Vector3.new(60, 0, 0)
  task.wait(0)
 end
end)
spawn(function()
 while true do
  burger.Velocity = Vector3.new(foodbypass, 0, 0)
  task.wait(0)
 end
end)
spawn(function()
 while true do
  meat.Velocity = Vector3.new(foodbypass, 0, 0)
  task.wait(0)
 end
end)
spawn(function()
 while true do
  sausage.Velocity = Vector3.new(foodbypass, 0, 0)
  task.wait(0)
 end
end)