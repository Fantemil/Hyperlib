--Original by PRINCEZPhi
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pick a side", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Combat")

Section:NewButton("Hitbox", "Normal Hitbox but can turn off", function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "LOADED", Text = "E = ENABLED : Q = DISABLE."})
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Settings

bind = ""
bind2 = "e"
bind3 = "q"

-- Script

mouse.KeyDown:connect(function(key)
if key == bind then
player.Character.HumanoidRootPart.CFrame = CFrame.new(1254.09656, 137.906067, -172.128204)
end
end)

mouse.KeyDown:connect(function(key2)
if key2 == bind2 then
_G.HeadSize = 17
_G.Disabled = true


if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright red")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end
end)

mouse.KeyDown:connect(function(key3)
if key3 == bind3 then
_G.HeadSize = 17
_G.Disabled = true


for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
v.Character.HumanoidRootPart.Transparency = 1
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
v.Character.HumanoidRootPart.Material = "Plastic"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

Section:NewButton("Hitbox (CANNOT TURN OFF)", "Normal Hitbox", function()
_G.HeadSize = 20
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)



local Section = Tab:NewSection("Autofarm")


Section:NewButton("Autofarm V1", "Autofarm", function()
ScreenGui = Instance.new("ScreenGui")
main = Instance.new("Frame")
TextLabel = Instance.new("TextLabel")
on = Instance.new("TextButton")
off = Instance.new("TextButton")
 
ScreenGui.Parent = game.CoreGui
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BorderColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.779569924, 0, 0.705601931, 0)
main.Size = UDim2.new(0, 219, 0, 163)
main.Active = true
main.Draggable = true
 
TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Size = UDim2.new(0, 219, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.FontSize = Enum.FontSize.Size24
TextLabel.Text = "AUTOFARM V1"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 24
TextLabel.TextWrapped = true
 
on.Name = "ON"
on.Parent = main
on.BackgroundColor3 = Color3.new(0, 0, 0)
on.BorderColor3 = Color3.new(0, 0, 0)
on.Position = UDim2.new(0.219178081, 0, 0.361963183, 0)
on.Size = UDim2.new(0, 122, 0, 44)
on.Font = Enum.Font.SourceSansBold
on.FontSize = Enum.FontSize.Size24
on.Text = "ON"
on.TextColor3 = Color3.new(1, 1, 1)
on.TextSize = 20
on.TextStrokeTransparency = 0
on.MouseButton1Down:connect(function()
_G.toggled = true
while _G.toggled == true do
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.1867104, 4, -10.0159426)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.8459854, 4, -7.64399719)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.0132484, 4, 12.9164495)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.2372742, 10.0727692, 22.5755386)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22.6320515, 15.2083225, -22.8036976)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.5018234, 4, 12.9243202)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.9209137, 4, 23.7264462)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.7601433, 9.02024555, 24.8675385)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54, 4, 3)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.7298431, 4, 14.7902403)
wait(0.25)
end
end)
 
off.Name = "ON"
off.Parent = main
off.BackgroundColor3 = Color3.new(0, 0, 0)
off.BorderColor3 = Color3.new(0, 0, 0)
off.Position = UDim2.new(0.219178095, 0, 0.674846649, 0)
off.Size = UDim2.new(0, 122, 0, 44)
off.Font = Enum.Font.SourceSansBold
off.FontSize = Enum.FontSize.Size24
off.Text = "OFF"
off.TextColor3 = Color3.new(1, 1, 1)
off.TextSize = 20
off.TextStrokeTransparency = 0
off.MouseButton1Down:connect(function()
_G.toggled = false
end)
end)

local Section = Tab:NewSection("Player")

Section:NewButton("Nojumpcooldown (click about 10 times)", "jumpfreely", function()
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait(0.1)

end)

Section:NewButton("Sprint", "speedupcuzurslow", function()
while true do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30 --Walkspeed of your choice
wait()
end
end)

local Section = Tab:NewSection("Hubs")

Section:NewButton("Sebs darkside", "Sebs Darkside", function()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or game:GetService("Players"):GetPlayerFromCharacter(Players.LocalPlayer.Character)
local Character = LocalPlayer.Character or LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Parent
 
local MT = getrawmetatable(game)
local OldIndex = MT. __index
local OldNamecall = MT.__namecall
 
setreadonly(MT, false)
MT.__index = newcclosure(function(H, HP, T, D) --Bypasses some anti FTI checks. (uBlubble, Xelvidant, etc.)
 if not checkcaller() and getnamecallmethod() then
  if tostring(H) == "Humanoid" and tostring(HP) == "Health" then
   return 0
  end
  if tostring(T) == "Position" and tostring(D) == "Magnitude" then
   return 0
  end
 end
 return OldIndex(H, HP)
end)
 
local StarterGui = game:GetService("StarterGui")
local DevConsoleHook --Bypasses all dev console disablers.
DevConsoleHook = hookfunc(StarterGui.SetCore, newcclosure(function(Self, ...)
 local Args = table.pack(...)
 if Self == StarterGui then
  if Args[1] == "DevConsoleVisible" then
   Args[1] = nil
  end
 end
end))
 
--Bypasses script execution.
for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
 v:Disable()
end
for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
 v:Disable()
end
 
game:GetService("ScriptContext"):SetTimeout(0.1)
setreadonly(MT, true) 
 
local UNIATTEMPT = true
local VisualizerTransparencyAmount = 0.4
local UIS = game:GetService("UserInputService")
 
-----------------------------
--bypass 2
local customtheme = "Dark"
local reachsize = 5
local dmgEnabled = true
local multiplier = 0
local visualizerEnabled
local reachType = "Sphere"
 
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Material.Load({
 Title = "Sebs Darkside",
 Style = 0,
 SizeX = 471,
 SizeY = 269,
 Theme = customtheme
})
--page bypass stuffj
 
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
 if input.KeyCode == Enum.KeyCode.X then
  game:GetService("CoreGui")["Sebs Darkside"].Enabled = not game:GetService("CoreGui")["Sebs Darkside"].Enabled
 end 
end)
 
--new page which is gonna be circle reach & stuffghj
 
local Page2 = UI.New({
 Title = "Reach/Circle"
})
local Page3 = UI.New({
 Title = "Auto Clicker"
})
local Page4 = UI.New({
 Title = "Themes"
})
 
local Page5 = UI.New({
 Title = "Visuaizer"
})
 
 
 
local ThemePage = Page4.Dropdown({
 Text = "Themes",
 Callback = function(value)
  customtheme = value
  Text = customtheme
 end,
 Options = {"Dark", "Light", "Mocha", "Aqua", "Jester"}
})
local ac_on
local ac_off
local AcOnText = Page3.TextField({
 Text = "Keybind for autoclicker on",
 Callback = function(value)
  print(ac_on)
  ac_on = value
 end,
})
local AcOffText = Page3.TextField({
 Text = "Keybind for autoclicker off ",
 Callback = function(value)
  print(ac_off)
  ac_off = value
 end,
})
 
local Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.KeyDown:Connect(function(key)
 if key == ac_on then
  _G.AutoClicker = true
  while _G.AutoClicker do
   wait()
   pcall(function()
    local Sword = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Tool'
    Sword:Activate()
   end)
  end
 end
end)
local Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.KeyDown:Connect(function(key)
 if key == ac_off then
  _G.AutoClicker = false
  while _G.AutoClicker do
   wait()
   pcall(function()
    local Sword = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Tool'
    Sword:Activate()
   end)
  end
 end
end)
 
local CircleSize = Page2.Slider({
 Text = "Circle Size",
 Callback = function(value)
  reachsize = value
  reachsize = tonumber(value)
 end,
 Min = 0,
 Max = 50,
 Def = 4
})
local sparemultiplier = 1
local dmgEnabled = Page2.Toggle({
 Text = "Enable DMG",
 Callback = function(value)
  dmgEnabled = value
 end,
})
local dmgSlider = Page2.Slider({
 Text = "DMG Amount",
 Callback = function(value)
  multiplier = value
  multiplier = tonumber(value)
  sparemultiplier = value
  sparemultiplier = tonumber(value)
 end,
 Min = 0.4,
 Max = 20,
 Def = 1,
 
})
local ShapeDropdown = Page5.Dropdown({
 Text = "Visualizer Shape",
 Callback = function(value)
  reachType = value
 end,
 Options = {"Sphere", "Block"}
})
local ve = Page5.Toggle({
 Text = "Visualizer",
 Callback = function(value)
  visualizerEnabled = value
 end,
})
 
 
local visualizer = Instance.new("Part")
 
visualizer.Color = Color3.new(1, 0.968627, 0)
visualizer.Transparency = VisualizerTransparencyAmount
visualizer.Anchored = true
visualizer.CanCollide = false
visualizer.CastShadow = false
visualizer.Size = Vector3.new(0.5,0.5,0.5)
visualizer.BottomSurface = Enum.SurfaceType.Glue
visualizer.TopSurface = Enum.SurfaceType.Glue
local TweenService = game:GetService("TweenService")
local part = visualizer
local TweeningInformation = TweenInfo.new(
 1,
 Enum.EasingStyle.Quad,
 Enum.EasingDirection.Out,
 753475938457843579348573,
 true,
 0
)
 
local PartProperties = {
 Color = Color3.fromRGB(255,0,0)
}
 
local Tween = TweenService:Create(part,TweeningInformation,PartProperties)
Tween:Play()
local Red = Color3.new(1, 0, 0.0156863)
local Blue = Color3.new(0, 0.180392, 1)
local Black = Color3.new(0, 0, 0)
local White = Color3.new(1, 1, 1)
local config = "Reset"
local colorrvalue = 0
local colorgvalue = 0
local colorbvalue = 0
 
 
 
local VConfigs = Page5.Dropdown({
 Text = "Configs For Visualizer",
 Callback = function(value)
  config = value
 end,
 Options = {"Sebs Config", "CWare Config", "Blizzy Config", "Reset"}
})
--fti script
local plr = game.Players.LocalPlayer
local function onHit(hit,handle)
 local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
 if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
  if dmgEnabled then
 
   for _,v in pairs(hit.Parent:GetChildren()) do
    if v:IsA("BasePart") then
     for i = 1, multiplier do
      firetouchinterest(v,handle,0)
      firetouchinterest(v,handle,1)
      firetouchinterest(v,handle,0)
     end
    end
   end
  else
   firetouchinterest(hit,handle,0)
   firetouchinterest(hit,handle,1)
  end
 end
end
 
local function getWhiteList()
 local wl = {}
 for _,v in pairs(game.Players:GetPlayers()) do
  if v ~= plr then
   local char = v.Character
   if char then
    for _,q in pairs(char:GetChildren()) do
     if q:IsA("BasePart") then
      table.insert(wl,q)
     end
    end
   end
  end
 end
 return wl
end
 
game:GetService("RunService").RenderStepped:connect(function()
 local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
 if not s then visualizer.Parent = nil end
 if s then
  local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
  if handle then
   if visualizerEnabled then
    visualizer.Parent = workspace
   else
    visualizer.Parent = nil
   end
   local reach = tonumber(reachsize)
 
   if reach then
    if reachType == "Sphere" then
     if config == "CWare Config" then
      visualizer.Shape = Enum.PartType.Ball
      visualizer.Material = Enum.Material.Plastic
      visualizer.Color = Color3.new(1, 0, 0)
      visualizer.Transparency = 0.005459344392
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Reset" then
      visualizer.Shape = Enum.PartType.Ball
      visualizer.Material = Enum.Material.ForceField
      visualizer.Color = Color3.new(1, 0.933333, 0)
      visualizer.Transparency = VisualizerTransparencyAmount
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Blizzy Config" then
      visualizer.Shape = Enum.PartType.Ball
      visualizer.Material = Enum.Material.SmoothPlastic
      visualizer.Color = Color3.new(0.00784314, 0.454902, 1)
      visualizer.Transparency = 0.4
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Sebs Config" then
      visualizer.Shape = Enum.PartType.Ball
      visualizer.Material = Enum.Material.Asphalt
      visualizer.Color = Color3.new(0.105882, 0.745098, 0.0313725)
      visualizer.Transparency = 0.8
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     end
     for _,v in pairs(game.Players:GetPlayers()) do
      local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
      if hrp and handle then
       local mag = (hrp.Position-handle.Position).magnitude
       if mag <= reach then
        onHit(hrp,handle)
       end
      end
     end
    elseif reachType == "Block" then
     local origin = (handle.CFrame*CFrame.new(0,0,-2)).p
     local ray = Ray.new(origin,handle.CFrame.lookVector*-reach)
     local p,pos = workspace:FindPartOnRayWithWhitelist(ray,getWhiteList())
     visualizer.Shape = Enum.PartType.Block
     visualizer.Size = Vector3.new(reach,reach,reach)
     visualizer.CFrame = handle.CFrame
     visualizer.CastShadow = false
     visualizer.Name = math.random()
     visualizer.Color = Color3.new(colorrvalue,colorgvalue,colorbvalue)
     visualizer.Transparency = VisualizerTransparencyAmount
     if config == "CWare Config" then
      visualizer.Shape = Enum.PartType.Block
      visualizer.Material = Enum.Material.Plastic
      visualizer.Color = Color3.new(1, 0, 0)
      visualizer.Transparency = 0
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Reset" then
      visualizer.Shape = Enum.PartType.Block
      visualizer.Material = Enum.Material.ForceField
      visualizer.Color = Color3.new(0.984314, 1, 0)
      visualizer.Transparency = VisualizerTransparencyAmount
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Blizzy Config" then
      visualizer.Shape = Enum.PartType.Block
      visualizer.Material = Enum.Material.SmoothPlastic
      visualizer.Color = Color3.new(0.00784314, 0.454902, 1)
      visualizer.Transparency = 0.4
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     elseif config == "Sebs Config" then
      visualizer.Shape = Enum.PartType.Block
      visualizer.Material = Enum.Material.Asphalt
      visualizer.Color = Color3.new(0.105882, 0.745098, 0.0313725)
      visualizer.Transparency = 0.8
      visualizer.Size = Vector3.new(reach,reach,reach)
      visualizer.CFrame = handle.CFrame
      visualizer.CastShadow = false
      visualizer.Name = math.random()
     end
     if p then
      onHit(p,handle)
     else
      for _,v in pairs(handle:GetTouchingParts()) do
       onHit(v,handle)
      end
     end
 
 
    end
   end
  end
 end
end)
end)

Section:NewButton("Nocooldown", "Nocooldown", function()
while true do
loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Da-Hood-Scripts/main/No-Jump-Cooldown.lua"))();
wait()
end
end)

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("SUB TO GAMING HARMONY")
local Section = Tab:NewSection("CREDITS TO UNKNOWN")

setclipboard("https://www.youtube.com/channel/UCGJ0iLn_BCrO1ittWYjxHgA/featured")