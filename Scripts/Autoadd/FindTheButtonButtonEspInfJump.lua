Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
camera = workspace.CurrentCamera
runservice = game:GetService("RunService")

tracers = false
Esp = false

function initESP()

 --Button ESP
 boxEsp = Drawing.new("Circle")
 boxEsp.Visible = true
 boxEsp.Radius = 60

 --tracers
 line = Drawing.new("Line")
 line.Visible = true
 line.Thickness = 8
 line.Transparency = 1
 line.Color = Color3.fromRGB(255,255,255)
 boxEsp.Color = Color3.fromRGB(255,255,255)

 

 renderstepped = runservice.RenderStepped:Connect(function()
  --Check for button every frame
  
  boxEsp.Visible = false
  line.Visible = false
  

  currentMap = game:GetService("Players").localPlayer.leaderstats.Mode.value .. "Mode"
  currentLevel = "Room".. game:GetService("Players").localPlayer.leaderstats.Room.value
  button = game:GetService("Workspace").Modes[currentMap][currentLevel]["Door/Button"].Button
 

  if(Esp) then
   boxEsp.Visible = true
   
  end

  if(tracers) then
   line.Visible = true
  end


  drop_pos = camera:WorldToViewportPoint(button.Position)
  
  
  char = camera:WorldToViewportPoint(LocalPlayer.Character.HumanoidRootPart.Position)
  line.From = Vector2.new(drop_pos.X,drop_pos.Y)
  line.To = Vector2.new(char.X,char.Y)
  boxEsp.Position = Vector2.new(drop_pos.X , drop_pos.Y)

 end)
end

initESP()

--GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Find The Button                     Seanv999 Deathskull93937", "BloodTheme")

local Tab = Window:NewTab("Main")
 local Section = Tab:NewSection("ESP")

 Section:NewToggle("Button ESP", "Find the button!", function(state)
  if state then
   print("Toggle On")
   Esp = true
   print(Esp)
  else
   print("Toggle Off")
   Esp = false
  end
  
 end)

 Section:NewToggle("Tracers", "Jump Infinitly", function(state)
  if state then
   print("Toggle On")
   tracers = true
  else
   print("Toggle Off")
   tracers = false
   line:Destroy()
  end
  
 end)

 Section:NewButton("Teleport To Button", "Teleports Player To Button", function()
  currentMap = game:GetService("Players").localPlayer.leaderstats.Mode.value .. "Mode"
  --Map fixes
  if currentMap == 'SpringMode' then
   print('Fixed')
   currentMap = 'SweetSpringMode'
  end
  currentLevel = "Room".. game:GetService("Players").localPlayer.leaderstats.Room.value
  button = game:GetService("Workspace").Modes[currentMap][currentLevel]["Door/Button"].Button
  game.Players.LocalPlayer.Character:MoveTo(button.Position)
  
 end)

 Section:NewButton("Click Button", "Teleports Player To Button", function()
  currentMap = game:GetService("Players").localPlayer.leaderstats.Mode.value .. "Mode"
  currentLevel = "Room".. game:GetService("Players").localPlayer.leaderstats.Room.value
  print(game:GetService("Workspace").Modes[currentMap][currentLevel]["Door/Button"].Button.ClickDetector)
  fireclickdetector(game:GetService("Workspace").Modes[currentMap][currentLevel]["Door/Button"].Button.ClickDetector)
 end)

local Tab4 = Window:NewTab("ESP Settings")
 local Section3 = Tab4:NewSection("Colors")

 Section3:NewColorPicker("Button ESP Color", "Change color of button ESP", Color3.fromRGB(255,255,255), function(color)
  print(color)
 
  boxEsp.Color = color
 end)
 
 Section3:NewColorPicker("Tracer Color", "Change color of button ESP", Color3.fromRGB(255,255,255), function(color)
  print(color)
  line.Color = color
 end) 

local Tab2 = Window:NewTab("Misc")
 local section2 = Tab2:NewSection("Basic")

 section2:NewToggle("Infinite Jump", "Jump Infinitly", function(state)
  if state then
   print("Toggle On")
   IJ = true
  else
   print("Toggle Off")
   IJ = false
  end
  
 end)

 section2:NewSlider("Walk Speed", "Change walk speed", 500, 0, function(s)
  LocalPlayer.Character.Humanoid.WalkSpeed = s
 end)




local Tab3 = Window:NewTab("Credit")
 local creditSection = Tab3:NewSection("s3an999 On Instagram")
 local creditSection2 = Tab3:NewSection("kevinnnnndowdy On Instagram")


--JUMP HAck
game:GetService("UserInputService").JumpRequest:connect(function()
 if IJ then
  game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
 end
end)