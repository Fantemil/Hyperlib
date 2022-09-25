local espcolor = Color3.fromRGB(140, 69, 102)
local wallhack_esp_transparency = .4
local gui_hide_button = {Enum.KeyCode.LeftControl, "h"}
local plrs = game:GetService("Players")
local lplr = game:GetService("Players").LocalPlayer
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
aimbothider = false; aimbothiderspeed = .5
local Aim_Assist = false ; Aim_Assist_Key = {Enum.KeyCode.LeftControl, "z"}
local espupdatetime = 5; autoesp = false
local abs = math.abs
local mouselock = false
local canaimat = true
local lockaim = true; local lockangle = 5
local ver = "2"
local cam = game.Workspace.CurrentCamera
local BetterDeathCount = true


local mouse = lplr:GetMouse()
local switch = false
local key = "k"
local aimatpart = nil

local CCAimbot = Instance.new("ScreenGui")
local AimbotFrame = Instance.new("Frame")
local MainAimbotFrame = Instance.new("Frame")
local N2 = Instance.new("Frame")
local CheatType = Instance.new("TextLabel")
local N2_2 = Instance.new("Frame")
local CheatType_2 = Instance.new("TextLabel")
local N1 = Instance.new("Frame")
local CheatType_3 = Instance.new("TextLabel")
local C5 = Instance.new("Frame")
local Letters = Instance.new("TextLabel")
local CheatType_4 = Instance.new("TextLabel")
local C4 = Instance.new("Frame")
local Letters_2 = Instance.new("TextLabel")
local CheatType_5 = Instance.new("TextLabel")
local C3 = Instance.new("Frame")
local Letters_3 = Instance.new("TextLabel")
local CheatType_6 = Instance.new("TextLabel")
local C2 = Instance.new("Frame")
local Letters_4 = Instance.new("TextLabel")
local CheatType_7 = Instance.new("TextLabel")
local C1 = Instance.new("Frame")
local Letters_5 = Instance.new("TextLabel")
local CheatType_8 = Instance.new("TextLabel")
local TabFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Hide = Instance.new("TextButton")

--Properties:

CCAimbot.Name = "CCAimbot"
CCAimbot.Parent = game.CoreGui

AimbotFrame.Name = "AimbotFrame"
AimbotFrame.Parent = CCAimbot
AimbotFrame.AnchorPoint = Vector2.new(0.5, 0.5)
AimbotFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimbotFrame.BackgroundTransparency = 1.000
AimbotFrame.BorderSizePixel = 0
AimbotFrame.ClipsDescendants = true
AimbotFrame.Position = UDim2.new(0.5, 0, 0.479495257, 0)
AimbotFrame.Size = UDim2.new(0, 195, 0, 259)

MainAimbotFrame.Name = "MainAimbotFrame"
MainAimbotFrame.Parent = AimbotFrame
MainAimbotFrame.BackgroundColor3 = Color3.fromRGB(23, 24, 28)
MainAimbotFrame.BorderSizePixel = 0
MainAimbotFrame.ClipsDescendants = true
MainAimbotFrame.Position = UDim2.new(-0.00256413221, 0, 0.0464286208, 0)
MainAimbotFrame.Size = UDim2.new(0, 195, 0, 245)

N2.Name = "N2"
N2.Parent = MainAimbotFrame
N2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
N2.BackgroundTransparency = 1.000
N2.BorderSizePixel = 0
N2.Position = UDim2.new(0, 0, 0.562231719, 0)
N2.Size = UDim2.new(1, 0, 0.100000001, 0)

CheatType.Name = "CheatType"
CheatType.Parent = N2
CheatType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType.BackgroundTransparency = 1.000
CheatType.BorderSizePixel = 0
CheatType.Position = UDim2.new(0, 0, 2.03163123, 0)
CheatType.Size = UDim2.new(1, 0, 1.05753362, 0)
CheatType.Font = Enum.Font.GothamBlack
CheatType.Text = "ESP Loop : False"
CheatType.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType.TextSize = 15.000
CheatType.TextWrapped = true

N2_2.Name = "N2"
N2_2.Parent = MainAimbotFrame
N2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
N2_2.BackgroundTransparency = 1.000
N2_2.BorderSizePixel = 0
N2_2.Position = UDim2.new(0, 0, 0.935622334, 0)
N2_2.Size = UDim2.new(1, 0, 0.0613734461, 0)

CheatType_2.Name = "CheatType"
CheatType_2.Parent = N2_2
CheatType_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_2.BackgroundTransparency = 1.000
CheatType_2.BorderSizePixel = 0
CheatType_2.Size = UDim2.new(1, 0, 1, 0)
CheatType_2.Font = Enum.Font.Gotham
CheatType_2.Text = "Letters Corrospond with Keybinds"
CheatType_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_2.TextScaled = true
CheatType_2.TextSize = 15.000
CheatType_2.TextWrapped = true

N1.Name = "N1"
N1.Parent = MainAimbotFrame
N1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
N1.BackgroundTransparency = 1.000
N1.BorderSizePixel = 0
N1.Position = UDim2.new(0, 0, 0.562231719, 0)
N1.Size = UDim2.new(1, 0, 0.100000001, 0)

CheatType_3.Name = "CheatType"
CheatType_3.Parent = N1
CheatType_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_3.BackgroundTransparency = 1.000
CheatType_3.BorderSizePixel = 0
CheatType_3.Position = UDim2.new(0, 0, 0.987714529, 0)
CheatType_3.Size = UDim2.new(1, 0, 1.05753362, 0)
CheatType_3.Font = Enum.Font.GothamBlack
CheatType_3.Text = "Team Based : True"
CheatType_3.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_3.TextSize = 15.000
CheatType_3.TextWrapped = true

C5.Name = "C5"
C5.Parent = MainAimbotFrame
C5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C5.BackgroundTransparency = 1.000
C5.BorderSizePixel = 0
C5.Position = UDim2.new(-0.00512820529, 0, 0.459227443, 0)
C5.Size = UDim2.new(1, 0, 0.100000001, 0)

Letters.Name = "Letters"
Letters.Parent = C5
Letters.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Letters.BackgroundTransparency = 1.000
Letters.BorderSizePixel = 0
Letters.Position = UDim2.new(0.730999887, 0, 0.973926187, 0)
Letters.Size = UDim2.new(0.263999999, 0, 1.05753362, 0)
Letters.Font = Enum.Font.GothamBold
Letters.Text = "O"
Letters.TextColor3 = Color3.fromRGB(255, 255, 255)
Letters.TextSize = 15.000
Letters.TextWrapped = true

CheatType_4.Name = "CheatType"
CheatType_4.Parent = C5
CheatType_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_4.BackgroundTransparency = 1.000
CheatType_4.BorderSizePixel = 0
CheatType_4.Position = UDim2.new(0.0307692308, 0, 0.97837925, 0)
CheatType_4.Size = UDim2.new(0.699999988, 0, 1.05753362, 0)
CheatType_4.Font = Enum.Font.GothamBold
CheatType_4.Text = "Team Based"
CheatType_4.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_4.TextSize = 15.000
CheatType_4.TextWrapped = true
CheatType_4.TextXAlignment = Enum.TextXAlignment.Left

C4.Name = "C4"
C4.Parent = MainAimbotFrame
C4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C4.BackgroundTransparency = 1.000
C4.BorderSizePixel = 0
C4.Position = UDim2.new(0, 0, 0.356223166, 0)
C4.Size = UDim2.new(1, 0, 0.100000001, 0)

Letters_2.Name = "Letters"
Letters_2.Parent = C4
Letters_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Letters_2.BackgroundTransparency = 1.000
Letters_2.BorderSizePixel = 0
Letters_2.Position = UDim2.new(0.730999887, 0, 0.914663553, 0)
Letters_2.Size = UDim2.new(0.263999999, 0, 1.05753362, 0)
Letters_2.Font = Enum.Font.GothamBold
Letters_2.Text = "Y"
Letters_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Letters_2.TextSize = 15.000
Letters_2.TextWrapped = true

CheatType_5.Name = "CheatType"
CheatType_5.Parent = C4
CheatType_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_5.BackgroundTransparency = 1.000
CheatType_5.BorderSizePixel = 0
CheatType_5.Position = UDim2.new(0.0307692308, 0, 0.919116616, 0)
CheatType_5.Size = UDim2.new(0.699999988, 0, 1.05753362, 0)
CheatType_5.Font = Enum.Font.GothamBold
CheatType_5.Text = "Aimbot Hider"
CheatType_5.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_5.TextSize = 15.000
CheatType_5.TextWrapped = true
CheatType_5.TextXAlignment = Enum.TextXAlignment.Left

C3.Name = "C3"
C3.Parent = MainAimbotFrame
C3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C3.BackgroundTransparency = 1.000
C3.BorderSizePixel = 0
C3.Position = UDim2.new(0, 0, 0.253218889, 0)
C3.Size = UDim2.new(1, 0, 0.100000001, 0)

Letters_3.Name = "Letters"
Letters_3.Parent = C3
Letters_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Letters_3.BackgroundTransparency = 1.000
Letters_3.BorderSizePixel = 0
Letters_3.Position = UDim2.new(0.730999887, 0, 0.855401516, 0)
Letters_3.Size = UDim2.new(0.263999999, 0, 1.05753362, 0)
Letters_3.Font = Enum.Font.GothamBold
Letters_3.Text = "L"
Letters_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Letters_3.TextSize = 15.000
Letters_3.TextWrapped = true

CheatType_6.Name = "CheatType"
CheatType_6.Parent = C3
CheatType_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_6.BackgroundTransparency = 1.000
CheatType_6.BorderSizePixel = 0
CheatType_6.Position = UDim2.new(0.0307692308, 0, 0.859854579, 0)
CheatType_6.Size = UDim2.new(0.699999988, 0, 1.05753362, 0)
CheatType_6.Font = Enum.Font.GothamBold
CheatType_6.Text = "ESP Loop"
CheatType_6.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_6.TextSize = 15.000
CheatType_6.TextWrapped = true
CheatType_6.TextXAlignment = Enum.TextXAlignment.Left

C2.Name = "C2"
C2.Parent = MainAimbotFrame
C2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C2.BackgroundTransparency = 1.000
C2.BorderSizePixel = 0
C2.Position = UDim2.new(0, 0, 0.150214598, 0)
C2.Size = UDim2.new(1, 0, 0.100000001, 0)

Letters_4.Name = "Letters"
Letters_4.Parent = C2
Letters_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Letters_4.BackgroundTransparency = 1.000
Letters_4.BorderSizePixel = 0
Letters_4.Position = UDim2.new(0.730999887, 0, 0.796139479, 0)
Letters_4.Size = UDim2.new(0.263999999, 0, 1.05753362, 0)
Letters_4.Font = Enum.Font.GothamBold
Letters_4.Text = "T"
Letters_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Letters_4.TextSize = 15.000
Letters_4.TextWrapped = true

CheatType_7.Name = "CheatType"
CheatType_7.Parent = C2
CheatType_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_7.BackgroundTransparency = 1.000
CheatType_7.BorderSizePixel = 0
CheatType_7.Position = UDim2.new(0.0307692308, 0, 0.800592542, 0)
CheatType_7.Size = UDim2.new(0.699999988, 0, 1.05753362, 0)
CheatType_7.Font = Enum.Font.GothamBold
CheatType_7.Text = "ESP"
CheatType_7.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_7.TextSize = 15.000
CheatType_7.TextWrapped = true
CheatType_7.TextXAlignment = Enum.TextXAlignment.Left

C1.Name = "C1"
C1.Parent = MainAimbotFrame
C1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C1.BackgroundTransparency = 1.000
C1.BorderSizePixel = 0
C1.Position = UDim2.new(0, 0, 0.0472103022, 0)
C1.Size = UDim2.new(1, 0, 0.100000001, 0)

Letters_5.Name = "Letters"
Letters_5.Parent = C1
Letters_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Letters_5.BackgroundTransparency = 1.000
Letters_5.BorderSizePixel = 0
Letters_5.Position = UDim2.new(0.730999887, 0, 0.736877441, 0)
Letters_5.Size = UDim2.new(0.263999999, 0, 1.05753362, 0)
Letters_5.Font = Enum.Font.GothamBold
Letters_5.Text = "E"
Letters_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Letters_5.TextSize = 15.000
Letters_5.TextWrapped = true

CheatType_8.Name = "CheatType"
CheatType_8.Parent = C1
CheatType_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatType_8.BackgroundTransparency = 1.000
CheatType_8.BorderSizePixel = 0
CheatType_8.Position = UDim2.new(0.0307692308, 0, 0.741330564, 0)
CheatType_8.Size = UDim2.new(0.699999988, 0, 1.05753362, 0)
CheatType_8.Font = Enum.Font.GothamBold
CheatType_8.Text = "Lock-in Person"
CheatType_8.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatType_8.TextSize = 15.000
CheatType_8.TextWrapped = true
CheatType_8.TextXAlignment = Enum.TextXAlignment.Left

TabFrame.Name = "TabFrame"
TabFrame.Parent = AimbotFrame
TabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TabFrame.BackgroundColor3 = Color3.fromRGB(0, 237, 206)
TabFrame.BorderSizePixel = 0
TabFrame.ClipsDescendants = true
TabFrame.Position = UDim2.new(0.497435898, 0, 0.0926640928, 0)
TabFrame.Size = UDim2.new(1, 0, 0.100000001, 0)

Title.Name = "Title"
Title.Parent = TabFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0307692308, 0, 0, 0)
Title.Size = UDim2.new(0.41538462, 0, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "CC AIMBOT"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Exit.Name = "Exit"
Exit.Parent = TabFrame
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.899999976, 0, 0, 0)
Exit.Size = UDim2.new(0.100000001, 0, 1, 0)
Exit.Font = Enum.Font.GothamBold
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Hide.Name = "Hide"
Hide.Parent = TabFrame
Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hide.BackgroundTransparency = 1.000
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(0.79743588, 0, 0, 0)
Hide.Size = UDim2.new(0.100000001, 0, 1, 0)
Hide.Font = Enum.Font.GothamBold
Hide.Text = "-"
Hide.TextColor3 = Color3.fromRGB(255, 255, 255)
Hide.TextScaled = true
Hide.TextSize = 14.000
Hide.TextWrapped = true

-- Scripts:

local function JLYIY_fake_script() -- Exit.LocalScript 
 local script = Instance.new('LocalScript', Exit)

 local b = script.Parent
 
 b.MouseButton1Down:connect(function()
  b.Parent.Parent.AnchorPoint = Vector2.new(0.5, 0.5)
  b.Parent.Parent:TweenSize(UDim2.new(0, 0, 0, 0), "In", 2, 0.5)
 end)
end
coroutine.wrap(JLYIY_fake_script)()
local function CXSQXNO_fake_script() -- Hide.LocalScript 
 local script = Instance.new('LocalScript', Hide)

 local b = script.Parent
 local closed = false
 
 b.MouseButton1Down:connect(function()
  if closed == false then
   b.Parent.Parent.MainAimbotFrame:TweenSize(UDim2.new(0, 195, 0, 25), "Out", 1.5, 0.5)
   closed = true
   
  elseif closed == true then
   b.Parent.Parent.MainAimbotFrame:TweenSize(UDim2.new(0, 195, 0, 245), "Out", 1.5, 0.5)
   closed = false
  end
  
 end)
end
coroutine.wrap(CXSQXNO_fake_script)()

f = {}
local espforlder
local partconverter = Instance.new("Part")

f.addesp = function()
pcall(function()
--print("ESP ran")
if espforlder then
espforlder:Destroy()
espforlder = Instance.new("Folder")
espforlder.Parent = game.Workspace.CurrentCamera
else
espforlder = Instance.new("Folder")
espforlder.Parent = game.Workspace.CurrentCamera
end
for i, v in pairs(espforlder:GetChildren()) do
v:Destroy()
end
for _, plr in pairs(plrs:GetChildren()) do
if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
if TeamBased == true then
if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
local e = espforlder:FindFirstChild(plr.Name)
if not e then
local fold = Instance.new("Folder", espforlder)
fold.Name = plr.Name

--partconverter.BrickColor = plr.Team.Color
--local teamc = partconverter.Color
for i, p in pairs(plr.Character:GetChildren()) do
if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
local urmom = Instance.new("BoxHandleAdornment")
urmom.ZIndex = 10
urmom.AlwaysOnTop = true
urmom.Color3 = espcolor
urmom.Size = p.Size
urmom.Adornee = p
urmom.Name = tick().." Ur mom has big gay"
urmom.Transparency = wallhack_esp_transparency
urmom.Parent = fold

end
end
plr.Character.Humanoid.Died:Connect(function()
fold:Destroy()
end)
end
end
else
local e = espforlder:FindFirstChild(plr.Name)
if not e then
local fold = Instance.new("Folder", espforlder)
fold.Name = plr.Name

--partconverter.BrickColor = plr.Team.Color
--local teamc = Move.BackgroundColor3
for i, p in pairs(plr.Character:GetChildren()) do
if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
local urmom = Instance.new("BoxHandleAdornment")
urmom.ZIndex = 10
urmom.AlwaysOnTop = true
urmom.Color3 = espcolor
urmom.Size = p.Size
urmom.Adornee = p
urmom.Name = tick().." Ur mom has big gay"
urmom.Transparency = wallhack_esp_transparency
urmom.Parent = fold
end
end
plr.Character.Humanoid.Died:Connect(function()
fold:Destroy()
end)
end
end


end
end
end)
end
local uis = game:GetService("UserInputService")
local bringall = false
local hided2 = false
mouse.KeyDown:Connect(function(a)
if a == "t" then
--print("worked1")
f.addesp()
elseif a == gui_hide_button[2] and uis:IsKeyDown(gui_hide_button[1]) then
if hided2 == false then
hided2 = true
autoesp =false
if espforlder then
espforlder:Destroy()
end
CCAimbot.Enabled = false
else
CCAimbot.Enabled = true
hided2 = false
end
elseif a == "u" then
if mouselock == false then
mouselock = true
else
mouselock = false
end
elseif a == "y" then
if aimbothider == false then
aimbothider = true
if aimbothider == true then
return
end
end
elseif a == "l" then
if autoesp == false then
autoesp = true
else
autoesp = false
end
elseif a == Aim_Assist_Key[2] and uis:IsKeyDown(Aim_Assist_Key[1]) then
if Aim_Assist == true then
Aim_Assist = false
--print("disabled")
else
Aim_Assist = true
end
end
if a == "j" then
if mouse.Target then
mouse.Target:Destroy()
end
end
if a == key then
if switch == false then
switch = true
else
switch = false
if aimatpart ~= nil then
aimatpart = nil
end
end
elseif a == teambasedswitch then
if TeamBased == true then
TeamBased = false
CheatType_3.Text = "Team Based : "..tostring(TeamBased)
else
TeamBased = true
CheatType_3.Text = "Team Based : "..tostring(TeamBased)
end
elseif a == aimkey then
if not aimatpart then
local maxangle = math.rad(20)
for i, plr in pairs(plrs:GetChildren()) do
if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
if TeamBased == true then
if plr.Team.Name ~= lplr.Team.Name then
local an = checkfov(plr.Character.Head)
if an < maxangle then
maxangle = an
aimatpart = plr.Character.Head
end
end
else
local an = checkfov(plr.Character.Head)
if an < maxangle then
maxangle = an
aimatpart = plr.Character.Head
end
--print(plr)
end
local old = aimatpart
plr.Character.Humanoid.Died:Connect(function()
--print("died")
if aimatpart and aimatpart == old then
aimatpart = nil
end
end)

end
end
else
aimatpart = nil
canaimat = false
delay(1.1, function()
canaimat = true
end)
end
end
end)

function getfovxyz (p0, p1, deg)
local x1, y1, z1 = p0:ToOrientation()
local cf = CFrame.new(p0.p, p1.p)
local x2, y2, z2 = cf:ToOrientation()
local d = math.deg
if deg then
return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
else
return Vector3.new((x1-x2), (y1-y2), (z1-z2))
end
end


function aimat(part)
if part then
if aimbothider == true or Aim_Assist == true then
cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.p, part.CFrame.p), aimbothiderspeed)
else

cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
end
end
end
function checkfov (part)
local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
local angle = math.abs(fov.X) + math.abs(fov.Y)
return angle
end
pcall(function()
delay(0, function()
while wait(.4) do
if Aim_Assist and not aimatpart and canaimat and lplr.Character and lplr.Character.Humanoid and lplr.Character.Humanoid.Health > 0 then
for i, plr in pairs(plrs:GetChildren()) do


local minangle = math.rad(5.5)
local lastpart = nil
local function gg(plr)
pcall(function()
if plr.Name ~= lplr.Name and plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Character.Head then
local raycasted = false
local cf1 = CFrame.new(cam.CFrame.p, plr.Character.Head.CFrame.p) * CFrame.new(0, 0, -4)
local r1 = Ray.new(cf1.p, cf1.LookVector * 9000)
local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
local dist = (plr.Character.Head.CFrame.p- pos).magnitude
if dist < 4 then
raycasted = true
end
if raycasted == true then
local an1 = getfovxyz(cam.CFrame, plr.Character.Head.CFrame)
local an = abs(an1.X) + abs(an1.Y)
if an < minangle then
minangle = an
lastpart = plr.Character.Head
end
end
end
end)
end
if TeamBased then
if plr.Team.Name ~= lplr.Team.Name then
gg(plr)
end
else
gg(plr)
end
--print(math.deg(minangle))
if lastpart then
aimatpart = lastpart
aimatpart.Parent.Humanoid.Died:Connect(function()
if aimatpart == lastpart then
aimatpart = nil
end
end)

end
end
end
end
end)
end)
local oldheadpos
local lastaimapart
game:GetService("RunService").RenderStepped:Connect(function()
CheatType.Text = "Esp loop : "..tostring(autoesp)
if aimatpart and lplr.Character and lplr.Character.Head then
if BetterDeathCount and lastaimapart and lastaimapart == aimatpart then
local dist = (oldheadpos - aimatpart.CFrame.p).magnitude
if dist > 40 then
aimatpart = nil
end
end
lastaimapart = aimatpart
oldheadpos = lastaimapart.CFrame.p
do
if aimatpart.Parent == plrs.LocalPlayer.Character then
aimatpart = nil
end
aimat(aimatpart)
pcall(function()
if Aim_Assist == true then
local cf1 = CFrame.new(cam.CFrame.p, aimatpart.CFrame.p) * CFrame.new(0, 0, -4)
local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
local dist = (aimatpart.CFrame.p- pos).magnitude
if obj then
--print(obj:GetFullName())
end
if not obj or dist > 6 then
aimatpart = nil
--print("ooof")
end
canaimat = false
delay(.5, function()
canaimat = true
end)
end
end)
end



end
end)
delay(0, function()
while wait(espupdatetime) do
if autoesp == true then
pcall(function()
f.addesp()
end)
end
end
end)
--warn("loaded")
function dragify(Frame)
dragToggle = nil
dragSpeed = .25 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
end

Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Frame.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end
dragify(AimbotFrame)

local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)