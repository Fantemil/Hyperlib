-- Gui to Lua
-- Version: 3.2

-- Instances:

local Human = Instance.new("ScreenGui")
local Info = Instance.new("Frame")
local Status = Instance.new("Frame")
local EnergyS = Instance.new("TextLabel")
local GlassS = Instance.new("TextLabel")
local MeltS = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Timer = Instance.new("Frame")
local Timer_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local trueorfalse = Instance.new("TextLabel")
local infoguiopen = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ControlPad = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local StarterEnergy = Instance.new("TextButton")
local GlassBreaker = Instance.new("TextButton")
local StarterMeltdown = Instance.new("TextButton")
local Title_2 = Instance.new("TextLabel")
local Close_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local contrpadopen = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

Human.Name = "Human"
Human.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Human.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Info.Name = "Info"
Info.Parent = Human
Info.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Info.BorderSizePixel = 2
Info.Position = UDim2.new(0.474533528, 0, 0.628085077, 0)
Info.Size = UDim2.new(0, 254, 0, 145)

Status.Name = "Status"
Status.Parent = Info
Status.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Status.BorderColor3 = Color3.fromRGB(130, 203, 255)
Status.BorderSizePixel = 2
Status.Position = UDim2.new(0.0618041009, 0, 0.206896544, 0)
Status.Size = UDim2.new(0, 225, 0, 101)

EnergyS.Name = "EnergyS"
EnergyS.Parent = Status
EnergyS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnergyS.BackgroundTransparency = 1.000
EnergyS.Position = UDim2.new(0.0501464829, 0, 0.128712893, 0)
EnergyS.Size = UDim2.new(0, 200, 0, 23)
EnergyS.Font = Enum.Font.Fantasy
EnergyS.Text = "Energy status: getting info"
EnergyS.TextColor3 = Color3.fromRGB(255, 255, 255)
EnergyS.TextSize = 20.000
EnergyS.TextXAlignment = Enum.TextXAlignment.Left

GlassS.Name = "GlassS"
GlassS.Parent = Status
GlassS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassS.BackgroundTransparency = 1.000
GlassS.Position = UDim2.new(0.0501465797, 0, 0.356435657, 0)
GlassS.Size = UDim2.new(0, 200, 0, 24)
GlassS.Font = Enum.Font.Fantasy
GlassS.Text = "Glass status: Unbroken"
GlassS.TextColor3 = Color3.fromRGB(255, 255, 255)
GlassS.TextSize = 20.000
GlassS.TextXAlignment = Enum.TextXAlignment.Left

MeltS.Name = "MeltS"
MeltS.Parent = Status
MeltS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MeltS.BackgroundTransparency = 1.000
MeltS.Position = UDim2.new(0.0501463413, 0, 0.585042477, 0)
MeltS.Size = UDim2.new(0, 200, 0, 28)
MeltS.Font = Enum.Font.Fantasy
MeltS.Text = "Meltdown status: Unactive"
MeltS.TextColor3 = Color3.fromRGB(255, 255, 255)
MeltS.TextSize = 20.000
MeltS.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = Info
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.114435673, 0, -0.0965517312, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "By pizza_man#7693"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 19.000

Close.Name = "Close"
Close.Parent = Info
Close.BackgroundColor3 = Color3.fromRGB(68, 255, 0)
Close.Position = UDim2.new(0.0236220472, 0, 0.0137931034, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "-"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 44.000

UICorner.Parent = Close

Timer.Name = "Timer"
Timer.Parent = Info
Timer.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Timer.BorderSizePixel = 3
Timer.Position = UDim2.new(0.0532735959, 0, 1.09358752, 0)
Timer.Size = UDim2.new(0, 225, 0, 35)

Timer_2.Name = "Timer"
Timer_2.Parent = Timer
Timer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Timer_2.BackgroundTransparency = 1.000
Timer_2.Position = UDim2.new(0.0212575961, 0, 0.192687988, 0)
Timer_2.Size = UDim2.new(0, 215, 0, 20)
Timer_2.Font = Enum.Font.Fantasy
Timer_2.Text = "Time left: getting info"
Timer_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Timer_2.TextSize = 20.000

UICorner_2.Parent = Timer

trueorfalse.Name = "trueorfalse"
trueorfalse.Parent = Timer
trueorfalse.Active = true
trueorfalse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trueorfalse.BackgroundTransparency = 1.000
trueorfalse.Position = UDim2.new(0, 0, -0.0857142881, 0)
trueorfalse.Size = UDim2.new(0, 65, 0, 41)
trueorfalse.Font = Enum.Font.SourceSans
trueorfalse.Text = "True/False"
trueorfalse.TextColor3 = Color3.fromRGB(255, 255, 255)

infoguiopen.Name = "infoguiopen"
infoguiopen.Parent = Human
infoguiopen.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
infoguiopen.BorderSizePixel = 3
infoguiopen.Position = UDim2.new(0.910237014, 0, 0.636595726, 0)
infoguiopen.Size = UDim2.new(0, 126, 0, 50)
infoguiopen.Font = Enum.Font.SourceSans
infoguiopen.Text = "Open Status gui"
infoguiopen.TextColor3 = Color3.fromRGB(255, 255, 255)
infoguiopen.TextSize = 15.000

UICorner_3.Parent = infoguiopen

ControlPad.Name = "ControlPad"
ControlPad.Parent = Human
ControlPad.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
ControlPad.BorderSizePixel = 2
ControlPad.Position = UDim2.new(0.624306619, 0, 0.627234042, 0)
ControlPad.Size = UDim2.new(0, 125, 0, 145)

Buttons.Name = "Buttons"
Buttons.Parent = ControlPad
Buttons.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Buttons.BorderSizePixel = 2
Buttons.Position = UDim2.new(0.0723066404, 0, 0.213792682, 0)
Buttons.Size = UDim2.new(0, 107, 0, 109)

StarterEnergy.Name = "StarterEnergy"
StarterEnergy.Parent = Buttons
StarterEnergy.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
StarterEnergy.Size = UDim2.new(0, 107, 0, 36)
StarterEnergy.Font = Enum.Font.Code
StarterEnergy.Text = "Enable core"
StarterEnergy.TextColor3 = Color3.fromRGB(255, 255, 255)
StarterEnergy.TextSize = 17.000

GlassBreaker.Name = "GlassBreaker"
GlassBreaker.Parent = Buttons
GlassBreaker.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
GlassBreaker.Position = UDim2.new(0, 0, 0.330275238, 0)
GlassBreaker.Size = UDim2.new(0, 107, 0, 36)
GlassBreaker.Font = Enum.Font.Code
GlassBreaker.Text = "Break glass"
GlassBreaker.TextColor3 = Color3.fromRGB(255, 255, 255)
GlassBreaker.TextSize = 17.000

StarterMeltdown.Name = "StarterMeltdown"
StarterMeltdown.Parent = Buttons
StarterMeltdown.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
StarterMeltdown.Position = UDim2.new(0, 0, 0.660550475, 0)
StarterMeltdown.Size = UDim2.new(0, 107, 0, 36)
StarterMeltdown.Font = Enum.Font.Code
StarterMeltdown.Text = "Do meltdown"
StarterMeltdown.TextColor3 = Color3.fromRGB(255, 255, 255)
StarterMeltdown.TextSize = 17.000

Title_2.Name = "Title"
Title_2.Parent = ControlPad
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(-0.197564334, 0, -0.0965517312, 0)
Title_2.Size = UDim2.new(0, 200, 0, 50)
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "By pizza_man#7693"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000

Close_2.Name = "Close"
Close_2.Parent = ControlPad
Close_2.BackgroundColor3 = Color3.fromRGB(68, 255, 0)
Close_2.Position = UDim2.new(0.0236220472, 0, 0.0137931034, 0)
Close_2.Size = UDim2.new(0, 20, 0, 20)
Close_2.Font = Enum.Font.SourceSans
Close_2.Text = "-"
Close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Close_2.TextSize = 44.000

UICorner_4.Parent = Close_2

contrpadopen.Name = "contrpadopen"
contrpadopen.Parent = Human
contrpadopen.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
contrpadopen.BorderSizePixel = 3
contrpadopen.Position = UDim2.new(0.910237014, 0, 0.59404254, 0)
contrpadopen.Size = UDim2.new(0, 126, 0, 50)
contrpadopen.Font = Enum.Font.SourceSans
contrpadopen.Text = "Open Buttons gui"
contrpadopen.TextColor3 = Color3.fromRGB(255, 255, 255)
contrpadopen.TextSize = 15.000

UICorner_5.Parent = contrpadopen

-- Scripts:

local function BIEFC_fake_script() -- Close.closeinfo 
 local script = Instance.new('LocalScript', Close)

 local frame2 = script.Parent.Parent.Parent.Info
 local open2 = script.Parent.Parent.Parent.infoguiopen
 
 script.Parent.MouseButton1Click:Connect(function()
  frame2.Visible = false
  open2.Visible = true
 end)
end
coroutine.wrap(BIEFC_fake_script)()
local function TCAKBDJ_fake_script() -- Timer_2.Copier 
 local script = Instance.new('LocalScript', Timer_2)

 local tfg = game:GetService("Workspace").EnergyCore.ControlRoom.Screens.Energy.UI.Frame.Time
 local sfg = game:GetService("Workspace").EnergyCore.ControlRoom.Screens.Temp.UI.Frame.Status
 local ssoe = game:GetService("Workspace").EnergyCore.ControlRoom.Screens.Energy.UI.Frame.Status
 local ttg = script.Parent.Parent.Timer
 local stg = script.Parent.Parent.Parent.Status.EnergyS
 local ssg = script.Parent.Parent.trueorfalse
 local som = script.Parent.Parent.Parent.Status.MeltS
 local lockenergy = script.Parent.Parent.Parent.Parent.ControlPad.Buttons.StarterEnergy
 local lockmeltdown = script.Parent.Parent.Parent.Parent.ControlPad.Buttons.StarterMeltdown
 local did1 = Instance.new("Sound")
 
 did1.Name = "Sound"
 did1.SoundId = "http://www.roblox.com/asset/?id=9068813222"
 did1.Volume = 0.3
 did1.Looped = false
 did1.archivable = false
 did1.Parent = game.Workspace
 
 wait(5)
 repeat
  if ssoe.Text == "FILLING" then
   lockenergy.Visible = false
   lockmeltdown.Visible = false
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 20 Minutes" then
   ttg.Text = "Time left: 21 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
   lockenergy.Visible = false
   lockmeltdown.Visible = false
  end
  if tfg.Text == "Estimated Time Left: 19 Minutes" then
   ttg.Text = "Time left: 20 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 18 Minutes" then
   ttg.Text = "Time left: 19 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 17 Minutes" then
   ttg.Text = "Time left: 18 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 16 Minutes" then
   ttg.Text = "Time left: 17 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 15 Minutes" then
   ttg.Text = "Time left: 16 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 14 Minutes" then
   ttg.Text = "Time left: 15 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 13 Minutes" then
   ttg.Text = "Time left: 14 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 12 Minutes" then
   ttg.Text = "Time left: 13 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 11 Minutes" then
   ttg.Text = "Time left: 12 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 10 Minutes" then
   ttg.Text = "Time left: 11 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 9 Minutes" then
   ttg.Text = "Time left: 10 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 8 Minutes" then
   ttg.Text = "Time left: 9 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 7 Minutes" then
   ttg.Text = "Time left: 8 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 6 Minutes" then
   ttg.Text = "Time left: 7 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 5 Minutes" then
   ttg.Text = "Time left: 6 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 4 Minutes" then
   ttg.Text = "Time left: 5 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 3 Minutes" then
   ttg.Text = "Time left: 4 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 2 Minutes" then
   ttg.Text = "Time left: 3 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 1 Minutes" then
   ttg.Text = "Time left: 2 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Text == "Estimated Time Left: 0 Minutes" then
   ttg.Text = "Time left: 1 Minutes"
   stg.Text = "Energy Status: Filling"
   ssg.Text = "true"
  end
  if tfg.Visible == false then
   ttg.Text = "25000/25000 MWh | Ready"
   stg.Text = "Energy Status: Filled"
   ssg.Text = "true"
   lockmeltdown.Visible = true
  end
  if sfg.Text == "RISING" then
   lockmeltdown.Visible = false
   lockenergy.Visible = false
   som.Text = "Meltdown status: Active"
  end
  if sfg.Text == "STABLE" then
   som.Text = "Meltdown status: Unactive"
  end
  if ssoe.Text == "NOT FILLING" then
   lockenergy.Visible = true
   lockmeltdown.Visible = false
   ttg.Text = "Enable core filling."
   stg.Text = "Energy Status: Not Filling"
   ssg.Text = "false"
  end
  wait(5)
 until false
end
coroutine.wrap(TCAKBDJ_fake_script)()
local function LLGB_fake_script() -- Info.Move 
 local script = Instance.new('LocalScript', Info)

 local UIS = game:GetService('UserInputService')
 
 local frame = script.Parent
 
 
 
 local dragToggle = nil
 
 local dragSpeed = 0.50
 
 local dragStart = nil
 
 local startPos = nil
 
 
 
 local function updateInput(input)
 
  local delta = input.Position - dragStart
 
  local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
 
   startPos.Y.Scale, startPos.Y.Offset + delta.Y)
 
  game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
 
 end
 
 
 
 frame.InputBegan:Connect(function(input)
 
  if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
 
   dragToggle = true
 
   dragStart = input.Position
 
   startPos = frame.Position
 
   input.Changed:Connect(function()
 
    if input.UserInputState == Enum.UserInputState.End then
 
     dragToggle = false
 
    end
 
   end)
 
  end
 
 end)
 
 
 
 UIS.InputChanged:Connect(function(input)
 
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
 
   if dragToggle then
 
    updateInput(input)
 
   end
 
  end
 
 end)
end
coroutine.wrap(LLGB_fake_script)()
local function BWTECD_fake_script() -- Info.Checker 
 local script = Instance.new('LocalScript', Info)

 local ec = game:GetService("Workspace").EnergyCore.ControlRoom.Screens.Energy.UI.Frame.Status
 local fs = game:GetService("Workspace").EnergyCore.ControlRoom.Screens.Energy.UI.Frame.Power
 local es = script.Parent.Status.EnergyS
 
 wait(3)
 if ec.Text == "FILLING" then
  es.Text = "Energy status: Filling"
  print("DEBUG: Detected the energy filling right now")
  print("DEBUG: Changed the es")
 end
 if ec.Text == "NOT FILLING" then
  es.Text = "Energy status: Not filling"
  print("DEBUG: Detected the energy not filling right now")
  print("DEBUG: Changed the es")
 end
 if fs.Text == "25000/25000 MWh" then
  es.Text = "Energy status: Full"
  print("DEBUG: Detected the energy full right now")
  print("DEBUG: Changed the es")
 end
end
coroutine.wrap(BWTECD_fake_script)()
local function LRFAALQ_fake_script() -- Info.RainbowA 
 local script = Instance.new('LocalScript', Info)

 function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
 
 counter = 0
 
 while wait(0.1)do
  script.Parent.Status.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  script.Parent.Timer.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  script.Parent.Parent.Info.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  script.Parent.Parent.ControlPad.Buttons.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  script.Parent.Parent.ControlPad.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
  counter = counter + 0.01
 end
end
coroutine.wrap(LRFAALQ_fake_script)()
local function AFBRPQ_fake_script() -- Human.hide 
 local script = Instance.new('LocalScript', Human)

 local a = script.Parent.contrpadopen
 local b = script.Parent.infoguiopen
 local c = script.Parent.Info.Timer.trueorfalse
 
 a.Visible = false
 b.Visible = false
 c.Visible = false
 
 
end
coroutine.wrap(AFBRPQ_fake_script)()
local function DFXTKWE_fake_script() -- infoguiopen.openinfo 
 local script = Instance.new('LocalScript', infoguiopen)

 local frame3 = script.Parent.Parent.Info
 local a3 = script.Parent.Parent.infoguiopen
 
 script.Parent.MouseButton1Click:Connect(function()
  frame3.Visible = true
  a3.Visible = false
 end)
 
end
coroutine.wrap(DFXTKWE_fake_script)()
local function BOLJZLP_fake_script() -- StarterEnergy.startenergy 
 local script = Instance.new('LocalScript', StarterEnergy)

 local button9 = script.Parent.Parent.StarterEnergy
 local text3 = script.Parent.Parent.Parent.Parent.Info.Status.EnergyS
 local a5 = game:GetService("Workspace").EnergyCore.ControlRoom.Enable.ClickDetector
 local time55 = script.Parent.Parent.Parent.Parent.Info.Timer.Timer
 local hi1 = Instance.new("Sound")
 local erren = Instance.new("Sound")
 local hcdd = script.Parent.Parent.Parent.Parent.Info.Timer.trueorfalse
 
 hi1.Name = "Sound"
 hi1.SoundId = "http://www.roblox.com/asset/?id=9062843158"
 hi1.Volume = 0.5
 hi1.Looped = false
 hi1.archivable = false
 hi1.Parent = game.Workspace
 
 erren.Name = "Sound"
 erren.SoundId = "http://www.roblox.com/asset/?id=2865228021"
 erren.Volume = 1.5
 erren.Looped = false
 erren.archivable = false
 erren.Parent = game.Workspace
 
 local function onButtonActivated()
  if hcdd.Text == "true" then
   erren:Play()
   print("DEBUG: Detected the user trying to click to re-fill the energy core, but core already filled or filling on this moment.")
  else
   hi1:Play()
   fireclickdetector(a5)
   print("Fireclicked energy!")
   hcdd.Text = "true"
  end
 end
 
 button9.Activated:Connect(onButtonActivated)
end
coroutine.wrap(BOLJZLP_fake_script)()
local function FKGT_fake_script() -- GlassBreaker.glassbreak 
 local script = Instance.new('LocalScript', GlassBreaker)

 local button5 = script.Parent.Parent.GlassBreaker
 local text8 = script.Parent.Parent.Parent.Parent.Info.Status.GlassS
 local b61 = game:GetService("Workspace").EnergyCore.ControlRoom.Glass.ClickDetector
 local glass = Instance.new("Sound")
 local errorgl = Instance.new("Sound")
 local function notif()
  game.StarterGui:SetCore("SendNotification", {
   Title = "pizza_man";
   Text = "You already broke the safety glass";
   Duration = 5;
  })
 end
 
 glass.Name = "Sound"
 glass.SoundId = "http://www.roblox.com/asset/?id=2596202821"
 glass.Volume = 0.4
 glass.Looped = false
 glass.archivable = false
 glass.Parent = game.Workspace
 
 errorgl.Name = "Sound"
 errorgl.SoundId = "http://www.roblox.com/asset/?id=2865228021"
 errorgl.Volume = 2
 errorgl.Looped = false
 errorgl.archivable = false
 errorgl.Parent = game.Workspace
 
 local function onButtonActivated()
  if text8.Text == "Glass status: Unbroken" then
   glass:Play()
   text8.Text = "Glass status: Broken"
   fireclickdetector(b61)
   print("DEBUG: Detected click to GLASS")
   print("DEBUG: Fireclickdetector'ed glass")
   print("DEBUG: Detected the glass broken")
   wait(60)
   print("DEBUG: Detected glass respawned")
   text8.Text = "Glass status: Unbroken"
  else
   errorgl:Play()
   notif()
  end
 end
 
 button5.Activated:Connect(onButtonActivated)
end
coroutine.wrap(FKGT_fake_script)()
local function BAGUXJE_fake_script() -- StarterMeltdown.startmelt 
 local script = Instance.new('LocalScript', StarterMeltdown)

 local button555 = script.Parent.Parent.StarterMeltdown
 local c5 = game:GetService("Workspace").EnergyCore.ControlRoom.SelfDestruct.ClickDetector
 local e4s = script.Parent.Parent.Parent.Parent.Info.Status.EnergyS
 local ok5 = Instance.new("Sound")
 local errmelt = Instance.new("Sound")
 
 ok5.Name = "Sound"
 ok5.SoundId = "http://www.roblox.com/asset/?id=9062843158"
 ok5.Volume = 0.5
 ok5.Looped = false
 ok5.archivable = false
 ok5.Parent = game.Workspace
 
 errmelt.Name = "Sound"
 errmelt.SoundId = "http://www.roblox.com/asset/?id=2865228021"
 errmelt.Volume = 1.5
 errmelt.Looped = false
 errmelt.archivable = false
 errmelt.Parent = game.Workspace
 
 local function onButtonActivated()
  if e4s.Text == "Energy Status: Filled" then
   ok5:Play()
   fireclickdetector(c5)
   print("DEBUG: Detected click to MELTDOWN")
   print("DEBUG: Fireclickdetector'ed meltdown")
  else
   errmelt:Play()
  end
 end
 
 button555.Activated:Connect(onButtonActivated)
end
coroutine.wrap(BAGUXJE_fake_script)()
local function RAWDNFM_fake_script() -- ControlPad.Move 
 local script = Instance.new('LocalScript', ControlPad)

 local UIS = game:GetService('UserInputService')
 local frame = script.Parent.Parent.ControlPad
 local dragToggle = nil
 local dragSpeed = 0.50
 local dragStart = nil
 local startPos = nil
 
 local function updateInput(input)
  local delta = input.Position - dragStart
  local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
   startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
 end
 
 frame.InputBegan:Connect(function(input)
  if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
   dragToggle = true
   dragStart = input.Position
   startPos = frame.Position
   input.Changed:Connect(function()
    if input.UserInputState == Enum.UserInputState.End then
     dragToggle = false
    end
   end)
  end
 end)
 
 UIS.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
   if dragToggle then
    updateInput(input)
   end
  end
 end)
end
coroutine.wrap(RAWDNFM_fake_script)()
local function RXGGKW_fake_script() -- Close_2.closepad 
 local script = Instance.new('LocalScript', Close_2)

 local frame = script.Parent.Parent.Parent.ControlPad
 local open = script.Parent.Parent.Parent.contrpadopen
 
 script.Parent.MouseButton1Click:Connect(function()
  frame.Visible = false
  open.Visible = true
 end)
end
coroutine.wrap(RXGGKW_fake_script)()
local function HUGCRND_fake_script() -- contrpadopen.openpad 
 local script = Instance.new('LocalScript', contrpadopen)

 local a2 = script.Parent.Parent.ControlPad
 local b2 = script.Parent.Parent.contrpadopen
 
 script.Parent.MouseButton1Click:Connect(function()
  a2.Visible = true 
  b2.Visible = false
 end)
end
coroutine.wrap(HUGCRND_fake_script)()