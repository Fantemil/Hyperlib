if game:GetService("CoreGui"):FindFirstChild("shoshashe") then
  game:GetService("CoreGui").shoshashe:Destroy()
end
workspace.FallenPartsDestroyHeight = -math.huge
local p = game:GetService("Players")
for i, v in next, workspace:GetDescendants() do
  if p:GetPlayerFromCharacter(v) == p.LocalPlayer then
      c = v
      c:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
      task.spawn(function()
      rp = c.HumanoidRootPart
      humanoid = c.Humanoid
      end)
      end)
      break
  end
end
local humanoid, rp = c:FindFirstChildWhichIsA("Humanoid"), c.HumanoidRootPart
function new(class, parent, properties)
  local e = Instance.new(class, parent)
  for i, v in properties do
      e[i] = v
  end
  return e
end
local old
old =
  hookmetamethod(
  game,
  "__namecall",
  newcclosure(
      function(Self, ...) -- get the blow bubble & hatch event
          local Args = {...}
          if Args[1] == "BlowBubble" then
              getgenv().event = Self
          end
          if Args[1] == "HatchEgg" then
              getgenv().hatch = Self
          end
          if Args[1] == 'LoadWorld' then
           getgenv().loadworld = Self
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
if not getgenv().hatch then
  rp.CFrame = workspace.Eggs:GetChildren()[2].Hotkey.CFrame
  task.wait(.5)
  vim:SendKeyEvent(true, Enum.KeyCode.E, false, game)
  task.wait()
  vim:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end
if not getgenv().loadworld then
local cf = rp.CFrame
rp.CFrame = workspace.Activations.FallCarnival.Root.CFrame + Vector3.new(0, 5, 0)
  task.wait(1)
rp.CFrame = cf
end
function LoadWorld(world)
getgenv().loadworld:FireServer("LoadWorld", world)
end
-- event is saved.

local pickups = workspace.Pickups
local hal = workspace.Activations.TrickOrTreat
getgenv().collecting = false
getgenv().s = false
getgenv().bubbling = false
getgenv().hatching = false
getgenv().trt = false
getgenv().c = false
getgenv().special = false
function trickortreat(house)
if getgenv().trt then
   rp.CFrame = house.Root.CFrame + Vector3.new(0, 5, 0)
   task.wait(2)
  end
end
function pickup(v)
  if getgenv().collecting or getgenv().c then
      if v:FindFirstChild("PickupHitbox") then
          rp.CFrame = v.PickupHitbox.CFrame
      end
  end
end
function blowbubble()
  getgenv().event:FireServer("BlowBubble")
end
function hatchEgg(name)
  local args = {
      [1] = "HatchEgg",
      [2] = name
  }

  getgenv().hatch:FireServer(unpack(args))
end
function tripleHatchEgg(name)
  local args = {
      [1] = "HatchEgg",
      [2] = name,
      [3] = "Multi"
  }

  getgenv().hatch:FireServer(unpack(args))
end
local frame =
  new(
  "Frame",
  new("ScreenGui", game:GetService("CoreGui"), {DisplayOrder = 1, Name = "shoshashe"}),
  {
      Size = UDim2.new(.3, 0, .45, 0),
      Active = true,
      Draggable = true,
      BackgroundColor3 = Color3.fromRGB(54, 54, 54),
      Position = UDim2.new(.3, 0, .5, 0),
      BorderSizePixel = 0
  }
)

new("UICorner", frame, {CornerRadius = UDim.new(0, 10)})
local one =
  new(
  "TextButton",
  frame,
  {
      BackgroundTransparency = 1,
      Text = "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Pickup <font color='rgb(166, 21, 214)'>Gems</font>, <font color = 'rgb(245, 161, 66)'>Coins</font>, <font color = 'rgb(0, 0, 150)'>XP</font><font color = 'rgb(255,255,255)'>...</font>",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      RichText = true,
      Size = UDim2.new(1, 0, .1, 0),
      Position = UDim2.new(0, 0, 0, 0),
      TextColor3 = Color3.fromRGB(77, 77, 77)
  }
)
one.MouseButton1Click:Connect(
  function()
      getgenv().collecting = not getgenv().collecting
      if not getgenv().collecting then
          one.Text =
              "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Pickup <font color='rgb(166, 21, 214)'>Gems</font>, <font color = 'rgb(245, 161, 66)'>Coins</font>, <font color = 'rgb(0, 0, 150)'>XP</font><font color = 'rgb(255,255,255)'>...</font>"
      else
          one.Text =
              "(<font color = 'rgb(0, 250, 0)'>Enabled</font>) Pickup <font color='rgb(166, 21, 214)'>Gems</font>, <font color = 'rgb(245, 161, 66)'>Coins</font>, <font color = 'rgb(0, 0, 150)'>XP</font><font color = 'rgb(255,255,255)'>...</font>"
      for i, v in pickups:GetChildren() do
          pickup(v)
          task.wait(.15)
      end
      pickups.ChildAdded:Connect(
          function(v)
                 task.delay(
                  .15,
                   function()
                     pickup(v)
                   end)
          end
      )
  end
end)
local whar =
  new(
  "TextButton",
  frame,
  {
      BackgroundTransparency = 1,
      Text = "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Auto<font color='rgb(166, 21, 214)'>bubble</font>",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      RichText = true,
      Size = UDim2.new(1, 0, .1, 0),
      Position = UDim2.new(0, 0, .1, 0),
      TextColor3 = Color3.fromRGB(77, 77, 77)
  }
)
whar.MouseButton1Click:Connect(
  function()
      getgenv().bubbling = not getgenv().bubbling
      if not getgenv().bubbling then
          whar.Text =
              "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Auto<font color='rgb(166, 21, 214)'>bubble</font>"
          workspace.Gravity = 196.2
      else
          whar.Text =
              "(<font color = 'rgb(0, 200, 0)'>Enabled</font>) Auto<font color='rgb(166, 21, 214)'>bubble</font>"
          workspace.Gravity = 0
      end
      task.spawn(
          function()
              while getgenv().bubbling and task.wait() do
                  blowbubble()
              end
          end
      )
  end
)
local two =
  new(
  "TextButton",
  frame,
  {
      BackgroundTransparency = 1,
      Text = "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Auto <font color = 'rgb(0, 210, 0)'>sell</font> (5s delay)",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      Size = UDim2.new(1, 0, .1, 0),
      Position = UDim2.new(0, 0, .2, 0),
      TextColor3 = Color3.fromRGB(77, 77, 77),
      RichText = true
  }
)
two.MouseButton1Click:Connect(
  function()
      getgenv().s = not getgenv().s
      if getgenv().s then
          two.Text = "(<font color = 'rgb(0, 200, 0)'>Enabled</font>) Auto <font color = 'rgb(0, 210, 0)'>sell</font> (5s delay)"
          task.spawn(
              function()
                   while task.wait(5) and getgenv().s do
                    local cframe = rp.CFrame
                    rp.CFrame = workspace.Activations.ZenSell.Root.CFrame + Vector3.new(0, 1, 0)
                    task.wait(.75)
                    rp.CFrame = cframe
                end
              end
          )
      else
          two.Text = "(<font color = 'rgb(200, 0, 0)'>Disabled</font>) Auto <font color = 'rgb(0, 210, 0)'>sell</font> (5s delay)"
      end
  end
)
local gems =
  new(
  "TextButton",
  frame,
  {
      BackgroundTransparency = 1,
      Text = "Pickup ONLY <font color = 'rgb(166, 21, 214)'>Gems</font>",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      Size = UDim2.new(1, 0, .1, 0),
      Position = UDim2.new(0, 0, .5, 0),
      TextColor3 = Color3.fromRGB(77, 77, 77),
      RichText = true
  }
)
gems.MouseButton1Click:Connect(function()
for i, v in pickups:GetChildren() do
 for _, gem in next, v:GetDescendants() do
 if gem.Name:find("Gem") then
 local co = getgenv().c
 getgenv().c = true
 pickup(v)
 getgenv().c = co
 end
 end
end
end)
local cd = 3.15
local six =
  new(
  "TextButton",
  frame,
  {
      Position = UDim2.new(.15, 0, .3, 0),
      Size = UDim2.new(.75, 0, .1, 0),
      RichText = true,
      Text = "(<font color ='rgb(210, 0, 0)'>Disabled</font>) Trick Or Treat",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      TextColor3 = Color3.fromRGB(77, 77, 77),
      BackgroundTransparency = 1
  }
)
six.MouseButton1Click:Connect(
  function()
      getgenv().trt = not getgenv().trt
      if getgenv().trt then
          six.Text = "(<font color ='rgb(0, 210, 0)'>Enabled</font>) Trick Or Treat"
      else
          six.Text = "(<font color ='rgb(210, 0, 0)'>Disabled</font>) Trick Or Treat"
      end
  end
)

game:GetService("UserInputService").InputBegan:Connect(
  function(input)
      if input.KeyCode == Enum.KeyCode.K then
          rp.CFrame = workspace.Activations.ZenSell.Root.CFrame + Vector3.new(0, 3, 0)
      elseif input.KeyCode == Enum.KeyCode.P then
          for i, v in workspace.Activations:GetChildren() do
              if v.Name:find("Chest") then
                  rp.CFrame = v.Root.CFrame
                  task.wait(.45)
              end
          end
      end
  end
)
c:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
rp = c:WaitForChild("HumanoidRootPart")
humanoid = c:FindFirstChildWhichIsA("Humanoid")
end)
-- get halloween houses
local h = {}
local h2 = {}
for i, v in hal:GetChildren() do
table.insert(h, v)
v.Root.CanCollide = true
v.Root.Anchored = true
end

task.spawn(function()
while task.wait() do
if getgenv().trt then
for i, v in h do
trickortreat(v)
task.wait(2.95)
end
task.wait(15)
end
end
end)
local e =
  new(
  "TextButton",
  frame,
  {
      Position = UDim2.new(.15, 0, .4, 0),
      Size = UDim2.new(.75, 0, .1, 0),
      RichText = true,
      Text = "(<font color ='rgb(210, 0, 0)'>Disabled</font>) 3x Tricky Egg Hatch",
      Font = Enum.Font.GothamMedium,
      TextScaled = true,
      TextColor3 = Color3.fromRGB(77, 77, 77),
      BackgroundTransparency = 1
  }
)
e.MouseButton1Click:Connect(
  function()
      getgenv().special = not getgenv().special
      if getgenv().special then
          e.Text = "(<font color ='rgb(0, 210, 0)'>Enabled</font>) 3x Tricky Egg Hatch"
          while getgenv().special and task.wait() do
          rp.CFrame = workspace.Eggs["Tricky Egg"].Hotkey.CFrame
          tripleHatchEgg("Tricky Egg")
          task.wait(.1)
          end
      else
          e.Text = "(<font color ='rgb(210, 0, 0)'>Disabled</font>) 3x Tricky Egg Hatch"
      end
  end
)