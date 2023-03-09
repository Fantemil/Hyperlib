local ScreenGui = Instance.new("ScreenGui")
local Drag = Instance.new("Frame")
local Back = Instance.new("Frame")
local Buy = Instance.new("TextButton")
local instant = Instance.new("TextButton")
local open = Instance.new("TextButton")
local candy = Instance.new("TextButton")
local toy = Instance.new("TextButton")
local food = Instance.new("TextButton")
local sell = Instance.new("TextButton")
local Sizer = Instance.new("TextButton")
local NameD = Instance.new("TextLabel")
local BarB = Instance.new("Frame")
local CloseB = Instance.new("TextButton")
local NameB = Instance.new("TextLabel")
local BuyMenu = Instance.new("Frame")
local purchase = Instance.new("TextButton")
local commonframe = Instance.new("Frame")
local CName = Instance.new("TextLabel")
local Cselect = Instance.new("TextButton")
local uncommonframe = Instance.new("Frame")
local UName = Instance.new("TextLabel")
local Uselect = Instance.new("TextButton")
local rareframe = Instance.new("Frame")
local RName = Instance.new("TextLabel")
local Rselect = Instance.new("TextButton")
local epicframe = Instance.new("Frame")
local EName = Instance.new("TextLabel")
local Eselect = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local fif = Instance.new("Frame")
local fName = Instance.new("TextLabel")
local fselect = Instance.new("TextButton")
local hundred = Instance.new("Frame")
local hName = Instance.new("TextLabel")
local hselect = Instance.new("TextButton")
local BarL = Instance.new("Frame")
local CloseL = Instance.new("TextButton")
local NameL = Instance.new("TextLabel")
local LoopMenu = Instance.new("Frame")
local Common = Instance.new("TextButton")
local Uncommon = Instance.new("TextButton")
local Rare = Instance.new("TextButton")
local Epic = Instance.new("TextButton")
local CommonLabel = Instance.new("TextLabel")
local UncommonLabel = Instance.new("TextLabel")
local RareLabel = Instance.new("TextLabel")
local EpicLabel = Instance.new("TextLabel")
local CActive = false
local UActive = false
local RActive = false
local EActive = false
local selected = Instance.new("StringValue")
local amount = Instance.new("NumberValue")
 
-- Properties
 
ScreenGui.Parent = game.CoreGui
 
Drag.Name = "Drag"
Drag.Parent = ScreenGui
Drag.Active = true
Drag.BackgroundColor3 = Color3.new(0.223529, 0.352941, 0.815686)
Drag.BorderSizePixel = 0
Drag.Position = UDim2.new(0.0537500009, 0, 0.334242851, 0)
Drag.Size = UDim2.new(0.119374998, 0, 0.034106411, 0)
Drag.ZIndex = 2
Drag.Draggable = true
 
Back.Name = "Back"
Back.Parent = Drag
Back.BackgroundColor3 = Color3.new(0.443137, 0.443137, 0.443137)
Back.BackgroundTransparency = 0.30000001192093
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0, 0, 1, 0)
Back.Size = UDim2.new(1, 0, 9.07999992, 0)
 
Buy.Name = "Buy"
Buy.Parent = Back
Buy.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
Buy.BorderSizePixel = 0
Buy.Position = UDim2.new(0.0209424086, 0, 0.0180180185, 0)
Buy.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
Buy.Font = Enum.Font.SourceSansBold
Buy.Text = "Open Buy Menu"
Buy.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Buy.TextSize = 20
Buy.TextWrapped = true
 
instant.Name = "instant"
instant.Parent = Back
instant.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
instant.BorderSizePixel = 0
instant.Position = UDim2.new(0.0209424086, 0, 0.154185027, 0)
instant.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
instant.Font = Enum.Font.SourceSansBold
instant.Text = "Instant Break"
instant.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
instant.TextSize = 20
instant.TextWrapped = true
 
open.Name = "open"
open.Parent = Back
open.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
open.BorderSizePixel = 0
open.Position = UDim2.new(0.0209424086, 0, 0.290748894, 0)
open.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
open.Font = Enum.Font.SourceSansBold
open.Text = "Loop Open Menu"
open.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
open.TextSize = 20
open.TextWrapped = true
 
candy.Name = "candy"
candy.Parent = Back
candy.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
candy.BorderSizePixel = 0
candy.Position = UDim2.new(0.0209424086, 0, 0.427312762, 0)
candy.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
candy.Font = Enum.Font.SourceSansBold
candy.Text = "Go to Candy Land"
candy.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
candy.TextSize = 20
candy.TextWrapped = true
 
toy.Name = "toy"
toy.Parent = Back
toy.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
toy.BorderSizePixel = 0
toy.Position = UDim2.new(0.0209424086, 0, 0.563876629, 0)
toy.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
toy.Font = Enum.Font.SourceSansBold
toy.Text = "Go to Toy Land"
toy.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
toy.TextSize = 20
toy.TextWrapped = true
 
food.Name = "food"
food.Parent = Back
food.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
food.BorderSizePixel = 0
food.Position = UDim2.new(0.0209424086, 0, 0.700440526, 0)
food.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
food.Font = Enum.Font.SourceSansBold
food.Text = "Go to Food Land"
food.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
food.TextSize = 20
food.TextWrapped = true
 
sell.Name = "sell"
sell.Parent = Back
sell.BackgroundColor3 = Color3.new(0.109804, 0.317647, 1)
sell.BorderSizePixel = 0
sell.Position = UDim2.new(0.0209424086, 0, 0.837004423, 0)
sell.Size = UDim2.new(0.958000004, 0, 0.119000003, 0)
sell.Font = Enum.Font.SourceSansBold
sell.Text = "Sell Blocks"
sell.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
sell.TextSize = 20
sell.TextWrapped = true
 
Sizer.Name = "Sizer"
Sizer.Parent = Drag
Sizer.BackgroundColor3 = Color3.new(1, 1, 1)
Sizer.BackgroundTransparency = 1
Sizer.Position = UDim2.new(0.853403151, 0, -0.0799999982, 0)
Sizer.Size = UDim2.new(0.157068059, 0, 1.12, 0)
Sizer.ZIndex = 3
Sizer.Font = Enum.Font.SourceSansBold
Sizer.Text = "+"
Sizer.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Sizer.TextScaled = true
Sizer.TextSize = 14
Sizer.TextWrapped = true
 
NameD.Name = "NameD"
NameD.Parent = Drag
NameD.BackgroundColor3 = Color3.new(1, 1, 1)
NameD.BackgroundTransparency = 1
NameD.Position = UDim2.new(0.0157068055, 0, -0.0399999991, 0)
NameD.Size = UDim2.new(0.492146611, 0, 0.959999979, 0)
NameD.ZIndex = 3
NameD.Font = Enum.Font.SourceSansBold
NameD.Text = "OMine Gui"
NameD.TextColor3 = Color3.new(0.0392157, 0.133333, 1)
NameD.TextScaled = true
NameD.TextSize = 14
NameD.TextWrapped = true
 
BarB.Name = "BarB"
BarB.Parent = Drag
BarB.Active = true
BarB.BackgroundColor3 = Color3.new(0.223529, 0.352941, 0.815686)
BarB.BorderSizePixel = 0
BarB.Position = UDim2.new(1.03664923, 0, 1.08000004, 0)
BarB.Size = UDim2.new(1.09947646, 0, 0.959999979, 0)
BarB.Visible = false
BarB.ZIndex = 3
BarB.Draggable = true
 
CloseB.Name = "CloseB"
CloseB.Parent = BarB
CloseB.BackgroundColor3 = Color3.new(1, 1, 1)
CloseB.BackgroundTransparency = 1
CloseB.Position = UDim2.new(0.886010349, 0, -0.0454545468, 0)
CloseB.Size = UDim2.new(0.119170986, 0, 0.954545438, 0)
CloseB.ZIndex = 4
CloseB.Font = Enum.Font.SourceSansBold
CloseB.Text = "X"
CloseB.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
CloseB.TextScaled = true
CloseB.TextSize = 14
CloseB.TextWrapped = true
 
NameB.Name = "NameB"
NameB.Parent = BarB
NameB.BackgroundColor3 = Color3.new(1, 1, 1)
NameB.BackgroundTransparency = 1
NameB.Position = UDim2.new(0.0207253881, 0, 0.0909090936, 0)
NameB.Size = UDim2.new(0.699481845, 0, 0.818181813, 0)
NameB.ZIndex = 4
NameB.Font = Enum.Font.SourceSansBold
NameB.Text = "Buy Menu"
NameB.TextColor3 = Color3.new(1, 1, 1)
NameB.TextScaled = true
NameB.TextSize = 14
NameB.TextWrapped = true
NameB.TextXAlignment = Enum.TextXAlignment.Left
 
BuyMenu.Name = "BuyMenu"
BuyMenu.Parent = BarB
BuyMenu.BackgroundColor3 = Color3.new(0.443137, 0.443137, 0.443137)
BuyMenu.BackgroundTransparency = 0.30000001192093
BuyMenu.BorderSizePixel = 0
BuyMenu.Size = UDim2.new(1, 0, 6.625, 0)
 
purchase.Name = "purchase"
purchase.Parent = BuyMenu
purchase.BackgroundColor3 = Color3.new(0.270588, 0.443137, 0.996078)
purchase.BorderSizePixel = 0
purchase.Position = UDim2.new(0.0206185561, 0, 0.777777791, 0)
purchase.Size = UDim2.new(0.958762884, 0, 0.194444448, 0)
purchase.Font = Enum.Font.SourceSansBold
purchase.Text = "Buy"
purchase.TextColor3 = Color3.new(0, 0, 0.498039)
purchase.TextSize = 20
purchase.TextWrapped = true
 
commonframe.Name = "commonframe"
commonframe.Parent = BuyMenu
commonframe.BackgroundColor3 = Color3.new(1, 1, 1)
commonframe.BackgroundTransparency = 1
commonframe.Position = UDim2.new(0.0190476198, 0, 0.389937103, 0)
commonframe.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
CName.Name = "CName"
CName.Parent = commonframe
CName.BackgroundColor3 = Color3.new(1, 1, 1)
CName.BackgroundTransparency = 1
CName.Position = UDim2.new(-0.0412371121, 0, 0, 0)
CName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
CName.Font = Enum.Font.SourceSansBold
CName.Text = "Common"
CName.TextColor3 = Color3.new(1, 1, 1)
CName.TextSize = 19
CName.TextWrapped = true
 
Cselect.Name = "Cselect"
Cselect.Parent = commonframe
Cselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Cselect.BorderSizePixel = 2
Cselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
Cselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
Cselect.Font = Enum.Font.SourceSans
Cselect.Text = " "
Cselect.TextSize = 14
 
uncommonframe.Name = "uncommonframe"
uncommonframe.Parent = BuyMenu
uncommonframe.BackgroundColor3 = Color3.new(1, 1, 1)
uncommonframe.BackgroundTransparency = 1
uncommonframe.Position = UDim2.new(0.519047618, 0, 0.389937103, 0)
uncommonframe.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
UName.Name = "UName"
UName.Parent = uncommonframe
UName.BackgroundColor3 = Color3.new(1, 1, 1)
UName.BackgroundTransparency = 1
UName.Position = UDim2.new(-0.0824742243, 0, 0, 0)
UName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
UName.Font = Enum.Font.SourceSansBold
UName.Text = "Uncommon"
UName.TextColor3 = Color3.new(1, 1, 1)
UName.TextSize = 17
UName.TextWrapped = true
 
Uselect.Name = "Uselect"
Uselect.Parent = uncommonframe
Uselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Uselect.BorderSizePixel = 2
Uselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
Uselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
Uselect.Font = Enum.Font.SourceSans
Uselect.Text = " "
Uselect.TextSize = 14
 
rareframe.Name = "rareframe"
rareframe.Parent = BuyMenu
rareframe.BackgroundColor3 = Color3.new(1, 1, 1)
rareframe.BackgroundTransparency = 1
rareframe.Position = UDim2.new(0.0190476198, 0, 0.584905684, 0)
rareframe.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
RName.Name = "RName"
RName.Parent = rareframe
RName.BackgroundColor3 = Color3.new(1, 1, 1)
RName.BackgroundTransparency = 1
RName.Position = UDim2.new(-0.0412371121, 0, 0, 0)
RName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
RName.Font = Enum.Font.SourceSansBold
RName.Text = "Rare"
RName.TextColor3 = Color3.new(1, 1, 1)
RName.TextSize = 19
RName.TextWrapped = true
 
Rselect.Name = "Rselect"
Rselect.Parent = rareframe
Rselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Rselect.BorderSizePixel = 2
Rselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
Rselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
Rselect.Font = Enum.Font.SourceSans
Rselect.Text = " "
Rselect.TextSize = 14
 
epicframe.Name = "epicframe"
epicframe.Parent = BuyMenu
epicframe.BackgroundColor3 = Color3.new(1, 1, 1)
epicframe.BackgroundTransparency = 1
epicframe.Position = UDim2.new(0.519047618, 0, 0.584905684, 0)
epicframe.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
EName.Name = "EName"
EName.Parent = epicframe
EName.BackgroundColor3 = Color3.new(1, 1, 1)
EName.BackgroundTransparency = 1
EName.Position = UDim2.new(-0.0412371121, 0, 0, 0)
EName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
EName.Font = Enum.Font.SourceSansBold
EName.Text = "Epic"
EName.TextColor3 = Color3.new(1, 1, 1)
EName.TextSize = 19
EName.TextWrapped = true
 
Eselect.Name = "Eselect"
Eselect.Parent = epicframe
Eselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Eselect.BorderSizePixel = 2
Eselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
Eselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
Eselect.AutoButtonColor = false
Eselect.Font = Enum.Font.SourceSans
Eselect.Text = " "
Eselect.TextSize = 14
 
Frame.Parent = BuyMenu
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.0238095243, 0, 0.34591195, 0)
Frame.Size = UDim2.new(0.95714283, 0, 0, 0)
 
fif.Name = "fif"
fif.Parent = BuyMenu
fif.BackgroundColor3 = Color3.new(1, 1, 1)
fif.BackgroundTransparency = 1
fif.Position = UDim2.new(0.0142857144, 0, 0.16352202, 0)
fif.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
fName.Name = "fName"
fName.Parent = fif
fName.BackgroundColor3 = Color3.new(1, 1, 1)
fName.BackgroundTransparency = 1
fName.Position = UDim2.new(-0.0412371121, 0, 0, 0)
fName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
fName.Font = Enum.Font.SourceSansBold
fName.Text = "50"
fName.TextColor3 = Color3.new(1, 1, 1)
fName.TextSize = 19
fName.TextWrapped = true
 
fselect.Name = "fselect"
fselect.Parent = fif
fselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
fselect.BorderSizePixel = 2
fselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
fselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
fselect.AutoButtonColor = false
fselect.Font = Enum.Font.SourceSans
fselect.Text = " "
fselect.TextSize = 14
 
hundred.Name = "hundred"
hundred.Parent = BuyMenu
hundred.BackgroundColor3 = Color3.new(1, 1, 1)
hundred.BackgroundTransparency = 1
hundred.Position = UDim2.new(0.519047618, 0, 0.16352202, 0)
hundred.Size = UDim2.new(0.461904764, 0, 0.169811323, 0)
 
hName.Name = "hName"
hName.Parent = hundred
hName.BackgroundColor3 = Color3.new(1, 1, 1)
hName.BackgroundTransparency = 1
hName.Position = UDim2.new(-0.0412371121, 0, 0, 0)
hName.Size = UDim2.new(0.793814421, 0, 0.92592591, 0)
hName.Font = Enum.Font.SourceSansBold
hName.Text = "100"
hName.TextColor3 = Color3.new(1, 1, 1)
hName.TextSize = 19
hName.TextWrapped = true
 
hselect.Name = "hselect"
hselect.Parent = hundred
hselect.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
hselect.BorderSizePixel = 2
hselect.Position = UDim2.new(0.763000011, 0, 0.148000002, 0)
hselect.Size = UDim2.new(0.195999995, 0, 0.703999996, 0)
hselect.AutoButtonColor = false
hselect.Font = Enum.Font.SourceSans
hselect.Text = " "
hselect.TextSize = 14
 
BarL.Name = "BarL"
BarL.Parent = Drag
BarL.Active = true
BarL.BackgroundColor3 = Color3.new(0.223529, 0.352941, 0.815686)
BarL.BorderSizePixel = 0
BarL.Position = UDim2.new(1.06282723, 0, 1.24000001, 0)
BarL.Size = UDim2.new(1.01600003, 0, 0.959999979, 0)
BarL.Visible = false
BarL.ZIndex = 3
BarL.Draggable = true
 
CloseL.Name = "CloseL"
CloseL.Parent = BarL
CloseL.BackgroundColor3 = Color3.new(1, 1, 1)
CloseL.BackgroundTransparency = 1
CloseL.Position = UDim2.new(0.886010349, 0, -0.0454545468, 0)
CloseL.Size = UDim2.new(0.119170986, 0, 0.954545438, 0)
CloseL.ZIndex = 4
CloseL.Font = Enum.Font.SourceSansBold
CloseL.Text = "X"
CloseL.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
CloseL.TextScaled = true
CloseL.TextSize = 14
CloseL.TextWrapped = true
 
NameL.Name = "NameL"
NameL.Parent = BarL
NameL.BackgroundColor3 = Color3.new(1, 1, 1)
NameL.BackgroundTransparency = 1
NameL.Position = UDim2.new(0.0207253881, 0, 0.0909090936, 0)
NameL.Size = UDim2.new(0.699481845, 0, 0.818181813, 0)
NameL.ZIndex = 4
NameL.Font = Enum.Font.SourceSansBold
NameL.Text = "Loop Open Menu"
NameL.TextColor3 = Color3.new(1, 1, 1)
NameL.TextScaled = true
NameL.TextSize = 14
NameL.TextWrapped = true
NameL.TextXAlignment = Enum.TextXAlignment.Left
 
LoopMenu.Name = "LoopMenu"
LoopMenu.Parent = BarL
LoopMenu.BackgroundColor3 = Color3.new(0.443137, 0.443137, 0.443137)
LoopMenu.BackgroundTransparency = 0.30000001192093
LoopMenu.BorderSizePixel = 0
LoopMenu.Position = UDim2.new(0, 0, 0.291666657, 0)
LoopMenu.Size = UDim2.new(1, 0, 4.79199982, 0)
 
Common.Name = "Common"
Common.Parent = LoopMenu
Common.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Common.BorderSizePixel = 2
Common.Position = UDim2.new(0.860824764, 0, 0.187050357, 0)
Common.Size = UDim2.new(0.108000003, 0, 0.150999993, 0)
Common.Font = Enum.Font.SourceSans
Common.Text = " "
Common.TextSize = 14
 
Uncommon.Name = "Uncommon"
Uncommon.Parent = LoopMenu
Uncommon.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Uncommon.BorderSizePixel = 2
Uncommon.Position = UDim2.new(0.860824764, 0, 0.388489217, 0)
Uncommon.Size = UDim2.new(0.108000003, 0, 0.150999993, 0)
Uncommon.Font = Enum.Font.SourceSans
Uncommon.Text = " "
Uncommon.TextSize = 14
 
Rare.Name = "Rare"
Rare.Parent = LoopMenu
Rare.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Rare.BorderSizePixel = 2
Rare.Position = UDim2.new(0.860824764, 0, 0.597122312, 0)
Rare.Size = UDim2.new(0.108000003, 0, 0.150999993, 0)
Rare.Font = Enum.Font.SourceSans
Rare.Text = " "
Rare.TextSize = 14
 
Epic.Name = "Epic"
Epic.Parent = LoopMenu
Epic.BackgroundColor3 = Color3.new(1, 0.290196, 0.290196)
Epic.BorderSizePixel = 2
Epic.Position = UDim2.new(0.860824764, 0, 0.805755377, 0)
Epic.Size = UDim2.new(0.108000003, 0, 0.150999993, 0)
Epic.Font = Enum.Font.SourceSans
Epic.Text = " "
Epic.TextSize = 14
 
CommonLabel.Name = "CommonLabel"
CommonLabel.Parent = LoopMenu
CommonLabel.BackgroundColor3 = Color3.new(1, 1, 1)
CommonLabel.BackgroundTransparency = 1
CommonLabel.Position = UDim2.new(0.0206185561, 0, 0.172661871, 0)
CommonLabel.Size = UDim2.new(0.752577305, 0, 0.179856122, 0)
CommonLabel.Font = Enum.Font.SourceSansBold
CommonLabel.Text = "Common"
CommonLabel.TextColor3 = Color3.new(1, 1, 1)
CommonLabel.TextSize = 21
 
UncommonLabel.Name = "UncommonLabel"
UncommonLabel.Parent = LoopMenu
UncommonLabel.BackgroundColor3 = Color3.new(1, 1, 1)
UncommonLabel.BackgroundTransparency = 1
UncommonLabel.Position = UDim2.new(0.0209999997, 0, 0.374000013, 0)
UncommonLabel.Size = UDim2.new(0.752577305, 0, 0.179856122, 0)
UncommonLabel.Font = Enum.Font.SourceSansBold
UncommonLabel.Text = "Uncommon"
UncommonLabel.TextColor3 = Color3.new(1, 1, 1)
UncommonLabel.TextSize = 21
 
RareLabel.Name = "RareLabel"
RareLabel.Parent = LoopMenu
RareLabel.BackgroundColor3 = Color3.new(1, 1, 1)
RareLabel.BackgroundTransparency = 1
RareLabel.Position = UDim2.new(0.0209999997, 0, 0.583000004, 0)
RareLabel.Size = UDim2.new(0.752577305, 0, 0.179856122, 0)
RareLabel.Font = Enum.Font.SourceSansBold
RareLabel.Text = "Rare"
RareLabel.TextColor3 = Color3.new(1, 1, 1)
RareLabel.TextSize = 21
 
EpicLabel.Name = "EpicLabel"
EpicLabel.Parent = LoopMenu
EpicLabel.BackgroundColor3 = Color3.new(1, 1, 1)
EpicLabel.BackgroundTransparency = 1
EpicLabel.Position = UDim2.new(0.0209999997, 0, 0.791999996, 0)
EpicLabel.Size = UDim2.new(0.752577305, 0, 0.179856122, 0)
EpicLabel.Font = Enum.Font.SourceSansBold
EpicLabel.Text = "Epic"
EpicLabel.TextColor3 = Color3.new(1, 1, 1)
EpicLabel.TextSize = 21
 
selected.Name = "selected"
selected.Parent = BuyMenu
selected.Value = " "
 
amount.Parent = BuyMenu
amount.Name = "amount"
amount.Value = 0
 
-- Scripts
 
Buy.MouseButton1Click:Connect(function()
BarB.Visible = true
end)
 
open.MouseButton1Click:Connect(function()
BarL.Visible = true
end)
 
CloseL.MouseButton1Click:Connect(function()
BarL.Visible = false
end)
 
CloseB.MouseButton1Click:Connect(function()
BarB.Visible = false
end)
 
Sizer.MouseButton1Click:Connect(function()
if Back.Visible == true then
Back.Visible = false
Sizer.Text = "-"
else
Back.Visible = true
Sizer.Text = "+"
end
end)
 
Common.MouseButton1Click:Connect(function()
if Common.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Common.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
CActive = true
else
Common.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
CActive = false
end
end)
 
Uncommon.MouseButton1Click:Connect(function()
if Uncommon.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Uncommon.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
UActive = true
else
Uncommon.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
UActive = false
end
end)
 
Rare.MouseButton1Click:Connect(function()
if Rare.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Rare.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
RActive = true
else
Rare.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
RActive = false
end
end)
 
Epic.MouseButton1Click:Connect(function()
if Epic.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Epic.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
EActive = true
else
Epic.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
EActive = false
end
end)
 
Rselect.MouseButton1Click:Connect(function()
if Rselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Rselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Uselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Cselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Eselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = "Rare Hat Crate"
else
Rselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = " "
end
end)
 
Eselect.MouseButton1Click:Connect(function()
if Eselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Eselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Uselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Cselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Rselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = "Epic Hat Crate"
else
Eselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = " "
end
end)
 
Uselect.MouseButton1Click:Connect(function()
if Uselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Uselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Rselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Cselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Eselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = "Uncommon Hat Crate"
else
Uselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = " "
end
end)
 
Cselect.MouseButton1Click:Connect(function()
if Cselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
Cselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Uselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Rselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Eselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = "Common Hat Crate"
else
Cselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
selected.Value = " "
end
end)
 
fselect.MouseButton1Click:Connect(function()
if fselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
fselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
hselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
amount.Value = 50
else
fselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
amount.Value = 0
end
end)
 
hselect.MouseButton1Click:Connect(function()
if hselect.BackgroundColor3 == Color3.fromRGB(255, 74, 74)then
hselect.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
fselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
amount.Value = 50
else
hselect.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
amount.Value = 0
end
end)
 
purchase.MouseButton1Click:Connect(function()
if selected.Value == "Common Hat Crate"then
game.Workspace.RemoteEvent:FireServer("OpenCrate", "Common Hat Crate", amount.Value)
 
elseif selected.Value == "Uncommon Hat Crate"then
game.Workspace.RemoteEvent:FireServer("OpenCrate", "Uncommon Hat Crate", amount.Value)
print("Epic Hat")
 
elseif selected.Value == "Rare Hat Crate"then
game.Workspace.RemoteEvent:FireServer("OpenCrate", "Rare Hat Crate", amount.Value)
print("Rare Hat")
 
elseif selected.Value == "Epic Hat Crate"then
game.Workspace.RemoteEvent:FireServer("OpenCrate", "Epic Hat Crate", amount.Value)
print("Epic Hat")
end
end)
 
candy.MouseButton1Click:Connect(function()
game.Workspace.RemoteEvent:FireServer("MoveTo", "CandySpawn")
end)
 
toy.MouseButton1Click:Connect(function()
game.Workspace.RemoteEvent:FireServer("MoveTo", "ToySpawn")
end)
 
food.MouseButton1Click:Connect(function()
game.Workspace.RemoteEvent:FireServer("MoveTo", "FoodSpawn")
end)
 
sell.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Activation.Sell.CFrame
end)
 
instant.MouseButton1Click:Connect(function()
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Activated = false
 
Mouse.Button1Down:connect(function()
Activated = true
end)
 
Mouse.Button1Up:connect(function()
Activated = false
end)
 
while true do
wait()
if Activated == true then
game.Workspace.RemoteEvent:FireServer("MineBlock", Mouse.Target.Parent)
end
end
end)
 
while wait() do
if CActive == true then
game.Workspace.RemoteEvent:FireServer("SpinCrate","Common Hat Crate")
 
elseif UActive == true then
game.Workspace.RemoteEvent:FireServer("SpinCrate","Uncommon Hat Crate")
 
elseif RActive == true then
game.Workspace.RemoteEvent:FireServer("SpinCrate","Rare Hat Crate")
 
elseif EActive == true then
game.Workspace.RemoteEvent:FireServer("SpinCrate", "Epic Hat Crate")
end
end