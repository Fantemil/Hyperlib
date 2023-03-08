local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.103217155, 0, 0.262135923, 0)
ImageLabel.Size = UDim2.new(0, 186, 0, 292)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6862780932"

TextButton.Parent = ImageLabel
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.161290318, 0, 0.369863003, 0)
TextButton.Size = UDim2.new(0, 126, 0, 116)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Tubers Tool"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function QTBZGP_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 script.Parent.MouseButton1Down:Connect(function()
 
  --Converted with ttyyuu12345's model to script plugin v4
  function sandbox(var,func)
   local env = getfenv(func)
   local newenv = setmetatable({},{
    __index = function(self,k)
     if k=="script" then
      return var
     else
      return env[k]
     end
    end,
   })
   setfenv(func,newenv)
   return func
  end
  cors = {}
  mas = Instance.new("Model",game:GetService("Lighting"))
  Tool0 = Instance.new("Tool")
  Script1 = Instance.new("Script")
  Animation2 = Instance.new("Animation")
  Tool0.Name = "Worship"
  Tool0.Parent = mas
  Tool0.CanBeDropped = false
  Tool0.RequiresHandle = false
  Script1.Name = "same"
  Script1.Parent = Tool0
  table.insert(cors,sandbox(Script1,function()
 
   so = function(id,par,vol,pit) 
    coroutine.resume(coroutine.create(function()
     local sou = Instance.new("Sound", workspace)
     sou.Volume=vol + 7
     sou.Pitch=pit or 1
     sou.SoundId=id 
     sou:play() 
     game:GetService("Debris"):AddItem(sou,6)
    end))
   end
   on = false
   script.Parent.Activated:Connect(function()
    if on == true then return end
    on = true
    local dad = script.Parent.Parent
    dad.Humanoid:LoadAnimation(script.Parent.oof):Play()
    game:GetService'Chat':Chat(dad.Head, ("PRAISE ALLAH "..tostring(math.random(2000)).." TIMES A DAY!!!! ALLAH AKBAR"), "Red")
    wait'5'
    for i = 1,6 do
     local sad = Instance.new'Explosion'
     sad.Position = dad.Head.Position + Vector3.new(math.random(15), math.random(15), math.random(15))
     sad.BlastRadius = 350
     sad.DestroyJointRadiusPercent = 0
     sad.Parent = workspace
    end
    dad:BreakJoints()
    so("rbxassetid://134854740",dad.Head,1,1.3) 
    so("rbxassetid://247893371",dad.Head,2.5,1)
    so("rbxassetid://137994058",dad.Head,1,1) 
    so("rbxassetid://165969964",dad.Head,1,1) 
   end)
  end))
  Animation2.Name = "oof"
  Animation2.Parent = Tool0
  Animation2.AnimationId = "rbxassetid://182749109"
  for i,v in pairs(mas:GetChildren()) do
   v.Parent = game:GetService("Players").LocalPlayer.Backpack
   pcall(function() v:MakeJoints() end)
  end
  mas:Destroy()
  for i,v in pairs(cors) do
   spawn(function()
    pcall(v)
    Tool0.Parent = game.Players.LocalPlayer.Backpack
   end)
  end
 
 end)
end
coroutine.wrap(QTBZGP_fake_script)()
local function NYNGCG_fake_script() -- ImageLabel.Smooth GUI Dragging 
 local script = Instance.new('LocalScript', ImageLabel)

 local UserInputService = game:GetService("UserInputService")
 local runService = (game:GetService("RunService"));
 
 local gui = script.Parent
 
 local dragging
 local dragInput
 local dragStart
 local startPos
 
 function Lerp(a, b, m)
  return a + (b - a) * m
 end;
 
 local lastMousePos
 local lastGoalPos
 local DRAG_SPEED = (8); -- // The speed of the UI darg.
 function Update(dt)
  if not (startPos) then return end;
  if not (dragging) and (lastGoalPos) then
   gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
   return 
  end;
 
  local delta = (lastMousePos - UserInputService:GetMouseLocation())
  local xGoal = (startPos.X.Offset - delta.X);
  local yGoal = (startPos.Y.Offset - delta.Y);
  lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
  gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
 end;
 
 gui.InputBegan:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
   dragging = true
   dragStart = input.Position
   startPos = gui.Position
   lastMousePos = UserInputService:GetMouseLocation()
 
   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragging = false
    end
   end)
  end
 end)
 
 gui.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
   dragInput = input
  end
 end)
 
 runService.Heartbeat:Connect(Update)
end
coroutine.wrap(NYNGCG_fake_script)()