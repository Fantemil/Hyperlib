local MM2AdminPanel = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local StartFrame = Instance.new("ImageLabel")
local BottomFrame = Instance.new("Frame")
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local Tab4 = Instance.new("TextButton")
local PlayerFrame = Instance.new("ScrollingFrame")
local Fly = Instance.new("Frame")
local Activation = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Noclip = Instance.new("Frame")
local Activation_2 = Instance.new("TextButton")
local Title_2 = Instance.new("TextLabel")
local Walkspeed = Instance.new("Frame")
local SetActivation = Instance.new("TextButton")
local WalkspeedTB = Instance.new("TextBox")
local ResetActivation = Instance.new("TextButton")
local JumpPower = Instance.new("Frame")
local SetActivation_2 = Instance.new("TextButton")
local JumpPowerTB = Instance.new("TextBox")
local ResetActivation_2 = Instance.new("TextButton")
local InfiniteJump = Instance.new("Frame")
local Activation_3 = Instance.new("TextButton")
local Title_3 = Instance.new("TextLabel")
local Tab3 = Instance.new("TextButton")
local MainFrame_2 = Instance.new("ScrollingFrame")
local CoinFarm = Instance.new("Frame")
local Activation_4 = Instance.new("TextButton")
local Title_4 = Instance.new("TextLabel")
local XRay = Instance.new("Frame")
local Activation_5 = Instance.new("TextButton")
local Title_5 = Instance.new("TextLabel")
local AFKFarm = Instance.new("Frame")
local Activation_6 = Instance.new("TextButton")
local Title_6 = Instance.new("TextLabel")
local KillMurderer = Instance.new("Frame")
local Activation_7 = Instance.new("TextButton")
local Title_7 = Instance.new("TextLabel")
local GunGrabber = Instance.new("Frame")
local Activation_8 = Instance.new("TextButton")
local Title_8 = Instance.new("TextLabel")
local KillAll = Instance.new("Frame")
local Activation_9 = Instance.new("TextButton")
local Title_9 = Instance.new("TextLabel")
local AntiLag = Instance.new("Frame")
local Activation_10 = Instance.new("TextButton")
local Title_10 = Instance.new("TextLabel")
local AimPlayer = Instance.new("Frame")
local AimActivation = Instance.new("TextButton")
local AimTB = Instance.new("TextBox")
local DeAimActivation = Instance.new("TextButton")
local VisualFrame = Instance.new("ScrollingFrame")
local AllESP = Instance.new("Frame")
local Activation_11 = Instance.new("TextButton")
local Title_11 = Instance.new("TextLabel")
local RefreshESP = Instance.new("Frame")
local Activation_12 = Instance.new("TextButton")
local Title_12 = Instance.new("TextLabel")
local TeleportFrame = Instance.new("ScrollingFrame")
local TP1 = Instance.new("Frame")
local Activation_13 = Instance.new("TextButton")
local Title_13 = Instance.new("TextLabel")
local TP2 = Instance.new("Frame")
local Activation_14 = Instance.new("TextButton")
local Title_14 = Instance.new("TextLabel")
local TeleportName = Instance.new("Frame")
local TeleportTB = Instance.new("TextBox")
local TeleportButton = Instance.new("TextButton")
local TP3 = Instance.new("Frame")
local Activation_15 = Instance.new("TextButton")
local Title_15 = Instance.new("TextLabel")
local TP4 = Instance.new("Frame")
local Activation_16 = Instance.new("TextButton")
local Title_16 = Instance.new("TextLabel")
local TopFrame = Instance.new("Frame")
local Title_17 = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")

MM2AdminPanel.Name = "MM2AdminPanel"
MM2AdminPanel.Parent = game.CoreGui
MM2AdminPanel.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = MM2AdminPanel
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BackgroundTransparency = 1.000
MainFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 387, 0, 229)

StartFrame.Name = "StartFrame"
StartFrame.Parent = MainFrame
StartFrame.AnchorPoint = Vector2.new(0.5, 0.5)
StartFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StartFrame.BackgroundTransparency = 1.000
StartFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
StartFrame.Image = "rbxassetid://3570695787"
StartFrame.ImageColor3 = Color3.fromRGB(20, 20, 20)
StartFrame.ScaleType = Enum.ScaleType.Slice
StartFrame.SliceCenter = Rect.new(100, 100, 100, 100)

BottomFrame.Name = "BottomFrame"
BottomFrame.Parent = MainFrame
BottomFrame.AnchorPoint = Vector2.new(0.5, 0.5)
BottomFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BottomFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
BottomFrame.BorderSizePixel = 0
BottomFrame.ClipsDescendants = true
BottomFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
BottomFrame.Size = UDim2.new(0, 387, 0, 229)

Tab1.Name = "Tab1"
Tab1.Parent = BottomFrame
Tab1.AnchorPoint = Vector2.new(0.5, 0.5)
Tab1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Tab1.BorderSizePixel = 0
Tab1.ClipsDescendants = true
Tab1.Position = UDim2.new(0.111912139, 0, 0.216999963, 0)
Tab1.Size = UDim2.new(0, 65, 0, 23)
Tab1.Font = Enum.Font.Gotham
Tab1.Text = "MAIN"
Tab1.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1.TextSize = 14.000

Tab2.Name = "Tab2"
Tab2.Parent = BottomFrame
Tab2.AnchorPoint = Vector2.new(0.5, 0.5)
Tab2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab2.BorderSizePixel = 0
Tab2.ClipsDescendants = true
Tab2.Position = UDim2.new(0.292790681, 0, 0.216999978, 0)
Tab2.Size = UDim2.new(0, 75, 0, 23)
Tab2.Font = Enum.Font.Gotham
Tab2.Text = "PLAYER"
Tab2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab2.TextSize = 14.000

Tab4.Name = "Tab4"
Tab4.Parent = BottomFrame
Tab4.AnchorPoint = Vector2.new(0.5, 0.5)
Tab4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab4.BorderSizePixel = 0
Tab4.ClipsDescendants = true
Tab4.Position = UDim2.new(0.688384891, 0, 0.216999963, 0)
Tab4.Size = UDim2.new(0, 83, 0, 23)
Tab4.Font = Enum.Font.Gotham
Tab4.Text = "TELEPORT"
Tab4.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab4.TextSize = 14.000

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = BottomFrame
PlayerFrame.Active = true
PlayerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
PlayerFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0.5, 0, 0.611353695, 0)
PlayerFrame.Size = UDim2.new(0, 367, 0, 158)
PlayerFrame.Visible = false
PlayerFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
PlayerFrame.ScrollBarThickness = 3

Fly.Name = "Fly"
Fly.Parent = PlayerFrame
Fly.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Fly.BackgroundTransparency = 1.000
Fly.BorderColor3 = Color3.fromRGB(30, 30, 30)
Fly.BorderSizePixel = 0
Fly.ClipsDescendants = true
Fly.Position = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
Fly.Size = UDim2.new(0, 161, 0, 20)

Activation.Name = "Activation"
Activation.Parent = Fly
Activation.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation.BorderSizePixel = 0
Activation.Size = UDim2.new(0, 20, 0, 20)
Activation.Font = Enum.Font.Gotham
Activation.Text = ""
Activation.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Fly
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.161490679, 0, 0, 0)
Title.Size = UDim2.new(0.838509321, 0, 1, 0)
Title.Font = Enum.Font.Gotham
Title.Text = "Fly [X]"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Noclip.Name = "Noclip"
Noclip.Parent = PlayerFrame
Noclip.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Noclip.BorderColor3 = Color3.fromRGB(30, 30, 30)
Noclip.BorderSizePixel = 0
Noclip.ClipsDescendants = true
Noclip.Position = UDim2.new(0.0199999996, 0, 0.126000002, 0)
Noclip.Size = UDim2.new(0, 161, 0, 20)

Activation_2.Name = "Activation"
Activation_2.Parent = Noclip
Activation_2.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation_2.BorderSizePixel = 0
Activation_2.Size = UDim2.new(0, 20, 0, 20)
Activation_2.Font = Enum.Font.Gotham
Activation_2.Text = ""
Activation_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_2.TextSize = 14.000

Title_2.Name = "Title"
Title_2.Parent = Noclip
Title_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_2.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_2.Font = Enum.Font.Gotham
Title_2.Text = "Noclip [C]"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = PlayerFrame
Walkspeed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Walkspeed.BorderColor3 = Color3.fromRGB(30, 30, 30)
Walkspeed.BorderSizePixel = 0
Walkspeed.ClipsDescendants = true
Walkspeed.Position = UDim2.new(0.0199999996, 0, 0.335999995, 0)
Walkspeed.Size = UDim2.new(0, 161, 0, 42)

SetActivation.Name = "SetActivation"
SetActivation.Parent = Walkspeed
SetActivation.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SetActivation.BorderSizePixel = 0
SetActivation.Position = UDim2.new(0, 0, 0.555555582, 0)
SetActivation.Size = UDim2.new(0, 36, 0, 20)
SetActivation.Font = Enum.Font.Gotham
SetActivation.Text = "Set"
SetActivation.TextColor3 = Color3.fromRGB(255, 255, 255)
SetActivation.TextSize = 14.000

WalkspeedTB.Name = "WalkspeedTB"
WalkspeedTB.Parent = Walkspeed
WalkspeedTB.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
WalkspeedTB.BorderColor3 = Color3.fromRGB(40, 40, 40)
WalkspeedTB.BorderSizePixel = 0
WalkspeedTB.Position = UDim2.new(-0.000559931214, 0, -0.0166666675, 0)
WalkspeedTB.Size = UDim2.new(0.732458353, 0, 0.394444436, 0)
WalkspeedTB.Font = Enum.Font.Gotham
WalkspeedTB.Text = "Insert Walkspeed"
WalkspeedTB.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkspeedTB.TextSize = 14.000

ResetActivation.Name = "ResetActivation"
ResetActivation.Parent = Walkspeed
ResetActivation.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ResetActivation.BorderSizePixel = 0
ResetActivation.Position = UDim2.new(0.259848803, 0, 0.555555582, 0)
ResetActivation.Size = UDim2.new(0, 76, 0, 20)
ResetActivation.Font = Enum.Font.Gotham
ResetActivation.Text = "Reset"
ResetActivation.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetActivation.TextSize = 14.000

JumpPower.Name = "JumpPower"
JumpPower.Parent = PlayerFrame
JumpPower.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
JumpPower.BorderColor3 = Color3.fromRGB(30, 30, 30)
JumpPower.BorderSizePixel = 0
JumpPower.ClipsDescendants = true
JumpPower.Position = UDim2.new(0.0199999996, 0, 0.537, 0)
JumpPower.Size = UDim2.new(0, 161, 0, 42)

SetActivation_2.Name = "SetActivation"
SetActivation_2.Parent = JumpPower
SetActivation_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SetActivation_2.BorderSizePixel = 0
SetActivation_2.Position = UDim2.new(0, 0, 0.555555582, 0)
SetActivation_2.Size = UDim2.new(0, 36, 0, 20)
SetActivation_2.Font = Enum.Font.Gotham
SetActivation_2.Text = "Set"
SetActivation_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SetActivation_2.TextSize = 14.000

JumpPowerTB.Name = "JumpPowerTB"
JumpPowerTB.Parent = JumpPower
JumpPowerTB.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
JumpPowerTB.BorderColor3 = Color3.fromRGB(40, 40, 40)
JumpPowerTB.BorderSizePixel = 0
JumpPowerTB.Position = UDim2.new(-0.000559931214, 0, -0.0166666675, 0)
JumpPowerTB.Size = UDim2.new(0.732458353, 0, 0.394444436, 0)
JumpPowerTB.Font = Enum.Font.Gotham
JumpPowerTB.Text = "Insert JumpPower"
JumpPowerTB.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPowerTB.TextSize = 14.000

ResetActivation_2.Name = "ResetActivation"
ResetActivation_2.Parent = JumpPower
ResetActivation_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ResetActivation_2.BorderSizePixel = 0
ResetActivation_2.Position = UDim2.new(0.259848803, 0, 0.555555582, 0)
ResetActivation_2.Size = UDim2.new(0, 76, 0, 20)
ResetActivation_2.Font = Enum.Font.Gotham
ResetActivation_2.Text = "Reset"
ResetActivation_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetActivation_2.TextSize = 14.000

InfiniteJump.Name = "InfiniteJump"
InfiniteJump.Parent = PlayerFrame
InfiniteJump.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InfiniteJump.BorderColor3 = Color3.fromRGB(30, 30, 30)
InfiniteJump.BorderSizePixel = 0
InfiniteJump.ClipsDescendants = true
InfiniteJump.Position = UDim2.new(0.0199999996, 0, 0.229000002, 0)
InfiniteJump.Size = UDim2.new(0, 161, 0, 20)

Activation_3.Name = "Activation"
Activation_3.Parent = InfiniteJump
Activation_3.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation_3.BorderSizePixel = 0
Activation_3.Size = UDim2.new(0, 20, 0, 20)
Activation_3.Font = Enum.Font.Gotham
Activation_3.Text = ""
Activation_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_3.TextSize = 14.000

Title_3.Name = "Title"
Title_3.Parent = InfiniteJump
Title_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_3.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_3.Font = Enum.Font.Gotham
Title_3.Text = "Infinite Jump [V]"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextWrapped = true
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Tab3.Name = "Tab3"
Tab3.Parent = BottomFrame
Tab3.AnchorPoint = Vector2.new(0.5, 0.5)
Tab3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Tab3.BorderSizePixel = 0
Tab3.ClipsDescendants = true
Tab3.Position = UDim2.new(0.486589134, 0, 0.216999978, 0)
Tab3.Size = UDim2.new(0, 75, 0, 23)
Tab3.Font = Enum.Font.Gotham
Tab3.Text = "VISUALS"
Tab3.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab3.TextSize = 14.000

MainFrame_2.Name = "MainFrame"
MainFrame_2.Parent = BottomFrame
MainFrame_2.Active = true
MainFrame_2.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame_2.BorderSizePixel = 0
MainFrame_2.Position = UDim2.new(0.5, 0, 0.611353695, 0)
MainFrame_2.Size = UDim2.new(0, 367, 0, 158)
MainFrame_2.CanvasSize = UDim2.new(0, 0, 1, 0)
MainFrame_2.ScrollBarThickness = 3

CoinFarm.Name = "CoinFarm"
CoinFarm.Parent = MainFrame_2
CoinFarm.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CoinFarm.BackgroundTransparency = 1.000
CoinFarm.BorderColor3 = Color3.fromRGB(30, 30, 30)
CoinFarm.BorderSizePixel = 0
CoinFarm.ClipsDescendants = true
CoinFarm.Position = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
CoinFarm.Size = UDim2.new(0, 161, 0, 20)

Activation_4.Name = "Activation"
Activation_4.Parent = CoinFarm
Activation_4.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation_4.BorderSizePixel = 0
Activation_4.Size = UDim2.new(0, 20, 0, 20)
Activation_4.Font = Enum.Font.Gotham
Activation_4.Text = ""
Activation_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_4.TextSize = 14.000

Title_4.Name = "Title"
Title_4.Parent = CoinFarm
Title_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_4.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_4.Font = Enum.Font.Gotham
Title_4.Text = "Coin Farm (RISKY)"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextWrapped = true
Title_4.TextXAlignment = Enum.TextXAlignment.Left

XRay.Name = "XRay"
XRay.Parent = MainFrame_2
XRay.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
XRay.BorderColor3 = Color3.fromRGB(30, 30, 30)
XRay.BorderSizePixel = 0
XRay.ClipsDescendants = true
XRay.Position = UDim2.new(0.0199999996, 0, 0.123999998, 0)
XRay.Size = UDim2.new(0, 161, 0, 20)

Activation_5.Name = "Activation"
Activation_5.Parent = XRay
Activation_5.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation_5.BorderSizePixel = 0
Activation_5.Size = UDim2.new(0, 20, 0, 20)
Activation_5.Font = Enum.Font.Gotham
Activation_5.Text = ""
Activation_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_5.TextSize = 14.000

Title_5.Name = "Title"
Title_5.Parent = XRay
Title_5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_5.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_5.Font = Enum.Font.Gotham
Title_5.Text = "X-Ray"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 14.000
Title_5.TextWrapped = true
Title_5.TextXAlignment = Enum.TextXAlignment.Left

AFKFarm.Name = "AFKFarm"
AFKFarm.Parent = MainFrame_2
AFKFarm.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AFKFarm.BorderColor3 = Color3.fromRGB(30, 30, 30)
AFKFarm.BorderSizePixel = 0
AFKFarm.ClipsDescendants = true
AFKFarm.Position = UDim2.new(0.0199999996, 0, 0.331, 0)
AFKFarm.Size = UDim2.new(0, 161, 0, 20)

Activation_6.Name = "Activation"
Activation_6.Parent = AFKFarm
Activation_6.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_6.BorderSizePixel = 0
Activation_6.Size = UDim2.new(0, 20, 0, 20)
Activation_6.Font = Enum.Font.Gotham
Activation_6.Text = ""
Activation_6.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_6.TextSize = 14.000

Title_6.Name = "Title"
Title_6.Parent = AFKFarm
Title_6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_6.BackgroundTransparency = 1.000
Title_6.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_6.BorderSizePixel = 0
Title_6.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_6.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_6.Font = Enum.Font.Gotham
Title_6.Text = "AFK Farm"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 14.000
Title_6.TextWrapped = true
Title_6.TextXAlignment = Enum.TextXAlignment.Left

KillMurderer.Name = "KillMurderer"
KillMurderer.Parent = MainFrame_2
KillMurderer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KillMurderer.BorderColor3 = Color3.fromRGB(30, 30, 30)
KillMurderer.BorderSizePixel = 0
KillMurderer.ClipsDescendants = true
KillMurderer.Position = UDim2.new(0.0199999996, 0, 0.542999983, 0)
KillMurderer.Size = UDim2.new(0, 161, 0, 20)

Activation_7.Name = "Activation"
Activation_7.Parent = KillMurderer
Activation_7.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_7.BorderSizePixel = 0
Activation_7.Size = UDim2.new(0, 20, 0, 20)
Activation_7.Font = Enum.Font.Gotham
Activation_7.Text = ""
Activation_7.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_7.TextSize = 14.000

Title_7.Name = "Title"
Title_7.Parent = KillMurderer
Title_7.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_7.BackgroundTransparency = 1.000
Title_7.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_7.BorderSizePixel = 0
Title_7.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_7.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_7.Font = Enum.Font.Gotham
Title_7.Text = "Kill Murderer"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 14.000
Title_7.TextWrapped = true
Title_7.TextXAlignment = Enum.TextXAlignment.Left

GunGrabber.Name = "GunGrabber"
GunGrabber.Parent = MainFrame_2
GunGrabber.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GunGrabber.BorderColor3 = Color3.fromRGB(30, 30, 30)
GunGrabber.BorderSizePixel = 0
GunGrabber.ClipsDescendants = true
GunGrabber.Position = UDim2.new(0.0199999996, 0, 0.648999989, 0)
GunGrabber.Size = UDim2.new(0, 161, 0, 20)

Activation_8.Name = "Activation"
Activation_8.Parent = GunGrabber
Activation_8.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_8.BorderSizePixel = 0
Activation_8.Size = UDim2.new(0, 20, 0, 20)
Activation_8.Font = Enum.Font.Gotham
Activation_8.Text = ""
Activation_8.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_8.TextSize = 14.000

Title_8.Name = "Title"
Title_8.Parent = GunGrabber
Title_8.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_8.BackgroundTransparency = 1.000
Title_8.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_8.BorderSizePixel = 0
Title_8.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_8.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_8.Font = Enum.Font.Gotham
Title_8.Text = "Gun Grabber"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextSize = 14.000
Title_8.TextWrapped = true
Title_8.TextXAlignment = Enum.TextXAlignment.Left

KillAll.Name = "KillAll"
KillAll.Parent = MainFrame_2
KillAll.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KillAll.BorderColor3 = Color3.fromRGB(30, 30, 30)
KillAll.BorderSizePixel = 0
KillAll.ClipsDescendants = true
KillAll.Position = UDim2.new(0.0199999996, 0, 0.437000006, 0)
KillAll.Size = UDim2.new(0, 161, 0, 20)

Activation_9.Name = "Activation"
Activation_9.Parent = KillAll
Activation_9.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_9.BorderSizePixel = 0
Activation_9.Size = UDim2.new(0, 20, 0, 20)
Activation_9.Font = Enum.Font.Gotham
Activation_9.Text = ""
Activation_9.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_9.TextSize = 14.000

Title_9.Name = "Title"
Title_9.Parent = KillAll
Title_9.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_9.BackgroundTransparency = 1.000
Title_9.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_9.BorderSizePixel = 0
Title_9.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_9.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_9.Font = Enum.Font.Gotham
Title_9.Text = "Kill All"
Title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_9.TextSize = 14.000
Title_9.TextWrapped = true
Title_9.TextXAlignment = Enum.TextXAlignment.Left

AntiLag.Name = "AntiLag"
AntiLag.Parent = MainFrame_2
AntiLag.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AntiLag.BorderColor3 = Color3.fromRGB(30, 30, 30)
AntiLag.BorderSizePixel = 0
AntiLag.ClipsDescendants = true
AntiLag.Position = UDim2.new(0.0199999996, 0, 0.226999998, 0)
AntiLag.Size = UDim2.new(0, 161, 0, 20)

Activation_10.Name = "Activation"
Activation_10.Parent = AntiLag
Activation_10.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_10.BorderSizePixel = 0
Activation_10.Size = UDim2.new(0, 20, 0, 20)
Activation_10.Font = Enum.Font.Gotham
Activation_10.Text = ""
Activation_10.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_10.TextSize = 14.000

Title_10.Name = "Title"
Title_10.Parent = AntiLag
Title_10.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_10.BackgroundTransparency = 1.000
Title_10.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_10.BorderSizePixel = 0
Title_10.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_10.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_10.Font = Enum.Font.Gotham
Title_10.Text = "Anti-Lag"
Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_10.TextSize = 14.000
Title_10.TextWrapped = true
Title_10.TextXAlignment = Enum.TextXAlignment.Left

AimPlayer.Name = "AimPlayer"
AimPlayer.Parent = MainFrame_2
AimPlayer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AimPlayer.BorderColor3 = Color3.fromRGB(30, 30, 30)
AimPlayer.BorderSizePixel = 0
AimPlayer.ClipsDescendants = true
AimPlayer.Position = UDim2.new(0.0170000009, 0, 0.763999999, 0)
AimPlayer.Size = UDim2.new(0, 161, 0, 42)

AimActivation.Name = "AimActivation"
AimActivation.Parent = AimPlayer
AimActivation.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AimActivation.BorderSizePixel = 0
AimActivation.Position = UDim2.new(0, 0, 0.55555582, 0)
AimActivation.Size = UDim2.new(0, 66, 0, 20)
AimActivation.Font = Enum.Font.Gotham
AimActivation.Text = "Aim User"
AimActivation.TextColor3 = Color3.fromRGB(255, 255, 255)
AimActivation.TextSize = 14.000

AimTB.Name = "AimTB"
AimTB.Parent = AimPlayer
AimTB.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AimTB.BorderColor3 = Color3.fromRGB(40, 40, 40)
AimTB.BorderSizePixel = 0
AimTB.Position = UDim2.new(-0.000559931214, 0, -0.0166666675, 0)
AimTB.Size = UDim2.new(0.732458353, 0, 0.394444436, 0)
AimTB.Font = Enum.Font.Gotham
AimTB.Text = "Player name"
AimTB.TextColor3 = Color3.fromRGB(255, 255, 255)
AimTB.TextSize = 14.000

DeAimActivation.Name = "DeAimActivation"
DeAimActivation.Parent = AimPlayer
DeAimActivation.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DeAimActivation.BorderSizePixel = 0
DeAimActivation.Position = UDim2.new(0.447204977, 0, 0.55555582, 0)
DeAimActivation.Size = UDim2.new(0, 45, 0, 20)
DeAimActivation.Font = Enum.Font.Gotham
DeAimActivation.Text = "Off"
DeAimActivation.TextColor3 = Color3.fromRGB(255, 255, 255)
DeAimActivation.TextSize = 14.000

VisualFrame.Name = "VisualFrame"
VisualFrame.Parent = BottomFrame
VisualFrame.Active = true
VisualFrame.AnchorPoint = Vector2.new(0.5, 0.5)
VisualFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
VisualFrame.BorderSizePixel = 0
VisualFrame.Position = UDim2.new(0.5, 0, 0.611353695, 0)
VisualFrame.Size = UDim2.new(0, 367, 0, 158)
VisualFrame.Visible = false
VisualFrame.CanvasSize = UDim2.new(0, 0, 0.5, 0)
VisualFrame.ScrollBarThickness = 3

AllESP.Name = "AllESP"
AllESP.Parent = VisualFrame
AllESP.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AllESP.BackgroundTransparency = 1.000
AllESP.BorderColor3 = Color3.fromRGB(30, 30, 30)
AllESP.BorderSizePixel = 0
AllESP.ClipsDescendants = true
AllESP.Position = UDim2.new(0.0199999996, 0, 0.0399999991, 0)
AllESP.Size = UDim2.new(0, 161, 0, 20)

Activation_11.Name = "Activation"
Activation_11.Parent = AllESP
Activation_11.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
Activation_11.BorderSizePixel = 0
Activation_11.Size = UDim2.new(0, 20, 0, 20)
Activation_11.Font = Enum.Font.Gotham
Activation_11.Text = ""
Activation_11.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_11.TextSize = 14.000

Title_11.Name = "Title"
Title_11.Parent = AllESP
Title_11.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_11.BackgroundTransparency = 1.000
Title_11.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_11.BorderSizePixel = 0
Title_11.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_11.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_11.Font = Enum.Font.Gotham
Title_11.Text = "Everyone ESP"
Title_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_11.TextSize = 14.000
Title_11.TextWrapped = true
Title_11.TextXAlignment = Enum.TextXAlignment.Left

RefreshESP.Name = "RefreshESP"
RefreshESP.Parent = VisualFrame
RefreshESP.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
RefreshESP.BorderColor3 = Color3.fromRGB(30, 30, 30)
RefreshESP.BorderSizePixel = 0
RefreshESP.ClipsDescendants = true
RefreshESP.Position = UDim2.new(0.0199999996, 0, 0.202000007, 0)
RefreshESP.Size = UDim2.new(0, 161, 0, 20)

Activation_12.Name = "Activation"
Activation_12.Parent = RefreshESP
Activation_12.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_12.BorderSizePixel = 0
Activation_12.Size = UDim2.new(0, 20, 0, 20)
Activation_12.Font = Enum.Font.Gotham
Activation_12.Text = ""
Activation_12.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_12.TextSize = 14.000

Title_12.Name = "Title"
Title_12.Parent = RefreshESP
Title_12.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_12.BackgroundTransparency = 1.000
Title_12.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_12.BorderSizePixel = 0
Title_12.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_12.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_12.Font = Enum.Font.Gotham
Title_12.Text = "Refresh ESP"
Title_12.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_12.TextSize = 14.000
Title_12.TextWrapped = true
Title_12.TextXAlignment = Enum.TextXAlignment.Left

TeleportFrame.Name = "TeleportFrame"
TeleportFrame.Parent = BottomFrame
TeleportFrame.Active = true
TeleportFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TeleportFrame.BorderSizePixel = 0
TeleportFrame.Position = UDim2.new(0.5, 0, 0.611353695, 0)
TeleportFrame.Size = UDim2.new(0, 367, 0, 158)
TeleportFrame.Visible = false
TeleportFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
TeleportFrame.ScrollBarThickness = 3

TP1.Name = "TP1"
TP1.Parent = TeleportFrame
TP1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TP1.BackgroundTransparency = 1.000
TP1.BorderColor3 = Color3.fromRGB(30, 30, 30)
TP1.BorderSizePixel = 0
TP1.ClipsDescendants = true
TP1.Position = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
TP1.Size = UDim2.new(0, 161, 0, 20)

Activation_13.Name = "Activation"
Activation_13.Parent = TP1
Activation_13.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_13.BorderSizePixel = 0
Activation_13.Size = UDim2.new(0, 20, 0, 20)
Activation_13.Font = Enum.Font.Gotham
Activation_13.Text = ""
Activation_13.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_13.TextSize = 14.000

Title_13.Name = "Title"
Title_13.Parent = TP1
Title_13.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_13.BackgroundTransparency = 1.000
Title_13.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_13.BorderSizePixel = 0
Title_13.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_13.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_13.Font = Enum.Font.Gotham
Title_13.Text = "TP to Lobby"
Title_13.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_13.TextSize = 14.000
Title_13.TextWrapped = true
Title_13.TextXAlignment = Enum.TextXAlignment.Left

TP2.Name = "TP2"
TP2.Parent = TeleportFrame
TP2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TP2.BorderColor3 = Color3.fromRGB(30, 30, 30)
TP2.BorderSizePixel = 0
TP2.ClipsDescendants = true
TP2.Position = UDim2.new(0.0199999996, 0, 0.126000002, 0)
TP2.Size = UDim2.new(0, 161, 0, 20)

Activation_14.Name = "Activation"
Activation_14.Parent = TP2
Activation_14.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_14.BorderSizePixel = 0
Activation_14.Size = UDim2.new(0, 20, 0, 20)
Activation_14.Font = Enum.Font.Gotham
Activation_14.Text = ""
Activation_14.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_14.TextSize = 14.000

Title_14.Name = "Title"
Title_14.Parent = TP2
Title_14.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_14.BackgroundTransparency = 1.000
Title_14.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_14.BorderSizePixel = 0
Title_14.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_14.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_14.Font = Enum.Font.Gotham
Title_14.Text = "TP to Map"
Title_14.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_14.TextSize = 14.000
Title_14.TextWrapped = true
Title_14.TextXAlignment = Enum.TextXAlignment.Left

TeleportName.Name = "TeleportName"
TeleportName.Parent = TeleportFrame
TeleportName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TeleportName.BorderColor3 = Color3.fromRGB(30, 30, 30)
TeleportName.BorderSizePixel = 0
TeleportName.ClipsDescendants = true
TeleportName.Position = UDim2.new(0.0199999996, 0, 0.455000013, 0)
TeleportName.Size = UDim2.new(0, 161, 0, 42)

TeleportTB.Name = "TeleportTB"
TeleportTB.Parent = TeleportName
TeleportTB.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TeleportTB.BorderColor3 = Color3.fromRGB(40, 40, 40)
TeleportTB.BorderSizePixel = 0
TeleportTB.Position = UDim2.new(-0.000559931214, 0, -0.0166666675, 0)
TeleportTB.Size = UDim2.new(0.732458353, 0, 0.394444436, 0)
TeleportTB.Font = Enum.Font.Gotham
TeleportTB.Text = "Insert Name"
TeleportTB.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportTB.TextSize = 14.000

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = TeleportName
TeleportButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0, 0, 0.55555582, 0)
TeleportButton.Size = UDim2.new(0, 117, 0, 20)
TeleportButton.Font = Enum.Font.Gotham
TeleportButton.Text = "Teleport"
TeleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportButton.TextSize = 14.000

TP3.Name = "TP3"
TP3.Parent = TeleportFrame
TP3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TP3.BorderColor3 = Color3.fromRGB(30, 30, 30)
TP3.BorderSizePixel = 0
TP3.ClipsDescendants = true
TP3.Position = UDim2.new(0.0199999996, 0, 0.232999995, 0)
TP3.Size = UDim2.new(0, 161, 0, 20)

Activation_15.Name = "Activation"
Activation_15.Parent = TP3
Activation_15.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_15.BorderSizePixel = 0
Activation_15.Size = UDim2.new(0, 20, 0, 20)
Activation_15.Font = Enum.Font.Gotham
Activation_15.Text = ""
Activation_15.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_15.TextSize = 14.000

Title_15.Name = "Title"
Title_15.Parent = TP3
Title_15.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_15.BackgroundTransparency = 1.000
Title_15.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_15.BorderSizePixel = 0
Title_15.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_15.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_15.Font = Enum.Font.Gotham
Title_15.Text = "TP to Murderer"
Title_15.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_15.TextSize = 14.000
Title_15.TextWrapped = true
Title_15.TextXAlignment = Enum.TextXAlignment.Left

TP4.Name = "TP4"
TP4.Parent = TeleportFrame
TP4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TP4.BorderColor3 = Color3.fromRGB(30, 30, 30)
TP4.BorderSizePixel = 0
TP4.ClipsDescendants = true
TP4.Position = UDim2.new(0.0199999996, 0, 0.338999987, 0)
TP4.Size = UDim2.new(0, 161, 0, 20)

Activation_16.Name = "Activation"
Activation_16.Parent = TP4
Activation_16.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activation_16.BorderSizePixel = 0
Activation_16.Size = UDim2.new(0, 20, 0, 20)
Activation_16.Font = Enum.Font.Gotham
Activation_16.Text = ""
Activation_16.TextColor3 = Color3.fromRGB(0, 0, 0)
Activation_16.TextSize = 14.000

Title_16.Name = "Title"
Title_16.Parent = TP4
Title_16.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_16.BackgroundTransparency = 1.000
Title_16.BorderColor3 = Color3.fromRGB(30, 30, 30)
Title_16.BorderSizePixel = 0
Title_16.Position = UDim2.new(0.161490679, 0, 0, 0)
Title_16.Size = UDim2.new(0.838509321, 0, 1, 0)
Title_16.Font = Enum.Font.Gotham
Title_16.Text = "TP to Sheriff"
Title_16.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_16.TextSize = 14.000
Title_16.TextWrapped = true
Title_16.TextXAlignment = Enum.TextXAlignment.Left

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TopFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TopFrame.BorderColor3 = Color3.fromRGB(20, 20, 20)
TopFrame.BorderSizePixel = 0
TopFrame.ClipsDescendants = true
TopFrame.Position = UDim2.new(0.5, 0, -0.057, 0)
TopFrame.Size = UDim2.new(0, 387, 0, 26)

Title_17.Name = "Title"
Title_17.Parent = TopFrame
Title_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_17.BackgroundTransparency = 1.000
Title_17.BorderSizePixel = 0
Title_17.Position = UDim2.new(0.0199999996, 0, 0, 0)
Title_17.Size = UDim2.new(0.405684769, 0, 1, 0)
Title_17.Font = Enum.Font.Gotham
Title_17.Text = "MM2 Admin Panel"
Title_17.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_17.TextSize = 14.000
Title_17.TextXAlignment = Enum.TextXAlignment.Left

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TopFrame
MinimizeButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MinimizeButton.BackgroundTransparency = 1.000
MinimizeButton.BorderColor3 = Color3.fromRGB(20, 20, 20)
MinimizeButton.Position = UDim2.new(0.931999981, 0, 0.153999999, 0)
MinimizeButton.Size = UDim2.new(0, 18, 0, 18)
MinimizeButton.Font = Enum.Font.Gotham
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 25.000

local function ZIRG_fake_script() -- MainFrame.DraggingScript 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.TopFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
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
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(ZIRG_fake_script)()
local function YMZQ_fake_script() -- MainFrame.TweenIntro 
	local script = Instance.new('LocalScript', MainFrame)

	wait(1)
	script.Parent.StartFrame:TweenSize(UDim2.new(0,100,0,100), "Out", "Quad", 0.5, true)
	wait(1)
	script.Parent.StartFrame:TweenSize(UDim2.new(0,500,0,500), "Out", "Quad", 0.9, true)
	wait(0.9)
	script.Parent.TopFrame:TweenPosition(UDim2.new(0.5,0,0.057,0), "Out", "Quad", 0.5, true)
	script.Parent.BottomFrame:TweenPosition(UDim2.new(0.5,0,0.5,0), "Out", "Quad", 0.5, true)
	wait(0.5)
	script.Parent.StartFrame.Visible = false
end
coroutine.wrap(YMZQ_fake_script)()
local function MXBYD_fake_script() -- Activation.Script 
	local script = Instance.new('Script', Activation)

		flying = false
		lplayer = game.Players.LocalPlayer
		speedget = 1
		speedfly = 1
		Mouse = lplayer:GetMouse()
		
		script.Parent.MouseButton1Click:Connect(function()
			if flying == false then
				script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
				
				repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
				repeat wait() until Mouse
				
				local T = lplayer.Character.HumanoidRootPart
				local CONTROL = {F = 0, B = 0, L = 0, R = 0}
				local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				local SPEED = speedget
				
				local function fly()
					flying = true
					local BG = Instance.new('BodyGyro', T)
					local BV = Instance.new('BodyVelocity', T)
					BG.P = 9e4
					BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
					BG.cframe = T.CFrame
					BV.velocity = Vector3.new(0, 0.1, 0)
					BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
					spawn(function()
					repeat wait()
					lplayer.Character.Humanoid.PlatformStand = true
					if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
						SPEED = 50
					elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
						SPEED = 0
					end
					if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
					elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					else
						BV.velocity = Vector3.new(0, 0.1, 0)
					end
					BG.cframe = workspace.CurrentCamera.CoordinateFrame
					until not flying
						CONTROL = {F = 0, B = 0, L = 0, R = 0}
						lCONTROL = {F = 0, B = 0, L = 0, R = 0}
						SPEED = 0
						BG:destroy()
						BV:destroy()
						lplayer.Character.Humanoid.PlatformStand = false
					end)
				end
				Mouse.KeyDown:connect(function(KEY)
					if KEY:lower() == 'w' then
						CONTROL.F = speedfly
					elseif KEY:lower() == 's' then
						CONTROL.B = -speedfly
					elseif KEY:lower() == 'a' then
						CONTROL.L = -speedfly 
					elseif KEY:lower() == 'd' then 
						CONTROL.R = speedfly
					end
				end)
				Mouse.KeyUp:connect(function(KEY)
					if KEY:lower() == 'w' then
						CONTROL.F = 0
					elseif KEY:lower() == 's' then
						CONTROL.B = 0
					elseif KEY:lower() == 'a' then
						CONTROL.L = 0
					elseif KEY:lower() == 'd' then
						CONTROL.R = 0
					end
				end)
				fly()
			else
				flying = false
				script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
				lplayer.Character.Humanoid.PlatformStand = false
			end
		end)
		
		Mouse.KeyDown:Connect(function(k)
			if k == "x" then
				
				if flying == false then
					script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
					
					repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
					repeat wait() until Mouse
					
					local T = lplayer.Character.HumanoidRootPart
					local CONTROL = {F = 0, B = 0, L = 0, R = 0}
					local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
					local SPEED = speedget
					
					local function fly()
						flying = true
						local BG = Instance.new('BodyGyro', T)
						local BV = Instance.new('BodyVelocity', T)
						BG.P = 9e4
						BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
						BG.cframe = T.CFrame
						BV.velocity = Vector3.new(0, 0.1, 0)
						BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
						spawn(function()
						repeat wait()
						lplayer.Character.Humanoid.PlatformStand = true
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.velocity = Vector3.new(0, 0.1, 0)
						end
						BG.cframe = workspace.CurrentCamera.CoordinateFrame
						until not flying
							CONTROL = {F = 0, B = 0, L = 0, R = 0}
							lCONTROL = {F = 0, B = 0, L = 0, R = 0}
							SPEED = 0
							BG:destroy()
							BV:destroy()
							lplayer.Character.Humanoid.PlatformStand = false
						end)
					end
					Mouse.KeyDown:connect(function(KEY)
						if KEY:lower() == 'w' then
							CONTROL.F = speedfly
						elseif KEY:lower() == 's' then
							CONTROL.B = -speedfly
						elseif KEY:lower() == 'a' then
							CONTROL.L = -speedfly 
						elseif KEY:lower() == 'd' then 
							CONTROL.R = speedfly
						end
					end)
					Mouse.KeyUp:connect(function(KEY)
						if KEY:lower() == 'w' then
							CONTROL.F = 0
						elseif KEY:lower() == 's' then
							CONTROL.B = 0
						elseif KEY:lower() == 'a' then
							CONTROL.L = 0
						elseif KEY:lower() == 'd' then
							CONTROL.R = 0
						end
					end)
					fly()
				else
					flying = false
					script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
					lplayer.Character.Humanoid.PlatformStand = false
				end
				
			end
		end)
end
coroutine.wrap(MXBYD_fake_script)()
local function HREBVA_fake_script() -- Activation_2.Script 
	local script = Instance.new('Script', Activation_2)

		noclip = false
		local Mouse = game.Players.LocalPlayer:GetMouse()
		
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		
		script.Parent.MouseButton1Down:connect(function()
			noclip = not noclip
			if noclip then
				script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
			else
				script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
			end
		end)
		
		Mouse.KeyDown:Connect(function(k)
			if k == "c" then
				
				noclip = not noclip
				if noclip then
					script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
				else
					script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
				end
				
			end	
		end)
end
coroutine.wrap(HREBVA_fake_script)()
local function WLZBXL_fake_script() -- SetActivation.Script 
	local script = Instance.new('Script', SetActivation)

		script.Parent.MouseButton1Down:connect(function()	
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.Parent.WalkspeedTB.Text	
		end)
end
coroutine.wrap(WLZBXL_fake_script)()
local function YRYWA_fake_script() -- ResetActivation.Script 
	local script = Instance.new('Script', ResetActivation)

		script.Parent.MouseButton1Down:connect(function()	
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		script.Parent.Parent.WalkspeedTB.Text = ""
		end)
end
coroutine.wrap(YRYWA_fake_script)()
local function CFCRCM_fake_script() -- SetActivation_2.Script 
	local script = Instance.new('Script', SetActivation_2)

		script.Parent.MouseButton1Down:connect(function()	
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.Parent.JumpPowerTB.Text	
		end)
end
coroutine.wrap(CFCRCM_fake_script)()
local function PDGD_fake_script() -- ResetActivation_2.Script 
	local script = Instance.new('Script', ResetActivation_2)

		script.Parent.MouseButton1Down:connect(function()	
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 48
		script.Parent.Parent.JumpPowerTB.Text = ""
		end)
end
coroutine.wrap(PDGD_fake_script)()
local function SPNLPQB_fake_script() -- Activation_3.Script 
	local script = Instance.new('Script', Activation_3)

	local Mouse = game.Players.LocalPlayer:GetMouse()
	local InfiniteJump = false
	
	script.Parent.MouseButton1Down:connect(function()
		if InfiniteJump == false then
			InfiniteJump = true
			script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
		else
			InfiniteJump = false
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
		end
	end)
	
	Mouse.KeyDown:Connect(function(k)
		if k == "v" then
			if InfiniteJump == false then
				InfiniteJump = true
				script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
			else
				InfiniteJump = false
				script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
			end	
		end
	end)
	
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJump == true then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end
coroutine.wrap(SPNLPQB_fake_script)()
local function YFSUJW_fake_script() -- Activation_4.Script 
	local script = Instance.new('Script', Activation_4)

		local toggle = false
		
		script.Parent.MouseButton1Click:Connect(function()	
			if toggle == false then
				toggle = true
				script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
			else
				toggle = false
				script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
			end
			
			while toggle do wait(.25)
				local place = workspace:GetChildren()	
				local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
				local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
				local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
				
				for i,v in pairs(place) do	    
				    local vChildren = v:GetChildren()
				    for i,child in pairs(vChildren) do
				        if child.Name == "CoinContainer" then
				            
							if child.Coin_Server:FindFirstChild("Coin") ~= nil then
					            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Coin_Server.Coin.CFrame
							else
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
								script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
								toggle = false
							end
				
				        end
				    end	
				end
			end
			
		end)
end
coroutine.wrap(YFSUJW_fake_script)()
local function CKAW_fake_script() -- Activation_5.Script 
	local script = Instance.new('Script', Activation_5)

	local obj = game.workspace
	function XrayOn(obj) --Enables xray
	    for _,v in pairs(obj:GetChildren()) do
	        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
	            v.LocalTransparencyModifier = 0.75
	        end
	    XrayOn(v)
	    end
	end
	 
	function XrayOff(obj) --Disables xray
	    for _,v in pairs(obj:GetChildren()) do
	        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
	            v.LocalTransparencyModifier = 0
	        end XrayOff(v)
	    end
	end
	
	local toggle = false
		
		script.Parent.MouseButton1Click:Connect(function()	
			if toggle == false then
				toggle = true
			script.Parent.BackgroundColor3 = Color3.fromRGB(52, 255, 52)
			XrayOn(obj)
			else
				toggle = false
			script.Parent.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
			XrayOff(obj)
		end
	end)
end
coroutine.wrap(CKAW_fake_script)()
local function NJKYNZM_fake_script() -- Activation_6.Script 
	local script = Instance.new('Script', Activation_6)

	script.Parent.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/MM2Autofarm"))();
	end)
end
coroutine.wrap(NJKYNZM_fake_script)()
local function QHWFTYB_fake_script() -- Activation_7.Script 
	local script = Instance.new('Script', Activation_7)

	
	local function GetMurderer()
	    local plrs = game:GetService("Players")
	    for i,v in pairs(plrs:GetPlayers()) do
	        if v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Knife") then
	            return v
	        end
	    end
	end
	script.Parent.MouseButton1Click:Connect(function()
	local Murderer = GetMurderer() --// Gets the userdata of the murderer
		local pos = Murderer.Character.HumanoidRootPart.Position
	repeat
	    if Murderer ~= nil then --// Checking if there actually is a murderer
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Murderer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
				workspace.CurrentCamera.CFrame = Murderer.Character.HumanoidRootPart.CFrame
				
			end
	    wait()
		until Murderer.Character.Humanoid.Health == 0
		end)
	
end
coroutine.wrap(QHWFTYB_fake_script)()
local function PIWZ_fake_script() -- Activation_8.Script 
	local script = Instance.new('Script', Activation_8)

		script.Parent.MouseButton1Click:Connect(function()
			
			local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
			local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z	
			
			if workspace:FindFirstChild("GunDrop") ~= nil then
			
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("GunDrop").CFrame	
			wait(.25)	
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentX, currentY, currentZ)
				
			else
				
			    game.StarterGui:SetCore("SendNotification", {
	    Title = "MM2 Admin Panel";
	    Text = "Wait for the Sheriff's death to grab the gun";
	    Icon = "";
	    Duration = "2";
	})
				
			end	
		end)
end
coroutine.wrap(PIWZ_fake_script)()
local function GTOJAZG_fake_script() -- Activation_9.Script 
	local script = Instance.new('Script', Activation_9)

	script.Parent.MouseButton1Click:Connect(function()
		    	local Players = game:GetService("Players")	
			    for i, Victim in pairs(Players:GetPlayers()) do
			        if Victim.Name ~= game.Players.LocalPlayer.Name then
			
			            repeat wait()
			                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Victim.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			            until
				                Victim.Character.Humanoid.Health == 0
				end
			end
		end)
end
coroutine.wrap(GTOJAZG_fake_script)()
local function TJPSA_fake_script() -- Activation_10.Script 
	local script = Instance.new('Script', Activation_10)

	script.Parent.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/FPS%20Boost"))();
	end)
end
coroutine.wrap(TJPSA_fake_script)()
local function FGLRVKA_fake_script() -- AimTB.LocalScript 
	local script = Instance.new('LocalScript', AimTB)

	script.Parent.FocusLost:connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name),1,string.len(script.Parent.Text))) == string.lower(script.Parent.Text) then
				script.Parent.Text = v.Name
			end
		end
	end)
	
end
coroutine.wrap(FGLRVKA_fake_script)()
local function LZHKGTA_fake_script() -- AimPlayer.Script 
	local script = Instance.new('Script', AimPlayer)

	script.Parent.AimActivation.MouseButton1Click:Connect(function()
		_G.on = true
		local user = script.Parent.AimTB.Text
		local plr = game.Players.LocalPlayer
		while _G.on == true do
			for i,v in pairs(game:GetService("Players"):GetChildren()) do
				if v.Character:FindFirstChild("HumanoidRootPart") and v.Name == user then
					repeat
						local pos = v.Character.HumanoidRootPart.Position
						workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,pos)
						wait()
					until v.Character.Humanoid.Health < 1 or _G.on == false
				end
			end
		end
	end)
	
	script.Parent.DeAimActivation.MouseButton1Click:Connect(function()
		_G.on = false
	end)
end
coroutine.wrap(LZHKGTA_fake_script)()
local function MVWHPW_fake_script() -- VisualFrame.Script1 
	local script = Instance.new('Script', VisualFrame)

	local ESPToggle = false
	
	local plrs = game:GetService("Players")
	local faces = {"Back","Bottom","Front","Left","Right","Top"}
	function MakeESP()
		for _, v in pairs(game.Players:GetChildren()) do if v.Name ~= game.Players.LocalPlayer.Name then
				local bgui = Instance.new("BillboardGui",v.Character.Head)
				bgui.Name = ("EGUI")
				bgui.AlwaysOnTop = true
				bgui.ExtentsOffset = Vector3.new(0,2,0)
				bgui.Size = UDim2.new(0,200,0,50)
				local nam = Instance.new("TextLabel",bgui)
				nam.Text = v.Name
				nam.BackgroundTransparency = 1
				nam.TextSize = 15
				nam.Font = ("GothamBold")
				nam.TextColor3 = Color3.new(255,255,255)
				nam.Size = UDim2.new(0,200,0,50)
				if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
							for _, f in pairs(faces) do
								local m = Instance.new("SurfaceGui",p)
								m.Name = ("EGUI")
								m.Face = f
								m.AlwaysOnTop = true
								local mf = Instance.new("Frame",m)
								mf.Size = UDim2.new(1,0,1,0)
								mf.BorderSizePixel = 0
								mf.BackgroundTransparency = 0.5
								mf.BackgroundColor3 = Color3.new(0,0,255)
							end
						end
					end
				elseif v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
							for _, f in pairs(faces) do
								local m = Instance.new("SurfaceGui",p)
								m.Name = ("EGUI")
								m.Face = f
								m.AlwaysOnTop = true
								local mf = Instance.new("Frame",m)
								mf.Size = UDim2.new(1,0,1,0)
								mf.BorderSizePixel = 0
								mf.BackgroundTransparency = 0.5
								mf.BackgroundColor3 = Color3.new(255,0,0)
							end
						end
					end
				else
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
							for _, f in pairs(faces) do
								local m = Instance.new("SurfaceGui",p)
								m.Name = ("EGUI")
								m.Face = f
								m.AlwaysOnTop = true
								local mf = Instance.new("Frame",m)
								mf.Size = UDim2.new(1,0,1,0)
								mf.BorderSizePixel = 0
								mf.BackgroundTransparency = 0.5
								mf.BackgroundColor3 = Color3.new(255,255,255)
							end
						end
					end
				end
			end
		end
	end
	
	function ClearESP()
		for _, v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == ("EGUI") then
				v:Remove()
			end
		end
	end
	
	script.Parent.AllESP.Activation.MouseButton1Click:Connect(function()
			if ESPToggle == false then
				ESPToggle = true
				pcall(ClearESP)
				pcall(MakeESP)
			else
				ESPToggle = false
				pcall(ClearESP)
			end
		end)
	script.Parent.RefreshESP.Activation.MouseButton1Click:Connect(function()
			if ESPToggle == true then
			wait(1)
			pcall(ClearESP)
			pcall(MakeESP)
		end
	end)
	
	
	game:GetService("Players").PlayerAdded:Connect(function(v)
		if ESPToggle == true then
			wait(1)
			pcall(ClearESP)
			pcall(MakeESP)
		end
	end)
	
	game:GetService("Players").PlayerRemoving:Connect(function(v)
		if ESPToggle == true then
			wait(1)
			pcall(ClearESP)
			pcall(MakeESP)
		end
	end)
	
	while wait(60) do
		if ESPToggle == true then
			wait(1)
			pcall(ClearESP)
			pcall(MakeESP)
		end
	end
	
	
end
coroutine.wrap(MVWHPW_fake_script)()
local function OVVPNM_fake_script() -- Activation_13.Script 
	local script = Instance.new('Script', Activation_13)

		script.Parent.MouseButton1Click:Connect(function()
			
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.5, 145, 0.6)
			
		end)
end
coroutine.wrap(OVVPNM_fake_script)()
local function ODJNX_fake_script() -- Activation_14.Script 
	local script = Instance.new('Script', Activation_14)

		script.Parent.MouseButton1Click:Connect(function()	
			local Workplace = workspace:GetChildren()
			
			for i, Thing in pairs(Workplace) do
			
			    local ThingChildren = Thing:GetChildren()
			    for i, Child in pairs(ThingChildren) do
			        if Child.Name == "Spawns" then
			           
			           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Child.Spawn.CFrame
			
			        end
			    end
			end
		end)
end
coroutine.wrap(ODJNX_fake_script)()
local function CQNKW_fake_script() -- TeleportTB.LocalScript 
	local script = Instance.new('LocalScript', TeleportTB)

	script.Parent.FocusLost:connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name),1,string.len(script.Parent.Text))) == string.lower(script.Parent.Text) then
				script.Parent.Text = v.Name
			end
		end
	end)
	
end
coroutine.wrap(CQNKW_fake_script)()
local function XYYM_fake_script() -- TeleportButton.LocalScript 
	local script = Instance.new('LocalScript', TeleportButton)

		script.Parent.MouseButton1Click:Connect(function()	
		
			local Victim = script.Parent.Parent.TeleportTB.Text
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Victim].Character.HumanoidRootPart.CFrame 
		
		end)
end
coroutine.wrap(XYYM_fake_script)()
local function JZRZ_fake_script() -- Activation_15.Script 
	local script = Instance.new('Script', Activation_15)

		script.Parent.MouseButton1Click:Connect(function()	
			local Players = game:GetService("Players")			
			for i, player in pairs(Players:GetPlayers()) do
				
			    local bp = player.Backpack:GetChildren()
			    for i, tool in pairs(bp) do
			        if tool.Name == "Knife" then
													
				    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tool.Parent.Parent.Name].Character.HumanoidRootPart.CFrame
				
					end
				end
			
			end
		end)
end
coroutine.wrap(JZRZ_fake_script)()
local function KFEOGB_fake_script() -- Activation_16.Script 
	local script = Instance.new('Script', Activation_16)

		script.Parent.MouseButton1Click:Connect(function()	
			local Players = game:GetService("Players")			
			for i, player in pairs(Players:GetPlayers()) do
				
			    local bp = player.Backpack:GetChildren()
			    for i, tool in pairs(bp) do
			        if tool.Name == "Gun" then
													
				    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tool.Parent.Parent.Name].Character.HumanoidRootPart.CFrame
				
					end
				end
			
			end
		end)
end
coroutine.wrap(KFEOGB_fake_script)()
local function JIPBTDH_fake_script() -- BottomFrame.LocalScript 
	local script = Instance.new('LocalScript', BottomFrame)

	script.Parent.Tab1.MouseButton1Click:Connect(function()
		script.Parent.MainFrame.Visible = true
		script.Parent.PlayerFrame.Visible = false
		script.Parent.VisualFrame.Visible = false
		script.Parent.TeleportFrame.Visible = false
		script.Parent.Tab1.BackgroundColor3 = Color3.fromRGB(30,30,30)
		script.Parent.Tab2.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab3.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab4.BackgroundColor3 = Color3.fromRGB(20,20,20)
	end)
	script.Parent.Tab2.MouseButton1Click:Connect(function()
		script.Parent.MainFrame.Visible = false
		script.Parent.PlayerFrame.Visible = true
		script.Parent.VisualFrame.Visible = false
		script.Parent.TeleportFrame.Visible = false
		script.Parent.Tab1.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab2.BackgroundColor3 = Color3.fromRGB(30,30,30)
		script.Parent.Tab3.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab4.BackgroundColor3 = Color3.fromRGB(20,20,20)
	end)
	script.Parent.Tab3.MouseButton1Click:Connect(function()
		script.Parent.MainFrame.Visible = false
		script.Parent.PlayerFrame.Visible = false
		script.Parent.VisualFrame.Visible = true
		script.Parent.TeleportFrame.Visible = false
		script.Parent.Tab1.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab2.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab3.BackgroundColor3 = Color3.fromRGB(30,30,30)
		script.Parent.Tab4.BackgroundColor3 = Color3.fromRGB(20,20,20)
	end)
	script.Parent.Tab4.MouseButton1Click:Connect(function()
		script.Parent.MainFrame.Visible = false
		script.Parent.PlayerFrame.Visible = false
		script.Parent.VisualFrame.Visible = false
		script.Parent.TeleportFrame.Visible = true
		script.Parent.Tab1.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab2.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab3.BackgroundColor3 = Color3.fromRGB(20,20,20)
		script.Parent.Tab4.BackgroundColor3 = Color3.fromRGB(30,30,30)
	end)
end
coroutine.wrap(JIPBTDH_fake_script)()
local function AVLOK_fake_script() -- MinimizeButton.LocalScript 
	local script = Instance.new('LocalScript', MinimizeButton)

	local minimize = false
	
	script.Parent.MouseButton1Click:connect(function()
		if minimize == false then
			minimize = true
			script.Parent.Parent.Parent.BottomFrame:TweenPosition(UDim2.new(0.5,0,-0.5,0), "Out", "Quad", 0.5, true)
		else
			minimize = false
			script.Parent.Parent.Parent.BottomFrame:TweenPosition(UDim2.new(0.5,0,0.5,0), "Out", "Quad", 0.5, true)
		end
	end)
	
end
coroutine.wrap(AVLOK_fake_script)()