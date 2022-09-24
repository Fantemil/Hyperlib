local ScreenGui = Instance.new("ScreenGui")
local automation = Instance.new("TextLabel")
local BCG = Instance.new("Frame")
local togac = Instance.new("TextButton")
local togg = Instance.new("Frame")
local togar = Instance.new("TextButton")
local togg_2 = Instance.new("Frame")
local rebirthval = Instance.new("TextBox")
local togafpc = Instance.new("TextButton")
local togg_3 = Instance.new("Frame")
local world = Instance.new("TextBox")
local comingsoon = Instance.new("TextButton")
local togg_4 = Instance.new("Frame")
local comingsoon_2 = Instance.new("TextButton")
local togg_5 = Instance.new("Frame")
local minimise = Instance.new("TextButton")
local eggtab = Instance.new("TextLabel")
local EGGBCG = Instance.new("Frame")
local toggegab = Instance.new("TextButton")
local togg_6 = Instance.new("Frame")
local eggtopurchase = Instance.new("TextBox")
local antiteleportkick = Instance.new("TextButton")
local eggamount = Instance.new("TextBox")
local minimiseEGG = Instance.new("TextButton")
local teleporttab = Instance.new("TextLabel")
local TELEBCG = Instance.new("Frame")
local Shops = Instance.new("TextButton")
local Portals = Instance.new("TextButton")
local Leaderboards = Instance.new("TextButton")
local Lava = Instance.new("TextButton")
local Aqua = Instance.new("TextButton")
local Sakura = Instance.new("TextButton")
local Forest = Instance.new("TextButton")
local Desert = Instance.new("TextButton")
local Winter = Instance.new("TextButton")
local Mines = Instance.new("TextButton")
local Galaxy = Instance.new("TextButton")
local Heaven = Instance.new("TextButton")
local Hell = Instance.new("TextButton")
local minimiseTELE = Instance.new("TextButton")
local rebirthvall = Instance.new("NumberValue")
local worlforpawcoin = Instance.new("StringValue")
local eggtobuy = Instance.new("StringValue")
local eggamountt = Instance.new("NumberValue")


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

automation.Name = "automation"
automation.Parent = ScreenGui
automation.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
automation.BorderSizePixel = 0
automation.Position = UDim2.new(0.0739393979, 0, 0.103067487, 0)
automation.Size = UDim2.new(0, 193, 0, 31)
automation.Font = Enum.Font.GothamBold
automation.Text = "  Automation Tab"
automation.TextColor3 = Color3.fromRGB(255, 255, 255)
automation.TextSize = 10.000
automation.TextXAlignment = Enum.TextXAlignment.Left
automation.Active = true
automation.Draggable = true

BCG.Name = "BCG"
BCG.Parent = automation
BCG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BCG.BorderSizePixel = 0
BCG.Position = UDim2.new(0, 0, 0.99841702, 0)
BCG.Size = UDim2.new(0, 193, 0, 240)

togac.Name = "togac"
togac.Parent = BCG
togac.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togac.BorderColor3 = Color3.fromRGB(47, 49, 54)
togac.BorderSizePixel = 2
togac.Position = UDim2.new(0.0518133938, 0, 0.0458333343, 0)
togac.Size = UDim2.new(0, 172, 0, 24)
togac.Font = Enum.Font.GothamMedium
togac.Text = "  AutoClick"
togac.TextColor3 = Color3.fromRGB(255, 255, 255)
togac.TextSize = 9.000
togac.TextXAlignment = Enum.TextXAlignment.Left

togg.Name = "togg"
togg.Parent = togac
togg.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg.BorderSizePixel = 2
togg.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg.Size = UDim2.new(0, 10, 0, 10)

togar.Name = "togar"
togar.Parent = BCG
togar.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togar.BorderColor3 = Color3.fromRGB(47, 49, 54)
togar.BorderSizePixel = 2
togar.Position = UDim2.new(0.0518133938, 0, 0.0460000001, 30)
togar.Size = UDim2.new(0, 172, 0, 24)
togar.Font = Enum.Font.GothamMedium
togar.Text = "  AutoRebirth"
togar.TextColor3 = Color3.fromRGB(255, 255, 255)
togar.TextSize = 9.000
togar.TextXAlignment = Enum.TextXAlignment.Left

togg_2.Name = "togg"
togg_2.Parent = togar
togg_2.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg_2.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg_2.BorderSizePixel = 2
togg_2.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg_2.Size = UDim2.new(0, 10, 0, 10)

rebirthval.Name = "rebirthval"
rebirthval.Parent = BCG
rebirthval.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
rebirthval.BorderColor3 = Color3.fromRGB(47, 49, 54)
rebirthval.BorderSizePixel = 2
rebirthval.Position = UDim2.new(0.046632126, 0, 0.171000004, 30)
rebirthval.Size = UDim2.new(0, 172, 0, 24)
rebirthval.Font = Enum.Font.GothamMedium
rebirthval.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
rebirthval.PlaceholderText = "Rebirth Upgrade Level"
rebirthval.Text = ""
rebirthval.TextColor3 = Color3.fromRGB(255, 255, 255)
rebirthval.TextSize = 9.000

togafpc.Name = "togafpc"
togafpc.Parent = BCG
togafpc.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togafpc.BorderColor3 = Color3.fromRGB(47, 49, 54)
togafpc.BorderSizePixel = 2
togafpc.Position = UDim2.new(0.0518133938, 0, 0.171000004, 60)
togafpc.Size = UDim2.new(0, 172, 0, 24)
togafpc.Font = Enum.Font.GothamMedium
togafpc.Text = "  AutoFarm Paw Coins"
togafpc.TextColor3 = Color3.fromRGB(255, 255, 255)
togafpc.TextSize = 9.000
togafpc.TextXAlignment = Enum.TextXAlignment.Left

togg_3.Name = "togg"
togg_3.Parent = togafpc
togg_3.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg_3.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg_3.BorderSizePixel = 2
togg_3.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg_3.Size = UDim2.new(0, 10, 0, 10)

world.Name = "world"
world.Parent = BCG
world.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
world.BorderColor3 = Color3.fromRGB(47, 49, 54)
world.BorderSizePixel = 2
world.Position = UDim2.new(0.046632126, 0, 0.171000004, 90)
world.Size = UDim2.new(0, 172, 0, 24)
world.Font = Enum.Font.GothamMedium
world.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
world.PlaceholderText = "World to gather Paw Coins (Lava etc)"
world.Text = ""
world.TextColor3 = Color3.fromRGB(255, 255, 255)
world.TextSize = 9.000

comingsoon.Name = "comingsoon"
comingsoon.Parent = BCG
comingsoon.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
comingsoon.BorderColor3 = Color3.fromRGB(47, 49, 54)
comingsoon.BorderSizePixel = 2
comingsoon.Position = UDim2.new(0.0518133938, 0, 0.171000004, 120)
comingsoon.Size = UDim2.new(0, 172, 0, 24)
comingsoon.Font = Enum.Font.GothamMedium
comingsoon.Text = "  Coming soon"
comingsoon.TextColor3 = Color3.fromRGB(255, 255, 255)
comingsoon.TextSize = 9.000
comingsoon.TextXAlignment = Enum.TextXAlignment.Left

togg_4.Name = "togg"
togg_4.Parent = comingsoon
togg_4.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg_4.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg_4.BorderSizePixel = 2
togg_4.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg_4.Size = UDim2.new(0, 10, 0, 10)

comingsoon_2.Name = "comingsoon"
comingsoon_2.Parent = BCG
comingsoon_2.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
comingsoon_2.BorderColor3 = Color3.fromRGB(47, 49, 54)
comingsoon_2.BorderSizePixel = 2
comingsoon_2.Position = UDim2.new(0.0518133938, 0, 0.171000004, 150)
comingsoon_2.Size = UDim2.new(0, 172, 0, 24)
comingsoon_2.Font = Enum.Font.GothamMedium
comingsoon_2.Text = "  Coming soon"
comingsoon_2.TextColor3 = Color3.fromRGB(255, 255, 255)
comingsoon_2.TextSize = 9.000
comingsoon_2.TextXAlignment = Enum.TextXAlignment.Left

togg_5.Name = "togg"
togg_5.Parent = comingsoon_2
togg_5.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg_5.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg_5.BorderSizePixel = 2
togg_5.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg_5.Size = UDim2.new(0, 10, 0, 10)

minimise.Name = "minimise"
minimise.Parent = automation
minimise.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimise.BackgroundTransparency = 4.000
minimise.Position = UDim2.new(0.854922295, 0, 0.225806445, 0)
minimise.Size = UDim2.new(0, 18, 0, 17)
minimise.Font = Enum.Font.SourceSans
minimise.Text = "▲"
minimise.TextColor3 = Color3.fromRGB(255, 255, 255)
minimise.TextSize = 14.000

eggtab.Name = "eggtab"
eggtab.Parent = ScreenGui
eggtab.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
eggtab.BorderSizePixel = 0
eggtab.Position = UDim2.new(0.201212123, 0, 0.103067487, 0)
eggtab.Size = UDim2.new(0, 193, 0, 31)
eggtab.Font = Enum.Font.GothamBold
eggtab.Text = "  Auto Egg Tab"
eggtab.TextColor3 = Color3.fromRGB(255, 255, 255)
eggtab.TextSize = 10.000
eggtab.TextXAlignment = Enum.TextXAlignment.Left
eggtab.Active = true
eggtab.Draggable = true

EGGBCG.Name = "EGGBCG"
EGGBCG.Parent = eggtab
EGGBCG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
EGGBCG.BorderSizePixel = 0
EGGBCG.Position = UDim2.new(0, 0, 0.99841702, 0)
EGGBCG.Size = UDim2.new(0, 193, 0, 139)

toggegab.Name = "toggegab"
toggegab.Parent = EGGBCG
toggegab.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
toggegab.BorderColor3 = Color3.fromRGB(47, 49, 54)
toggegab.BorderSizePixel = 2
toggegab.Position = UDim2.new(0.0569947399, 0, -0.140000001, 60)
toggegab.Size = UDim2.new(0, 172, 0, 24)
toggegab.Font = Enum.Font.GothamMedium
toggegab.Text = " Auto Buy"
toggegab.TextColor3 = Color3.fromRGB(255, 255, 255)
toggegab.TextSize = 9.000
toggegab.TextXAlignment = Enum.TextXAlignment.Left

togg_6.Name = "togg"
togg_6.Parent = toggegab
togg_6.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
togg_6.BorderColor3 = Color3.fromRGB(47, 49, 54)
togg_6.BorderSizePixel = 2
togg_6.Position = UDim2.new(0.901162922, 0, 0.291666657, 0)
togg_6.Size = UDim2.new(0, 10, 0, 10)

eggtopurchase.Name = "eggtopurchase"
eggtopurchase.Parent = EGGBCG
eggtopurchase.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
eggtopurchase.BorderColor3 = Color3.fromRGB(47, 49, 54)
eggtopurchase.BorderSizePixel = 2
eggtopurchase.Position = UDim2.new(0.0518134721, 0, -0.786000013, 180)
eggtopurchase.Size = UDim2.new(0, 172, 0, 24)
eggtopurchase.Font = Enum.Font.GothamMedium
eggtopurchase.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
eggtopurchase.PlaceholderText = "Egg To Purchase"
eggtopurchase.Text = ""
eggtopurchase.TextColor3 = Color3.fromRGB(255, 255, 255)
eggtopurchase.TextSize = 9.000

antiteleportkick.Name = "antiteleportkick"
antiteleportkick.Parent = EGGBCG
antiteleportkick.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
antiteleportkick.BorderColor3 = Color3.fromRGB(47, 49, 54)
antiteleportkick.BorderSizePixel = 2
antiteleportkick.Position = UDim2.new(0.0569947399, 0, 0.0754172653, 0)
antiteleportkick.Size = UDim2.new(0, 172, 0, 24)
antiteleportkick.Font = Enum.Font.GothamMedium
antiteleportkick.Text = " Anti Kick (Use If New)"
antiteleportkick.TextColor3 = Color3.fromRGB(255, 255, 255)
antiteleportkick.TextSize = 9.000
antiteleportkick.TextXAlignment = Enum.TextXAlignment.Left

eggamount.Name = "eggamount"
eggamount.Parent = EGGBCG
eggamount.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
eggamount.BorderColor3 = Color3.fromRGB(47, 49, 54)
eggamount.BorderSizePixel = 2
eggamount.Position = UDim2.new(0.0518134721, 0, -0.786000013, 210)
eggamount.Size = UDim2.new(0, 172, 0, 24)
eggamount.Font = Enum.Font.GothamMedium
eggamount.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
eggamount.PlaceholderText = "Amount ( 1 / 3 )"
eggamount.Text = ""
eggamount.TextColor3 = Color3.fromRGB(255, 255, 255)
eggamount.TextSize = 9.000

minimiseEGG.Name = "minimiseEGG"
minimiseEGG.Parent = eggtab
minimiseEGG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimiseEGG.BackgroundTransparency = 4.000
minimiseEGG.Position = UDim2.new(0.854922295, 0, 0.225806445, 0)
minimiseEGG.Size = UDim2.new(0, 18, 0, 17)
minimiseEGG.Font = Enum.Font.SourceSans
minimiseEGG.Text = "▲"
minimiseEGG.TextColor3 = Color3.fromRGB(255, 255, 255)
minimiseEGG.TextSize = 14.000

teleporttab.Name = "teleporttab"
teleporttab.Parent = ScreenGui
teleporttab.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
teleporttab.BorderSizePixel = 0
teleporttab.Position = UDim2.new(0.327272743, 0, 0.103067487, 0)
teleporttab.Size = UDim2.new(0, 193, 0, 31)
teleporttab.Font = Enum.Font.GothamBold
teleporttab.Text = "  Teleport Tab"
teleporttab.TextColor3 = Color3.fromRGB(255, 255, 255)
teleporttab.TextSize = 10.000
teleporttab.TextXAlignment = Enum.TextXAlignment.Left
teleporttab.Active = true
teleporttab.Draggable = true

TELEBCG.Name = "TELEBCG"
TELEBCG.Parent = teleporttab
TELEBCG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TELEBCG.BorderSizePixel = 0
TELEBCG.Position = UDim2.new(0, 0, 0.99841702, 0)
TELEBCG.Size = UDim2.new(0, 193, 0, 410)

Shops.Name = "Shops"
Shops.Parent = TELEBCG
Shops.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Shops.BorderColor3 = Color3.fromRGB(47, 49, 54)
Shops.BorderSizePixel = 2
Shops.Position = UDim2.new(0.0518133938, 0, -0.0500410125, 30)
Shops.Size = UDim2.new(0, 172, 0, 24)
Shops.Font = Enum.Font.GothamMedium
Shops.Text = "  Shops"
Shops.TextColor3 = Color3.fromRGB(255, 255, 255)
Shops.TextSize = 9.000
Shops.TextXAlignment = Enum.TextXAlignment.Left

Portals.Name = "Portals"
Portals.Parent = TELEBCG
Portals.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Portals.BorderColor3 = Color3.fromRGB(47, 49, 54)
Portals.BorderSizePixel = 2
Portals.Position = UDim2.new(0.0518133938, 0, -0.0500410125, 60)
Portals.Size = UDim2.new(0, 172, 0, 24)
Portals.Font = Enum.Font.GothamMedium
Portals.Text = "  Portals"
Portals.TextColor3 = Color3.fromRGB(255, 255, 255)
Portals.TextSize = 9.000
Portals.TextXAlignment = Enum.TextXAlignment.Left

Leaderboards.Name = "Leaderboards"
Leaderboards.Parent = TELEBCG
Leaderboards.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Leaderboards.BorderColor3 = Color3.fromRGB(47, 49, 54)
Leaderboards.BorderSizePixel = 2
Leaderboards.Position = UDim2.new(0.0518133938, 0, -0.0500410125, 90)
Leaderboards.Size = UDim2.new(0, 172, 0, 24)
Leaderboards.Font = Enum.Font.GothamMedium
Leaderboards.Text = "  Leaderboards"
Leaderboards.TextColor3 = Color3.fromRGB(255, 255, 255)
Leaderboards.TextSize = 9.000
Leaderboards.TextXAlignment = Enum.TextXAlignment.Left

Lava.Name = "Lava"
Lava.Parent = TELEBCG
Lava.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Lava.BorderColor3 = Color3.fromRGB(47, 49, 54)
Lava.BorderSizePixel = 2
Lava.Position = UDim2.new(0.0518133938, 0, -0.0500410125, 120)
Lava.Size = UDim2.new(0, 172, 0, 24)
Lava.Font = Enum.Font.GothamMedium
Lava.Text = "  Lava"
Lava.TextColor3 = Color3.fromRGB(255, 255, 255)
Lava.TextSize = 9.000
Lava.TextXAlignment = Enum.TextXAlignment.Left

Aqua.Name = "Aqua"
Aqua.Parent = TELEBCG
Aqua.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Aqua.BorderColor3 = Color3.fromRGB(47, 49, 54)
Aqua.BorderSizePixel = 2
Aqua.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 150)
Aqua.Size = UDim2.new(0, 172, 0, 24)
Aqua.Font = Enum.Font.GothamMedium
Aqua.Text = "  Aqua"
Aqua.TextColor3 = Color3.fromRGB(255, 255, 255)
Aqua.TextSize = 9.000
Aqua.TextXAlignment = Enum.TextXAlignment.Left

Sakura.Name = "Sakura"
Sakura.Parent = TELEBCG
Sakura.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Sakura.BorderColor3 = Color3.fromRGB(47, 49, 54)
Sakura.BorderSizePixel = 2
Sakura.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 180)
Sakura.Size = UDim2.new(0, 172, 0, 24)
Sakura.Font = Enum.Font.GothamMedium
Sakura.Text = "  Sakura"
Sakura.TextColor3 = Color3.fromRGB(255, 255, 255)
Sakura.TextSize = 9.000
Sakura.TextXAlignment = Enum.TextXAlignment.Left

Forest.Name = "Forest"
Forest.Parent = TELEBCG
Forest.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Forest.BorderColor3 = Color3.fromRGB(47, 49, 54)
Forest.BorderSizePixel = 2
Forest.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 210)
Forest.Size = UDim2.new(0, 172, 0, 24)
Forest.Font = Enum.Font.GothamMedium
Forest.Text = "  Forest"
Forest.TextColor3 = Color3.fromRGB(255, 255, 255)
Forest.TextSize = 9.000
Forest.TextXAlignment = Enum.TextXAlignment.Left

Desert.Name = "Desert"
Desert.Parent = TELEBCG
Desert.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Desert.BorderColor3 = Color3.fromRGB(47, 49, 54)
Desert.BorderSizePixel = 2
Desert.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 240)
Desert.Size = UDim2.new(0, 172, 0, 24)
Desert.Font = Enum.Font.GothamMedium
Desert.Text = "  Desert"
Desert.TextColor3 = Color3.fromRGB(255, 255, 255)
Desert.TextSize = 9.000
Desert.TextXAlignment = Enum.TextXAlignment.Left

Winter.Name = "Winter"
Winter.Parent = TELEBCG
Winter.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Winter.BorderColor3 = Color3.fromRGB(47, 49, 54)
Winter.BorderSizePixel = 2
Winter.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 270)
Winter.Size = UDim2.new(0, 172, 0, 24)
Winter.Font = Enum.Font.GothamMedium
Winter.Text = "  Winter"
Winter.TextColor3 = Color3.fromRGB(255, 255, 255)
Winter.TextSize = 9.000
Winter.TextXAlignment = Enum.TextXAlignment.Left

Mines.Name = "Mines"
Mines.Parent = TELEBCG
Mines.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Mines.BorderColor3 = Color3.fromRGB(47, 49, 54)
Mines.BorderSizePixel = 2
Mines.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 300)
Mines.Size = UDim2.new(0, 172, 0, 24)
Mines.Font = Enum.Font.GothamMedium
Mines.Text = "  Mines"
Mines.TextColor3 = Color3.fromRGB(255, 255, 255)
Mines.TextSize = 9.000
Mines.TextXAlignment = Enum.TextXAlignment.Left

Galaxy.Name = "Galaxy"
Galaxy.Parent = TELEBCG
Galaxy.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Galaxy.BorderColor3 = Color3.fromRGB(47, 49, 54)
Galaxy.BorderSizePixel = 2
Galaxy.Position = UDim2.new(0.0518133938, 0, -0.0499912836, 330)
Galaxy.Size = UDim2.new(0, 172, 0, 24)
Galaxy.Font = Enum.Font.GothamMedium
Galaxy.Text = "  Galaxy"
Galaxy.TextColor3 = Color3.fromRGB(255, 255, 255)
Galaxy.TextSize = 9.000
Galaxy.TextXAlignment = Enum.TextXAlignment.Left

Heaven.Name = "Heaven"
Heaven.Parent = TELEBCG
Heaven.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Heaven.BorderColor3 = Color3.fromRGB(47, 49, 54)
Heaven.BorderSizePixel = 2
Heaven.Position = UDim2.new(0.0518133938, 0, -0.0495816469, 360)
Heaven.Size = UDim2.new(0, 172, 0, 24)
Heaven.Font = Enum.Font.GothamMedium
Heaven.Text = "  Heaven"
Heaven.TextColor3 = Color3.fromRGB(255, 255, 255)
Heaven.TextSize = 9.000
Heaven.TextXAlignment = Enum.TextXAlignment.Left

Hell.Name = "Hell"
Hell.Parent = TELEBCG
Hell.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
Hell.BorderColor3 = Color3.fromRGB(47, 49, 54)
Hell.BorderSizePixel = 2
Hell.Position = UDim2.new(0.0518133938, 0, -0.0495816469, 390)
Hell.Size = UDim2.new(0, 172, 0, 24)
Hell.Font = Enum.Font.GothamMedium
Hell.Text = "  Hell"
Hell.TextColor3 = Color3.fromRGB(255, 255, 255)
Hell.TextSize = 9.000
Hell.TextXAlignment = Enum.TextXAlignment.Left

minimiseTELE.Name = "minimiseTELE"
minimiseTELE.Parent = teleporttab
minimiseTELE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimiseTELE.BackgroundTransparency = 4.000
minimiseTELE.Position = UDim2.new(0.854922295, 0, 0.225806445, 0)
minimiseTELE.Size = UDim2.new(0, 18, 0, 17)
minimiseTELE.Font = Enum.Font.SourceSans
minimiseTELE.Text = "▲"
minimiseTELE.TextColor3 = Color3.fromRGB(255, 255, 255)
minimiseTELE.TextSize = 14.000

rebirthvall.Name = "rebirthvall"
rebirthvall.Parent = rebirthval

worlforpawcoin.Name = "Worlspawncoinval"
worlforpawcoin.Parent = world

eggtobuy.Name = "Eggtobuy"
eggtobuy.Parent = eggtopurchase

eggamountt.Name = "eggamountt"
eggamountt.Parent = eggamount

rebirthval.Changed:Connect(function()
 rebirthvall.Value = rebirthval.Text
end)

eggtopurchase.Changed:Connect(function()
 eggtobuy.Value = eggtopurchase.Text
end)

eggamount.Changed:Connect(function()
 eggamountt.Value = eggamount.Text
end)

world.Changed:Connect(function()
 worlforpawcoin.Value = world.Text
end)

world.Changed:Connect(function()
 worlforpawcoin.Value = world.Text
end)


local thing = true

minimise.MouseButton1Up:Connect(function()
 if thing == false then
  thing = true
  BCG:TweenSize(UDim2.new(0, 193,0, 240), 1)
  minimise.Text = "▲"
  wait(0.5)
        togac.Visible = true
        togar.Visible = true
        world.Visible = true
        rebirthval.Visible = true
        comingsoon.Visible = true
        comingsoon_2.Visible = true
        togafpc.Visible = true
 else
        togac.Visible = false
        togar.Visible = false
        world.Visible = false
        rebirthval.Visible = false
        comingsoon.Visible = false
        comingsoon_2.Visible = false
        togafpc.Visible = false
  wait(0.1)
  BCG:TweenSize(UDim2.new(0, 193,0, 0), 1)
  minimise.Text = "▼"
        thing = false
 end
end)
local thing2 = true
minimiseTELE.MouseButton1Up:Connect(function()
 if thing2 == false then
  thing2 = true
  TELEBCG:TweenSize(UDim2.new(0, 193,0, 410), 1)
  minimiseTELE.Text = "▲"
  wait(0.7)
        Leaderboards.Visible = true
        Portals.Visible = true
        Shops.Visible = true
        Lava.Visible = true
        Aqua.Visible = true
        Sakura.Visible = true
        Forest.Visible = true
        Desert.Visible = true
        Winter.Visible = true
        Mines.Visible = true
        Galaxy.Visible = true
        Heaven.Visible = true
        Hell.Visible = true

 else
  thing2 = false
        Leaderboards.Visible = false
        Portals.Visible = false
        Shops.Visible = false
        Lava.Visible = false
        Aqua.Visible = false
        Sakura.Visible = false
        Forest.Visible = false
        Desert.Visible = false
        Winter.Visible = false
        Mines.Visible = false
        Galaxy.Visible = false
        Heaven.Visible = false
        Hell.Visible = false
  wait(0.1)
  TELEBCG:TweenSize(UDim2.new(0, 193,0, 0), 1)
  minimiseTELE.Text = "▼"
 end
end)
local thing3 = true
minimiseEGG.MouseButton1Up:Connect(function()
 if thing3 == false then
  thing3 = true
  EGGBCG:TweenSize(UDim2.new(0, 193,0, 139), 1)
  minimiseEGG.Text = "▲"
  wait(0.5)
        antiteleportkick.Visible = true
        eggamount.Visible = true
        eggtopurchase.Visible = true
        toggegab.Visible = true
 else
  thing3 = false
        antiteleportkick.Visible = false
        eggamount.Visible = false
        eggtopurchase.Visible = false
        toggegab.Visible = false
  wait(0.1)
  EGGBCG:TweenSize(UDim2.new(0, 193,0, 0), 1)
  minimiseEGG.Text = "▼"
 end
end)

_G.ToggleAC = false

togac.MouseButton1Up:Connect(function()
 if _G.ToggleAC == false then
  _G.ToggleAC = true 
  togg.BackgroundColor3 = Color3.new(0.45098, 1, 0)
 else
  _G.ToggleAC = false
  togg.BackgroundColor3 = Color3.new(0.211765, 0.223529, 0.247059)
 end
    while _G.ToggleAC do
        wait()
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
    end
end)


_G.ToggleAR = false

togar.MouseButton1Up:Connect(function()
 if _G.ToggleAR == false then
  _G.ToggleAR = true 
  togg_2.BackgroundColor3 = Color3.new(0.45098, 1, 0)
 else
  _G.ToggleAR = false
  togg_2.BackgroundColor3 = Color3.new(0.211765, 0.223529, 0.247059)
 end
    while _G.ToggleAR do
        wait()
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(rebirthvall.Value)
    end
end)

_G.ToggleAFPC = false

togafpc.MouseButton1Up:Connect(function()
 if _G.ToggleAFPC == false then
  _G.ToggleAFPC = true 
  togg_3.BackgroundColor3 = Color3.new(0.45098, 1, 0)
 else
  _G.ToggleAFPC = false
  togg_3.BackgroundColor3 = Color3.new(0.211765, 0.223529, 0.247059)
 end
    while _G.ToggleAFPC do
    wait()
    local pawcoinworld = worlforpawcoin.Value
    for i,v in pairs(game:GetService("Workspace").Drops:FindFirstChild(pawcoinworld):GetChildren()) do
        if v:FindFirstChild("Model") ~= nil then
    
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Model.Position)
            while v:FindFirstChild("Model") do
                wait()
                game:GetService("ReplicatedStorage").Remotes.Tap:FireServer(v.Name)
            end
        elseif v:FindFirstChild("Pile Paws") ~= nil then
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v["Pile Paws"].Position)
            while v:FindFirstChild("Pile Paws") do
                wait()
                game:GetService("ReplicatedStorage").Remotes.Tap:FireServer(v.Name)
            end 
        end
    
    end
    end
end)

antiteleportkick.MouseButton1Up:Connect(function()
    local c = game.Players.LocalPlayer.Character
    c.Parent = nil
    c.HumanoidRootPart:Destroy()
    c.Parent = game.workspace
end)


_G.toggleAGAB = false
toggegab.MouseButton1Up:Connect(function()
 if _G.toggleAGAB == false then
  _G.toggleAGAB = true 
  togg_6.BackgroundColor3 = Color3.new(0.45098, 1, 0)
        local egg = eggtobuy.Value
        print(egg)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Eggs:FindFirstChild(egg).EggModel.Egg.Position)
 else
  _G.toggleAGAB = false
  togg_6.BackgroundColor3 = Color3.new(0.211765, 0.223529, 0.247059)
 end
    while _G.toggleAGAB do
        wait(1)
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(eggtobuy.Value,eggamountt.Value)
    end
end)

Portals.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6.02214241, 165.487091, -1027.97327, 0.999389768, 1.15038318e-07, 0.0349292494, -1.17755434e-07, 1, 7.57319611e-08, -0.0349292494, -7.97988591e-08, 0.999389768))
end)
Shops.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-129.83313, 143.51915, -703.396606, 0.0247009993, 1.42481733e-08, 0.999694884, 5.24690247e-09, 1, -1.43821648e-08, -0.999694884, 5.60055557e-09, 0.0247009993))
end)
Leaderboards.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(106.801163, 145.788605, -674.791626, -0.188097775, -6.41193552e-08, -0.982150316, 3.93399402e-09, 1, -6.60380906e-08, 0.982150316, -1.62853908e-08, -0.188097775))
end)
Lava.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(12.2003708, 2640.78784, -904.967224, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)
Aqua.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-70.656189, 3168.53687, -891.329346, -0.309983492, 4.99805841e-09, -0.950741947, 2.88298552e-10, 1, 5.16301046e-09, 0.950741947, 1.32635047e-09, -0.309983492))
end)
Sakura.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-11.3723364, 3646.82935, -939.349426, -0.997513533, 1.30430644e-08, 0.0704755262, 9.5331556e-09, 1, -5.01395654e-08, -0.0704755262, -4.93430399e-08, -0.997513533))
end)
Forest.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5.04190254, 801.188965, -854.687012, 0.999988616, 2.89007964e-08, -0.00477003539, -2.91320301e-08, 1, -4.84069353e-08, 0.00477003539, 4.85453455e-08, 0.999988616))
end)
Desert.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-14.5430412, 1386.81677, -815.940002, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)
Winter.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(16.681139, 2103.08813, -874.174133, 0.0334900841, 4.45361685e-08, 0.999439061, 8.48673842e-09, 1, -4.48455459e-08, -0.999439061, 9.98385818e-09, 0.0334900841))
end)
Mines.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-20.2753639, 4104.56104, -958.358521, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)
Heaven.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(107.051239, 5003.98828, -856.317688, 0.978144467, -0, -0.207926437, 0, 1, -0, 0.207926437, 0, 0.978144467))
end)
Hell.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(83.3568344, 5464.58984, -853.871582, 0.970287263, -0, -0.241955817, 0, 1, -0, 0.241955817, 0, 0.970287263))
end)
Galaxy.MouseButton1Up:Connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-19.5713711, 4543.97266, -804.965698, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)