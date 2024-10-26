wait(1)

local Camera = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local ts = game:GetService("TweenService")
local Main = Instance.new("ScreenGui")
local Loader = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Blur = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local quotasloader = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Loaded = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.ResetOnSpawn = false
Main.DisplayOrder = 9999

Loader.Name = "Loader"
Loader.Parent = Main
Loader.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Loader.BackgroundTransparency = 0.200
Loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loader.BorderSizePixel = 0
Loader.Position = UDim2.new(0.436969697, 0, 0.455082744, 0)
Loader.Size = UDim2.new(0, 0, 0, 76)
Loader.Active = true

UICorner.Parent = Loader

Blur.Name = "Blur"
Blur.Parent = Loader
Blur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur.BackgroundTransparency = 1.000
Blur.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur.BorderSizePixel = 0
Blur.Position = UDim2.new(-0.00483091781, 0, 0, 0)
Blur.Size = UDim2.new(0, 0, 0, 76)
Blur.Image = "http://www.roblox.com/asset/?id=6758962034"
Blur.ImageTransparency = 0.550

UICorner_2.Parent = Blur

quotasloader.Name = "quotasloader"
quotasloader.Parent = Loader
quotasloader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
quotasloader.BackgroundTransparency = 1.000
quotasloader.BorderColor3 = Color3.fromRGB(0, 0, 0)
quotasloader.BorderSizePixel = 0
quotasloader.Position = UDim2.new(0.123442277, 0, 0.157894731, 0)
quotasloader.Size = UDim2.new(0, 154, 0, 39)
quotasloader.Font = Enum.Font.JosefinSans
quotasloader.Text = "\"lizzy ware\""
quotasloader.TextColor3 = Color3.fromRGB(255, 255, 255)
quotasloader.TextSize = 20.000
quotasloader.TextWrapped = true
quotasloader.TextTransparency = 1

Bar.Name = "Bar"
Bar.Parent = Loader
Bar.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.128272906, 0, 0.75, 0)
Bar.Size = UDim2.new(0, 154, 0, 6)
Bar.Active = true
Bar.BackgroundTransparency = 1

UICorner_3.Parent = Bar

Loaded.Name = "Loaded"
Loaded.Parent = Loader
Loaded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loaded.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loaded.BorderSizePixel = 0
Loaded.Position = UDim2.new(0.123441979, 0, 0.75, 0)
Loaded.Size = UDim2.new(0, 0, 0, 6)
Loaded.Active = true

UICorner_4.Parent = Loaded

local popup = ts:Create(Loader, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)})
popup:Play()

local popup2 = ts:Create(Blur, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)})
popup2:Play()

wait(1)

local pop = ts:Create(quotasloader, TweenInfo.new(1), {TextTransparency = 0})
pop:Play()

wait(0.2)

local pop2 = ts:Create(Bar, TweenInfo.new(1), {BackgroundTransparency = 0})
pop2:Play()

local Loading = ts:Create(Loaded, TweenInfo.new(2), {Size = UDim2.new(0, 97, 0, 6)})
Loading:Play()

wait(1.3)

local Loading2 = ts:Create(Loaded, TweenInfo.new(3.2), {Size = UDim2.new(0, 154, 0, 6)})
Loading2:Play()

wait(4.2)

local Loading2 = ts:Create(Loaded, TweenInfo.new(3.2), {Size = UDim2.new(0, 154, 0, 6)})
Loading2:Play()

wait(1.2)

local dis1 = ts:Create(Blur, TweenInfo.new(1), {ImageTransparency = 1})
dis1:Play()

local dis2 = ts:Create(Loader, TweenInfo.new(1), {BackgroundTransparency = 1})
dis2:Play()

local dis3 = ts:Create(Bar, TweenInfo.new(1), {BackgroundTransparency = 1})
dis3:Play()

local dis4 = ts:Create(Loaded, TweenInfo.new(1), {BackgroundTransparency = 1})
dis4:Play()

wait(0.2)

local trans = ts:Create(quotasloader, TweenInfo.new(1.5), {TextTransparency = 1})
trans:Play()

Loader.Visible = false

local ping = Instance.new("TextLabel")
local Basic = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Blurry = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local quotasname = Instance.new("TextLabel")
local Blurred = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local EspEnable = Instance.new("ImageButton")
local TeamCheck = Instance.new("ImageButton")
local AimEnable = Instance.new("ImageButton")
local TeamText = Instance.new("TextLabel")
local TeamCheck2 = Instance.new("ImageButton")
local TeamText2 = Instance.new("TextLabel")
local NameTogle = Instance.new("ImageButton")
local Namet = Instance.new("TextLabel")
local Close = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local Mini = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local line = Instance.new("ImageLabel")
local EspText = Instance.new("TextLabel")
local AimbotText = Instance.new("TextLabel")
local InfJump = Instance.new("ImageButton")
local InfText = Instance.new("TextLabel")
local Bottom = Instance.new("Frame")
local Yayy = Instance.new("UICorner")
local Effect = Instance.new("ImageLabel")
local newfr = Instance.new("UICorner")
local GunsM = Instance.new("ImageButton")
local meo = Instance.new("UICorner")
local SilentAim = Instance.new("ImageButton")
local SilentText = Instance.new("TextLabel")
local SpeedText = Instance.new("TextLabel")
local SpeedHack = Instance.new("ImageButton")
local Mods = Instance.new("Frame")
local cawd = Instance.new("UICorner")
local Title_2 = Instance.new("Frame")
local wacd = Instance.new("UICorner")
local ModName = Instance.new("TextLabel")
local abcblur = Instance.new("ImageLabel")
local UICorner_7 = Instance.new("UICorner")
local bloor = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local InfAmmo = Instance.new("ImageButton")
local AmmoText = Instance.new("TextLabel")
local FFSpeed = Instance.new("ImageButton")
local FFSpeedText = Instance.new("TextLabel")
local Recoil = Instance.new("ImageButton")
local RecoilText = Instance.new("TextLabel")
local Close_2 = Instance.new("ImageButton")
local UICorner_9 = Instance.new("UICorner")

ping.Name = "ping"
ping.Parent = Main
ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ping.BackgroundTransparency = 1.000
ping.BorderColor3 = Color3.fromRGB(0, 0, 0)
ping.BorderSizePixel = 0
ping.Position = UDim2.new(0.409000009, 0, 0, 0)
ping.Size = UDim2.new(0, 329, 0, 62)
ping.Font = Enum.Font.JosefinSans
ping.Text = "\"RightShift\" To Open Menu"
ping.TextColor3 = Color3.fromRGB(255, 255, 255)
ping.TextSize = 22.000
ping.TextStrokeTransparency = 0.000
ping.TextTransparency = 1.000

Basic.Name = "Basic"
Basic.Parent = Main
Basic.Active = true
Basic.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Basic.BackgroundTransparency = 0.200
Basic.BorderColor3 = Color3.fromRGB(0, 0, 0)
Basic.BorderSizePixel = 0
Basic.Draggable = true
Basic.Position = UDim2.new(0.400606066, 0, 0.381736517, 0)
Basic.Size = UDim2.new(0, 329, 0, 221)

UICorner.Parent = Basic

Blurry.Name = "Blurry"
Blurry.Parent = Basic
Blurry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blurry.BackgroundTransparency = 1.000
Blurry.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blurry.BorderSizePixel = 0
Blurry.Position = UDim2.new(-0.00483086752, 0, 0, 0)
Blurry.Size = UDim2.new(0, 330, 0, 221)
Blurry.Image = "http://www.roblox.com/asset/?id=6758962034"
Blurry.ImageTransparency = 0.550

UICorner_2.Parent = Blurry

Title.Name = "Title"
Title.Parent = Basic
Title.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Title.BackgroundTransparency = 0.350
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Draggable = true
Title.Position = UDim2.new(-0.00483086752, 0, 0, 0)
Title.Size = UDim2.new(0, 331, 0, 24)

UICorner_3.Parent = Title

quotasname.Name = "quotasname"
quotasname.Parent = Title
quotasname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
quotasname.BackgroundTransparency = 1.000
quotasname.BorderColor3 = Color3.fromRGB(0, 0, 0)
quotasname.BorderSizePixel = 0
quotasname.Position = UDim2.new(0, 0, -0.000333150238, 0)
quotasname.Size = UDim2.new(0, 329, 0, 25)
quotasname.Font = Enum.Font.JosefinSans
quotasname.Text = "\"lizzy ware\""
quotasname.TextColor3 = Color3.fromRGB(255, 255, 255)
quotasname.TextSize = 14.000
quotasname.TextWrapped = true

Blurred.Name = "Blurred"
Blurred.Parent = Title
Blurred.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blurred.BackgroundTransparency = 1.000
Blurred.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blurred.BorderSizePixel = 0
Blurred.Position = UDim2.new(-0.00178288843, 0, 0, 0)
Blurred.Size = UDim2.new(0, 332, 0, 24)
Blurred.Image = "http://www.roblox.com/asset/?id=6758962034"
Blurred.ImageTransparency = 0.550

UICorner_4.Parent = Blurred

EspEnable.Name = "EspEnable"
EspEnable.Parent = Basic
EspEnable.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
EspEnable.BackgroundTransparency = 1.000
EspEnable.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspEnable.BorderSizePixel = 0
EspEnable.Position = UDim2.new(0.258358657, 0, 0.244164556, 0)
EspEnable.Size = UDim2.new(0, 16, 0, 16)
EspEnable.Image = "http://www.roblox.com/asset/?id=1264513374"

TeamCheck.Name = "TeamCheck"
TeamCheck.Parent = Basic
TeamCheck.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
TeamCheck.BackgroundTransparency = 1.000
TeamCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamCheck.BorderSizePixel = 0
TeamCheck.Position = UDim2.new(0.258358657, 0, 0.430164546, 0)
TeamCheck.Size = UDim2.new(0, 16, 0, 16)
TeamCheck.Image = "http://www.roblox.com/asset/?id=1264513374"

AimEnable.Name = "AimEnable"
AimEnable.Parent = Basic
AimEnable.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
AimEnable.BackgroundTransparency = 1.000
AimEnable.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimEnable.BorderSizePixel = 0
AimEnable.Position = UDim2.new(0.742358685, 0, 0.245164558, 0)
AimEnable.Size = UDim2.new(0, 16, 0, 16)
AimEnable.Image = "http://www.roblox.com/asset/?id=1264513374"

TeamText.Name = "TeamText"
TeamText.Parent = Basic
TeamText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamText.BackgroundTransparency = 1.000
TeamText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamText.BorderSizePixel = 0
TeamText.Position = UDim2.new(0.450395137, 0, 0.424177229, 0)
TeamText.Size = UDim2.new(0, 111, 0, 23)
TeamText.Font = Enum.Font.JosefinSans
TeamText.Text = "Team Check"
TeamText.TextColor3 = Color3.fromRGB(255, 255, 255)
TeamText.TextSize = 10.000

TeamCheck2.Name = "TeamCheck2"
TeamCheck2.Parent = Basic
TeamCheck2.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
TeamCheck2.BackgroundTransparency = 1.000
TeamCheck2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamCheck2.BorderSizePixel = 0
TeamCheck2.Position = UDim2.new(0.742358685, 0, 0.431164563, 0)
TeamCheck2.Size = UDim2.new(0, 16, 0, 16)
TeamCheck2.Image = "http://www.roblox.com/asset/?id=1264515756"

TeamText2.Name = "TeamText2"
TeamText2.Parent = Basic
TeamText2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamText2.BackgroundTransparency = 1.000
TeamText2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamText2.BorderSizePixel = 0
TeamText2.Position = UDim2.new(-0.0303951371, 0, 0.418177217, 0)
TeamText2.Size = UDim2.new(0, 111, 0, 23)
TeamText2.Font = Enum.Font.JosefinSans
TeamText2.Text = "Team Check"
TeamText2.TextColor3 = Color3.fromRGB(255, 255, 255)
TeamText2.TextSize = 10.000

NameTogle.Name = "NameTogle"
NameTogle.Parent = Basic
NameTogle.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
NameTogle.BackgroundTransparency = 1.000
NameTogle.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameTogle.BorderSizePixel = 0
NameTogle.Position = UDim2.new(0.258358657, 0, 0.610164583, 0)
NameTogle.Size = UDim2.new(0, 16, 0, 16)
NameTogle.Image = "http://www.roblox.com/asset/?id=1264515756"

Namet.Name = "Namet"
Namet.Parent = Basic
Namet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Namet.BackgroundTransparency = 1.000
Namet.BorderColor3 = Color3.fromRGB(0, 0, 0)
Namet.BorderSizePixel = 0
Namet.Position = UDim2.new(-0.0303951371, 0, 0.602177203, 0)
Namet.Size = UDim2.new(0, 111, 0, 23)
Namet.Font = Enum.Font.JosefinSans
Namet.Text = "Draw FOV"
Namet.TextColor3 = Color3.fromRGB(255, 255, 255)
Namet.TextSize = 10.000

Close.Name = "Close"
Close.Parent = Basic
Close.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Close.BackgroundTransparency = 0.650
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.927358627, 0, 0.0253164563, 0)
Close.Size = UDim2.new(0, 16, 0, 16)
Close.Image = "http://www.roblox.com/asset/?id=10002373478"

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Close

Mini.Name = "Mini"
Mini.Parent = Basic
Mini.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Mini.BackgroundTransparency = 0.650
Mini.BorderColor3 = Color3.fromRGB(0, 0, 0)
Mini.BorderSizePixel = 0
Mini.Position = UDim2.new(0.837358654, 0, 0.0253164563, 0)
Mini.Size = UDim2.new(0, 16, 0, 16)
Mini.Image = "http://www.roblox.com/asset/?id=848237313"

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Mini

line.Name = "line"
line.Parent = Basic
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 1.000
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.495440722, 0, 0.196202889, 0)
line.Size = UDim2.new(0, 33, 0, 147)
line.Image = "http://www.roblox.com/asset/?id=14519771515"

EspText.Name = "EspText"
EspText.Parent = Basic
EspText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspText.BackgroundTransparency = 1.000
EspText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspText.BorderSizePixel = 0
EspText.Position = UDim2.new(-0.0303951371, 0, 0.234177217, 0)
EspText.Size = UDim2.new(0, 111, 0, 23)
EspText.Font = Enum.Font.JosefinSans
EspText.Text = "Player ESP"
EspText.TextColor3 = Color3.fromRGB(255, 255, 255)
EspText.TextSize = 10.000

AimbotText.Name = "AimbotText"
AimbotText.Parent = Basic
AimbotText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimbotText.BackgroundTransparency = 1.000
AimbotText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimbotText.BorderSizePixel = 0
AimbotText.Position = UDim2.new(0.450395137, 0, 0.231177211, 0)
AimbotText.Size = UDim2.new(0, 111, 0, 23)
AimbotText.Font = Enum.Font.JosefinSans
AimbotText.Text = "Blatant Aimbot"
AimbotText.TextColor3 = Color3.fromRGB(255, 255, 255)
AimbotText.TextSize = 10.000

InfJump.Name = "InfJump"
InfJump.Parent = Basic
InfJump.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
InfJump.BackgroundTransparency = 1.000
InfJump.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfJump.BorderSizePixel = 0
InfJump.Position = UDim2.new(0.259076059, 0, 0.793481112, 0)
InfJump.Size = UDim2.new(0, 16, 0, 16)
InfJump.Image = "http://www.roblox.com/asset/?id=17397360339"

InfText.Name = "InfText"
InfText.Parent = Basic
InfText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfText.BackgroundTransparency = 1.000
InfText.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfText.BorderSizePixel = 0
InfText.Position = UDim2.new(-0.0332827121, 0, 0.777658224, 0)
InfText.Size = UDim2.new(0, 111, 0, 23)
InfText.Font = Enum.Font.JosefinSans
InfText.Text = "Infinite Jump"
InfText.TextColor3 = Color3.fromRGB(255, 255, 255)
InfText.TextSize = 10.000

Bottom.Name = "Bottom"
Bottom.Parent = Basic
Bottom.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Bottom.BackgroundTransparency = 0.200
Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bottom.BorderSizePixel = 0
Bottom.Draggable = true
Bottom.Position = UDim2.new(-0.00787019543, 0, 1.03784513, 0)
Bottom.Size = UDim2.new(0, 331, 0, 31)

Yayy.Name = "Yayy"
Yayy.Parent = Bottom

Effect.Name = "Effect"
Effect.Parent = Bottom
Effect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Effect.BackgroundTransparency = 1.000
Effect.BorderColor3 = Color3.fromRGB(0, 0, 0)
Effect.BorderSizePixel = 0
Effect.Position = UDim2.new(-0.00180053711, 0, 0, 0)
Effect.Size = UDim2.new(0, 331, 0, 30)
Effect.Image = "http://www.roblox.com/asset/?id=6758962034"
Effect.ImageTransparency = 0.550

newfr.Name = "newfr"
newfr.Parent = Effect

GunsM.Name = "GunsM"
GunsM.Parent = Bottom
GunsM.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
GunsM.BackgroundTransparency = 0.650
GunsM.BorderColor3 = Color3.fromRGB(0, 0, 0)
GunsM.BorderSizePixel = 0
GunsM.Position = UDim2.new(0.0814373121, 0, 0.129032254, 0)
GunsM.Size = UDim2.new(0, 76, 0, 22)
GunsM.Image = "http://www.roblox.com/asset/?id=17430191337"

meo.CornerRadius = UDim.new(0, 5)
meo.Name = "meo"
meo.Parent = GunsM

SilentAim.Name = "SilentAim"
SilentAim.Parent = Basic
SilentAim.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
SilentAim.BackgroundTransparency = 1.000
SilentAim.BorderColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.BorderSizePixel = 0
SilentAim.Position = UDim2.new(0.742358744, 0, 0.613827407, 0)
SilentAim.Size = UDim2.new(0, 16, 0, 16)
SilentAim.Image = "http://www.roblox.com/asset/?id=17397360339"

SilentText.Name = "SilentText"
SilentText.Parent = Basic
SilentText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SilentText.BackgroundTransparency = 1.000
SilentText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SilentText.BorderSizePixel = 0
SilentText.Position = UDim2.new(0.449999958, 0, 0.599004567, 0)
SilentText.Size = UDim2.new(0, 111, 0, 23)
SilentText.Font = Enum.Font.JosefinSans
SilentText.Text = "OP Silent Aim"
SilentText.TextColor3 = Color3.fromRGB(255, 255, 255)
SilentText.TextSize = 10.000

SpeedText.Name = "SpeedText"
SpeedText.Parent = Basic
SpeedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedText.BackgroundTransparency = 1.000
SpeedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedText.BorderSizePixel = 0
SpeedText.Position = UDim2.new(0.448801696, 0, 0.777553499, 0)
SpeedText.Size = UDim2.new(0, 111, 0, 23)
SpeedText.Font = Enum.Font.JosefinSans
SpeedText.Text = "Speed Hack"
SpeedText.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedText.TextSize = 10.000

SpeedHack.Name = "SpeedHack"
SpeedHack.Parent = Basic
SpeedHack.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
SpeedHack.BackgroundTransparency = 1.000
SpeedHack.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedHack.BorderSizePixel = 0
SpeedHack.Position = UDim2.new(0.741797566, 0, 0.790223122, 0)
SpeedHack.Size = UDim2.new(0, 16, 0, 16)
SpeedHack.Image = "http://www.roblox.com/asset/?id=17397360339"

Mods.Name = "Mods"
Mods.Parent = Main
Mods.Active = true
Mods.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Mods.BackgroundTransparency = 0.200
Mods.BorderColor3 = Color3.fromRGB(0, 0, 0)
Mods.BorderSizePixel = 0
Mods.Draggable = true
Mods.Position = UDim2.new(0.712401628, 0, 0.391192794, 0)
Mods.Size = UDim2.new(0, 183, 0, 221)
Mods.Visible = false

cawd.Name = "cawd"
cawd.Parent = Mods

Title_2.Name = "Title"
Title_2.Parent = Mods
Title_2.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Title_2.BackgroundTransparency = 0.350
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Draggable = true
Title_2.Position = UDim2.new(-0.00142020232, 0, 0, 0)
Title_2.Size = UDim2.new(0, 183, 0, 24)

wacd.Name = "wacd"
wacd.Parent = Title_2

ModName.Name = "ModName"
ModName.Parent = Title_2
ModName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ModName.BackgroundTransparency = 1.000
ModName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ModName.BorderSizePixel = 0
ModName.Position = UDim2.new(-0.00955917314, 0, -0.000333150238, 0)
ModName.Size = UDim2.new(0, 184, 0, 25)
ModName.Font = Enum.Font.JosefinSans
ModName.Text = "\"Weapon Mods\""
ModName.TextColor3 = Color3.fromRGB(255, 255, 255)
ModName.TextSize = 14.000
ModName.TextWrapped = true

abcblur.Name = "abcblur"
abcblur.Parent = Title_2
abcblur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
abcblur.BackgroundTransparency = 1.000
abcblur.BorderColor3 = Color3.fromRGB(0, 0, 0)
abcblur.BorderSizePixel = 0
abcblur.Position = UDim2.new(-0.00285597844, 0, 0, 0)
abcblur.Size = UDim2.new(0, 183, 0, 24)
abcblur.Image = "http://www.roblox.com/asset/?id=6758962034"
abcblur.ImageTransparency = 0.550

UICorner_7.Parent = abcblur

bloor.Name = "bloor"
bloor.Parent = Mods
bloor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bloor.BackgroundTransparency = 1.000
bloor.BorderColor3 = Color3.fromRGB(0, 0, 0)
bloor.BorderSizePixel = 0
bloor.Position = UDim2.new(-0.00142020232, 0, 0, 0)
bloor.Size = UDim2.new(0, 183, 0, 221)
bloor.Image = "http://www.roblox.com/asset/?id=6758962034"
bloor.ImageTransparency = 0.550

UICorner_8.Parent = bloor

InfAmmo.Name = "InfAmmo"
InfAmmo.Parent = Mods
InfAmmo.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
InfAmmo.BackgroundTransparency = 1.000
InfAmmo.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfAmmo.BorderSizePixel = 0
InfAmmo.Position = UDim2.new(0.660391748, 0, 0.16782707, 0)
InfAmmo.Size = UDim2.new(0, 16, 0, 16)
InfAmmo.Image = "http://www.roblox.com/asset/?id=17397360339"

AmmoText.Name = "AmmoText"
AmmoText.Parent = Mods
AmmoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmmoText.BackgroundTransparency = 1.000
AmmoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AmmoText.BorderSizePixel = 0
AmmoText.Position = UDim2.new(0.100273088, 0, 0.152036086, 0)
AmmoText.Size = UDim2.new(0, 111, 0, 23)
AmmoText.Font = Enum.Font.JosefinSans
AmmoText.Text = "Ammo Mod"
AmmoText.TextColor3 = Color3.fromRGB(255, 255, 255)
AmmoText.TextSize = 10.000

FFSpeed.Name = "FFSpeed"
FFSpeed.Parent = Mods
FFSpeed.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
FFSpeed.BackgroundTransparency = 1.000
FFSpeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
FFSpeed.BorderSizePixel = 0
FFSpeed.Position = UDim2.new(0.660391748, 0, 0.317148328, 0)
FFSpeed.Size = UDim2.new(0, 16, 0, 16)
FFSpeed.Image = "http://www.roblox.com/asset/?id=17397360339"

FFSpeedText.Name = "FFSpeedText"
FFSpeedText.Parent = Mods
FFSpeedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FFSpeedText.BackgroundTransparency = 1.000
FFSpeedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
FFSpeedText.BorderSizePixel = 0
FFSpeedText.Position = UDim2.new(0.100273088, 0, 0.301357359, 0)
FFSpeedText.Size = UDim2.new(0, 111, 0, 23)
FFSpeedText.Font = Enum.Font.JosefinSans
FFSpeedText.Text = "FireRate Mod"
FFSpeedText.TextColor3 = Color3.fromRGB(255, 255, 255)
FFSpeedText.TextSize = 10.000

Recoil.Name = "Recoil"
Recoil.Parent = Mods
Recoil.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
Recoil.BackgroundTransparency = 1.000
Recoil.BorderColor3 = Color3.fromRGB(0, 0, 0)
Recoil.BorderSizePixel = 0
Recoil.Position = UDim2.new(0.660391748, 0, 0.467148328, 0)
Recoil.Size = UDim2.new(0, 16, 0, 16)
Recoil.Image = "http://www.roblox.com/asset/?id=17397360339"

RecoilText.Name = "RecoilText"
RecoilText.Parent = Mods
RecoilText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RecoilText.BackgroundTransparency = 1.000
RecoilText.BorderColor3 = Color3.fromRGB(0, 0, 0)
RecoilText.BorderSizePixel = 0
RecoilText.Position = UDim2.new(0.100273088, 0, 0.450357359, 0)
RecoilText.Size = UDim2.new(0, 111, 0, 23)
RecoilText.Font = Enum.Font.JosefinSans
RecoilText.Text = "Recoil Mod"
RecoilText.TextColor3 = Color3.fromRGB(255, 255, 255)
RecoilText.TextSize = 10.000

Close_2.Name = "Close"
Close_2.Parent = Mods
Close_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Close_2.BackgroundTransparency = 0.650
Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.861785054, 0, 0.016266698, 0)
Close_2.Size = UDim2.new(0, 16, 0, 16)
Close_2.Image = "http://www.roblox.com/asset/?id=10002373478"

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = Close_2

wait(0.5)

Basic.Visible = true

local appear = ts:Create(Basic, TweenInfo.new(1.5), {BackgroundTransparency = 0.2})
appear:Play()

Close.MouseButton1Down:connect(function()
	Basic:Destroy()
end)

GunsM.MouseButton1Down:connect(function()
	Mods.Visible = true
end)

Close_2.MouseButton1Down:connect(function()
	Mods.Visible = false
end)

Recoil.MouseButton1Down:connect(function()
	local replicationstorage = game.ReplicatedStorage
 
	while wait(5) do
		
	for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
		if v.Name == "RecoilControl" then
			v.Value = 0
		end
		if v.Name == "MaxSpread" then
			v.Value = 0
		end

	end
end

end)

InfJump.MouseButton1Down:connect(function()
local InfiniteJumpEnabled = true

game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)
end)

SpeedHack.MouseButton1Down:connect(function()
	_G.WS = "100";
        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        Humanoid.WalkSpeed = _G.WS;
        end)
        Humanoid.WalkSpeed = _G.WS;
end)

FFSpeed.MouseButton1Down:connect(function()
	local replicationstorage = game.ReplicatedStorage
 
	while wait(5) do
		
	for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
		if v.Name == "Auto" then
			v.Value = true
		end
		if v.Name == "FireRate" then
			v.Value = 0.02
		end
	 end

	end
end)

SilentAim.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(13,13,13)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
end)

InfAmmo.MouseButton1Down:connect(function()
	local replicationstorage = game.ReplicatedStorage

while wait() do
    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
    game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
end)

local MenuIsToggled = true

Mini.MouseButton1Down:connect(function()
	Basic.Visible = false

    MenuIsToggled = false

	local minimize = ts:Create(ping, TweenInfo.new(1), {TextTransparency = 0})
	minimize:Play()

	wait(3)

	local unominimize = ts:Create(ping, TweenInfo.new(1), {TextTransparency = 1})
	unominimize:Play()

end)

uis.InputBegan:Connect(function (input)
	if input.KeyCode == Enum.KeyCode.RightShift then
		if MenuIsToggled == false then
		local reopen = ts:Create(Basic, TweenInfo.new(1.5), {Visible = true})
		reopen:Play()

		MenuIsToggled = true
	end
	end
end)

local toggled = false

EspEnable.MouseButton1Down:connect(function()
	if toggled == false then
		toggled = true
		EspEnable.Image = "http://www.roblox.com/asset/?id=1264515756"
	else do
			toggled = false
			EspEnable.Image = "http://www.roblox.com/asset/?id=1264513374"
			
		end
	end
end)

_G.sizeof = 55
_G.AimOn = false
_G.TeamCheckOn = true
_G.Aimpart = "Head"
_G.Sensitivity = 0.03
_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleVisible = true
_G.fovTransparency = 0

AimEnable.MouseButton1Down:connect(function()
	if AimOn == false then
		AimOn = true
		_G.fovTransparency = 1
		AimEnable.Image = "http://www.roblox.com/asset/?id=1264515756"
	else do
		AimOn = false
		_G.fovTransparency = 0
		AimEnable.Image = "http://www.roblox.com/asset/?id=1264513374"
			
		end
	end
end)


local activated = false

TeamCheck.MouseButton1Down:connect(function()
	if activated == false then
		activated = true
		TeamCheck.Image = "http://www.roblox.com/asset/?id=1264515756"
	else do
		activated = false
			TeamCheck.Image = "http://www.roblox.com/asset/?id=1264513374"
			
		end
	end
end)

TeamCheck2.MouseButton1Down:connect(function()
	if _G.TeamCheckOn == false then
		_G.TeamCheckOn = true
		TeamCheck2.Image = "http://www.roblox.com/asset/?id=1264515756"
	else do
		_G.TeamCheckOn = false
			TeamCheck2.Image = "http://www.roblox.com/asset/?id=1264513374"
			
		end
	end
end)

NameTogle.MouseButton1Down:connect(function()
	if _G.CircleVisible == false then
		_G.CircleVisible = true
		NameTogle.Image = "http://www.roblox.com/asset/?id=1264515756"
	else do
		_G.CircleVisible = false
		NameTogle.Image = "http://www.roblox.com/asset/?id=1264513374"
			
		end
	end
end)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local esp = Instance.new("BillboardGui")
local name = Instance.new("TextLabel")
local mainesp = Instance.new("BillboardGui")
local box = Instance.new("ImageLabel")
local LocalPlayer = Players.LocalPlayer

esp.Name = "esp" 
esp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
esp.Active = true
esp.AlwaysOnTop = true
esp.LightInfluence = 1.000
esp.Size = UDim2.new(0, 300, 0, 30)
esp.StudsOffset = Vector3.new(0, 3, 0)

name.Name = "name"
name.Parent = esp
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Size = UDim2.new(1, 0, 1, 0)
name.Font = Enum.Font.Ubuntu
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = false
name.TextSize = 9.000
name.TextStrokeTransparency = 0.000
name.TextWrapped = true
name.TextTransparency = 1

mainesp.Name = "mainesp"
mainesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mainesp.Active = true
mainesp.AlwaysOnTop = true
mainesp.LightInfluence = 1.000
mainesp.MaxDistance = 999999.000
mainesp.Size = UDim2.new(4, 0, 6, 0)

box.Name = "box"
box.Parent = mainesp
box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundTransparency = 1.000
box.BorderColor3 = Color3.fromRGB(0, 0, 0)
box.BorderSizePixel = 0
box.Size = UDim2.new(1, 0, 1, 0)
box.Image = "http://www.roblox.com/asset/?id=16946608585"
box.ImageTransparency = 1

RunService.RenderStepped:Connect(function()
	for i, v in pairs(Players:GetChildren()) do
		local sigma = Players.LocalPlayer
		if not v.Character.Head:FindFirstChild("esp") then
			if v ~= game.Players.LocalPlayer then
			    local sigma = Players.LocalPlayer
				local nameClone = esp:Clone()
				local espClone = mainesp:Clone()
				nameClone.Parent = v.Character:FindFirstChild("Head")
				nameClone:FindFirstChild("name").Text = nameClone.Parent.Parent.Name
				espClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
			end

		end

	end
end)

Players.PlayerAdded:Connect(function(player)
	local sigma = Players.LocalPlayer
	if not player.Character.Head:FindFirstChild("esp") then
		if player ~= game.Players.LocalPlayer then
		    local sigma = Players.LocalPlayer
			local nameClone = esp:Clone()
			local espClone = mainesp:Clone()
			nameClone.Parent = player.Character:FindFirstChild("Head")
			nameClone:FindFirstChild("name").Text = nameClone.Parent.Parent.Name
			wait(1)
			espClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
			 end

	end
end)

RunService.RenderStepped:Connect(function()
    for i, v in pairs(Players:GetChildren()) do
		local me = Players.LocalPlayer
		if activated == true then
		if v ~= me then
			if v.Team == me.Team then
				if v.Character.Head:FindFirstChild("esp") then
				v.Character.Head:FindFirstChild("esp"):Destroy()
				v.Character.HumanoidRootPart:FindFirstChild("mainesp"):Destroy()
				end
			end
		end
		end
	end
end)

Players.PlayerAdded:Connect(function(player)
    local me = Players.LocalPlayer
	if player ~= me then
		if activated == true then
	if player.Team == me.Team then
		if player.Character.Head:FindFirstChild("esp") then
		player.Character.Head:FindFirstChild("esp"):Destroy()
		player.Character.HumanoidRootPart:FindFirstChild("mainesp"):Destroy()
		end
	end
	end
	end
end)

RunService.RenderStepped:Connect(function()
	for i, v in pairs(Players:GetChildren()) do
		if toggled == true then
			if v.Character.Head:FindFirstChild("esp") then
				if v.Character.HumanoidRootPart:FindFirstChild("mainesp") then
				v.Character.Head:FindFirstChild("esp").name.TextTransparency = 0
				v.Character.HumanoidRootPart:FindFirstChild("mainesp").box.ImageTransparency = 0.43
				end
			end
		else do
			if v.Character.Head:FindFirstChild("esp") then
				if v.Character.HumanoidRootPart:FindFirstChild("mainesp") then
			v.Character.Head:FindFirstChild("esp").name.TextTransparency = 1
			v.Character.HumanoidRootPart:FindFirstChild("mainesp").box.ImageTransparency = 1
				end
			end
	end
		end
	end
end)

local Holding = false

local FovCircle = Drawing.new("Circle")
FovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FovCircle.Radius = _G.sizeof
FovCircle.Color = _G.CircleColor
FovCircle.Visible = _G.CircleVisible
FovCircle.NumSides = _G.CircleSides
FovCircle.Filled = false
FovCircle.Transparency = _G.fovTransparency
FovCircle.Thickness = 0

local function GetClosestPlayer()
	local Target = nil
	local MaxDistance = _G.sizeof

	for i, v in next, Players:GetChildren() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheckOn == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil then
								if v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

								if VectorDistance < MaxDistance then
									Target = v
								end
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil then
							if v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

							if VectorDistance < MaxDistance then
								Target = v
							end
							end
						end
					end
			end
		end
	end
end

return Target
end

uis.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = true
	end
end)

uis.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = false
	end
end)

RunService.RenderStepped:Connect(function ()
	FovCircle.Position = Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y)
    FovCircle.Radius = _G.sizeof
    FovCircle.Color = _G.CircleColor
    FovCircle.Visible = _G.CircleVisible
    FovCircle.NumSides = _G.CircleSides
    FovCircle.Filled = false
    FovCircle.Transparency = _G.fovTransparency
    FovCircle.Thickness = 0

	if Holding == true and AimOn == true then
		ts:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.Aimpart].Position)}):Play()

	end
end)