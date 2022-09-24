-- Gui to Lua
-- Version: 3.2

-- Instances:


local errors, errormsg = pcall(function()
 
 local ArtificialHB = Instance.new("BindableEvent", script)
 ArtificialHB.Name = "RenderStepped"
 
 script:WaitForChild("RenderStepped")
 
 local tf = 0
 local allowframeloss = false
 local tossremainder = false
 local lastframe = tick()
 local frame = 1/60
 ArtificialHB:Fire()
 
 game:GetService("RunService").RenderStepped:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
   if allowframeloss then
    script.RenderStepped:Fire()
    lastframe = tick()
   else
    for i = 1, math.floor(tf / frame) do
     ArtificialHB:Fire()
    end
    lastframe = tick()
   end
   if tossremainder then
    tf = 0
   else
    tf = tf - frame * math.floor(tf / frame)
   end
  end
 end)
 
 function swait(num)
  if num == 0 or num == nil then
   ArtificialHB.Event:wait()
  else
   for i = 0, num do
    ArtificialHB.Event:wait()
   end
  end
 end
 
 
 local r = 255
 local g = 0
 local b = 0
 coroutine.resume(coroutine.create(function()
  while wait() do
   for i = 0, 254/5 do
    swait()
    g = g + 5
   end
   for i = 0, 254/5 do
    swait()
    r = r - 5
   end
   for i = 0, 254/5 do
    swait()
    b = b + 5
   end
   for i = 0, 254/5 do
    swait()
    g = g - 5
   end
   for i = 0, 254/5 do
    swait()
    r = r + 5
   end
   for i = 0, 254/5 do
    swait()
    b = b - 5
   end
  end
 end))
 
 local RakeGui = Instance.new("ScreenGui")
 local Back = Instance.new("Frame")
 local LootBoxEsp = Instance.new("TextButton")
 local RakeInfo = Instance.new("TextButton")
 local LootBoxTeller = Instance.new("TextButton")
 local FlareGunEsp = Instance.new("TextButton")
 local ScrapEsp = Instance.new("TextButton")
 local RakeEsp = Instance.new("TextButton")
 local Back2 = Instance.new("Frame")
 local RakeInfo_2 = Instance.new("TextLabel")
 local Health = Instance.new("TextLabel")
 local Distance = Instance.new("TextLabel")
 local Back3 = Instance.new("Frame")
 local _1 = Instance.new("TextLabel")
 local _2 = Instance.new("TextLabel")
 local _3 = Instance.new("TextLabel")
 local _4 = Instance.new("TextLabel")
 local _5 = Instance.new("TextLabel")
 local _6 = Instance.new("TextLabel")
 local Notif = Instance.new("TextLabel")
 local Timer = Instance.new("TextLabel")
 local Song = Instance.new("TextBox")
 local Close = Instance.new("TextButton")
 local Weapon = Instance.new("TextLabel")
 local Left = Instance.new("TextButton")
 local Right = Instance.new("TextButton")
 local Power = Instance.new("TextLabel")
 
 --Properties:
 
 if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("RakeGui") then
  game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("RakeGui"):Destroy()
 end
 
 if game:GetService("StarterGui"):FindFirstChild("RakeGui") then
  game:GetService("StarterGui"):FindFirstChild("RakeGui"):Destroy()
 end
 
 RakeGui.Name = "RakeGui"
 RakeGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
 
 Back.Name = "Back"
 Back.Parent = RakeGui
 Back.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Back.Position = UDim2.new(0.859725773, 0, 0, 0)
 Back.Size = UDim2.new(0.140274316, 0, 0.511431992, 0)
 
 Back2.Name = "Back2"
 Back2.Parent = RakeGui
 Back2.Visible = true
 Back2.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
 Back2.Position = UDim2.new(1.1, 0,0.54, 0)
 Back2.Size = UDim2.new(0.139650866, 0, 0.202166066, 0)
 
 Back3.Name = "Back3"
 Back3.Parent = RakeGui
 Back3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Back3.BackgroundTransparency = 0.300
 Back3.Position = UDim2.new(0.41, 0,-0.3, 0)
 Back3.Size = UDim2.new(0.191396505, 0, 0.20577617, 0)
 
 Weapon.Name = "Weapon"
 Weapon.Parent = RakeGui
 Weapon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Weapon.BackgroundTransparency = 0.310
 Weapon.Position = UDim2.new(0.881481469, 0, 0.511431992, 0)
 Weapon.Size = UDim2.new(0.0950617269, 0, 0.0601684712, 0)
 Weapon.Font = Enum.Font.Ubuntu
 Weapon.Text = "Ban hammer"
 Weapon.TextColor3 = Color3.fromRGB(255, 255, 255)
 Weapon.TextScaled = true
 Weapon.TextSize = 14.000
 Weapon.TextWrapped = true
 
 Left.Name = "Left"
 Left.Parent = Weapon
 Left.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Left.BackgroundTransparency = 0.850
 Left.Position = UDim2.new(-0.238143325, 0, 0, 0)
 Left.Size = UDim2.new(0.233766228, 0, 0.980000019, 0)
 Left.Font = Enum.Font.SourceSans
 Left.Text = "<"
 Left.TextColor3 = Color3.fromRGB(255, 255, 255)
 Left.TextSize = 58.000
 
 Right.Name = "Right"
 Right.Parent = Weapon
 Right.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Right.BackgroundTransparency = 0.850
 Right.Position = UDim2.new(0.995622873, 0, 0.0199999996, 0)
 Right.Size = UDim2.new(0.233766228, 0, 0.980000019, 0)
 Right.Font = Enum.Font.SourceSans
 Right.Text = ">"
 Right.TextColor3 = Color3.fromRGB(255, 255, 255)
 Right.TextSize = 58.000
 
 Notif.Name = "Notif"
 Notif.Parent = RakeGui
 Notif.BackgroundColor3 = Color3.fromRGB(65, 0, 0)
 Notif.BackgroundTransparency = 0.100
 Notif.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Notif.BorderSizePixel = 10
 Notif.Position = UDim2.new(0.326059848, 0, 0.783393502, 0)
 Notif.Size = UDim2.new(0.390274316, 0, 0.216606498, 0)
 Notif.Font = Enum.Font.SourceSans
 Notif.Text = "Rake Incoming"
 Notif.TextColor3 = Color3.fromRGB(236, 0, 0)
 Notif.TextScaled = true
 Notif.Visible = false
 Notif.TextSize = 14.000
 Notif.TextWrapped = true
 
 Song.Name = "Song"
 Song.Parent = RakeGui
 Song.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Song.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Song.BorderSizePixel = 2
 Song.Position = UDim2.new(0.733950615, 0, 0, 0)
 Song.Size = UDim2.new(0.123456791, 0, 0.0601684712, 0)
 Song.Font = Enum.Font.SourceSans
 Song.Text = "Music Here"
 Song.TextColor3 = Color3.fromRGB(255, 255, 255)
 Song.TextSize = 14.000
 
 Power.Name = "Power"
 Power.Parent = Song
 Power.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Power.Position = UDim2.new(-0.481506467, 0, -0.0212033689, 0)
 Power.Size = UDim2.new(0.481139004, 0, 1.01999998, 0)
 Power.Font = Enum.Font.SourceSans
 Power.Text = "Power Level: "
 Power.TextColor3 = Color3.fromRGB(232, 255, 83)
 Power.TextSize = 14.000
 
 Close.Name = "Close"
 Close.Parent = Song
 Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Close.BackgroundTransparency = 0.250
 Close.Position = UDim2.new(0.355802625, 0, 0.980168462, 0)
 Close.Size = UDim2.new(0.300000012, 0, 0.540000021, 0)
 Close.Font = Enum.Font.Oswald
 Close.Text = "^"
 Close.TextColor3 = Color3.fromRGB(0, 0, 0)
 Close.TextSize = 49.000
 Close.TextYAlignment = Enum.TextYAlignment.Top
 
 Timer.Name = "Timer"
 Timer.Parent = RakeGui
 Timer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Timer.Position = UDim2.new(0.734413981, 0, 0.939831555, 0)
 Timer.Size = UDim2.new(0.0561097264, 0, 0.0601684712, 0)
 Timer.Font = Enum.Font.SourceSans
 Timer.Text = "0"
 Timer.TextColor3 = Color3.fromRGB(255, 255, 255)
 Timer.TextScaled = true
 Timer.TextSize = 14.000
 Timer.TextWrapped = true
 
 _1.Name = "1"
 _1.Parent = Back3
 _1.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _1.BackgroundTransparency = 0.400
 _1.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _1.BorderSizePixel = 3
 _1.Position = UDim2.new(-0.0013917865, 0, 0.00584795326, 0)
 _1.Size = UDim2.new(0.332247555, 0, 0.497076035, 0)
 _1.Font = Enum.Font.SourceSans
 _1.Text = ""
 _1.TextColor3 = Color3.fromRGB(255, 255, 255)
 _1.TextSize = 36.000
 _1.TextWrapped = true
 
 _2.Name = "2"
 _2.Parent = Back3
 _2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _2.BackgroundTransparency = 0.400
 _2.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _2.BorderSizePixel = 3
 _2.Position = UDim2.new(-0.0013917865, 0, 0.502923965, 0)
 _2.Size = UDim2.new(0.332247555, 0, 0.497076035, 0)
 _2.Font = Enum.Font.SourceSans
 _2.Text = ""
 _2.TextColor3 = Color3.fromRGB(255, 255, 255)
 _2.TextSize = 36.000
 _2.TextWrapped = true
 
 _3.Name = "3"
 _3.Parent = Back3
 _3.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _3.BackgroundTransparency = 0.400
 _3.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _3.BorderSizePixel = 3
 _3.Position = UDim2.new(0.327845186, 0, 0.508771896, 0)
 _3.Size = UDim2.new(0.332247555, 0, 0.497076035, 0)
 _3.Font = Enum.Font.SourceSans
 _3.Text = ""
 _3.TextColor3 = Color3.fromRGB(255, 255, 255)
 _3.TextSize = 36.000
 _3.TextWrapped = true
 
 _4.Name = "4"
 _4.Parent = Back3
 _4.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _4.BackgroundTransparency = 0.400
 _4.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _4.BorderSizePixel = 3
 _4.Position = UDim2.new(0.660092831, 0, 0.508771896, 0)
 _4.Size = UDim2.new(0.338762224, 0, 0.491228074, 0)
 _4.Font = Enum.Font.SourceSans
 _4.Text = ""
 _4.TextColor3 = Color3.fromRGB(255, 255, 255)
 _4.TextSize = 36.000
 _4.TextWrapped = true
 
 _5.Name = "5"
 _5.Parent = Back3
 _5.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _5.BackgroundTransparency = 0.400
 _5.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _5.BorderSizePixel = 3
 _5.Position = UDim2.new(0.327845275, 0, 0.00584793091, 0)
 _5.Size = UDim2.new(0.332247555, 0, 0.502923965, 0)
 _5.Font = Enum.Font.SourceSans
 _5.Text = ""
 _5.TextColor3 = Color3.fromRGB(255, 255, 255)
 _5.TextSize = 36.000
 _5.TextWrapped = true
 
 _6.Name = "6"
 _6.Parent = Back3
 _6.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
 _6.BackgroundTransparency = 0.400
 _6.BorderColor3 = Color3.fromRGB(255, 255, 255)
 _6.BorderSizePixel = 3
 _6.Position = UDim2.new(0.660092831, 0, 0.0116958842, 0)
 _6.Size = UDim2.new(0.338762224, 0, 0.491228074, 0)
 _6.Font = Enum.Font.SourceSans
 _6.Text = ""
 _6.TextColor3 = Color3.fromRGB(255, 255, 255)
 _6.TextSize = 36.000
 _6.TextWrapped = true
 
 LootBoxEsp.Name = "LootBoxEsp"
 LootBoxEsp.Parent = Back
 LootBoxEsp.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 LootBoxEsp.BorderColor3 = Color3.fromRGB(255, 255, 255)
 LootBoxEsp.BorderSizePixel = 3
 LootBoxEsp.Position = UDim2.new(-0.00249648094, 0, 0.704540193, 0)
 LootBoxEsp.Size = UDim2.new(1, 0, 0.117647059, 0)
 LootBoxEsp.Font = Enum.Font.SourceSans
 LootBoxEsp.Text = "Loot Box Esp"
 LootBoxEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
 LootBoxEsp.TextScaled = true
 LootBoxEsp.TextSize = 14.000
 LootBoxEsp.TextWrapped = true
 
 RakeInfo.Name = "RakeInfo"
 RakeInfo.Parent = Back
 RakeInfo.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 RakeInfo.BorderColor3 = Color3.fromRGB(255, 255, 255)
 RakeInfo.BorderSizePixel = 3
 RakeInfo.Position = UDim2.new(-0.00249648094, 0, 0.527228713, 0)
 RakeInfo.Size = UDim2.new(1, 0, 0.117647059, 0)
 RakeInfo.Font = Enum.Font.SourceSans
 RakeInfo.Text = "Rake Info Display"
 RakeInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
 RakeInfo.TextScaled = true
 RakeInfo.TextSize = 14.000
 RakeInfo.TextWrapped = true
 
 LootBoxTeller.Name = "LootBoxTeller"
 LootBoxTeller.Parent = Back
 LootBoxTeller.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 LootBoxTeller.BorderColor3 = Color3.fromRGB(255, 255, 255)
 LootBoxTeller.BorderSizePixel = 3
 LootBoxTeller.Position = UDim2.new(-0.00249648094, 0, 0.354623049, 0)
 LootBoxTeller.Size = UDim2.new(1, 0, 0.117647059, 0)
 LootBoxTeller.Font = Enum.Font.SourceSans
 LootBoxTeller.Text = "Box Item Display"
 LootBoxTeller.TextColor3 = Color3.fromRGB(255, 255, 255)
 LootBoxTeller.TextScaled = true
 LootBoxTeller.TextSize = 14.000
 LootBoxTeller.TextWrapped = true
 
 FlareGunEsp.Name = "FlareGunEsp"
 FlareGunEsp.Parent = Back
 FlareGunEsp.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 FlareGunEsp.BorderColor3 = Color3.fromRGB(255, 255, 255)
 FlareGunEsp.BorderSizePixel = 3
 FlareGunEsp.Position = UDim2.new(-0.00249648094, 0, 0.180867836, 0)
 FlareGunEsp.Size = UDim2.new(1, 0, 0.117647059, 0)
 FlareGunEsp.Font = Enum.Font.SourceSans
 FlareGunEsp.Text = "Flare Gun Esp"
 FlareGunEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
 FlareGunEsp.TextScaled = true
 FlareGunEsp.TextSize = 14.000
 FlareGunEsp.TextWrapped = true
 
 ScrapEsp.Name = "ScrapEsp"
 ScrapEsp.Parent = Back
 ScrapEsp.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 ScrapEsp.BorderColor3 = Color3.fromRGB(255, 255, 255)
 ScrapEsp.BorderSizePixel = 3
 ScrapEsp.Position = UDim2.new(-0.00249648094, 0, 0.881851792, 0)
 ScrapEsp.Size = UDim2.new(1, 0, 0.117647059, 0)
 ScrapEsp.Font = Enum.Font.SourceSans
 ScrapEsp.Text = "Scrap Esp"
 ScrapEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
 ScrapEsp.TextScaled = true
 ScrapEsp.TextSize = 14.000
 ScrapEsp.TextWrapped = true
 
 RakeEsp.Name = "RakeEsp"
 RakeEsp.Parent = Back
 RakeEsp.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 RakeEsp.BorderColor3 = Color3.fromRGB(255, 255, 255)
 RakeEsp.BorderSizePixel = 3
 RakeEsp.Position = UDim2.new(-0.00249648094, 0, 0, 0)
 RakeEsp.Size = UDim2.new(1, 0, 0.117647059, 0)
 RakeEsp.Font = Enum.Font.SourceSans
 RakeEsp.Text = "Rake Esp"
 RakeEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
 RakeEsp.TextScaled = true
 RakeEsp.TextSize = 14.000
 RakeEsp.TextWrapped = true
 
 RakeInfo_2.Name = "RakeInfo"
 RakeInfo_2.Parent = Back2
 RakeInfo_2.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
 RakeInfo_2.BorderColor3 = Color3.fromRGB(157, 157, 157)
 RakeInfo_2.Position = UDim2.new(-0.00250462117, 0, -0.00298690796, 0)
 RakeInfo_2.Size = UDim2.new(1.00000012, 0, 0.410714298, 0)
 RakeInfo_2.Font = Enum.Font.Roboto
 RakeInfo_2.Text = "Rake Info"
 RakeInfo_2.TextColor3 = Color3.fromRGB(217, 217, 217)
 RakeInfo_2.TextScaled = true
 RakeInfo_2.TextSize = 21.000
 RakeInfo_2.TextWrapped = true
 
 Health.Name = "Health"
 Health.Parent = Back2
 Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Health.BackgroundTransparency = 1.000
 Health.Position = UDim2.new(-0.00250462117, 0, 0.412046522, 0)
 Health.Size = UDim2.new(1.00892866, 0, 0.261904776, 0)
 Health.Font = Enum.Font.RobotoCondensed
 Health.Text = "Heath: "
 Health.TextColor3 = Color3.fromRGB(217, 217, 217)
 Health.TextScaled = true
 Health.TextSize = 22.000
 Health.TextWrapped = true
 
 Distance.Name = "Distance"
 Distance.Parent = Back2
 Distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Distance.BackgroundTransparency = 1.000
 Distance.Position = UDim2.new(-0.00250462117, 0, 0.733531058, 0)
 Distance.Size = UDim2.new(1.00892866, 0, 0.261904776, 0)
 Distance.Font = Enum.Font.RobotoCondensed
 Distance.Text = "Distance: "
 Distance.TextColor3 = Color3.fromRGB(217, 217, 217)
 Distance.TextScaled = true
 Distance.TextSize = 14.000
 Distance.TextWrapped = true
 
 local rESP_enabled = false
 local sESP_enabled = false
 local fESP_enabled = false
 local lbESP_enabled = false
 local lbTELL_enabled = false
 local rINFO_enabled = false
 local LIGHTING_enabled = false
 local normalfog = game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value
 local normalbright = game:GetService("ReplicatedStorage").CurrentLightingProperties.Brightness.Value
 local Player = game:GetService("Players").LocalPlayer
 local char = Player.Character
 local setwalkspeed = 11
 local sprint = false
 local weaponNum = 1
 local hum = char:FindFirstChildOfClass("Humanoid")
 local chasesou = nil
 local staticsou = nil
 local hasplayed = false
 local commitdie = false
 local stunstick = nil
 local modstick = Instance.new("MeshPart")
 local toolconnection = nil
 
 for _,v in pairs(Player.PlayerGui:GetChildren()) do
  if v:IsA("Sound") then
   v:Destroy()
  end
 end
 
 local theme = Instance.new("Sound")
 theme.Volume = 2
 theme.Parent = Player.PlayerGui
 theme.Looped = true
 local incoming = Instance.new("Sound")
 incoming.Volume = 1
 incoming.SoundId = "rbxassetid://169112309"
 incoming.Parent = Player.PlayerGui
 
 local function weldBetween(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Name = "ManualWeld"
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = a.CFrame:inverse() * b.CFrame
  weldd.Parent = a
  return weldd
 end
 
 function GetStick()
  if Player.Character and Player.Character:FindFirstChild("StunStick") then
   stunstick = Player.Character:FindFirstChild("StunStick")
   return stunstick
  else
   return nil
  end
 end
 
 local weaponFunctions = {}
 
 function weaponFunctions.BanHammer()
  stunstick:FindFirstChild("Grit").Transparency = 1
  stunstick:FindFirstChild("Handle").Transparency = 1
  stunstick:FindFirstChild("Glow").Transparency = 1
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy()
  end
  local grit = stunstick:FindFirstChild("Grit")
  Weapon.Text = "Ban Hammer"
  local mesh = Instance.new("Part")
  mesh.CanCollide = false
  mesh.Name = "GlowMesh"
  mesh.Size = grit.Size
  mesh.Color = Color3.fromRGB(239, 184, 56)
  mesh.CFrame = grit.CFrame * CFrame.Angles(math.rad(90),math.rad(90),0) * CFrame.Angles(math.rad(-25),0,math.rad(15))
  mesh.Parent = stunstick
  local point = Instance.new("PointLight",mesh)
  point.Range = 20
  point.Shadows = false
  point.Brightness = 3
  point.Color = Color3.fromRGB(239, 184, 56)
  local actualmesh = Instance.new("SpecialMesh",mesh)
  actualmesh.MeshType = Enum.MeshType.FileMesh
  actualmesh.MeshId = "rbxassetid://6830186855"
  actualmesh.Scale = Vector3.new(1,1,1)
  stunstick["Handle"]["BlockHitSound"].SoundId = "rbxassetid://3521543186"
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://147722910"
  stunstick["Handle"]["SwingSound"].Volume = 1.5
  weldBetween(stunstick["Grit"],mesh)
  local connec
  connec = mesh.Touched:Connect(function(hit)
   if mesh.Parent == nil then
    connec:Disconnect()
   else
    if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent.Name ~= Player.Name then
     local force = Instance.new("BodyVelocity")
     force.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
     force.Velocity = hit.Parent:FindFirstChild("HumanoidRootPart")
    end
   end
  end)
 end
 
 function weaponFunctions.Mana()
  stunstick:FindFirstChild("Grit").Transparency = 1
  stunstick:FindFirstChild("Handle").Transparency = 1
  stunstick:FindFirstChild("Glow").Transparency = 1
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy()
  end
  local grit = stunstick:FindFirstChild("Grit")
  Weapon.Text = "Mana"
  local mesh = Instance.new("Part")
  mesh.CanCollide = false
  mesh.Name = "GlowMesh"
  mesh.Size = grit.Size
  mesh.Color = Color3.fromRGB(100, 28, 255)
  mesh.CFrame = grit.CFrame * CFrame.Angles(math.rad(90),math.rad(90),0) * CFrame.new(0,-1.3,0) * CFrame.Angles(0,0,math.rad(25))
  mesh.Parent = stunstick
  local point = Instance.new("PointLight",mesh)
  point.Range = 20
  point.Shadows = false
  point.Brightness = 3
  point.Color = Color3.fromRGB(100, 28, 255)
  local actualmesh = Instance.new("SpecialMesh",mesh)
  actualmesh.MeshType = Enum.MeshType.FileMesh
  actualmesh.MeshId = "rbxassetid://11442510"
  actualmesh.Scale = Vector3.new(2,2,2)
  stunstick["Handle"]["BlockHitSound"].SoundId = "rbxassetid://4471648128"
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://1489705211"
  stunstick["Handle"]["SwingSound"].Volume = 1
  local trail = Instance.new("Trail",mesh)
  trail.Color = ColorSequence.new(Color3.fromRGB(100, 28, 255))
  trail.Name = "Trail"
  trail.Brightness = 3
  trail.Enabled = true
  local att0 = Instance.new("Attachment",mesh)
  att0.CFrame = CFrame.new(0,0,3)
  local att1 = Instance.new("Attachment",mesh)
  att1.CFrame = CFrame.new(0,0,-1.5)
  trail.Attachment0 = att0
  trail.Attachment1 = att1
  trail.Lifetime = 0.1
  trail.Transparency = NumberSequence.new(0,1)
  local connec
  connec = mesh.Touched:Connect(function(hit)
   if mesh.Parent == nil then
    connec:Disconnect()
   end
   if hit.Parent.Name ~= Player.Name then
    local effect = Instance.new("Part")
    effect.CanCollide = false
    effect.CanTouch = false
    effect.CFrame = hit.CFrame
    effect.Size = Vector3.new(0,0,0)
    effect.Color = Color3.fromRGB(100, 28, 255)
    effect.Material = "Neon"
    effect.Parent = mesh
    local randa = CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
    game:GetService("TweenService"):Create(effect,TweenInfo.new(0.5),{Size = Vector3.new(5,5,5),Transparency = 1, CFrame = effect.CFrame * randa}):Play()
     game:GetService("Debris"):AddItem(effect,0.5)
    end
  end)
  weldBetween(stunstick["Grit"],mesh)
 end
 
 function weaponFunctions.StunStick()
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy() --
  end
  stunstick:FindFirstChild("Grit").Transparency = 0.8
  stunstick:FindFirstChild("Handle").Transparency = 0
  stunstick:FindFirstChild("Glow").Transparency = 0
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://1489705211"
  stunstick["Handle"]["SwingSound"].Volume = 1
  Weapon.Text = "Stun Stick"
 end
 
 --rbxassetid://432997628
 
 function weaponFunctions.Knife()
  stunstick:FindFirstChild("Grit").Transparency = 1
  stunstick:FindFirstChild("Handle").Transparency = 1
  stunstick:FindFirstChild("Glow").Transparency = 1
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy()
  end
  local grit = stunstick:FindFirstChild("Grit")
  Weapon.Text = "Knife"
  local mesh = Instance.new("Part")
  mesh.CanCollide = false
  mesh.Name = "GlowMesh"
  mesh.Size = grit.Size
  mesh.Material = "Neon"
  mesh.Color = Color3.fromRGB(0,0,0)
  mesh.CFrame = grit.CFrame * CFrame.Angles(0,math.rad(180),0)
  mesh.Parent = stunstick
  local actualmesh = Instance.new("SpecialMesh",mesh)
  actualmesh.MeshType = Enum.MeshType.FileMesh
  actualmesh.MeshId = "rbxassetid://432997628"
  actualmesh.Scale = Vector3.new(0.0025,0.0025,0.0025)
  stunstick["Handle"]["BlockHitSound"].SoundId = "rbxassetid://3521543186"
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://106017333"
  stunstick["Handle"]["SwingSound"].Volume = 1.5
  weldBetween(stunstick["Grit"],mesh)
 end
 
 function weaponFunctions.Abyss()
  stunstick:FindFirstChild("Grit").Transparency = 1
  stunstick:FindFirstChild("Handle").Transparency = 1
  stunstick:FindFirstChild("Glow").Transparency = 1
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy()
  end
  local grit = stunstick:FindFirstChild("Grit")
  Weapon.Text = "Abyss"
  local mesh = Instance.new("Part")
  mesh.CanCollide = false
  mesh.Name = "GlowMesh"
  mesh.Massless = true
  mesh.Size = Vector3.new(1.5,1.5,1.5)
  mesh.Color = Color3.fromRGB(0,0,0)
  mesh.CFrame = grit.CFrame
  mesh.Anchored = true
  mesh.Material = "Neon"
  mesh.Parent = stunstick
  stunstick["Handle"]["BlockHitSound"].SoundId = "rbxassetid://106017333"
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://5020159109"
  stunstick["Handle"]["SwingSound"].Volume = 2.5
  while mesh.Parent ~= nil do
   wait(0.075)
   mesh.CFrame = grit.CFrame * CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
   if math.random(1,20) == 1 then
    local CorruptC = Instance.new("Sound")
    CorruptC.SoundId = "rbxassetid://1342917734"
    CorruptC.Parent = Player.PlayerGui
    CorruptC:Play()
    game:GetService("Debris"):AddItem(CorruptC,0.1)
    for i = 1,math.random(2,4) do
     local GC = Instance.new("Frame")
     GC.BackgroundColor3 = Color3.fromRGB(50,50,50)
     GC.BorderSizePixel = 0
     GC.Size = UDim2.new(0,math.random(50,350),0,math.random(50,350))
     GC.Position = UDim2.new(0,math.random(0,1022),0,math.random(0,573))
     GC.Parent = RakeGui
     game:GetService("Debris"):AddItem(GC,0.1)
    end
   end
  end
 end
 
 function weaponFunctions.Valentine()
  stunstick:FindFirstChild("Grit").Transparency = 1
  stunstick:FindFirstChild("Handle").Transparency = 1
  stunstick:FindFirstChild("Glow").Transparency = 1
  if stunstick:FindFirstChild("GlowMesh") then
   stunstick:FindFirstChild("GlowMesh"):Destroy()
  end
  local grit = stunstick:FindFirstChild("Grit")
  Weapon.Text = "Valentine"
  local mesh = Instance.new("Part")
  mesh.CanCollide = false
  mesh.Name = "GlowMesh"
  mesh.Size = grit.Size
  mesh.Color = Color3.fromRGB(233, 160, 255)
  mesh.CFrame = grit.CFrame * CFrame.new(0,-2,0)
  mesh.Parent = stunstick
  local point = Instance.new("PointLight",mesh)
  point.Range = 20
  point.Shadows = true
  point.Brightness = 3
  point.Name = "Light"
  point.Color = Color3.fromRGB(233, 160, 255)
  game:GetService("TweenService"):Create(point,TweenInfo.new(1.25,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,-1,true),{Range = 0}):Play()
  local actualmesh = Instance.new("SpecialMesh",mesh)
  actualmesh.MeshType = Enum.MeshType.FileMesh
  actualmesh.Name = "mesh"
  actualmesh.MeshId = "rbxassetid://1402131503"
  actualmesh.TextureId = "rbxassetid://1402130942"
  actualmesh.Scale = Vector3.new(0.25,0.25,0.25)
  stunstick["Handle"]["BlockHitSound"].SoundId = "rbxassetid://8295266373"
  stunstick["Handle"]["SwingSound"].SoundId = "rbxassetid://12222216"
  stunstick["Handle"]["SwingSound"].Volume = 1.5
  weldBetween(stunstick["Grit"],mesh)
  local connec
  connec = mesh.Touched:Connect(function(hit)
   if mesh.Parent == nil then
    connec:Disconnect()
   else
    if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent.Name ~= Player.Name and hit.Parent:FindFirstChild("HumanoidRootPart") and hit.Parent["HumanoidRootPart"] then
     local clone = mesh:Clone()
     clone.Anchored = true
     clone["mesh"].TextureId = ""
     clone.Material = "Neon"
     clone:BreakJoints()
     clone.Parent = workspace
     game:GetService("TweenService"):Create(clone,TweenInfo.new(0.5),{Transparency = 1,Size = mesh.Size + Vector3.new(1.5,1.5,1.5)}):Play()
     clone["Light"].Range = 5
     clone["Light"].Brightness = 5
     game:GetService("TweenService"):Create(clone["Light"],TweenInfo.new(0.5),{Range = 0}):Play()
     game:GetService("Debris"):AddItem(clone,0.5)
    end
   end
  end)
 end
 
 local weapons = {
  "Mana",
  "BanHammer",
  "StunStick",
  "Knife",
  "Abyss",
  "Valentine"
 }
 
 for _, ply in next, game:GetService("Players"):GetPlayers() do
  ply.Chatted:Connect(function(msg)
   if string.sub(msg,1,9) == "/e Music " then
    if ply.Character then
     if ply.Character["HumanoidRootPart"]:FindFirstChild("PlySound") == nil then
      local sou = Instance.new("Sound",ply.Character["HumanoidRootPart"])
      sou.SoundId = "rbxassetid://" .. string.sub(msg,10)
      sou.Name = "PlySound"
      sou.Volume = 3
      sou:Play()
     else
      sou = ply.Character["HumanoidRootPart"]:FindFirstChild("PlySound")
      sou.SoundId = "rbxassetid://" .. string.sub(msg,10)
      sou.Volume = 3
      sou:Play()
     end
    end
   elseif msg == "/e clear" then
    if ply.Character then
     if ply.Character["HumanoidRootPart"]:FindFirstChild("PlySound") ~= nil then
      ply.Character["HumanoidRootPart"]:FindFirstChild("PlySound"):Destroy()
     end
    end
   elseif string.sub(msg,1,3) == "/e " then
    if ply.Character and ply.Character:FindFirstChild("StunStick") then
     stunstick = ply.Character:FindFirstChild("StunStick")
     local weaponindex = string.sub(msg,4)
     local isfind = pcall(function() if weapons[weaponindex] then return true end end)
     if isfind == true then
       spawn(weaponFunctions[weaponindex])
      end
    end
   end
  end)
 end

 
 for _,v in pairs(Player.PlayerGui:GetChildren()) do
  if v:FindFirstChild("Chase") then
   chasesou = v:FindFirstChild("Chase")
   staticsou = v:FindFirstChild("Static")
  end
 end
 
 local randomchases = {
  "rbxassetid://232788885",
  "rbxassetid://138211362",
  "rbxassetid://802080513",
  "rbxassetid://414454387",
  "rbxassetid://8075819854"
 }
 
 local chaseS = chasesou:GetPropertyChangedSignal("Volume"):Connect(function()
  if chasesou.Volume <= 0.05 then
   local randomNum = math.random(1,#randomchases)
   local chosen = randomchases[randomNum]
   chasesou.SoundId = chosen
  end
 end)
 
 local static = staticsou:GetPropertyChangedSignal("Volume"):Connect(function()
  staticsou.Volume = 0
 end)
 
 local randomNum = math.random(1,#randomchases)
 local chosen = randomchases[randomNum]
 chasesou.SoundId = chosen
 
 function NewLabel(part,text)
  local billgui = Instance.new("BillboardGui")
  billgui.Parent = part
  billgui.Adornee = part
  billgui.AlwaysOnTop = true
  billgui.Size = UDim2.new(1, 1, 1)
  billgui.Name = "Isguied"
  billgui.Active = true
  billgui.Enabled = true
  billgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  local label = Instance.new("TextLabel")
  label.Parent = billgui
  label.Size = UDim2.new(1, 1, 1)
  label.TextColor3 = Color3.new(23,45,67)
  label.Active = true
  label.Text = text
  label.ZIndex = 1
  label.Visible = true
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 1
 end
 
 function GetBoxItems(BoxStorer)
  local items = {}
  if BoxStorer:FindFirstChild("Box") then
   for i,v in pairs(game:GetService("Workspace").Debris.SupplyCrates.Box["Items_Folder"]:GetChildren()) do
    table.insert(items,v.Name)
   end
  end
  return items
 end
 
 function GetScraps(Folder)
  local scraps = {}
  for _,ItemSpawn in pairs(Folder:GetChildren()) do
   if ItemSpawn:FindFirstChildOfClass("Model") and ItemSpawn:FindFirstChildOfClass("Model"):FindFirstChild("Scrap") then
    table.insert(scraps,ItemSpawn:FindFirstChildOfClass("Model")["Scrap"])
   end
  end
  return scraps
 end
 
 function EspScraps(scraps)
  if #scraps > 0 then
   for i = 1,#scraps do
    if scraps[i]:FindFirstChild("Isguied") == nil then
     NewLabel(scraps[i],scraps[i].Parent.Name)
    end
   end
  end
 end
 
 local bloodhour = game:GetService("ReplicatedStorage").InitiateBloodHour
 local platform = nil
 local goto = nil
 local blood = bloodhour:GetPropertyChangedSignal("Value"):Connect(function(val)
  print("goingthro")
  if val == true then
   if workspace:FindFirstChild("platty") then
    workspace:FindFirstChild("platty"):Destroy()
   end
   platform = Instance.new("Part",workspace)
   platform.Position = Vector3.new(62.36, 29.03, -54.29)
   platform.Anchored = true
   platform.Transparency = 0.7
   platform.Name = "platty"
   platform.Material = Enum.Material.SmoothPlastic
   platform.CanCollide = false
   platform.Size = Vector3.new(15,2,15)
   goto = Instance.new("Part",platform)
   goto.Position = platform + Vector3.new(0,5,0)
   goto.Anchored = true
   goto.Material = Enum.Material.Neon
   goto.Transparency = 0.5
   goto.CanCollide = false
   goto.Size = Vector3.new(3,3,3)
   for i = 0,1,0.01 do
    swait()
    workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(workspace.CurrentCamera.CFrame.Position,goto.Position),i)
   end
   goto.Touched:Connect(function()
    if goto.Transparency ~= 1 then
     platform.CanCollide = true
     platform.Transparency = 0
     goto.Transparency = 1
     end
   end)
  elseif val == false then
   goto:Destroy()
   platform:Destroy()
   platform = nil
   goto = nil
  end
 end)
 
 bloodhour.Value = true
 
 local wconn = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
  hum.WalkSpeed = setwalkspeed
 end)
 
 local cammax = Player:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(function()
  Player.CameraMaxZoomDistance = 1000
 end)
 
 Player.CameraMaxZoomDistance = 1000
 
 RakeEsp.MouseButton1Down:Connect(function()
  if rESP_enabled == false then
   rESP_enabled = true
   game.StarterGui:SetCore("SendNotification", {
    Title = "Bool"; 
    Text = ": Is True"; 
    Icon = ""; 
    Duration = 5; 
   })
  elseif rESP_enabled == true then
   rESP_enabled = false
   if workspace:FindFirstChild("Rake") and workspace["Rake"]["HumanoidRootPart"]:FindFirstChild("Isguied") ~= nil then
    workspace["Rake"]["HumanoidRootPart"]:FindFirstChild("Isguied"):Destroy()
   end
  end
 end)
 
 ScrapEsp.MouseButton1Down:Connect(function()
  if sESP_enabled == false then
   sESP_enabled = true
   game.StarterGui:SetCore("SendNotification", {
    Title = "Bool"; 
    Text = ": Is True"; 
    Icon = ""; 
    Duration = 5; 
   })
  elseif sESP_enabled == true then
   sESP_enabled = false
   local scraps = GetScraps(game:GetService("Workspace").Filter.ScrapSpawns)
   if #scraps > 0 then
    for i in #scraps do
     if scraps[i]:FindFirstChild("Isguied") ~= nil then
      scraps[i]:FindFirstChild("Isguied"):Destroy()
     end
    end
   end
  end
 end)
 
 FlareGunEsp.MouseButton1Down:Connect(function()
  if fESP_enabled == false then
   fESP_enabled = true
   game.StarterGui:SetCore("SendNotification", {
    Title = "Bool"; 
    Text = ": Is True"; 
    Icon = ""; 
    Duration = 5; 
   })
  elseif fESP_enabled == true then
   fESP_enabled = false
   if workspace:FindFirstChild("Rake") and workspace:FindFirstChild("Rake"):FindFirstChild("Isguied") ~= nil then
    workspace:FindFirstChild("FlareGunPickUp"):FindFirstChild("Isguied"):Destroy()
   end
  end
 end)
 
 LootBoxTeller.MouseButton1Down:Connect(function() -- need check
  if lbTELL_enabled == false then
   lbTELL_enabled = true
  elseif lbTELL_enabled == true then
   lbTELL_enabled = false
  end
  if lbTELL_enabled == false then
   game:GetService("TweenService"):Create(Back3,TweenInfo.new(1.5),{Position = UDim2.new(0.41, 0,-0.3, 0)}):Play()
  elseif  lbTELL_enabled == true then
   game:GetService("TweenService"):Create(Back3,TweenInfo.new(1.5),{Position = UDim2.new(0.41, 0,0.02, 0)}):Play()
  end
 end)
 
 RakeInfo.MouseButton1Down:Connect(function() -- need check
  if rINFO_enabled == false then
   rINFO_enabled = true
  elseif rINFO_enabled == true then
   rINFO_enabled = false
  end
  if rINFO_enabled == false then
   game:GetService("TweenService"):Create(Back2,TweenInfo.new(1.5),{Position = UDim2.new(1.1, 0,0.54, 0)}):Play()
  elseif rINFO_enabled == true then
   game:GetService("TweenService"):Create(Back2,TweenInfo.new(1.5),{Position = UDim2.new(0.859, 0,0.54, 0)}):Play()
  end
 end)
 
 LootBoxEsp.MouseButton1Down:Connect(function()
  if lbESP_enabled == false then
   lbESP_enabled = true
   game.StarterGui:SetCore("SendNotification", {
    Title = "Bool"; 
    Text = ": Is True"; 
    Icon = ""; 
    Duration = 5; 
   })
  elseif lbESP_enabled == true then
   lbESP_enabled = false
  end
 end)
 
 Close.MouseButton1Down:Connect(function()
  if Close.Text == "^" then
   Close.Text = "."
   game:GetService("TweenService"):Create(Song,TweenInfo.new(1),{Position = UDim2.new(0.734, 0,-0.1, 0)}):Play()
  elseif Close.Text == "." then
   Close.Text = "^"
   game:GetService("TweenService"):Create(Song,TweenInfo.new(1),{Position = UDim2.new(0.733950615, 0, 0, 0)}):Play()
  end
 end)
 
 Left.MouseButton1Down:Connect(function()
  local getindex = weapons[weaponNum]
  if weaponNum > 1 then
   weaponNum -= 1
   getindex = weapons[weaponNum]
  end
  Weapon.Text = getindex
  stunstick = Player.Character:FindFirstChild("StunStick")
  spawn(weaponFunctions[getindex])
 end)
 
 Right.MouseButton1Down:Connect(function()
  local getindex = weapons[weaponNum]
  if weaponNum < #weapons then
   weaponNum += 1
   getindex = weapons[weaponNum]
  end
  Weapon.Text = getindex
  stunstick = Player.Character:FindFirstChild("StunStick")
  spawn(weaponFunctions[getindex])
 end)
 
 local Mouse = Player:GetMouse()
 
 Mouse.KeyDown:Connect(function(k)
  if commitdie == false then
   if k == "q" and sprint == false then
    setwalkspeed = 30
    hum.WalkSpeed = setwalkspeed
    sprint = true
   elseif k == "q" and sprint == true then
    setwalkspeed = 11
    hum.WalkSpeed = setwalkspeed
    sprint = false
   end
   if k == "p" then
    commitdie = true
    static:Disconnect()
    chaseS:Disconnect()
    wconn:Disconnect()
    cammax:Disconnect()
    blood:Disconnect()
    theme:Destroy()
   end
   if k == "b" then
    if RakeGui.Enabled == true then
     RakeGui.Enabled = false
    elseif RakeGui.Enabled == false then
     RakeGui.Enabled = true
    end
   end
   if k == "l"then
    if LIGHTING_enabled == true then
     LIGHTING_enabled = false
    elseif LIGHTING_enabled == false then
     LIGHTING_enabled = true
    end
   end
   if k == "x" then
    sprint = false
    setwalkspeed = 40
    hum.WalkSpeed = setwalkspeed
   end
  end
 end)
 
 spawn(function()
  while commitdie == false do
   swait()
   if Player.Character and Player.Character:FindFirstChild("HeadLantern") then
    local HeadL = Player.Character["HeadLantern"]
    HeadL["Lantern"]["InsideFilling"]["Fire"]["PointLight"].Color = Color3.new(r/255,b/255,g/255)
    HeadL["Lantern"]["InsideFilling"]["Fire"]["FireParticle"].Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
    HeadL["Lantern"]["InsideFilling"].Color = Color3.new(r/255,b/255,g/255)
    HeadL.Unequipped:Connect(function()
     if HeadL["Lantern"]:FindFirstChild("Trance") then
      HeadL["Lantern"]:FindFirstChild("Trance").Volume = 0
     end
    end)
    HeadL.Unequipped:Connect(function()
     if HeadL["Lantern"]:FindFirstChild("Trance") then
      HeadL["Lantern"]:FindFirstChild("Trance").Volume = 0
     end
    end)
    if HeadL["Lantern"]:FindFirstChild("Trance") == nil then
     local Trance = Instance.new("Sound",HeadL["Lantern"])
     Trance.Name = "Trance"
     Trance.Volume = 2
     Trance.Looped = true
     Trance.PlaybackSpeed = 0.75
     Trance.SoundId = "rbxassetid://2377141094"
     Trance:Play()
    elseif HeadL["Lantern"]:FindFirstChild("Trance") and HeadL["Lantern"]["InsideFilling"].Transparency > 0.9 then
     HeadL["Lantern"]:FindFirstChild("Trance").Playing = false
    elseif HeadL["Lantern"]:FindFirstChild("Trance") and HeadL["Lantern"]["InsideFilling"].Transparency < 0.1 and HeadL["Lantern"]:FindFirstChild("Trance").Playing == false then
     HeadL["Lantern"]:FindFirstChild("Trance"):Play()
    end
   end
  end
 end)
 
 spawn(function()
  while wait() do
   if RakeGui.Parent == nil then
    commitdie = true
   end
   if commitdie == true then
    RakeGui:Destroy()
    break
   end
   theme.SoundId = Song.Text
   theme.Playing = true
   local errors,msg = pcall(function()
    if LIGHTING_enabled == true then
     game:GetService("ReplicatedStorage").CurrentLightingProperties.Brightness.Value = 2
     game:GetService("ReplicatedStorage").CurrentLightingProperties.FogEnd.Value = 999999
    end
    if lbTELL_enabled == true and game:GetService("Workspace").Debris.SupplyCrates:FindFirstChild("Box") then
     local items = GetBoxItems(game:GetService("Workspace").Debris.SupplyCrates)
     _1.Text = items[1]
     _2.Text = items[2]
     _3.Text = items[3]
     _4.Text = items[4]
     _5.Text = items[5]
     _6.Text = items[6]
    else
     _1.Text = ""
     _2.Text = ""
     _3.Text = ""
     _4.Text = ""
     _5.Text = ""
     _6.Text = ""
    end
    local timer = game:GetService("ReplicatedStorage")["Timer"].Value
    local pLevel = game:GetService("ReplicatedStorage")["PowerValues"]["PowerLevel"].Value
    Power.Text = "Power Level: " .. tostring(pLevel)
    Timer.Text = tostring(timer)
    if sESP_enabled == true then
     local scraps = GetScraps(game:GetService("Workspace").Filter.ScrapSpawns)
     EspScraps(scraps)
    end
    if rESP_enabled == true and workspace:FindFirstChild("Rake") and workspace["Rake"]["HumanoidRootPart"]:FindFirstChild("Isguied") == nil then
     NewLabel(workspace.Rake.HumanoidRootPart,"Rake")
     if workspace["Rake"]:FindFirstChild("AttackHitbox") then
      workspace["Rake"]["AttackHitbox"].Size = Vector3.new(2048,2048,2048)
     end
    elseif workspace:FindFirstChild("Rake") and workspace:FindFirstChild("Rake"):FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("Rake"):FindFirstChildOfClass("Humanoid") then
     Health.Text = "Health: " .. tostring(workspace:FindFirstChild("Rake"):FindFirstChildOfClass("Humanoid").Health)
     if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
      local magn = (Player.Character["HumanoidRootPart"].Position - workspace["Rake"]["HumanoidRootPart"].Position).Magnitude
      magn = math.floor(magn)
      if magn < 100 and hasplayed == false then
       incoming:Play()
       hasplayed = true
       Notif.Visible = true
       Notif.BackgroundTransparency = 0
       for i = 0,1,0.05 do
        wait(0.05)
        Notif.BackgroundTransparency = i
        if hasplayed == false then
         break
        end
       end
       if Notif.BackgroundTransparency >= 0.9 then
        Notif.Visible = false
       end
      elseif magn > 100 then
       incoming:Stop()
       hasplayed = false
       Notif.Visible = false
      end
      Distance.Text = "Distance: " .. tostring(magn)
     end --Text = "Timer " .. tostring(game:GetService("ReplicatedStorage").Timer.Value)
    end
    
    if fESP_enabled == true and workspace:FindFirstChild("FlareGunPickUp") and workspace:FindFirstChild("FlareGunPickUp"):FindFirstChild("Isguied") == nil then
     NewLabel(workspace:FindFirstChild("FlareGunPickUp"),"Flare Gun")
    end
    if lbESP_enabled == true and workspace:FindFirstChild("Debris") and workspace.Debris.SupplyCrates:FindFirstChild("Box") and workspace.Debris.SupplyCrates:FindFirstChild("Box").HitBox:FindFirstChild("Isguied") == nil then
     NewLabel(workspace.Debris.SupplyCrates.Box.HitBox,"Lootbox")
    end
   end)
   if errors ~= true then
    print(tostring(errors) .. " " .. msg)
   end
  end
 end)
 game.StarterGui:SetCore("SendNotification", {
  Title = "Loaded"; 
  Text = ": Made by xXmlghackerXx"; 
  Icon = ""; 
  Duration = 5; 
 })
end)
print(errormsg)