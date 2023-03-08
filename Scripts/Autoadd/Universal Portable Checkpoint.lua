local CP = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Save = Instance.new("TextButton")
local Reset = Instance.new("TextButton")
local Configuration = Instance.new("Folder")
local TP = Instance.new("TextButton")
local TP = Instance.new("TextButton")

-- Keybinds
-- E to create CP
-- R to tp to last created CP
-- Q to delete the last created CP

CP.Name = "CP"
CP.Parent = (gethui and gethui()) or game:GetService("CoreGui")
CP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CP.ResetOnSpawn = false

Frame.Parent = CP
Frame.AnchorPoint = Vector2.new(0, 1)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 145, 0, 30)

Save.Name = "Save"
Save.Parent = Frame
Save.BackgroundColor3 = Color3.fromRGB(173, 173, 173)
Save.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save.BorderSizePixel = 2
Save.Position = UDim2.new(0, 5, 0, 5)
Save.Size = UDim2.new(0, 100, 0, 20)
Save.Font = Enum.Font.SourceSansBold
Save.Text = "SAVE"
Save.TextColor3 = Color3.fromRGB(0, 0, 0)
Save.TextScaled = true
Save.TextSize = 14.000
Save.TextWrapped = true

Reset.Name = "Reset"
Reset.Parent = Frame
Reset.BackgroundColor3 = Color3.fromRGB(173, 173, 173)
Reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
Reset.BorderSizePixel = 2
Reset.Position = UDim2.new(0, 115, 0, 5)
Reset.Size = UDim2.new(0, 20, 0, 20)
Reset.Font = Enum.Font.SourceSansBold
Reset.Text = "R"
Reset.TextColor3 = Color3.fromRGB(0, 0, 0)
Reset.TextScaled = true
Reset.TextSize = 100.000
Reset.TextStrokeTransparency = 2.900
Reset.TextWrapped = true

Configuration.Name = "Configuration"
Configuration.Parent = Frame

TP.Name = "TP"
TP.Parent = Frame
TP.BackgroundColor3 = Color3.fromRGB(173, 173, 173)
TP.BorderColor3 = Color3.fromRGB(0, 0, 0)
TP.BorderSizePixel = 2
TP.Position = UDim2.new(0, 145, 0, 5)
TP.Size = UDim2.new(0, 20, 0, 20)
TP.Font = Enum.Font.SourceSansBold
TP.Text = "TP"
TP.TextColor3 = Color3.fromRGB(0, 0, 0)
TP.TextScaled = true
TP.TextSize = 100.000
TP.TextStrokeTransparency = 2.900
TP.TextWrapped = true

TrussPart0 = Instance.new("TrussPart")
TrussPart0.Name = [[dontremove]]
TrussPart0.Parent = mas
TrussPart0.CFrame = CFrame.new(-3.72973895, 1.00002694, -5.38641882, 1, 0, 0, 0, 1, 0, 0, 0, 1)
TrussPart0.Position = Vector3.new(-3.72973895072937, 1.0000269412994385, -5.38641881942749)
TrussPart0.Transparency = 1
TrussPart0.Anchored = true
TrussPart0.BackSurface = Enum.SurfaceType.Smooth
TrussPart0.BottomSurface = Enum.SurfaceType.Smooth
TrussPart0.FrontSurface = Enum.SurfaceType.Smooth
TrussPart0.LeftSurface = Enum.SurfaceType.Smooth
TrussPart0.RightSurface = Enum.SurfaceType.Smooth
TrussPart0.TopSurface = Enum.SurfaceType.Smooth
TrussPart0.Parent = Frame

-- Scripts:

local function CKRK_fake_script() -- Frame.LocalScript 
 local script = Instance.new('LocalScript', Frame)

 local UIS = game:GetService("UserInputService")
 
 local player = game.Players.LocalPlayer
 local config = script.Parent.Configuration
 
 local root = nil
 root = player.Character:WaitForChild("HumanoidRootPart")
 
 local trusses = Instance.new("Folder")
 trusses.Name = "DebrisTruss"
 trusses.Parent = workspace
 
 local Truss = script.Parent.dontremove
 
 local Save = script.Parent.Save
 local Reset = script.Parent.Reset
 local TP = script.Parent.TP
 
 local Keybinds = true
 local Color = Color3.new(1,1,1)
 local Transparency = .8
 local Material = Enum.Material.Neon
 local Limit = math.huge
 
 local CPfolder = Instance.new("Folder")
 CPfolder.Name = "CPs"
 CPfolder.Parent = workspace
 
 local Camera = workspace.CurrentCamera
 
 local CPs = {}
 
 local function addCP()
  if #CPs + 1 > Limit then return end
  local CameraCFrame = Camera.CFrame
  local rootCFrame = root.CFrame
  local state = root.Parent.Humanoid:GetState()
 
  local part = Instance.new("Part")
  part.Anchored = true
  part.CanCollide = false
  part.Color = Color
  part.Transparency = Transparency
  part.Material = Material
  part.Size = Vector3.new(2,2,1)
  part.CFrame = rootCFrame
  part.Parent = CPfolder
 
  local finalResult = {}
 
  finalResult[1] = part
  finalResult[2] = CameraCFrame
  finalResult[3] = state
 
  CPs[#CPs + 1] = finalResult
 end
 
 local function removeCP()
  if #CPs < 1 then return end
 
  local index = #CPs
  local CP = CPs[index]
  CP[1]:Destroy()
 
  CP[2] = nil
  CP[1] = nil
 
  CPs[index] = nil
 end
 
 local function resetTruss()
  for i, part in pairs(trusses:GetChildren()) do
   part:Destroy()
  end
 end
 
 local function tpToCP()
  resetTruss()
 
  if #CPs < 1 then return end
 
  root.Anchored = true
  root.Parent.Humanoid.AutoRotate = false
 
  local lastCP = CPs[#CPs]
 
  local part, cframe, state = unpack(lastCP)
 
  local pos = part.CFrame
 
  root.CFrame = pos
 
  Camera.CFrame = cframe
 
  if state == Enum.HumanoidStateType.Freefall then
   root.AssemblyLinearVelocity = Vector3.new(0,-10,0)
  else
   root.AssemblyLinearVelocity = Vector3.new(0,0,0)
  end
  
  wait()
  
  root.Parent.Humanoid:ChangeState(state)
  
  local track = nil
  local cloneTruss = nil
 
  if state == Enum.HumanoidStateType.Climbing then
   cloneTruss = Truss:Clone()
   cloneTruss.CFrame = root.CFrame + root.CFrame.lookVector * 1.6
   cloneTruss.Parent = trusses
 
   local anim = root.Parent.Animate.climb.ClimbAnim:Clone()
   track = root.Parent.Humanoid.Animator:LoadAnimation(anim)
   track.Priority = Enum.AnimationPriority.Core
   track:Play()
   
   root.CFrame = pos
  end
  
  local connection = nil
  connection = UIS.InputBegan:Connect(function(input)
   if not track then return end
 
   local keycode = Enum.KeyCode
   if input.KeyCode == keycode.W or keycode.S or keycode.D or keycode.A or keycode.Up or keycode.Down or keycode.Space or input.UserInputType == Enum.UserInputType.MouseMovement then
    track:Stop()
    cloneTruss:Destroy()
    connection:Disconnect()
   end
  end)
 
  root.Anchored = false
  root.Parent.Humanoid.AutoRotate = true
 end
 
 local function characterAdded(character)
  root = character:WaitForChild("HumanoidRootPart")
 end
 
 Save.MouseButton1Click:Connect(addCP)
 Reset.MouseButton1Click:Connect(removeCP)
 TP.MouseButton1Click:Connect(tpToCP)
 
 player.CharacterAdded:Connect(characterAdded)
 
 if Keybinds == true then
  UIS.InputBegan:Connect(function(input)
   if UIS:GetFocusedTextBox() then return end
   if input.KeyCode == Enum.KeyCode.E then
    addCP()
   elseif input.KeyCode == Enum.KeyCode.Q then
    removeCP()
   elseif input.KeyCode == Enum.KeyCode.R then
    tpToCP()
   end
  end) 
 end
end
coroutine.wrap(CKRK_fake_script)()