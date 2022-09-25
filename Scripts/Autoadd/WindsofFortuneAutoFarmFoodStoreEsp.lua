-- Gui to Lua
-- Version: 3.2

-- Instances:

local WindsofFortune = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local Frame_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local Page1 = Instance.new("Frame")
local PlayerChams = Instance.new("TextButton")
local BeachItemESP = Instance.new("TextButton")
local removefalldamage = Instance.new("TextButton")
local forcegameloadthing = Instance.new("TextButton")
local NoGameLoadthing2 = Instance.new("TextButton")
local ExtendHitboxMelee = Instance.new("TextButton")
local EvenLargerHitbox = Instance.new("TextButton")
local TreeFruitsESP = Instance.new("TextButton")
local ItemESP = Instance.new("TextButton")
local NPCEsp = Instance.new("TextButton")
local ForceEnableMouse = Instance.new("TextButton")
local removed = Instance.new("TextButton")
local AdminNotifications = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local _1 = Instance.new("TextButton")
local _2 = Instance.new("TextButton")
local Page2 = Instance.new("Frame")
local X = Instance.new("TextButton")
local X_2 = Instance.new("TextButton")
local ClothesShop = Instance.new("TextButton")
local X_3 = Instance.new("TextButton")
local X_4 = Instance.new("TextButton")
local X_5 = Instance.new("TextButton")
local HarbormasterHunter = Instance.new("TextButton")
local QuartermasterCorradoArmory = Instance.new("TextButton")
local FoodStore = Instance.new("TextButton")
local ParryARmory = Instance.new("TextButton")
local AutoGrabNearItems = Instance.new("TextButton")
local GeneralTrading = Instance.new("TextButton")
local harbormasterfisher = Instance.new("TextButton")
local _3 = Instance.new("TextButton")
local Page3 = Instance.new("Frame")
local _1_2 = Instance.new("TextButton")
local _5 = Instance.new("TextButton")
local _9 = Instance.new("TextButton")
local _6 = Instance.new("TextButton")
local _7 = Instance.new("TextButton")
local _8 = Instance.new("TextButton")
local _2_2 = Instance.new("TextButton")
local _3_2 = Instance.new("TextButton")
local _4 = Instance.new("TextButton")
local _10 = Instance.new("TextButton")
local DataName = Instance.new("TextBox")
local _11 = Instance.new("TextButton")

--Properties:

WindsofFortune.Name = "Winds of Fortune"
WindsofFortune.Parent = game.CoreGui
WindsofFortune.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WindsofFortune.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = WindsofFortune
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.470512867, 0, 0.259890139, 0)
Main.Size = UDim2.new(0, 479, 0, 298)

Frame.Name = "Frame"
Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, -0.000749831204, 0)
Frame.Size = UDim2.new(0, 479, 0, 298)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 170, 255)
Frame.ImageTransparency = 0.300
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Frame_2.Name = "Frame"
Frame_2.Parent = Main
Frame_2.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0, 0, -0.000749831204, 0)
Frame_2.Size = UDim2.new(0, 479, 0, 33)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(3, 104, 255)
Frame_2.ImageTransparency = 0.600
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.120

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.191776171, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 294, 0, 20)
TextLabel.Font = Enum.Font.Fondamento
TextLabel.Text = "Winds Of Fortune"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 20.000
TextLabel.TextTransparency = 0.300
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.192000002, 0, 0.511764526, 0)
TextLabel_2.Size = UDim2.new(0, 294, 0, 16)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.Text = "https://discord.gg/fQzMGrQay8"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000
TextLabel_2.TextTransparency = 0.300

ImageLabel.Parent = Frame_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0438414216, 0, 7.090909, 0)
ImageLabel.Size = UDim2.new(0, 85, 0, 63)
ImageLabel.Image = "rbxassetid://10566335823"
ImageLabel.ImageTransparency = 0.300

ImageLabel_2.Parent = Frame_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.776327312, 0, 0, 0)
ImageLabel_2.Size = UDim2.new(0, 45, 0, 37)
ImageLabel_2.Image = "rbxassetid://10566306293"
ImageLabel_2.ImageTransparency = 0.300

Page1.Name = "Page1"
Page1.Parent = Main
Page1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page1.BackgroundTransparency = 1.000
Page1.Position = UDim2.new(0, 0, 0.110738255, 0)
Page1.Size = UDim2.new(0, 478, 0, 264)
Page1.Visible = false

PlayerChams.Name = "PlayerChams"
PlayerChams.Parent = Page1
PlayerChams.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerChams.BackgroundTransparency = 0.500
PlayerChams.BorderSizePixel = 0
PlayerChams.Position = UDim2.new(0.031380754, 0, 0.11363636, 0)
PlayerChams.Size = UDim2.new(0, 99, 0, 47)
PlayerChams.Font = Enum.Font.Antique
PlayerChams.Text = "PlayerESP/ Chams"
PlayerChams.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerChams.TextScaled = true
PlayerChams.TextSize = 14.000
PlayerChams.TextWrapped = true

BeachItemESP.Name = "Beach Item ESP"
BeachItemESP.Parent = Page1
BeachItemESP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BeachItemESP.BackgroundTransparency = 0.500
BeachItemESP.BorderSizePixel = 0
BeachItemESP.Position = UDim2.new(0.031380754, 0, 0.344696999, 0)
BeachItemESP.Size = UDim2.new(0, 99, 0, 47)
BeachItemESP.Font = Enum.Font.Antique
BeachItemESP.Text = "BeachItem ESP"
BeachItemESP.TextColor3 = Color3.fromRGB(255, 255, 255)
BeachItemESP.TextScaled = true
BeachItemESP.TextSize = 14.000
BeachItemESP.TextWrapped = true

removefalldamage.Name = "removefalldamage"
removefalldamage.Parent = Page1
removefalldamage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
removefalldamage.BackgroundTransparency = 0.500
removefalldamage.BorderSizePixel = 0
removefalldamage.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
removefalldamage.Size = UDim2.new(0, 99, 0, 47)
removefalldamage.Font = Enum.Font.Antique
removefalldamage.Text = "No Fall Damage"
removefalldamage.TextColor3 = Color3.fromRGB(255, 255, 255)
removefalldamage.TextScaled = true
removefalldamage.TextSize = 14.000
removefalldamage.TextWrapped = true

forcegameloadthing.Name = "forcegameloadthing"
forcegameloadthing.Parent = Page1
forcegameloadthing.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
forcegameloadthing.BackgroundTransparency = 0.500
forcegameloadthing.BorderSizePixel = 0
forcegameloadthing.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
forcegameloadthing.Size = UDim2.new(0, 99, 0, 47)
forcegameloadthing.Font = Enum.Font.Antique
forcegameloadthing.Text = "No Game Unload"
forcegameloadthing.TextColor3 = Color3.fromRGB(255, 255, 255)
forcegameloadthing.TextScaled = true
forcegameloadthing.TextSize = 14.000
forcegameloadthing.TextWrapped = true

NoGameLoadthing2.Name = "NoGameLoadthing2"
NoGameLoadthing2.Parent = Page1
NoGameLoadthing2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoGameLoadthing2.BackgroundTransparency = 0.500
NoGameLoadthing2.BorderSizePixel = 0
NoGameLoadthing2.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
NoGameLoadthing2.Size = UDim2.new(0, 99, 0, 47)
NoGameLoadthing2.Font = Enum.Font.Antique
NoGameLoadthing2.Text = "No game load thing 2"
NoGameLoadthing2.TextColor3 = Color3.fromRGB(255, 255, 255)
NoGameLoadthing2.TextScaled = true
NoGameLoadthing2.TextSize = 14.000
NoGameLoadthing2.TextWrapped = true

ExtendHitboxMelee.Name = "ExtendHitboxMelee"
ExtendHitboxMelee.Parent = Page1
ExtendHitboxMelee.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExtendHitboxMelee.BackgroundTransparency = 0.500
ExtendHitboxMelee.BorderSizePixel = 0
ExtendHitboxMelee.Position = UDim2.new(0.274058551, 0, 0.344696939, 0)
ExtendHitboxMelee.Size = UDim2.new(0, 99, 0, 47)
ExtendHitboxMelee.Font = Enum.Font.Antique
ExtendHitboxMelee.Text = "Extend MeleeHitbox"
ExtendHitboxMelee.TextColor3 = Color3.fromRGB(255, 255, 255)
ExtendHitboxMelee.TextScaled = true
ExtendHitboxMelee.TextSize = 14.000
ExtendHitboxMelee.TextWrapped = true

EvenLargerHitbox.Name = "EvenLargerHitbox"
EvenLargerHitbox.Parent = Page1
EvenLargerHitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EvenLargerHitbox.BackgroundTransparency = 0.500
EvenLargerHitbox.BorderSizePixel = 0
EvenLargerHitbox.Position = UDim2.new(0.518828452, 0, 0.344696939, 0)
EvenLargerHitbox.Size = UDim2.new(0, 99, 0, 47)
EvenLargerHitbox.Font = Enum.Font.Antique
EvenLargerHitbox.Text = "Even Larger Melee Hitbox"
EvenLargerHitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
EvenLargerHitbox.TextScaled = true
EvenLargerHitbox.TextSize = 14.000
EvenLargerHitbox.TextWrapped = true

TreeFruitsESP.Name = "TreeFruitsESP"
TreeFruitsESP.Parent = Page1
TreeFruitsESP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TreeFruitsESP.BackgroundTransparency = 0.500
TreeFruitsESP.BorderSizePixel = 0
TreeFruitsESP.Position = UDim2.new(0.27405858, 0, 0.113636367, 0)
TreeFruitsESP.Size = UDim2.new(0, 99, 0, 47)
TreeFruitsESP.Font = Enum.Font.Antique
TreeFruitsESP.Text = "TreeFruits ESP"
TreeFruitsESP.TextColor3 = Color3.fromRGB(255, 255, 255)
TreeFruitsESP.TextScaled = true
TreeFruitsESP.TextSize = 14.000
TreeFruitsESP.TextWrapped = true

ItemESP.Name = "Item ESP"
ItemESP.Parent = Page1
ItemESP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ItemESP.BackgroundTransparency = 0.500
ItemESP.BorderSizePixel = 0
ItemESP.Position = UDim2.new(0.518828452, 0, 0.113636345, 0)
ItemESP.Size = UDim2.new(0, 99, 0, 47)
ItemESP.Font = Enum.Font.Antique
ItemESP.Text = "Item ESP"
ItemESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ItemESP.TextScaled = true
ItemESP.TextSize = 14.000
ItemESP.TextWrapped = true

NPCEsp.Name = "NPC Esp"
NPCEsp.Parent = Page1
NPCEsp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NPCEsp.BackgroundTransparency = 0.500
NPCEsp.BorderSizePixel = 0
NPCEsp.Position = UDim2.new(0.761506259, 0, 0.113636345, 0)
NPCEsp.Size = UDim2.new(0, 99, 0, 47)
NPCEsp.Font = Enum.Font.Antique
NPCEsp.Text = "NPC Esp"
NPCEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
NPCEsp.TextScaled = true
NPCEsp.TextSize = 14.000
NPCEsp.TextWrapped = true

ForceEnableMouse.Name = "ForceEnableMouse"
ForceEnableMouse.Parent = Page1
ForceEnableMouse.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ForceEnableMouse.BackgroundTransparency = 0.500
ForceEnableMouse.BorderSizePixel = 0
ForceEnableMouse.Position = UDim2.new(0.761506259, 0, 0.344696939, 0)
ForceEnableMouse.Size = UDim2.new(0, 99, 0, 47)
ForceEnableMouse.Font = Enum.Font.Antique
ForceEnableMouse.Text = "Right CTRL To Force Enable\\Disable mouse"
ForceEnableMouse.TextColor3 = Color3.fromRGB(255, 255, 255)
ForceEnableMouse.TextScaled = true
ForceEnableMouse.TextSize = 14.000
ForceEnableMouse.TextWrapped = true

removed.Name = "removed"
removed.Parent = Page1
removed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
removed.BackgroundTransparency = 0.500
removed.BorderSizePixel = 0
removed.Position = UDim2.new(0.761506259, 0, 0.583333313, 0)
removed.Size = UDim2.new(0, 99, 0, 47)
removed.Font = Enum.Font.Antique
removed.Text = "X"
removed.TextColor3 = Color3.fromRGB(255, 255, 255)
removed.TextScaled = true
removed.TextSize = 14.000
removed.TextWrapped = true

AdminNotifications.Name = "AdminNotifications"
AdminNotifications.Parent = Page1
AdminNotifications.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AdminNotifications.BackgroundTransparency = 0.500
AdminNotifications.BorderSizePixel = 0
AdminNotifications.Position = UDim2.new(0.481171429, 0, 0.795454562, 0)
AdminNotifications.Size = UDim2.new(0, 215, 0, 37)
AdminNotifications.Visible = false
AdminNotifications.Font = Enum.Font.Antique
AdminNotifications.Text = "Notify When Admin/Developer joins"
AdminNotifications.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminNotifications.TextScaled = true
AdminNotifications.TextSize = 14.000
AdminNotifications.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 0.600
TextButton.BorderColor3 = Color3.fromRGB(56, 16, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.909803629, 0, 0.0226420462, 0)
TextButton.Size = UDim2.new(0, 35, 0, 19)
TextButton.Font = Enum.Font.ArialBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 4)
TextButton.TextSize = 14.000
TextButton.TextTransparency = 0.300

_1.Name = "1"
_1.Parent = Main
_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1.BackgroundTransparency = 0.500
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.0187891442, 0, 0.126668945, 0)
_1.Size = UDim2.new(0, 139, 0, 19)
_1.Font = Enum.Font.Fondamento
_1.Text = "ESP \\ Other"
_1.TextColor3 = Color3.fromRGB(255, 255, 255)
_1.TextScaled = true
_1.TextSize = 14.000
_1.TextWrapped = true

_2.Name = "2"
_2.Parent = Main
_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_2.BackgroundTransparency = 0.500
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0.310638756, 0, 0.126668945, 0)
_2.Size = UDim2.new(0, 119, 0, 19)
_2.Font = Enum.Font.Fondamento
_2.Text = "Shops/AutoFarm"
_2.TextColor3 = Color3.fromRGB(255, 255, 255)
_2.TextScaled = true
_2.TextSize = 14.000
_2.TextWrapped = true

Page2.Name = "Page2"
Page2.Parent = Main
Page2.Active = true
Page2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page2.BackgroundTransparency = 1.000
Page2.Position = UDim2.new(0, 0, 0.110738255, 0)
Page2.Size = UDim2.new(0, 478, 0, 264)

X.Name = "X"
X.Parent = Page2
X.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X.BackgroundTransparency = 0.500
X.BorderSizePixel = 0
X.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
X.Size = UDim2.new(0, 99, 0, 47)
X.Font = Enum.Font.Antique
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true

X_2.Name = "X"
X_2.Parent = Page2
X_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_2.BackgroundTransparency = 0.500
X_2.BorderSizePixel = 0
X_2.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
X_2.Size = UDim2.new(0, 99, 0, 47)
X_2.Font = Enum.Font.Antique
X_2.Text = "X"
X_2.TextColor3 = Color3.fromRGB(255, 255, 255)
X_2.TextScaled = true
X_2.TextSize = 14.000
X_2.TextWrapped = true

ClothesShop.Name = "ClothesShop"
ClothesShop.Parent = Page2
ClothesShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClothesShop.BackgroundTransparency = 0.500
ClothesShop.BorderSizePixel = 0
ClothesShop.Position = UDim2.new(0.761506259, 0, 0.344696939, 0)
ClothesShop.Size = UDim2.new(0, 99, 0, 47)
ClothesShop.Font = Enum.Font.Antique
ClothesShop.Text = "Clothing Shop"
ClothesShop.TextColor3 = Color3.fromRGB(255, 255, 255)
ClothesShop.TextScaled = true
ClothesShop.TextSize = 14.000
ClothesShop.TextWrapped = true

X_3.Name = "X"
X_3.Parent = Page2
X_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_3.BackgroundTransparency = 0.500
X_3.BorderSizePixel = 0
X_3.Position = UDim2.new(0.537656903, 0, 0.818181813, 0)
X_3.Size = UDim2.new(0, 186, 0, 24)
X_3.Font = Enum.Font.Antique
X_3.Text = "X"
X_3.TextColor3 = Color3.fromRGB(255, 255, 255)
X_3.TextScaled = true
X_3.TextSize = 14.000
X_3.TextWrapped = true

X_4.Name = "X"
X_4.Parent = Page2
X_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_4.BackgroundTransparency = 0.500
X_4.BorderSizePixel = 0
X_4.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
X_4.Size = UDim2.new(0, 99, 0, 47)
X_4.Font = Enum.Font.Antique
X_4.Text = "X"
X_4.TextColor3 = Color3.fromRGB(255, 255, 255)
X_4.TextScaled = true
X_4.TextSize = 14.000
X_4.TextWrapped = true

X_5.Name = "X"
X_5.Parent = Page2
X_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
X_5.BackgroundTransparency = 0.500
X_5.BorderSizePixel = 0
X_5.Position = UDim2.new(0.761506259, 0, 0.583333313, 0)
X_5.Size = UDim2.new(0, 99, 0, 47)
X_5.Font = Enum.Font.Antique
X_5.Text = "X"
X_5.TextColor3 = Color3.fromRGB(255, 255, 255)
X_5.TextScaled = true
X_5.TextSize = 14.000
X_5.TextWrapped = true

HarbormasterHunter.Name = "HarbormasterHunter"
HarbormasterHunter.Parent = Page2
HarbormasterHunter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HarbormasterHunter.BackgroundTransparency = 0.500
HarbormasterHunter.BorderSizePixel = 0
HarbormasterHunter.Position = UDim2.new(0.518828452, 0, 0.344696939, 0)
HarbormasterHunter.Size = UDim2.new(0, 99, 0, 47)
HarbormasterHunter.Font = Enum.Font.Antique
HarbormasterHunter.Text = "Harbor Master Hunter"
HarbormasterHunter.TextColor3 = Color3.fromRGB(255, 255, 255)
HarbormasterHunter.TextScaled = true
HarbormasterHunter.TextSize = 14.000
HarbormasterHunter.TextWrapped = true

QuartermasterCorradoArmory.Name = "QuartermasterCorrado Armory"
QuartermasterCorradoArmory.Parent = Page2
QuartermasterCorradoArmory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
QuartermasterCorradoArmory.BackgroundTransparency = 0.500
QuartermasterCorradoArmory.BorderSizePixel = 0
QuartermasterCorradoArmory.Position = UDim2.new(0.031380713, 0, 0.344696939, 0)
QuartermasterCorradoArmory.Size = UDim2.new(0, 99, 0, 47)
QuartermasterCorradoArmory.Font = Enum.Font.Antique
QuartermasterCorradoArmory.Text = "QuartermasterCorrado Armory"
QuartermasterCorradoArmory.TextColor3 = Color3.fromRGB(255, 255, 255)
QuartermasterCorradoArmory.TextScaled = true
QuartermasterCorradoArmory.TextSize = 14.000
QuartermasterCorradoArmory.TextWrapped = true

FoodStore.Name = "FoodStore"
FoodStore.Parent = Page2
FoodStore.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FoodStore.BackgroundTransparency = 0.500
FoodStore.BorderSizePixel = 0
FoodStore.Position = UDim2.new(0.518828452, 0, 0.113636345, 0)
FoodStore.Size = UDim2.new(0, 99, 0, 47)
FoodStore.Font = Enum.Font.Antique
FoodStore.Text = "Food Store"
FoodStore.TextColor3 = Color3.fromRGB(255, 255, 255)
FoodStore.TextScaled = true
FoodStore.TextSize = 14.000
FoodStore.TextWrapped = true

ParryARmory.Name = "ParryARmory"
ParryARmory.Parent = Page2
ParryARmory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ParryARmory.BackgroundTransparency = 0.500
ParryARmory.BorderSizePixel = 0
ParryARmory.Position = UDim2.new(0.761506259, 0, 0.113636345, 0)
ParryARmory.Size = UDim2.new(0, 99, 0, 47)
ParryARmory.Font = Enum.Font.Antique
ParryARmory.Text = "Parry Armory"
ParryARmory.TextColor3 = Color3.fromRGB(255, 255, 255)
ParryARmory.TextScaled = true
ParryARmory.TextSize = 14.000
ParryARmory.TextWrapped = true

AutoGrabNearItems.Name = "AutoGrabNearItems"
AutoGrabNearItems.Parent = Page2
AutoGrabNearItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoGrabNearItems.BackgroundTransparency = 0.500
AutoGrabNearItems.BorderSizePixel = 0
AutoGrabNearItems.Position = UDim2.new(0.031380754, 0, 0.11363636, 0)
AutoGrabNearItems.Size = UDim2.new(0, 99, 0, 47)
AutoGrabNearItems.Font = Enum.Font.Antique
AutoGrabNearItems.Text = "AutoFarm Seperate GUI"
AutoGrabNearItems.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoGrabNearItems.TextScaled = true
AutoGrabNearItems.TextSize = 14.000
AutoGrabNearItems.TextWrapped = true

GeneralTrading.Name = "GeneralTrading"
GeneralTrading.Parent = Page2
GeneralTrading.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GeneralTrading.BackgroundTransparency = 0.500
GeneralTrading.BorderSizePixel = 0
GeneralTrading.Position = UDim2.new(0.27405858, 0, 0.113636367, 0)
GeneralTrading.Size = UDim2.new(0, 99, 0, 47)
GeneralTrading.Font = Enum.Font.Antique
GeneralTrading.Text = "Rusty General Trading"
GeneralTrading.TextColor3 = Color3.fromRGB(255, 255, 255)
GeneralTrading.TextScaled = true
GeneralTrading.TextSize = 14.000
GeneralTrading.TextWrapped = true

harbormasterfisher.Name = "harbormasterfisher"
harbormasterfisher.Parent = Page2
harbormasterfisher.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
harbormasterfisher.BackgroundTransparency = 0.500
harbormasterfisher.BorderSizePixel = 0
harbormasterfisher.Position = UDim2.new(0.274058551, 0, 0.344696939, 0)
harbormasterfisher.Size = UDim2.new(0, 99, 0, 47)
harbormasterfisher.Font = Enum.Font.Antique
harbormasterfisher.Text = "Harbor Master - Fisherman"
harbormasterfisher.TextColor3 = Color3.fromRGB(255, 255, 255)
harbormasterfisher.TextScaled = true
harbormasterfisher.TextSize = 14.000
harbormasterfisher.TextWrapped = true

_3.Name = "3"
_3.Parent = Main
_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_3.BackgroundTransparency = 0.500
_3.BorderSizePixel = 0
_3.Position = UDim2.new(0.584125161, 0, 0.126668945, 0)
_3.Size = UDim2.new(0, 144, 0, 19)
_3.Font = Enum.Font.Fondamento
_3.Text = "Teleports"
_3.TextColor3 = Color3.fromRGB(255, 255, 255)
_3.TextScaled = true
_3.TextSize = 14.000
_3.TextWrapped = true

Page3.Name = "Page3"
Page3.Parent = Main
Page3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page3.BackgroundTransparency = 1.000
Page3.Position = UDim2.new(0, 0, 0.110738255, 0)
Page3.Size = UDim2.new(0, 478, 0, 264)
Page3.Visible = false

_1_2.Name = "1"
_1_2.Parent = Page3
_1_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1_2.BackgroundTransparency = 0.500
_1_2.BorderSizePixel = 0
_1_2.Position = UDim2.new(0.031380754, 0, 0.11363636, 0)
_1_2.Size = UDim2.new(0, 99, 0, 47)
_1_2.Visible = false
_1_2.Font = Enum.Font.Fondamento
_1_2.Text = "Text Here"
_1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
_1_2.TextScaled = true
_1_2.TextSize = 14.000
_1_2.TextWrapped = true

_5.Name = "5"
_5.Parent = Page3
_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_5.BackgroundTransparency = 0.500
_5.BorderSizePixel = 0
_5.Position = UDim2.new(0.031380754, 0, 0.344696999, 0)
_5.Size = UDim2.new(0, 99, 0, 47)
_5.Visible = false
_5.Font = Enum.Font.Fondamento
_5.Text = "Text Here"
_5.TextColor3 = Color3.fromRGB(255, 255, 255)
_5.TextScaled = true
_5.TextSize = 14.000
_5.TextWrapped = true

_9.Name = "9"
_9.Parent = Page3
_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_9.BackgroundTransparency = 0.500
_9.BorderSizePixel = 0
_9.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
_9.Size = UDim2.new(0, 99, 0, 47)
_9.Visible = false
_9.Font = Enum.Font.Fondamento
_9.Text = "Text Here"
_9.TextColor3 = Color3.fromRGB(255, 255, 255)
_9.TextScaled = true
_9.TextSize = 14.000
_9.TextWrapped = true

_6.Name = "6"
_6.Parent = Page3
_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_6.BackgroundTransparency = 0.500
_6.BorderSizePixel = 0
_6.Position = UDim2.new(0.274058551, 0, 0.344696939, 0)
_6.Size = UDim2.new(0, 99, 0, 47)
_6.Visible = false
_6.Font = Enum.Font.Fondamento
_6.Text = "Text Here"
_6.TextColor3 = Color3.fromRGB(255, 255, 255)
_6.TextScaled = true
_6.TextSize = 14.000
_6.TextWrapped = true

_7.Name = "7"
_7.Parent = Page3
_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_7.BackgroundTransparency = 0.500
_7.BorderSizePixel = 0
_7.Position = UDim2.new(0.518828452, 0, 0.344696939, 0)
_7.Size = UDim2.new(0, 99, 0, 47)
_7.Visible = false
_7.Font = Enum.Font.Fondamento
_7.Text = "Text Here"
_7.TextColor3 = Color3.fromRGB(255, 255, 255)
_7.TextScaled = true
_7.TextSize = 14.000
_7.TextWrapped = true

_8.Name = "8"
_8.Parent = Page3
_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_8.BackgroundTransparency = 0.500
_8.BorderSizePixel = 0
_8.Position = UDim2.new(0.761506259, 0, 0.344696939, 0)
_8.Size = UDim2.new(0, 99, 0, 47)
_8.Visible = false
_8.Font = Enum.Font.Fondamento
_8.Text = "Text Here"
_8.TextColor3 = Color3.fromRGB(255, 255, 255)
_8.TextScaled = true
_8.TextSize = 14.000
_8.TextWrapped = true

_2_2.Name = "2"
_2_2.Parent = Page3
_2_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_2_2.BackgroundTransparency = 0.500
_2_2.BorderSizePixel = 0
_2_2.Position = UDim2.new(0.274058551, 0, 0.113636345, 0)
_2_2.Size = UDim2.new(0, 99, 0, 47)
_2_2.Visible = false
_2_2.Font = Enum.Font.Fondamento
_2_2.Text = "Text Here"
_2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
_2_2.TextScaled = true
_2_2.TextSize = 14.000
_2_2.TextWrapped = true

_3_2.Name = "3"
_3_2.Parent = Page3
_3_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_3_2.BackgroundTransparency = 0.500
_3_2.BorderSizePixel = 0
_3_2.Position = UDim2.new(0.518828452, 0, 0.113636345, 0)
_3_2.Size = UDim2.new(0, 99, 0, 47)
_3_2.Visible = false
_3_2.Font = Enum.Font.Fondamento
_3_2.Text = "Text Here"
_3_2.TextColor3 = Color3.fromRGB(255, 255, 255)
_3_2.TextScaled = true
_3_2.TextSize = 14.000
_3_2.TextWrapped = true

_4.Name = "4"
_4.Parent = Page3
_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_4.BackgroundTransparency = 0.500
_4.BorderSizePixel = 0
_4.Position = UDim2.new(0.761506259, 0, 0.113636345, 0)
_4.Size = UDim2.new(0, 99, 0, 47)
_4.Visible = false
_4.Font = Enum.Font.Fondamento
_4.Text = "Text Here"
_4.TextColor3 = Color3.fromRGB(255, 255, 255)
_4.TextScaled = true
_4.TextSize = 14.000
_4.TextWrapped = true

_10.Name = "10"
_10.Parent = Page3
_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_10.BackgroundTransparency = 0.500
_10.BorderSizePixel = 0
_10.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
_10.Size = UDim2.new(0, 99, 0, 47)
_10.Visible = false
_10.Font = Enum.Font.Fondamento
_10.Text = "Text Here"
_10.TextColor3 = Color3.fromRGB(255, 255, 255)
_10.TextScaled = true
_10.TextSize = 14.000
_10.TextWrapped = true

DataName.Name = "DataName"
DataName.Parent = Page3
DataName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DataName.BackgroundTransparency = 0.500
DataName.BorderColor3 = Color3.fromRGB(27, 42, 53)
DataName.Position = UDim2.new(0.762000024, 0, 0.583000004, 0)
DataName.Size = UDim2.new(0, 99, 0, 47)
DataName.Font = Enum.Font.Fondamento
DataName.Text = "Enter Teleport Location"
DataName.TextColor3 = Color3.fromRGB(255, 255, 255)
DataName.TextScaled = true
DataName.TextSize = 14.000
DataName.TextWrapped = true

_11.Name = "11"
_11.Parent = Page3
_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_11.BackgroundTransparency = 0.500
_11.BorderSizePixel = 0
_11.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
_11.Size = UDim2.new(0, 99, 0, 47)
_11.Font = Enum.Font.Fondamento
_11.Text = "Teleport To Location"
_11.TextColor3 = Color3.fromRGB(255, 255, 255)
_11.TextScaled = true
_11.TextSize = 14.000
_11.TextWrapped = true

-- Scripts:

local function EDEUGAY_fake_script() -- PlayerChams.Script 
 local script = Instance.new('Script', PlayerChams)

 function click()
  -- Settings --
 
  local settings = {
 
   fillcolor = Color3.fromRGB(255, 255, 255);
   filltransparency = .75;
 
   outlinecolor = Color3.fromRGB(255, 255, 255);
   outlinetransparency = 0;
 
  }
 
  -- Script --
 
  local plr = game:service'Players'.LocalPlayer
  local highlights = Instance.new('Folder', game:service'CoreGui')
 
  local function addhighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
 
   highlight.FillColor = settings.fillcolor
   highlight.FillTransparency = settings.filltransparency
 
   highlight.OutlineColor = settings.outlinecolor
   highlight.OutlineTransparency = settings.outlinetransparency
 
   highlight.Adornee.Changed:Connect(function()
    if not highlight.Adornee or not highlight.Adornee.Parent then
     highlight:Destroy()    
    end
   end)
 
   return highlight
  end
 
  local function addtoplayer(object)
   addhighlight(object)
  end
 
  for i,v in pairs(game.Players:GetChildren()) do
   addtoplayer(v.Character)
  end
 
  game.Players.ChildAdded:Connect(function(v)
   addtoplayer(v.Character)
  end)
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(EDEUGAY_fake_script)()
local function WBLK_fake_script() -- BeachItemESP.Script 
 local script = Instance.new('Script', BeachItemESP)

 function click()
 
  for __,v in pairs(game:GetService("Workspace").IgnoreBin.BeachItems:GetChildren()) do
   if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
    local a = Instance.new("BillboardGui",v)
    a.Size = UDim2.new(1,0, 1,0)
    a.Name = "A"
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 1
    b.BorderSizePixel = 0
    local c = Instance.new("TextLabel",b)
    c.Text = v.Name
    c.Size = UDim2.new(1,0, 1,0)
    c.BackgroundTransparency = 1
    c.BorderSizePixel = 0
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(WBLK_fake_script)()
local function RMFAC_fake_script() -- removefalldamage.Script 
 local script = Instance.new('Script', removefalldamage)

 function click()
  -- // Services
  local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
  -- // Vars
  local sbEvent = game:GetService("Players").LocalPlayer.Remotes.fallDamage.trigger
 
  -- // Hook
  local __namecall
  __namecall = hookmetamethod(game, "__namecall", function(...)
   -- // Vars
   local args = {...}
   local self = args[1]
   local method = getnamecallmethod()
 
   -- // Check if it is the remote
   if (self == sbEvent and method == "FireServer") then
    return
   end
 
   -- // Return default
   return __namecall(...)
  end)
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(RMFAC_fake_script)()
local function UHHO_fake_script() -- forcegameloadthing.Script 
 local script = Instance.new('Script', forcegameloadthing)

 function click()
  -- // Services
  local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
  -- // Vars
  local sbEvent = game:GetService("ReplicatedStorage").Modules.Network.SharedEntity.Unsubscribed
 
  -- // Hook
  local __namecall
  __namecall = hookmetamethod(game, "__namecall", function(...)
   -- // Vars
   local args = {...}
   local self = args[1]
   local method = getnamecallmethod()
 
   -- // Check if it is the remote
   if (self == sbEvent and method == "FireServer") then
    return
   end
 
   -- // Return default
   return __namecall(...)
  end)
 
 
  function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
 
 
 
 
 
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(UHHO_fake_script)()
local function ZLZNHMZ_fake_script() -- NoGameLoadthing2.Script 
 local script = Instance.new('Script', NoGameLoadthing2)

 function click()
  -- // Services
  local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
  -- // Vars
  local sbEvent = game:GetService("ReplicatedStorage").Modules.Network.SharedEntity.Subscribed
 
  -- // Hook
  local __namecall
  __namecall = hookmetamethod(game, "__namecall", function(...)
   -- // Vars
   local args = {...}
   local self = args[1]
   local method = getnamecallmethod()
 
   -- // Check if it is the remote
   if (self == sbEvent and method == "FireServer") then
    return
   end
 
   -- // Return default
   return __namecall(...)
  end)
 
 
  function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
 
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(ZLZNHMZ_fake_script)()
local function LCWLKH_fake_script() -- ExtendHitboxMelee.Script 
 local script = Instance.new('Script', ExtendHitboxMelee)

 function click()
  for i,v in pairs(game:GetService("Workspace").IgnoreBin:GetChildren()) do
   if v.Name == "MeleeHitScan" then
 
    if (game.Players.LocalPlayer.Character.Head.Position - v.Position).magnitude <= 10 then
     v.Transparency = 0.9
     v.Size = Vector3.new(11, 11, 11)
    end
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(LCWLKH_fake_script)()
local function OLCZ_fake_script() -- EvenLargerHitbox.Script 
 local script = Instance.new('Script', EvenLargerHitbox)

 function click()
  for i,v in pairs(game:GetService("Workspace").IgnoreBin:GetChildren()) do
   if v.Name == "MeleeHitScan" then
 
    if (game.Players.LocalPlayer.Character.Head.Position - v.Position).magnitude <= 10 then
     v.Transparency = 0.9
     v.Size = Vector3.new(25, 25, 25)
    end
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(OLCZ_fake_script)()
local function HKTHCP_fake_script() -- TreeFruitsESP.Script 
 local script = Instance.new('Script', TreeFruitsESP)

 function click()
  for __,v in pairs(game:GetService("Workspace").IgnoreBin.TreeFruits:GetChildren()) do
   if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
    local a = Instance.new("BillboardGui",v)
    a.Size = UDim2.new(1,0, 1,0)
    a.Name = "A"
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 1
    b.BorderSizePixel = 0
    local c = Instance.new("TextLabel",b)
    c.Text = v.Name
    c.Size = UDim2.new(1,0, 1,0)
    c.BackgroundTransparency = 1
    c.BorderSizePixel = 0
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(HKTHCP_fake_script)()
local function FEKKNC_fake_script() -- ItemESP.Script 
 local script = Instance.new('Script', ItemESP)

 function click()
 
  for __,v in pairs(game:GetService("Workspace").IgnoreBin.DroppedModels:GetChildren()) do
   if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
    local a = Instance.new("BillboardGui",v)
    a.Size = UDim2.new(1,0, 1,0)
    a.Name = "A"
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 1
    b.BorderSizePixel = 0
    local c = Instance.new("TextLabel",b)
    c.Text = v.Name
    c.Size = UDim2.new(1,0, 1,0)
    c.BackgroundTransparency = 1
    c.BorderSizePixel = 0
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(FEKKNC_fake_script)()
local function CCKMKU_fake_script() -- NPCEsp.Script 
 local script = Instance.new('Script', NPCEsp)

 function click()
 
 
  for __,v in pairs(game:GetService("Workspace").NPCContainer:GetChildren()) do
   if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
    local a = Instance.new("BillboardGui",v)
    a.Size = UDim2.new(1,0, 1,0)
    a.Name = "A"
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 1
    b.BorderSizePixel = 0
    local c = Instance.new("TextLabel",b)
    c.Text = v.Name
    c.Size = UDim2.new(1,0, 1,0)
    c.BackgroundTransparency = 1
    c.BorderSizePixel = 0
   end
  end
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(CCKMKU_fake_script)()
local function DGGS_fake_script() -- ForceEnableMouse.Script 
 local script = Instance.new('Script', ForceEnableMouse)

 function click()
  local CoreGui = game:GetService("CoreGui")
  local UserInputService = game:GetService("UserInputService")
  local RunService = game:GetService("RunService")
 
  local ScreenGui = CoreGui:FindFirstChild("MouseUnlockerGui") or Instance.new("ScreenGui")
  ScreenGui.Name = "MouseUnlockerGui"
  ScreenGui.Enabled = true
  ScreenGui.Parent = CoreGui
 
  local TextButton = Instance.new("TextButton")
  TextButton.Name = "ModalButton"
  TextButton.Modal = true
  TextButton.Size = UDim2.new(0, 0, 0, 0)
  TextButton.Position = UDim2.new(0, 0, 0, 0)
  TextButton.Visible = false
  TextButton.Parent = ScreenGui
 
  UserInputService.InputBegan:Connect(function(inputObject, gameProcessedEvent)
   if inputObject.KeyCode == Enum.KeyCode.RightControl then
    TextButton.Visible = not TextButton.Visible
   end
  end)
 
  RunService.Stepped:Connect(function()
   if TextButton.Visible == true then
    UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
   else
    UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
   end
  end)
 end
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(DGGS_fake_script)()
local function HMUXN_fake_script() -- removed.Script 
 local script = Instance.new('Script', removed)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(HMUXN_fake_script)()
local function EBYDSCJ_fake_script() -- AdminNotifications.Script 
 local script = Instance.new('Script', AdminNotifications)

 function click()
  
  
  
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(EBYDSCJ_fake_script)()
local function ADHE_fake_script() -- TextButton.Script 
 local script = Instance.new('Script', TextButton)

 button = script.Parent
 window = script.Parent.Parent 
 
 function onClicked(GUI)
  window:remove()
 end
 script.Parent.MouseButton1Click:connect(onClicked)
end
coroutine.wrap(ADHE_fake_script)()
local function INFSNND_fake_script() -- _1.Script 
 local script = Instance.new('Script', _1)

 --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
 --To open GUI, left click. To close, right click!
 function leftClick(mouse)
  script.Parent.Parent.Page1.Visible = true --"NAMEHERE is where you put the name of the GUI"
 end
 script.Parent.MouseButton1Click:connect(leftClick)
 
 function rightClick(mouse)
  script.Parent.Parent.Page1.Visible = false
 end
 script.Parent.MouseButton2Click:connect(rightClick)
end
coroutine.wrap(INFSNND_fake_script)()
local function FKRUAHX_fake_script() -- _1.Script 
 local script = Instance.new('Script', _1)

 script.Parent.MouseButton1Down:connect(function()
  script.Parent.Parent.Page2.Visible = false
  script.Parent.Parent.Page3.Visible = false
 
 
 end)
 
end
coroutine.wrap(FKRUAHX_fake_script)()
local function MRKTQW_fake_script() -- _2.Script 
 local script = Instance.new('Script', _2)

 script.Parent.MouseButton1Down:connect(function()
  script.Parent.Parent.Page1.Visible = false
  script.Parent.Parent.Page3.Visible = false
 
 
 end)
 
end
coroutine.wrap(MRKTQW_fake_script)()
local function SQUTHS_fake_script() -- _2.Script 
 local script = Instance.new('Script', _2)

 --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
 --To open GUI, left click. To close, right click!
 function leftClick(mouse)
  script.Parent.Parent.Page2.Visible = true --"NAMEHERE is where you put the name of the GUI"
 end
 script.Parent.MouseButton1Click:connect(leftClick)
 
 function rightClick(mouse)
  script.Parent.Parent.Page2.Visible = false
 end
 script.Parent.MouseButton2Click:connect(rightClick)
end
coroutine.wrap(SQUTHS_fake_script)()
local function YPHHYN_fake_script() -- X.Script 
 local script = Instance.new('Script', X)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(YPHHYN_fake_script)()
local function HJHEV_fake_script() -- X_2.Script 
 local script = Instance.new('Script', X_2)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(HJHEV_fake_script)()
local function JGWLFWM_fake_script() -- ClothesShop.Script 
 local script = Instance.new('Script', ClothesShop)

 function click()
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.Tailor_AllClothes
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- Tailor 
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(JGWLFWM_fake_script)()
local function XKSXD_fake_script() -- X_3.Script 
 local script = Instance.new('Script', X_3)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(XKSXD_fake_script)()
local function UBCA_fake_script() -- X_4.Script 
 local script = Instance.new('Script', X_4)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(UBCA_fake_script)()
local function ZDWZIGW_fake_script() -- X_5.Script 
 local script = Instance.new('Script', X_5)

 function click()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(ZDWZIGW_fake_script)()
local function BOHK_fake_script() -- HarbormasterHunter.Script 
 local script = Instance.new('Script', HarbormasterHunter)

 function click()
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.Harbormaster_Hunter
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- Hunter Harbormaster 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(BOHK_fake_script)()
local function SCQJEVV_fake_script() -- QuartermasterCorradoArmory.script 
 local script = Instance.new('Script', QuartermasterCorradoArmory)

 function click()
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.QuartermasterCorrado
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- quartermaster corrado armory 
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(SCQJEVV_fake_script)()
local function TIOJYYF_fake_script() -- FoodStore.Script 
 local script = Instance.new('Script', FoodStore)

 function click()
 
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.Gaspar
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- gaspar food store 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(TIOJYYF_fake_script)()
local function VVPYFC_fake_script() -- ParryARmory.Script 
 local script = Instance.new('Script', ParryARmory)

 function click()
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.Blacksmith_AllWeapons
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- parry armory
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(VVPYFC_fake_script)()
local function XQRDYV_fake_script() -- AutoGrabNearItems.Script 
 local script = Instance.new('Script', AutoGrabNearItems)

 function click()
  -- Gui to Lua
  -- Version: 3.2
 
  -- Instances:
 
  local WindsofFortuneAutoFarmPage = Instance.new("ScreenGui")
  local Main = Instance.new("Frame")
  local Frame = Instance.new("ImageLabel")
  local Frame_2 = Instance.new("ImageLabel")
  local TextLabel = Instance.new("TextLabel")
  local TextLabel_2 = Instance.new("TextLabel")
  local ImageLabel = Instance.new("ImageLabel")
  local ImageLabel_2 = Instance.new("ImageLabel")
  local Page1 = Instance.new("Frame")
  local Removed = Instance.new("TextButton")
  local removed = Instance.new("TextButton")
  local removed_2 = Instance.new("TextButton")
  local removed_3 = Instance.new("TextButton")
  local FishingCrateAuto = Instance.new("TextButton")
  local ExoticVaseAuto = Instance.new("TextButton")
  local DisableAutoFarm = Instance.new("TextButton")
  local TextButton = Instance.new("TextButton")
  local _1 = Instance.new("TextButton")
  local _2 = Instance.new("TextButton")
  local Page2 = Instance.new("Frame")
  local BeachItemGrabber = Instance.new("TextButton")
  local PickupTreeFruit = Instance.new("TextButton")
  local DisableAutoFarm_2 = Instance.new("TextButton")
  local PickupDroppedItems = Instance.new("TextButton")
  local FarmTrees = Instance.new("TextButton")
  local DisableGamePasued = Instance.new("TextButton")
  local GrabNearTreeFruit = Instance.new("TextButton")
  local Change = Instance.new("TextButton")
  local AutoGrabNearItems = Instance.new("TextButton")
  local GrabNearBeachItems = Instance.new("TextButton")
  local LoadIslands = Instance.new("TextButton")
  local _3 = Instance.new("TextButton")
  local Page3 = Instance.new("Frame")
  local _1_2 = Instance.new("TextButton")
  local _5 = Instance.new("TextButton")
  local _9 = Instance.new("TextButton")
  local _11 = Instance.new("TextButton")
  local _12 = Instance.new("TextButton")
  local _6 = Instance.new("TextButton")
  local _7 = Instance.new("TextButton")
  local _8 = Instance.new("TextButton")
  local _2_2 = Instance.new("TextButton")
  local _3_2 = Instance.new("TextButton")
  local _4 = Instance.new("TextButton")
  local _10 = Instance.new("TextButton")
  local DisableAutoFarm_3 = Instance.new("TextButton")
 
  --Properties:
 
  WindsofFortuneAutoFarmPage.Name = "Winds of FortuneAutoFarmPage"
  WindsofFortuneAutoFarmPage.Parent = game.CoreGui
  WindsofFortuneAutoFarmPage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  WindsofFortuneAutoFarmPage.ResetOnSpawn = false
 
  Main.Name = "Main"
  Main.Parent = WindsofFortuneAutoFarmPage
  Main.Active = true
  Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Main.BackgroundTransparency = 1.000
  Main.Position = UDim2.new(0.470512867, 0, 0.259890139, 0)
  Main.Size = UDim2.new(0, 479, 0, 298)
 
  Frame.Name = "Frame"
  Frame.Parent = Main
  Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Frame.BackgroundTransparency = 1.000
  Frame.Position = UDim2.new(0, 0, -0.000749831204, 0)
  Frame.Size = UDim2.new(0, 479, 0, 298)
  Frame.Image = "rbxassetid://3570695787"
  Frame.ImageColor3 = Color3.fromRGB(0, 170, 255)
  Frame.ImageTransparency = 0.300
  Frame.ScaleType = Enum.ScaleType.Slice
  Frame.SliceCenter = Rect.new(100, 100, 100, 100)
  Frame.SliceScale = 0.120
 
  Frame_2.Name = "Frame"
  Frame_2.Parent = Main
  Frame_2.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
  Frame_2.BackgroundTransparency = 1.000
  Frame_2.Position = UDim2.new(0, 0, -0.000749831204, 0)
  Frame_2.Size = UDim2.new(0, 479, 0, 33)
  Frame_2.Image = "rbxassetid://3570695787"
  Frame_2.ImageColor3 = Color3.fromRGB(3, 104, 255)
  Frame_2.ImageTransparency = 0.600
  Frame_2.ScaleType = Enum.ScaleType.Slice
  Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
  Frame_2.SliceScale = 0.120
 
  TextLabel.Parent = Frame_2
  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.BackgroundTransparency = 1.000
  TextLabel.Position = UDim2.new(0.191776171, 0, 0, 0)
  TextLabel.Size = UDim2.new(0, 294, 0, 20)
  TextLabel.Font = Enum.Font.Fondamento
  TextLabel.Text = "Winds Of Fortune"
  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.TextScaled = true
  TextLabel.TextSize = 20.000
  TextLabel.TextTransparency = 0.300
  TextLabel.TextWrapped = true
 
  TextLabel_2.Parent = Frame_2
  TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.BackgroundTransparency = 1.000
  TextLabel_2.Position = UDim2.new(0.192000002, 0, 0.511764526, 0)
  TextLabel_2.Size = UDim2.new(0, 294, 0, 16)
  TextLabel_2.Font = Enum.Font.ArialBold
  TextLabel_2.Text = "https://discord.gg/fQzMGrQay8"
  TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.TextSize = 15.000
  TextLabel_2.TextTransparency = 0.300
 
  ImageLabel.Parent = Frame_2
  ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ImageLabel.BackgroundTransparency = 1.000
  ImageLabel.Position = UDim2.new(0.0438414216, 0, 7.090909, 0)
  ImageLabel.Size = UDim2.new(0, 85, 0, 63)
  ImageLabel.Image = "rbxassetid://10566335823"
  ImageLabel.ImageTransparency = 0.300
 
  ImageLabel_2.Parent = Frame_2
  ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ImageLabel_2.BackgroundTransparency = 1.000
  ImageLabel_2.Position = UDim2.new(0.776327312, 0, 0, 0)
  ImageLabel_2.Size = UDim2.new(0, 45, 0, 37)
  ImageLabel_2.Image = "rbxassetid://10566306293"
  ImageLabel_2.ImageTransparency = 0.300
 
  Page1.Name = "Page1"
  Page1.Parent = Main
  Page1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Page1.BackgroundTransparency = 1.000
  Page1.Position = UDim2.new(0, 0, 0.110738255, 0)
  Page1.Size = UDim2.new(0, 478, 0, 264)
  Page1.Visible = false
 
  Removed.Name = "Removed"
  Removed.Parent = Page1
  Removed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Removed.BackgroundTransparency = 0.300
  Removed.BorderSizePixel = 0
  Removed.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
  Removed.Size = UDim2.new(0, 99, 0, 47)
  Removed.Font = Enum.Font.Antique
  Removed.Text = "Proccessed Wood Autofarm(TP)"
  Removed.TextColor3 = Color3.fromRGB(255, 255, 255)
  Removed.TextScaled = true
  Removed.TextSize = 14.000
  Removed.TextWrapped = true
 
  removed.Name = "removed"
  removed.Parent = Page1
  removed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  removed.BackgroundTransparency = 0.300
  removed.BorderSizePixel = 0
  removed.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
  removed.Size = UDim2.new(0, 99, 0, 47)
  removed.Font = Enum.Font.Antique
  removed.Text = "X"
  removed.TextColor3 = Color3.fromRGB(255, 255, 255)
  removed.TextScaled = true
  removed.TextSize = 14.000
  removed.TextWrapped = true
 
  removed_2.Name = "removed"
  removed_2.Parent = Page1
  removed_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  removed_2.BackgroundTransparency = 0.300
  removed_2.BorderSizePixel = 0
  removed_2.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
  removed_2.Size = UDim2.new(0, 99, 0, 47)
  removed_2.Font = Enum.Font.Antique
  removed_2.Text = "X"
  removed_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  removed_2.TextScaled = true
  removed_2.TextSize = 14.000
  removed_2.TextWrapped = true
 
  removed_3.Name = "removed"
  removed_3.Parent = Page1
  removed_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  removed_3.BackgroundTransparency = 0.300
  removed_3.BorderSizePixel = 0
  removed_3.Position = UDim2.new(0.761506259, 0, 0.583333313, 0)
  removed_3.Size = UDim2.new(0, 99, 0, 47)
  removed_3.Font = Enum.Font.Antique
  removed_3.Text = "X"
  removed_3.TextColor3 = Color3.fromRGB(255, 255, 255)
  removed_3.TextScaled = true
  removed_3.TextSize = 14.000
  removed_3.TextWrapped = true
 
  FishingCrateAuto.Name = "Fishing CrateAuto"
  FishingCrateAuto.Parent = Page1
  FishingCrateAuto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  FishingCrateAuto.BackgroundTransparency = 0.300
  FishingCrateAuto.BorderSizePixel = 0
  FishingCrateAuto.Position = UDim2.new(0.518828452, 0, 0.344696939, 0)
  FishingCrateAuto.Size = UDim2.new(0, 99, 0, 47)
  FishingCrateAuto.Font = Enum.Font.Antique
  FishingCrateAuto.Text = "FishingCrate Autofarm(TP)"
  FishingCrateAuto.TextColor3 = Color3.fromRGB(255, 255, 255)
  FishingCrateAuto.TextScaled = true
  FishingCrateAuto.TextSize = 14.000
  FishingCrateAuto.TextWrapped = true
 
  ExoticVaseAuto.Name = "ExoticVaseAuto"
  ExoticVaseAuto.Parent = Page1
  ExoticVaseAuto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  ExoticVaseAuto.BackgroundTransparency = 0.300
  ExoticVaseAuto.BorderSizePixel = 0
  ExoticVaseAuto.Position = UDim2.new(0.761506259, 0, 0.344696939, 0)
  ExoticVaseAuto.Size = UDim2.new(0, 99, 0, 47)
  ExoticVaseAuto.Font = Enum.Font.Antique
  ExoticVaseAuto.Text = "Exotic Vase Autofarm(TP)"
  ExoticVaseAuto.TextColor3 = Color3.fromRGB(255, 255, 255)
  ExoticVaseAuto.TextScaled = true
  ExoticVaseAuto.TextSize = 14.000
  ExoticVaseAuto.TextWrapped = true
 
  DisableAutoFarm.Name = "Disable Auto Farm"
  DisableAutoFarm.Parent = Page1
  DisableAutoFarm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  DisableAutoFarm.BackgroundTransparency = 0.300
  DisableAutoFarm.BorderSizePixel = 0
  DisableAutoFarm.Position = UDim2.new(0.537656903, 0, 0.818181813, 0)
  DisableAutoFarm.Size = UDim2.new(0, 186, 0, 24)
  DisableAutoFarm.Font = Enum.Font.Antique
  DisableAutoFarm.Text = "Disable Autofarms"
  DisableAutoFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
  DisableAutoFarm.TextScaled = true
  DisableAutoFarm.TextSize = 14.000
  DisableAutoFarm.TextWrapped = true
 
  TextButton.Parent = Main
  TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  TextButton.BackgroundTransparency = 0.600
  TextButton.BorderColor3 = Color3.fromRGB(56, 16, 255)
  TextButton.BorderSizePixel = 0
  TextButton.Position = UDim2.new(0.909803629, 0, 0.0226420462, 0)
  TextButton.Size = UDim2.new(0, 35, 0, 19)
  TextButton.Font = Enum.Font.ArialBold
  TextButton.Text = "X"
  TextButton.TextColor3 = Color3.fromRGB(255, 0, 4)
  TextButton.TextSize = 14.000
  TextButton.TextTransparency = 0.300
 
  _1.Name = "1"
  _1.Parent = Main
  _1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _1.BackgroundTransparency = 0.300
  _1.BorderSizePixel = 0
  _1.Position = UDim2.new(0.0187891442, 0, 0.126668945, 0)
  _1.Size = UDim2.new(0, 139, 0, 19)
  _1.Font = Enum.Font.Fondamento
  _1.Text = "AutoFarms 1"
  _1.TextColor3 = Color3.fromRGB(255, 255, 255)
  _1.TextScaled = true
  _1.TextSize = 14.000
  _1.TextWrapped = true
 
  _2.Name = "2"
  _2.Parent = Main
  _2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _2.BackgroundTransparency = 0.300
  _2.BorderSizePixel = 0
  _2.Position = UDim2.new(0.310638756, 0, 0.126668945, 0)
  _2.Size = UDim2.new(0, 119, 0, 19)
  _2.Font = Enum.Font.Fondamento
  _2.Text = "AutoFarms 2"
  _2.TextColor3 = Color3.fromRGB(255, 255, 255)
  _2.TextScaled = true
  _2.TextSize = 14.000
  _2.TextWrapped = true
 
  Page2.Name = "Page2"
  Page2.Parent = Main
  Page2.Active = true
  Page2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Page2.BackgroundTransparency = 1.000
  Page2.Position = UDim2.new(0, 0, 0.110738255, 0)
  Page2.Size = UDim2.new(0, 478, 0, 264)
 
  BeachItemGrabber.Name = "BeachItemGrabber"
  BeachItemGrabber.Parent = Page2
  BeachItemGrabber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  BeachItemGrabber.BackgroundTransparency = 0.300
  BeachItemGrabber.BorderSizePixel = 0
  BeachItemGrabber.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
  BeachItemGrabber.Size = UDim2.new(0, 99, 0, 47)
  BeachItemGrabber.Font = Enum.Font.Antique
  BeachItemGrabber.Text = "Auto Grab All Beach Items"
  BeachItemGrabber.TextColor3 = Color3.fromRGB(255, 255, 255)
  BeachItemGrabber.TextScaled = true
  BeachItemGrabber.TextSize = 14.000
  BeachItemGrabber.TextWrapped = true
 
  PickupTreeFruit.Name = "Pickup Tree Fruit"
  PickupTreeFruit.Parent = Page2
  PickupTreeFruit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  PickupTreeFruit.BackgroundTransparency = 0.300
  PickupTreeFruit.BorderSizePixel = 0
  PickupTreeFruit.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
  PickupTreeFruit.Size = UDim2.new(0, 99, 0, 47)
  PickupTreeFruit.Font = Enum.Font.Antique
  PickupTreeFruit.Text = "Auto Grab all Tree-Fruit"
  PickupTreeFruit.TextColor3 = Color3.fromRGB(255, 255, 255)
  PickupTreeFruit.TextScaled = true
  PickupTreeFruit.TextSize = 14.000
  PickupTreeFruit.TextWrapped = true
 
  DisableAutoFarm_2.Name = "Disable Auto Farm"
  DisableAutoFarm_2.Parent = Page2
  DisableAutoFarm_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  DisableAutoFarm_2.BackgroundTransparency = 0.300
  DisableAutoFarm_2.BorderSizePixel = 0
  DisableAutoFarm_2.Position = UDim2.new(0.537656903, 0, 0.818181813, 0)
  DisableAutoFarm_2.Size = UDim2.new(0, 186, 0, 24)
  DisableAutoFarm_2.Font = Enum.Font.Antique
  DisableAutoFarm_2.Text = "Disable Autofarms"
  DisableAutoFarm_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  DisableAutoFarm_2.TextScaled = true
  DisableAutoFarm_2.TextSize = 14.000
  DisableAutoFarm_2.TextWrapped = true
 
  PickupDroppedItems.Name = "PickupDroppedItems"
  PickupDroppedItems.Parent = Page2
  PickupDroppedItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  PickupDroppedItems.BackgroundTransparency = 0.300
  PickupDroppedItems.BorderSizePixel = 0
  PickupDroppedItems.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
  PickupDroppedItems.Size = UDim2.new(0, 99, 0, 47)
  PickupDroppedItems.Font = Enum.Font.Antique
  PickupDroppedItems.Text = "Auto Grab all Items"
  PickupDroppedItems.TextColor3 = Color3.fromRGB(255, 255, 255)
  PickupDroppedItems.TextScaled = true
  PickupDroppedItems.TextSize = 14.000
  PickupDroppedItems.TextWrapped = true
 
  FarmTrees.Name = "Farm Trees"
  FarmTrees.Parent = Page2
  FarmTrees.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  FarmTrees.BackgroundTransparency = 0.300
  FarmTrees.BorderSizePixel = 0
  FarmTrees.Position = UDim2.new(0.274058551, 0, 0.348484814, 0)
  FarmTrees.Size = UDim2.new(0, 99, 0, 47)
  FarmTrees.Font = Enum.Font.Antique
  FarmTrees.Text = "Chop Down All Trees(TP)"
  FarmTrees.TextColor3 = Color3.fromRGB(255, 255, 255)
  FarmTrees.TextScaled = true
  FarmTrees.TextSize = 14.000
  FarmTrees.TextWrapped = true
 
  DisableGamePasued.Name = "DisableGamePasued"
  DisableGamePasued.Parent = Page2
  DisableGamePasued.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  DisableGamePasued.BackgroundTransparency = 0.300
  DisableGamePasued.BorderSizePixel = 0
  DisableGamePasued.Position = UDim2.new(0.031380713, 0, 0.344696939, 0)
  DisableGamePasued.Size = UDim2.new(0, 99, 0, 47)
  DisableGamePasued.Font = Enum.Font.Antique
  DisableGamePasued.Text = "Disable Gameplay Paused on Teleport"
  DisableGamePasued.TextColor3 = Color3.fromRGB(255, 255, 255)
  DisableGamePasued.TextScaled = true
  DisableGamePasued.TextSize = 14.000
  DisableGamePasued.TextWrapped = true
 
  GrabNearTreeFruit.Name = "GrabNearTreeFruit"
  GrabNearTreeFruit.Parent = Page2
  GrabNearTreeFruit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  GrabNearTreeFruit.BackgroundTransparency = 0.300
  GrabNearTreeFruit.BorderSizePixel = 0
  GrabNearTreeFruit.Position = UDim2.new(0.518828452, 0, 0.113636345, 0)
  GrabNearTreeFruit.Size = UDim2.new(0, 99, 0, 47)
  GrabNearTreeFruit.Font = Enum.Font.Antique
  GrabNearTreeFruit.Text = "Auto Grab Near Tree-Fruit"
  GrabNearTreeFruit.TextColor3 = Color3.fromRGB(255, 255, 255)
  GrabNearTreeFruit.TextScaled = true
  GrabNearTreeFruit.TextSize = 14.000
  GrabNearTreeFruit.TextWrapped = true
 
  Change.Name = "Change"
  Change.Parent = Page2
  Change.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Change.BackgroundTransparency = 0.300
  Change.BorderSizePixel = 0
  Change.Position = UDim2.new(0.518828452, 0, 0.348484814, 0)
  Change.Size = UDim2.new(0, 99, 0, 47)
  Change.Visible = false
  Change.Font = Enum.Font.Antique
  Change.Text = "Mine All Ores(TP)"
  Change.TextColor3 = Color3.fromRGB(255, 255, 255)
  Change.TextScaled = true
  Change.TextSize = 14.000
  Change.TextWrapped = true
 
  AutoGrabNearItems.Name = "AutoGrabNearItems"
  AutoGrabNearItems.Parent = Page2
  AutoGrabNearItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  AutoGrabNearItems.BackgroundTransparency = 0.300
  AutoGrabNearItems.BorderSizePixel = 0
  AutoGrabNearItems.Position = UDim2.new(0.031380754, 0, 0.11363636, 0)
  AutoGrabNearItems.Size = UDim2.new(0, 99, 0, 47)
  AutoGrabNearItems.Font = Enum.Font.Antique
  AutoGrabNearItems.Text = "Auto Grab Near Items"
  AutoGrabNearItems.TextColor3 = Color3.fromRGB(255, 255, 255)
  AutoGrabNearItems.TextScaled = true
  AutoGrabNearItems.TextSize = 14.000
  AutoGrabNearItems.TextWrapped = true
 
  GrabNearBeachItems.Name = "GrabNearBeachItems"
  GrabNearBeachItems.Parent = Page2
  GrabNearBeachItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  GrabNearBeachItems.BackgroundTransparency = 0.300
  GrabNearBeachItems.BorderSizePixel = 0
  GrabNearBeachItems.Position = UDim2.new(0.27405858, 0, 0.113636367, 0)
  GrabNearBeachItems.Size = UDim2.new(0, 99, 0, 47)
  GrabNearBeachItems.Font = Enum.Font.Antique
  GrabNearBeachItems.Text = "Grab Near Beach Items"
  GrabNearBeachItems.TextColor3 = Color3.fromRGB(255, 255, 255)
  GrabNearBeachItems.TextScaled = true
  GrabNearBeachItems.TextSize = 14.000
  GrabNearBeachItems.TextWrapped = true
 
  LoadIslands.Name = "LoadIslands"
  LoadIslands.Parent = Page2
  LoadIslands.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  LoadIslands.BackgroundTransparency = 0.300
  LoadIslands.BorderSizePixel = 0
  LoadIslands.Position = UDim2.new(0.753138065, 0, 0.583333313, 0)
  LoadIslands.Size = UDim2.new(0, 99, 0, 47)
  LoadIslands.Font = Enum.Font.Antique
  LoadIslands.Text = "Load Island Resources (Teleports)"
  LoadIslands.TextColor3 = Color3.fromRGB(255, 255, 255)
  LoadIslands.TextScaled = true
  LoadIslands.TextSize = 14.000
  LoadIslands.TextWrapped = true
 
  _3.Name = "3"
  _3.Parent = Main
  _3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _3.BackgroundTransparency = 0.300
  _3.BorderSizePixel = 0
  _3.Position = UDim2.new(0.584125161, 0, 0.126668945, 0)
  _3.Size = UDim2.new(0, 144, 0, 19)
  _3.Font = Enum.Font.Fondamento
  _3.Text = "AutoFarms 3"
  _3.TextColor3 = Color3.fromRGB(255, 255, 255)
  _3.TextScaled = true
  _3.TextSize = 14.000
  _3.TextWrapped = true
 
  Page3.Name = "Page3"
  Page3.Parent = Main
  Page3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Page3.BackgroundTransparency = 1.000
  Page3.Position = UDim2.new(0, 0, 0.110738255, 0)
  Page3.Size = UDim2.new(0, 478, 0, 264)
  Page3.Visible = false
 
  _1_2.Name = "1"
  _1_2.Parent = Page3
  _1_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _1_2.BorderSizePixel = 0
  _1_2.Position = UDim2.new(0.031380754, 0, 0.11363636, 0)
  _1_2.Size = UDim2.new(0, 99, 0, 47)
  _1_2.Font = Enum.Font.ArialBold
  _1_2.Text = "Text Here"
  _1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  _1_2.TextSize = 14.000
  _1_2.TextWrapped = true
 
  _5.Name = "5"
  _5.Parent = Page3
  _5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _5.BorderSizePixel = 0
  _5.Position = UDim2.new(0.031380754, 0, 0.344696999, 0)
  _5.Size = UDim2.new(0, 99, 0, 47)
  _5.Font = Enum.Font.ArialBold
  _5.Text = "Text Here"
  _5.TextColor3 = Color3.fromRGB(255, 255, 255)
  _5.TextSize = 14.000
  _5.TextWrapped = true
 
  _9.Name = "9"
  _9.Parent = Page3
  _9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _9.BorderSizePixel = 0
  _9.Position = UDim2.new(0.031380754, 0, 0.583333313, 0)
  _9.Size = UDim2.new(0, 99, 0, 47)
  _9.Font = Enum.Font.ArialBold
  _9.Text = "Text Here"
  _9.TextColor3 = Color3.fromRGB(255, 255, 255)
  _9.TextSize = 14.000
  _9.TextWrapped = true
 
  _11.Name = "11"
  _11.Parent = Page3
  _11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _11.BorderSizePixel = 0
  _11.Position = UDim2.new(0.518828452, 0, 0.583333313, 0)
  _11.Size = UDim2.new(0, 99, 0, 47)
  _11.Font = Enum.Font.ArialBold
  _11.Text = "Text Here"
  _11.TextColor3 = Color3.fromRGB(255, 255, 255)
  _11.TextSize = 14.000
  _11.TextWrapped = true
 
  _12.Name = "12"
  _12.Parent = Page3
  _12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _12.BorderSizePixel = 0
  _12.Position = UDim2.new(0.761506259, 0, 0.583333313, 0)
  _12.Size = UDim2.new(0, 99, 0, 47)
  _12.Font = Enum.Font.ArialBold
  _12.Text = "Text Here"
  _12.TextColor3 = Color3.fromRGB(255, 255, 255)
  _12.TextSize = 14.000
  _12.TextWrapped = true
 
  _6.Name = "6"
  _6.Parent = Page3
  _6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _6.BorderSizePixel = 0
  _6.Position = UDim2.new(0.274058551, 0, 0.344696939, 0)
  _6.Size = UDim2.new(0, 99, 0, 47)
  _6.Font = Enum.Font.ArialBold
  _6.Text = "Text Here"
  _6.TextColor3 = Color3.fromRGB(255, 255, 255)
  _6.TextSize = 14.000
  _6.TextWrapped = true
 
  _7.Name = "7"
  _7.Parent = Page3
  _7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _7.BorderSizePixel = 0
  _7.Position = UDim2.new(0.518828452, 0, 0.344696939, 0)
  _7.Size = UDim2.new(0, 99, 0, 47)
  _7.Font = Enum.Font.ArialBold
  _7.Text = "Text Here"
  _7.TextColor3 = Color3.fromRGB(255, 255, 255)
  _7.TextSize = 14.000
  _7.TextWrapped = true
 
  _8.Name = "8"
  _8.Parent = Page3
  _8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _8.BorderSizePixel = 0
  _8.Position = UDim2.new(0.761506259, 0, 0.344696939, 0)
  _8.Size = UDim2.new(0, 99, 0, 47)
  _8.Font = Enum.Font.ArialBold
  _8.Text = "Text Here"
  _8.TextColor3 = Color3.fromRGB(255, 255, 255)
  _8.TextSize = 14.000
  _8.TextWrapped = true
 
  _2_2.Name = "2"
  _2_2.Parent = Page3
  _2_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _2_2.BorderSizePixel = 0
  _2_2.Position = UDim2.new(0.274058551, 0, 0.113636345, 0)
  _2_2.Size = UDim2.new(0, 99, 0, 47)
  _2_2.Font = Enum.Font.ArialBold
  _2_2.Text = "Text Here"
  _2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  _2_2.TextSize = 14.000
  _2_2.TextWrapped = true
 
  _3_2.Name = "3"
  _3_2.Parent = Page3
  _3_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _3_2.BorderSizePixel = 0
  _3_2.Position = UDim2.new(0.518828452, 0, 0.113636345, 0)
  _3_2.Size = UDim2.new(0, 99, 0, 47)
  _3_2.Font = Enum.Font.ArialBold
  _3_2.Text = "Text Here"
  _3_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  _3_2.TextSize = 14.000
  _3_2.TextWrapped = true
 
  _4.Name = "4"
  _4.Parent = Page3
  _4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _4.BorderSizePixel = 0
  _4.Position = UDim2.new(0.761506259, 0, 0.113636345, 0)
  _4.Size = UDim2.new(0, 99, 0, 47)
  _4.Font = Enum.Font.ArialBold
  _4.Text = "Text Here"
  _4.TextColor3 = Color3.fromRGB(255, 255, 255)
  _4.TextSize = 14.000
  _4.TextWrapped = true
 
  _10.Name = "10"
  _10.Parent = Page3
  _10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  _10.BorderSizePixel = 0
  _10.Position = UDim2.new(0.274058551, 0, 0.583333313, 0)
  _10.Size = UDim2.new(0, 99, 0, 47)
  _10.Font = Enum.Font.ArialBold
  _10.Text = "Text Here"
  _10.TextColor3 = Color3.fromRGB(255, 255, 255)
  _10.TextSize = 14.000
  _10.TextWrapped = true
 
  DisableAutoFarm_3.Name = "Disable Auto Farm"
  DisableAutoFarm_3.Parent = Page3
  DisableAutoFarm_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  DisableAutoFarm_3.BackgroundTransparency = 0.300
  DisableAutoFarm_3.BorderSizePixel = 0
  DisableAutoFarm_3.Position = UDim2.new(0.537656903, 0, 0.818181813, 0)
  DisableAutoFarm_3.Size = UDim2.new(0, 186, 0, 24)
  DisableAutoFarm_3.Font = Enum.Font.Antique
  DisableAutoFarm_3.Text = "Disable Autofarms"
  DisableAutoFarm_3.TextColor3 = Color3.fromRGB(255, 255, 255)
  DisableAutoFarm_3.TextScaled = true
  DisableAutoFarm_3.TextSize = 14.000
  DisableAutoFarm_3.TextWrapped = true
 
  -- Scripts:
 
  local function NIMBJXG_fake_script() -- Removed.Script 
   local script = Instance.new('Script', Removed)
 
   function click()
 
    _G.toggle = true
    while _G.toggle do
     wait(5)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4336, 17, 10120)
     wait(1)
     local args = {
      [1] = 16777370,
      [2] = 15585020
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(1)
     local args = {
      [1] = game:GetService("ReplicatedStorage").StudioPrefabs.GrabbableItems.TradeGoods:FindFirstChild("Processed Wood")
     }
 
     game:GetService("Players").LocalPlayer.Remotes.tradeSystem.buyCargo:InvokeServer(unpack(args))
     wait(0.1)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13782, 16, -7771)
     wait(2)
     local args = {
      [1] = 15584678,
      [2] = 15584680
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.4)
     local args = {
      [1] = 15584678,
      [2] = 15584680
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.4)
     local args = {
      [1] = 15584678,
      [2] = 15584680
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
    end
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(NIMBJXG_fake_script)()
  local function EPOTT_fake_script() -- removed.Script 
   local script = Instance.new('Script', removed)
 
   function click()
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(EPOTT_fake_script)()
  local function UORALMN_fake_script() -- removed_2.Script 
   local script = Instance.new('Script', removed_2)
 
   function click()
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(UORALMN_fake_script)()
  local function RDCVHL_fake_script() -- removed_3.Script 
   local script = Instance.new('Script', removed_3)
 
   function click()
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(RDCVHL_fake_script)()
  local function SMWK_fake_script() -- FishingCrateAuto.Script 
   local script = Instance.new('Script', FishingCrateAuto)
 
   function click()
    --fishing crate auto farm
 
    _G.toggle = true
    while _G.toggle do
     wait(1.5)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13779, 16, -7768)
     wait(0.3)
     local args = {
      [1] = 15584678,
      [2] = 82694058
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.3)
     local args = {
      [1] = game:GetService("ReplicatedStorage").StudioPrefabs.GrabbableItems.TradeGoods:FindFirstChild("Fishing Crate")
     }
 
     game:GetService("Players").LocalPlayer.Remotes.tradeSystem.buyCargo:InvokeServer(unpack(args))
     wait(0.1)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4311, 25, -8112)
     wait(0.3)
     local args = {
      [1] = 82693722,
      [2] = 15585024
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.4)
     local args = {
      [1] = 82693722,
      [2] = 15585024
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
 
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(SMWK_fake_script)()
  local function BBJS_fake_script() -- ExoticVaseAuto.Script 
   local script = Instance.new('Script', ExoticVaseAuto)
 
   function click()
    _G.toggle = true 
    while _G.toggle do
     wait(1.5)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13779, 16, -7768)
     wait(0.3)
     local args = {
      [1] = 15584678,
      [2] = 82694058
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.3)
     local args = {
      [1] = game:GetService("ReplicatedStorage").StudioPrefabs.GrabbableItems.TradeGoods:FindFirstChild("Exotic Vase")
     }
 
     game:GetService("Players").LocalPlayer.Remotes.tradeSystem.buyCargo:InvokeServer(unpack(args))
     wait(0.1)
     game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4311, 25, -8112)
     wait(0.3)
     local args = {
      [1] = 82693722,
      [2] = 15585024
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
     wait(0.4)
     local args = {
      [1] = 82693722,
      [2] = 15585024
     }
 
     game:GetService("Players").LocalPlayer.Remotes.triggerSubprompt:FireServer(unpack(args))
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(BBJS_fake_script)()
  local function FLFBJ_fake_script() -- DisableAutoFarm.Script 
   local script = Instance.new('Script', DisableAutoFarm)
 
   function click()
 
 
    _G.toggle = false
    while _G.toggle do
     wait(1.5)
     print("endddeddd")
 
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(FLFBJ_fake_script)()
  local function QUYMNKG_fake_script() -- TextButton.Script 
   local script = Instance.new('Script', TextButton)
 
   button = script.Parent
   window = script.Parent.Parent 
 
   function onClicked(GUI)
    window:remove()
   end
   script.Parent.MouseButton1Click:connect(onClicked)
  end
  coroutine.wrap(QUYMNKG_fake_script)()
  local function GDZGDXZ_fake_script() -- _1.Script 
   local script = Instance.new('Script', _1)
 
   --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
   --To open GUI, left click. To close, right click!
   function leftClick(mouse)
    script.Parent.Parent.Page1.Visible = true --"NAMEHERE is where you put the name of the GUI"
   end
   script.Parent.MouseButton1Click:connect(leftClick)
 
   function rightClick(mouse)
    script.Parent.Parent.Page1.Visible = false
   end
   script.Parent.MouseButton2Click:connect(rightClick)
  end
  coroutine.wrap(GDZGDXZ_fake_script)()
  local function NAIW_fake_script() -- _1.Script 
   local script = Instance.new('Script', _1)
 
   script.Parent.MouseButton1Down:connect(function()
    script.Parent.Parent.Page2.Visible = false
    script.Parent.Parent.Page3.Visible = false
 
 
   end)
 
  end
  coroutine.wrap(NAIW_fake_script)()
  local function CGUR_fake_script() -- _2.Script 
   local script = Instance.new('Script', _2)
 
   script.Parent.MouseButton1Down:connect(function()
    script.Parent.Parent.Page1.Visible = false
    script.Parent.Parent.Page3.Visible = false
 
 
   end)
 
  end
  coroutine.wrap(CGUR_fake_script)()
  local function ZRLD_fake_script() -- _2.Script 
   local script = Instance.new('Script', _2)
 
   --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
   --To open GUI, left click. To close, right click!
   function leftClick(mouse)
    script.Parent.Parent.Page2.Visible = true --"NAMEHERE is where you put the name of the GUI"
   end
   script.Parent.MouseButton1Click:connect(leftClick)
 
   function rightClick(mouse)
    script.Parent.Parent.Page2.Visible = false
   end
   script.Parent.MouseButton2Click:connect(rightClick)
  end
  coroutine.wrap(ZRLD_fake_script)()
  local function DYGSAGD_fake_script() -- BeachItemGrabber.Script 
   local script = Instance.new('Script', BeachItemGrabber)
 
   function click()
    _G.toggle = true
    while _G.toggle do
 
     for _,v in pairs(game.Workspace.IgnoreBin["BeachItems"]:GetDescendants()) do
 
      if v.Name == "ProximityPrompt" then 
       if v.Parent.ClassName == "MeshPart" then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        wait(0.2)
        fireproximityprompt(v)
        wait(0.0001)
       end
      end
     end
    end
    wait(30)
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(DYGSAGD_fake_script)()
  local function JNNXWQQ_fake_script() -- PickupTreeFruit.Script 
   local script = Instance.new('Script', PickupTreeFruit)
 
   function click()
    _G.toggle = true
    while _G.toggle do
     for _,v in pairs(game.Workspace.IgnoreBin.TreeFruits:GetDescendants()) do
      if v.Name == "Handle" then
       game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       wait(0.1)
       fireproximityprompt(v.ProximityPrompt)
       wait(0.0001)
      end
     end
    end
    wait(60)
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(JNNXWQQ_fake_script)()
  local function RHFRA_fake_script() -- DisableAutoFarm_2.Script 
   local script = Instance.new('Script', DisableAutoFarm_2)
 
   function click()
 
 
    _G.toggle = false
    while _G.toggle do
     wait(1.5)
     print("endddeddd")
 
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(RHFRA_fake_script)()
  local function LBHSPN_fake_script() -- PickupDroppedItems.Script 
   local script = Instance.new('Script', PickupDroppedItems)
 
 
 
 
 
 
   function click()
    _G.toggle = true
    while _G.toggle do
 
     for _,v in pairs(game.Workspace.IgnoreBin["DroppedModels"]:GetDescendants()) do
 
      if v.Name == "ProximityPrompt" then 
       if v.Parent.ClassName == "MeshPart" then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        wait(0.4)
        fireproximityprompt(v)
        wait(0.0001)
       end
      end
     end
    end
    print(1)
    wait(30)
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(LBHSPN_fake_script)()
  local function ZKUSQ_fake_script() -- FarmTrees.Script 
   local script = Instance.new('Script', FarmTrees)
 
   function click()
    local offsetCFrame = CFrame.new(0, 0, -4)
    for _,v2 in pairs(workspace:GetChildren()) do
     if v2.Name == "Tree" then 
      if v2:FindFirstChild("Part") then 
       if v2.Part:FindFirstChild("ProximityPrompt") then
        if (game.Players.LocalPlayer.Character.Head.Position - v2.Part.Position).magnitude <= 100000  then
         v2.Part.ProximityPrompt.MaxActivationDistance = 30
         v2.Part.ProximityPrompt.RequiresLineOfSight = false
         wait(0.001)
         game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v2.Part.CFrame:ToWorldSpace(offsetCFrame)
         wait(0.5)
         fireproximityprompt(v2.Part.ProximityPrompt)
         wait(10.5)
        end
       end
      end
     end
    end
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(ZKUSQ_fake_script)()
  local function FFDYMK_fake_script() -- DisableGamePasued.Script 
   local script = Instance.new('Script', DisableGamePasued)
 
   function click()
    game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(false)
    for i,v in pairs(getconnections(game.Players.LocalPlayer.GameplayPaused)) do
     v:Disable()
    end
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(FFDYMK_fake_script)()
  local function QIXWUT_fake_script() -- GrabNearTreeFruit.Script 
   local script = Instance.new('Script', GrabNearTreeFruit)
 
 
 
   function click()
    _G.toggle = true
    while _G.toggle do
     wait(0.1)
 
     for _,v in pairs(game.Workspace.IgnoreBin.TreeFruits:GetDescendants()) do
      if v.Name == "Handle" then
       if (game.Players.LocalPlayer.Character.Head.Position - v.Position).magnitude <= 15 then
        v.ProximityPrompt.MaxActivationDistance = 16
        wait(0.1)
        fireproximityprompt(v.ProximityPrompt)
        wait(0.0001)
       end
      end
     end
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
 
 
 
  end
  coroutine.wrap(QIXWUT_fake_script)()
  local function SMPOMME_fake_script() -- Change.Script 
   local script = Instance.new('Script', Change)
 
   function click()
 
    print("this does nothing yet")
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(SMPOMME_fake_script)()
  local function QUNVJEF_fake_script() -- AutoGrabNearItems.Script 
   local script = Instance.new('Script', AutoGrabNearItems)
 
   function click()
    _G.toggle = true
    while _G.toggle do
     wait(0.1)
     for _,v in pairs(game.Workspace.IgnoreBin["DroppedModels"]:GetDescendants()) do
 
      if v.Name == "ProximityPrompt" then 
       if v.Parent.ClassName == "MeshPart" then
        if (game.Players.LocalPlayer.Character.Head.Position - v.Parent.Position).magnitude <= 15 then
         v.MaxActivationDistance = 16
 
         wait(0.4)
         fireproximityprompt(v)
         wait(0.0001)
        end
       end
      end
     end
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(QUNVJEF_fake_script)()
  local function PTPV_fake_script() -- GrabNearBeachItems.Script 
   local script = Instance.new('Script', GrabNearBeachItems)
 
   function click()
    _G.toggle = true
    while _G.toggle do
     wait(0.1)
     for _,v in pairs(game.Workspace.IgnoreBin["BeachItems"]:GetDescendants()) do
 
      if v.Name == "ProximityPrompt" then 
       if v.Parent.ClassName == "MeshPart" then
        if (game.Players.LocalPlayer.Character.Head.Position - v.Parent.Position).magnitude <= 15 then
         v.MaxActivationDistance = 16
 
         wait(0.1)
         fireproximityprompt(v)
         wait(0.0001)
        end
       end
      end
     end
    end
 
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(PTPV_fake_script)()
  local function DMJHCPV_fake_script() -- LoadIslands.Script 
   local script = Instance.new('Script', LoadIslands)
 
   function click()
    for _,v in pairs(game.ReplicatedStorage.EnvironmentTriggers:GetChildren()) do
 
     if v.ClassName == "Part" then
      game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
      wait(1)
     end
    end
 
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(DMJHCPV_fake_script)()
  local function NLNE_fake_script() -- _3.Script 
   local script = Instance.new('Script', _3)
 
   --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
   --To open GUI, left click. To close, right click!
   function leftClick(mouse)
    script.Parent.Parent.Page3.Visible = true --"NAMEHERE is where you put the name of the GUI"
   end
   script.Parent.MouseButton1Click:connect(leftClick)
 
   function rightClick(mouse)
    script.Parent.Parent.Page3.Visible = false
   end
   script.Parent.MouseButton2Click:connect(rightClick)
  end
  coroutine.wrap(NLNE_fake_script)()
  local function JWHFK_fake_script() -- _3.Script 
   local script = Instance.new('Script', _3)
 
   script.Parent.MouseButton1Down:connect(function()
    script.Parent.Parent.Page1.Visible = false
    script.Parent.Parent.Page2.Visible = false
 
   end)
 
  end
  coroutine.wrap(JWHFK_fake_script)()
  local function KVYDZU_fake_script() -- DisableAutoFarm_3.Script 
   local script = Instance.new('Script', DisableAutoFarm_3)
 
   function click()
 
 
    _G.toggle = false
    while _G.toggle do
     wait(1.5)
     print("endddeddd")
 
    end
   end
 
 
   script.Parent.MouseButton1Down:connect(click)
  end
  coroutine.wrap(KVYDZU_fake_script)()
  local function EXJDXWG_fake_script() -- Main.Script 
   local script = Instance.new('Script', Main)
 
   local UIS = game:GetService("UserInputService")
   function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
     local Delta = input.Position - dragStart
     local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
     game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
     if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
      dragToggle = true
      dragStart = input.Position
      startPos = Frame.Position
      input.Changed:Connect(function()
       if input.UserInputState == Enum.UserInputState.End then
        dragToggle = false
       end
      end)
     end
    end)
    Frame.InputChanged:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
      dragInput = input
     end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
     if input == dragInput and dragToggle then
      updateInput(input)
     end
    end)
   end
 
   dragify(script.Parent)
  end
  coroutine.wrap(EXJDXWG_fake_script)()
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(XQRDYV_fake_script)()
local function TWCI_fake_script() -- GeneralTrading.Script 
 local script = Instance.new('Script', GeneralTrading)

 function click()
 
 
 
 
 
 
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.GeneralGoods
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args))  -- rusty general trading
  
  
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(TWCI_fake_script)()
local function KKKJ_fake_script() -- harbormasterfisher.Script 
 local script = Instance.new('Script', harbormasterfisher)

 function click()
 
  local args = {
   [1] = game:GetService("ReplicatedStorage").StudioPrefabs.Vendors.Harbormaster_Fisherman
  }
 
  game:GetService("Players").LocalPlayer.Remotes.itemVendors.enterStudioPrefab:FireServer(unpack(args)) -- Fisherman harbormaster 
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(KKKJ_fake_script)()
local function SSNY_fake_script() -- _3.Script 
 local script = Instance.new('Script', _3)

 --Script made by sermi, edited by me, karaoke60000! (I added the right click function)
 --To open GUI, left click. To close, right click!
 function leftClick(mouse)
  script.Parent.Parent.Page3.Visible = true --"NAMEHERE is where you put the name of the GUI"
 end
 script.Parent.MouseButton1Click:connect(leftClick)
 
 function rightClick(mouse)
  script.Parent.Parent.Page3.Visible = false
 end
 script.Parent.MouseButton2Click:connect(rightClick)
end
coroutine.wrap(SSNY_fake_script)()
local function JTVQBN_fake_script() -- _3.Script 
 local script = Instance.new('Script', _3)

 script.Parent.MouseButton1Down:connect(function()
  script.Parent.Parent.Page1.Visible = false
  script.Parent.Parent.Page2.Visible = false
 
 end)
 
end
coroutine.wrap(JTVQBN_fake_script)()
local function LQZJNK_fake_script() -- _11.Script 
 local script = Instance.new('Script', _11)

 function click()
  local findname = script.Parent.Parent.DataName.Text
  for _,v in pairs(game.ReplicatedStorage.EnvironmentTriggers:GetChildren()) do
 
   if v.Name == findname then
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    wait(1)
   end
  end
 
 end
 
 
 script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(LQZJNK_fake_script)()
local function FNNKBB_fake_script() -- Main.Script 
 local script = Instance.new('Script', Main)

 local UIS = game:GetService("UserInputService")
 function dragify(Frame)
  dragToggle = nil
  local dragSpeed = 0
  dragInput = nil
  dragStart = nil
  local dragPos = nil
  function updateInput(input)
   local Delta = input.Position - dragStart
   local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
   game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
  end
  Frame.InputBegan:Connect(function(input)
   if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
    dragToggle = true
    dragStart = input.Position
    startPos = Frame.Position
    input.Changed:Connect(function()
     if input.UserInputState == Enum.UserInputState.End then
      dragToggle = false
     end
    end)
   end
  end)
  Frame.InputChanged:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
    dragInput = input
   end
  end)
  game:GetService("UserInputService").InputChanged:Connect(function(input)
   if input == dragInput and dragToggle then
    updateInput(input)
   end
  end)
 end
 
 dragify(script.Parent)
end
coroutine.wrap(FNNKBB_fake_script)()