--[[

	Made epicly for exploiters!
	- DevXternal <3

]]--

-- Instances:

local RC7 = Instance.new("ScreenGui")
local exeframe = Instance.new("Frame")
local mainframe = Instance.new("Frame")
local sideframe = Instance.new("Frame")
local sidetitle = Instance.new("TextLabel")
local command = Instance.new("TextButton")
local credit = Instance.new("TextButton")
local leave = Instance.new("TextButton")
local quickmenu = Instance.new("TextButton")
local scriptbox = Instance.new("TextBox")
local exess = Instance.new("TextButton")
local exe = Instance.new("TextButton")
local clr = Instance.new("TextButton")
local scripts = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local rox = Instance.new("TextButton")
local infy = Instance.new("TextButton")
local dex = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local close = Instance.new("TextButton")
local sidetitle_2 = Instance.new("TextLabel")
local cmdframe = Instance.new("Frame")
local mainframe_2 = Instance.new("Frame")
local sideframe_2 = Instance.new("Frame")
local sidetitle_3 = Instance.new("TextLabel")
local exe_2 = Instance.new("TextButton")
local commandbox = Instance.new("TextBox")
local close_2 = Instance.new("TextButton")
local sidetitle_4 = Instance.new("TextLabel")
local creditframe = Instance.new("Frame")
local mainframe_3 = Instance.new("Frame")
local sideframe_3 = Instance.new("Frame")
local sidetitle_5 = Instance.new("TextLabel")
local creds = Instance.new("TextLabel")
local close_3 = Instance.new("TextButton")
local sidetitle_6 = Instance.new("TextLabel")
local quickframe = Instance.new("Frame")
local mainframe_4 = Instance.new("Frame")
local sideframe_4 = Instance.new("Frame")
local sidetitle_7 = Instance.new("TextLabel")
local speed = Instance.new("TextButton")
local jump = Instance.new("TextButton")
local speedtext = Instance.new("TextBox")
local jumptext = Instance.new("TextBox")
local reset = Instance.new("TextButton")
local close_4 = Instance.new("TextButton")
local sidetitle_8 = Instance.new("TextLabel")

--Properties:

RC7.Name = "RC7"
RC7.Parent = game:GetService("CoreGui")
RC7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RC7.ResetOnSpawn = false

exeframe.Name = "exeframe"
exeframe.Parent = RC7
exeframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exeframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
exeframe.BorderSizePixel = 0
exeframe.Position = UDim2.new(0.418342322, 0, 0.208261624, 0)
exeframe.Size = UDim2.new(0.163315356, 0, 0.0301204827, 0)

mainframe.Name = "mainframe"
mainframe.Parent = exeframe
mainframe.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0, 0, 1, 0)
mainframe.Size = UDim2.new(1, 0, 10, 0)

sideframe.Name = "sideframe"
sideframe.Parent = mainframe
sideframe.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
sideframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
sideframe.BorderSizePixel = 0
sideframe.Position = UDim2.new(0.894894898, 0, 0, 0)
sideframe.Size = UDim2.new(0.105105102, 0, 1, 0)

sidetitle.Name = "sidetitle"
sidetitle.Parent = sideframe
sidetitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle.BackgroundTransparency = 1.000
sidetitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle.BorderSizePixel = 0
sidetitle.Position = UDim2.new(-1.48571432, 0, 0.145714283, 0)
sidetitle.Rotation = 90.000
sidetitle.Size = UDim2.new(3.94285703, 0, 0.100000001, 0)
sidetitle.Font = Enum.Font.ArialBold
sidetitle.Text = "Executor"
sidetitle.TextColor3 = Color3.fromRGB(111, 0, 0)
sidetitle.TextScaled = true
sidetitle.TextSize = 14.000
sidetitle.TextWrapped = true

command.Name = "command"
command.Parent = sideframe
command.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
command.BorderColor3 = Color3.fromRGB(0, 0, 0)
command.BorderSizePixel = 0
command.Position = UDim2.new(0.114285715, 0, 0.462857157, 0)
command.Size = UDim2.new(0.714285731, 0, 0.0714285746, 0)
command.Font = Enum.Font.SourceSansBold
command.Text = ">_"
command.TextColor3 = Color3.fromRGB(153, 0, 0)
command.TextScaled = true
command.TextSize = 14.000
command.TextWrapped = true

credit.Name = "credit"
credit.Parent = sideframe
credit.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
credit.BorderColor3 = Color3.fromRGB(0, 0, 0)
credit.BorderSizePixel = 0
credit.Position = UDim2.new(0.114285715, 0, 0.660000086, 0)
credit.Size = UDim2.new(0.714285731, 0, 0.0714285746, 0)
credit.Font = Enum.Font.SourceSansBold
credit.Text = "C"
credit.TextColor3 = Color3.fromRGB(153, 0, 0)
credit.TextScaled = true
credit.TextSize = 14.000
credit.TextWrapped = true

leave.Name = "leave"
leave.Parent = sideframe
leave.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
leave.BorderColor3 = Color3.fromRGB(0, 0, 0)
leave.BorderSizePixel = 0
leave.Position = UDim2.new(0.114285715, 0, 0.765714347, 0)
leave.Size = UDim2.new(0.714285731, 0, 0.0714285746, 0)
leave.Font = Enum.Font.SourceSansBold
leave.Text = "L"
leave.TextColor3 = Color3.fromRGB(153, 0, 0)
leave.TextScaled = true
leave.TextSize = 14.000
leave.TextWrapped = true

quickmenu.Name = "quickmenu"
quickmenu.Parent = sideframe
quickmenu.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
quickmenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
quickmenu.BorderSizePixel = 0
quickmenu.Position = UDim2.new(0.114285722, 0, 0.562857151, 0)
quickmenu.Size = UDim2.new(0.714285731, 0, 0.0714285746, 0)
quickmenu.Font = Enum.Font.SourceSansBold
quickmenu.Text = "Q"
quickmenu.TextColor3 = Color3.fromRGB(153, 0, 0)
quickmenu.TextScaled = true
quickmenu.TextSize = 14.000
quickmenu.TextWrapped = true

scriptbox.Name = "scriptbox"
scriptbox.Parent = mainframe
scriptbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
scriptbox.BorderSizePixel = 0
scriptbox.Position = UDim2.new(0.033033032, 0, 0.0399999991, 0)
scriptbox.Size = UDim2.new(0.831831813, 0, 0.54285717, 0)
scriptbox.ClearTextOnFocus = false
scriptbox.Font = Enum.Font.Arial
scriptbox.MultiLine = true
scriptbox.PlaceholderColor3 = Color3.fromRGB(42, 178, 0)
scriptbox.PlaceholderText = "-- Made by DevX"
scriptbox.Text = ""
scriptbox.TextColor3 = Color3.fromRGB(0, 0, 0)
scriptbox.TextSize = 18.000
scriptbox.TextWrapped = true
scriptbox.TextXAlignment = Enum.TextXAlignment.Left
scriptbox.TextYAlignment = Enum.TextYAlignment.Top

exess.Name = "exess"
exess.Parent = mainframe
exess.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
exess.BorderColor3 = Color3.fromRGB(0, 0, 0)
exess.BorderSizePixel = 0
exess.Position = UDim2.new(0.033033032, 0, 0.605714262, 0)
exess.Size = UDim2.new(0.270270258, 0, 0.0714285746, 0)
exess.Font = Enum.Font.Arial
exess.Text = "Execute SS"
exess.TextColor3 = Color3.fromRGB(111, 0, 0)
exess.TextScaled = true
exess.TextSize = 14.000
exess.TextWrapped = true

exe.Name = "exe"
exe.Parent = mainframe
exe.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
exe.BorderColor3 = Color3.fromRGB(0, 0, 0)
exe.BorderSizePixel = 0
exe.Position = UDim2.new(0.312312335, 0, 0.605714262, 0)
exe.Size = UDim2.new(0.270270258, 0, 0.0714285746, 0)
exe.Font = Enum.Font.Arial
exe.Text = "Execute"
exe.TextColor3 = Color3.fromRGB(111, 0, 0)
exe.TextScaled = true
exe.TextSize = 14.000
exe.TextWrapped = true

clr.Name = "clr"
clr.Parent = mainframe
clr.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
clr.BorderColor3 = Color3.fromRGB(0, 0, 0)
clr.BorderSizePixel = 0
clr.Position = UDim2.new(0.594594598, 0, 0.605714262, 0)
clr.Size = UDim2.new(0.270270258, 0, 0.0714285746, 0)
clr.Font = Enum.Font.Arial
clr.Text = "Clear"
clr.TextColor3 = Color3.fromRGB(111, 0, 0)
clr.TextScaled = true
clr.TextSize = 14.000
clr.TextWrapped = true

scripts.Name = "scripts"
scripts.Parent = mainframe
scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
scripts.BorderSizePixel = 0
scripts.Position = UDim2.new(0.033033032, 0, 0.697142839, 0)
scripts.Size = UDim2.new(0.831831813, 0, 0.22857143, 0)

UIListLayout.Parent = scripts
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

rox.Name = "rox"
rox.Parent = scripts
rox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rox.BorderColor3 = Color3.fromRGB(0, 0, 0)
rox.Size = UDim2.new(1, 0, 0.25, 0)
rox.Font = Enum.Font.SourceSans
rox.Text = "Ro-Xploit 6.0"
rox.TextColor3 = Color3.fromRGB(0, 0, 0)
rox.TextScaled = true
rox.TextSize = 14.000
rox.TextWrapped = true

infy.Name = "infy"
infy.Parent = scripts
infy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infy.BorderColor3 = Color3.fromRGB(0, 0, 0)
infy.Size = UDim2.new(1, 0, 0.25, 0)
infy.Font = Enum.Font.SourceSans
infy.Text = "Infinite Yield"
infy.TextColor3 = Color3.fromRGB(0, 0, 0)
infy.TextScaled = true
infy.TextSize = 14.000
infy.TextWrapped = true

dex.Name = "dex"
dex.Parent = scripts
dex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
dex.Size = UDim2.new(1, 0, 0.25, 0)
dex.Font = Enum.Font.SourceSans
dex.Text = "Dex"
dex.TextColor3 = Color3.fromRGB(0, 0, 0)
dex.TextScaled = true
dex.TextSize = 14.000
dex.TextWrapped = true

btools.Name = "btools"
btools.Parent = scripts
btools.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btools.BorderColor3 = Color3.fromRGB(0, 0, 0)
btools.Size = UDim2.new(1, 0, 0.25, 0)
btools.Font = Enum.Font.SourceSans
btools.Text = "F3X"
btools.TextColor3 = Color3.fromRGB(0, 0, 0)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true

close.Name = "close"
close.Parent = exeframe
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.836336315, 0, 0, 0)
close.Size = UDim2.new(0.163663656, 0, 1, 0)
close.Font = Enum.Font.Arial
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

sidetitle_2.Name = "sidetitle"
sidetitle_2.Parent = exeframe
sidetitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_2.BackgroundTransparency = 1.000
sidetitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_2.BorderSizePixel = 0
sidetitle_2.Position = UDim2.new(-0.00158728065, 0, -0.00428553997, 0)
sidetitle_2.Size = UDim2.new(0.408408403, 0, 1, 0)
sidetitle_2.Font = Enum.Font.ArialBold
sidetitle_2.Text = "Project RC7"
sidetitle_2.TextColor3 = Color3.fromRGB(0, 111, 148)
sidetitle_2.TextScaled = true
sidetitle_2.TextSize = 14.000
sidetitle_2.TextWrapped = true

cmdframe.Name = "cmdframe"
cmdframe.Parent = RC7
cmdframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdframe.BorderSizePixel = 0
cmdframe.Position = UDim2.new(0.282442063, 0, 0.377730876, 0)
cmdframe.Size = UDim2.new(0.13222909, 0, 0.014714187, 0)
cmdframe.Visible = false

mainframe_2.Name = "mainframe"
mainframe_2.Parent = cmdframe
mainframe_2.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
mainframe_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe_2.BorderSizePixel = 0
mainframe_2.Position = UDim2.new(4.99558746e-06, 0, 0.999997318, 0)
mainframe_2.Size = UDim2.new(1.00306261, 0, 10, 0)

sideframe_2.Name = "sideframe"
sideframe_2.Parent = mainframe_2
sideframe_2.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
sideframe_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
sideframe_2.BorderSizePixel = 0
sideframe_2.Position = UDim2.new(0.893942654, 0, -0.00531503372, 0)
sideframe_2.Size = UDim2.new(0.105427101, 0, 1.00531495, 0)

sidetitle_3.Name = "sidetitle"
sidetitle_3.Parent = sideframe_2
sidetitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_3.BackgroundTransparency = 1.000
sidetitle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_3.BorderSizePixel = 0
sidetitle_3.Position = UDim2.new(-1.02562594, 0, 0.171432659, 0)
sidetitle_3.Rotation = 90.000
sidetitle_3.Size = UDim2.new(3.0779016, 0, 0.166624889, 0)
sidetitle_3.Font = Enum.Font.ArialBold
sidetitle_3.Text = "Commands"
sidetitle_3.TextColor3 = Color3.fromRGB(111, 0, 0)
sidetitle_3.TextScaled = true
sidetitle_3.TextSize = 14.000
sidetitle_3.TextWrapped = true

exe_2.Name = "exe"
exe_2.Parent = mainframe_2
exe_2.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
exe_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
exe_2.BorderSizePixel = 0
exe_2.Position = UDim2.new(0.164405793, 0, 0.576470912, 0)
exe_2.Size = UDim2.new(0.617850661, 0, 0.246888965, 0)
exe_2.Font = Enum.Font.Arial
exe_2.Text = "Execute"
exe_2.TextColor3 = Color3.fromRGB(111, 0, 0)
exe_2.TextScaled = true
exe_2.TextSize = 14.000
exe_2.TextWrapped = true

commandbox.Name = "commandbox"
commandbox.Parent = mainframe_2
commandbox.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
commandbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
commandbox.BorderSizePixel = 0
commandbox.Position = UDim2.new(0.162697107, 0, 0.175460309, 0)
commandbox.Size = UDim2.new(0.617510319, 0, 0.292433828, 0)
commandbox.Font = Enum.Font.Arial
commandbox.PlaceholderColor3 = Color3.fromRGB(111, 0, 0)
commandbox.PlaceholderText = "Command bar"
commandbox.Text = ""
commandbox.TextColor3 = Color3.fromRGB(111, 0, 0)
commandbox.TextScaled = true
commandbox.TextSize = 14.000
commandbox.TextWrapped = true

close_2.Name = "close"
close_2.Parent = cmdframe
close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_2.BorderSizePixel = 0
close_2.Position = UDim2.new(0.896685243, 0, 0, 0)
close_2.Size = UDim2.new(0.106382228, 0, 1, 0)
close_2.Font = Enum.Font.ArialBold
close_2.Text = "-"
close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
close_2.TextScaled = true
close_2.TextSize = 14.000
close_2.TextWrapped = true

sidetitle_4.Name = "sidetitle"
sidetitle_4.Parent = cmdframe
sidetitle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_4.BackgroundTransparency = 1.000
sidetitle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_4.BorderSizePixel = 0
sidetitle_4.Position = UDim2.new(-0.00158736843, 0, -0.00428548362, 0)
sidetitle_4.Size = UDim2.new(0.350315362, 0, 1, 0)
sidetitle_4.Font = Enum.Font.ArialBold
sidetitle_4.Text = "Project RC7"
sidetitle_4.TextColor3 = Color3.fromRGB(0, 111, 148)
sidetitle_4.TextScaled = true
sidetitle_4.TextSize = 14.000
sidetitle_4.TextWrapped = true

creditframe.Name = "creditframe"
creditframe.Parent = RC7
creditframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creditframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
creditframe.BorderSizePixel = 0
creditframe.Position = UDim2.new(0.281951666, 0, 0.208195597, 0)
creditframe.Size = UDim2.new(0.13222909, 0, 0.014714187, 0)
creditframe.Visible = false

mainframe_3.Name = "mainframe"
mainframe_3.Parent = creditframe
mainframe_3.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
mainframe_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe_3.BorderSizePixel = 0
mainframe_3.Position = UDim2.new(4.99558746e-06, 0, 0.999997318, 0)
mainframe_3.Size = UDim2.new(1.00306261, 0, 10, 0)

sideframe_3.Name = "sideframe"
sideframe_3.Parent = mainframe_3
sideframe_3.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
sideframe_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
sideframe_3.BorderSizePixel = 0
sideframe_3.Position = UDim2.new(0.893942654, 0, -0.00531503372, 0)
sideframe_3.Size = UDim2.new(0.105427101, 0, 1.00531495, 0)

sidetitle_5.Name = "sidetitle"
sidetitle_5.Parent = sideframe_3
sidetitle_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_5.BackgroundTransparency = 1.000
sidetitle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_5.BorderSizePixel = 0
sidetitle_5.Position = UDim2.new(-1.02562594, 0, 0.171432659, 0)
sidetitle_5.Rotation = 90.000
sidetitle_5.Size = UDim2.new(3.0779016, 0, 0.166624889, 0)
sidetitle_5.Font = Enum.Font.ArialBold
sidetitle_5.Text = "Credit"
sidetitle_5.TextColor3 = Color3.fromRGB(111, 0, 0)
sidetitle_5.TextScaled = true
sidetitle_5.TextSize = 14.000
sidetitle_5.TextWrapped = true

creds.Name = "creds"
creds.Parent = mainframe_3
creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creds.BackgroundTransparency = 1.000
creds.BorderColor3 = Color3.fromRGB(0, 0, 0)
creds.BorderSizePixel = 0
creds.Position = UDim2.new(0.0258836653, 0, 0.0292433836, 0)
creds.Size = UDim2.new(0.843068004, 0, 0.918242216, 0)
creds.Font = Enum.Font.ArialBold
creds.Text = "This script was made by DevXternal and is only published to scriptblox."
creds.TextColor3 = Color3.fromRGB(153, 0, 0)
creds.TextScaled = true
creds.TextSize = 14.000
creds.TextWrapped = true

close_3.Name = "close"
close_3.Parent = creditframe
close_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_3.BorderSizePixel = 0
close_3.Position = UDim2.new(0.896685243, 0, 0, 0)
close_3.Size = UDim2.new(0.106382228, 0, 1, 0)
close_3.Font = Enum.Font.ArialBold
close_3.Text = "-"
close_3.TextColor3 = Color3.fromRGB(0, 0, 0)
close_3.TextScaled = true
close_3.TextSize = 14.000
close_3.TextWrapped = true

sidetitle_6.Name = "sidetitle"
sidetitle_6.Parent = creditframe
sidetitle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_6.BackgroundTransparency = 1.000
sidetitle_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_6.BorderSizePixel = 0
sidetitle_6.Position = UDim2.new(-0.00158736843, 0, -0.00428548362, 0)
sidetitle_6.Size = UDim2.new(0.350315362, 0, 1, 0)
sidetitle_6.Font = Enum.Font.ArialBold
sidetitle_6.Text = "Project RC7"
sidetitle_6.TextColor3 = Color3.fromRGB(0, 111, 148)
sidetitle_6.TextScaled = true
sidetitle_6.TextSize = 14.000
sidetitle_6.TextWrapped = true

quickframe.Name = "quickframe"
quickframe.Parent = RC7
quickframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
quickframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
quickframe.BorderSizePixel = 0
quickframe.Position = UDim2.new(0.588049531, 0, 0.353642225, 0)
quickframe.Size = UDim2.new(0.174054623, 0, 0.0165128913, 0)
quickframe.Visible = false

mainframe_4.Name = "mainframe"
mainframe_4.Parent = quickframe
mainframe_4.BackgroundColor3 = Color3.fromRGB(111, 0, 0)
mainframe_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe_4.BorderSizePixel = 0
mainframe_4.Position = UDim2.new(9.28690588e-06, 0, 0.999997318, 0)
mainframe_4.Size = UDim2.new(0.999990642, 0, 10, 0)

sideframe_4.Name = "sideframe"
sideframe_4.Parent = mainframe_4
sideframe_4.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
sideframe_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
sideframe_4.BorderSizePixel = 0
sideframe_4.Position = UDim2.new(0.89621675, 0, 4.77135814e-07, 0)
sideframe_4.Size = UDim2.new(0.103783265, 0, 0.994787633, 0)

sidetitle_7.Name = "sidetitle"
sidetitle_7.Parent = sideframe_4
sidetitle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_7.BackgroundTransparency = 1.000
sidetitle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_7.BorderSizePixel = 0
sidetitle_7.Position = UDim2.new(-1.80103791, 0, 0.350197554, 0)
sidetitle_7.Rotation = 90.000
sidetitle_7.Size = UDim2.new(4.6744895, 0, 0.192132682, 0)
sidetitle_7.Font = Enum.Font.ArialBold
sidetitle_7.Text = "Quick Menu"
sidetitle_7.TextColor3 = Color3.fromRGB(111, 0, 0)
sidetitle_7.TextScaled = true
sidetitle_7.TextSize = 14.000
sidetitle_7.TextWrapped = true

speed.Name = "speed"
speed.Parent = mainframe_4
speed.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.0310460739, 0, 0.0428619124, 0)
speed.Size = UDim2.new(0.270270228, 0, 0.161534816, 0)
speed.Font = Enum.Font.ArialBold
speed.Text = "Set speed"
speed.TextColor3 = Color3.fromRGB(111, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

jump.Name = "jump"
jump.Parent = mainframe_4
jump.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
jump.BorderColor3 = Color3.fromRGB(0, 0, 0)
jump.BorderSizePixel = 0
jump.Position = UDim2.new(0.0310460739, 0, 0.244343519, 0)
jump.Size = UDim2.new(0.270270228, 0, 0.161534831, 0)
jump.Font = Enum.Font.ArialBold
jump.Text = "Set jump power"
jump.TextColor3 = Color3.fromRGB(111, 0, 0)
jump.TextScaled = true
jump.TextSize = 14.000
jump.TextWrapped = true

speedtext.Name = "speedtext"
speedtext.Parent = mainframe_4
speedtext.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
speedtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
speedtext.BorderSizePixel = 0
speedtext.Position = UDim2.new(0.332493603, 0, 0.041692771, 0)
speedtext.Size = UDim2.new(0.543824315, 0, 0.161559477, 0)
speedtext.Font = Enum.Font.SourceSansBold
speedtext.PlaceholderColor3 = Color3.fromRGB(111, 0, 0)
speedtext.PlaceholderText = "Number here"
speedtext.Text = ""
speedtext.TextColor3 = Color3.fromRGB(111, 0, 0)
speedtext.TextScaled = true
speedtext.TextSize = 14.000
speedtext.TextWrapped = true

jumptext.Name = "jumptext"
jumptext.Parent = mainframe_4
jumptext.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
jumptext.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumptext.BorderSizePixel = 0
jumptext.Position = UDim2.new(0.332493603, 0, 0.239733428, 0)
jumptext.Size = UDim2.new(0.543824315, 0, 0.161559477, 0)
jumptext.Font = Enum.Font.SourceSansBold
jumptext.PlaceholderColor3 = Color3.fromRGB(111, 0, 0)
jumptext.PlaceholderText = "Number here"
jumptext.Text = ""
jumptext.TextColor3 = Color3.fromRGB(111, 0, 0)
jumptext.TextScaled = true
jumptext.TextSize = 14.000
jumptext.TextWrapped = true

reset.Name = "reset"
reset.Parent = mainframe_4
reset.BackgroundColor3 = Color3.fromRGB(153, 0, 0)
reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
reset.BorderSizePixel = 0
reset.Position = UDim2.new(0.0310471058, 0, 0.442384183, 0)
reset.Size = UDim2.new(0.845271289, 0, 0.161534831, 0)
reset.Font = Enum.Font.ArialBold
reset.Text = "Reset"
reset.TextColor3 = Color3.fromRGB(111, 0, 0)
reset.TextScaled = true
reset.TextSize = 14.000
reset.TextWrapped = true

close_4.Name = "close"
close_4.Parent = quickframe
close_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_4.BorderSizePixel = 0
close_4.Position = UDim2.new(0.896217704, 0, 0, 0)
close_4.Size = UDim2.new(0.103782207, 0, 0.999999881, 0)
close_4.Font = Enum.Font.ArialBold
close_4.Text = "-"
close_4.TextColor3 = Color3.fromRGB(0, 0, 0)
close_4.TextScaled = true
close_4.TextSize = 14.000
close_4.TextWrapped = true

sidetitle_8.Name = "sidetitle"
sidetitle_8.Parent = quickframe
sidetitle_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidetitle_8.BackgroundTransparency = 1.000
sidetitle_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
sidetitle_8.BorderSizePixel = 0
sidetitle_8.Position = UDim2.new(-0.00158771698, 0, -0.00428627059, 0)
sidetitle_8.Size = UDim2.new(0.303303987, 0, 0.999999702, 0)
sidetitle_8.Font = Enum.Font.ArialBold
sidetitle_8.Text = "Project RC7"
sidetitle_8.TextColor3 = Color3.fromRGB(0, 111, 148)
sidetitle_8.TextScaled = true
sidetitle_8.TextSize = 14.000
sidetitle_8.TextWrapped = true

-- Scripts:

local function URJXOJ_fake_script() -- command.LocalScript 
	local script = Instance.new('LocalScript', command)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.cmdframe.Visible = true
	end)
end
coroutine.wrap(URJXOJ_fake_script)()
local function JWJM_fake_script() -- credit.LocalScript 
	local script = Instance.new('LocalScript', credit)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.creditframe.Visible = true
	end)
end
coroutine.wrap(JWJM_fake_script)()
local function LCRD_fake_script() -- leave.LocalScript 
	local script = Instance.new('LocalScript', leave)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer:Kick("bye :D")
	end)
end
coroutine.wrap(LCRD_fake_script)()
local function JPGIHJ_fake_script() -- quickmenu.LocalScript 
	local script = Instance.new('LocalScript', quickmenu)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.quickframe.Visible = true
	end)
end
coroutine.wrap(JPGIHJ_fake_script)()
local function SZGP_fake_script() -- exess.LocalScript 
	local script = Instance.new('LocalScript', exess)

	script.Parent.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.RemoteEvent:FireServer(script.Parent.Parent.scriptbox.Text)
	end)
end
coroutine.wrap(SZGP_fake_script)()
local function VMMXS_fake_script() -- exe.LocalScript 
	local script = Instance.new('LocalScript', exe)

	script.Parent.MouseButton1Click:Connect(function()
		assert(loadstring(script.Parent.Parent.scriptbox.Text))()
	end)
end
coroutine.wrap(VMMXS_fake_script)()
local function GLASBOD_fake_script() -- clr.LocalScript 
	local script = Instance.new('LocalScript', clr)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.scriptbox.Text = ""
	end)
end
coroutine.wrap(GLASBOD_fake_script)()
local function VEGUUNQ_fake_script() -- rox.LocalScript 
	local script = Instance.new('LocalScript', rox)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.scriptbox.Text = "loadstring(game:GetObjects('rbxassetid://364364477')[1].Source)()"
	end)
end
coroutine.wrap(VEGUUNQ_fake_script)()
local function SNELEAQ_fake_script() -- infy.LocalScript 
	local script = Instance.new('LocalScript', infy)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.scriptbox.Text = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
	end)
end
coroutine.wrap(SNELEAQ_fake_script)()
local function VVQTN_fake_script() -- dex.LocalScript 
	local script = Instance.new('LocalScript', dex)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.scriptbox.Text = "loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()"
	end)
end
coroutine.wrap(VVQTN_fake_script)()
local function TECJDCF_fake_script() -- btools.LocalScript 
	local script = Instance.new('LocalScript', btools)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.scriptbox.Text = "loadstring(game:GetObjects('rbxassetid://6695644299')[1].Source)()"
	end)
end
coroutine.wrap(TECJDCF_fake_script)()
local function QXDAMXD_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
	
	script.Parent.MouseEnter:Connect(function()
		script.Parent.TextColor3 = Color3.new(1,1,1)
		script.Parent.BackgroundColor3 = Color3.new(1,0,0)
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.TextColor3 = Color3.new(0,0,0)
		script.Parent.BackgroundColor3 = Color3.new(1,1,1)
	end)
end
coroutine.wrap(QXDAMXD_fake_script)()
local function ODMBMZ_fake_script() -- exeframe.LocalScript 
	local script = Instance.new('LocalScript', exeframe)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(ODMBMZ_fake_script)()
local function AGRTF_fake_script() -- RC7.LocalScript 
	local script = Instance.new('LocalScript', RC7)

	--[[
	
	THIS IS A WATERMARK SCRIPT!
	PLEASE DO NOT TAMPER WITH THIS, THIS HELPS
	PEOPLE KNOW WHO MADE IT AND GET SUPPORT!
	
	]]--
	
	local function callback(Text)
		if Text == "Accept" then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Copied invite link to clip board!",
				Text = ""
			})
			setclipboard("discord.gg/kg5aSUyebE")
		elseif Text == ("Decline") then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Understable.",
				Text = "Have a great day!"
			})
		end
	end
	
	local NotificationBindable = Instance.new("BindableFunction")
	NotificationBindable.OnInvoke = callback
	
	game.StarterGui:SetCore("SendNotification",  {
		Title = "Join server?";
		Text = "Want to join the server? :D";
		Icon = "";
		Duration = 5;
		Button1 = "Accept";
		Button2 = "Decline";
		Callback = NotificationBindable;
	})
end
coroutine.wrap(AGRTF_fake_script)()
local function UCKDK_fake_script() -- exe_2.LocalScript 
	local script = Instance.new('LocalScript', exe_2)

	--[[
		if Command.Text == "" then
			
			Command.Text = ""
		end
	]]--
	
	local Command = script.Parent.Parent.commandbox
	
	script.Parent.MouseButton1Click:Connect(function()
		if Command.Text == "fly" then
			loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
			Command.Text = ""
		end
		
		if Command.Text == "btools" then
			loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
			Command.Text = ""
		end
		
		if Command.Text == "fast" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = "150"
			Command.Text = ""
		end
		
		if Command.Text == "leave" then
			game.Players.LocalPlayer:Kick("bye :DD")
			Command.Text = ""
		end
		
		if Command.Text == "destroy" then
			script.Parent.Parent.Parent.Parent:Destroy()
			Command.Text = ""
		end
		
		if Command.Text == "reset" then
			game.Players.LocalPlayer.Character:BreakJoints()
			game.Players.LocalPlayer.Character.Humanoid.Health = "-1000"
			Command.Text = ""
		end
		
		if Command.Text == "rejoin" then
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			Command.Text = ""
		end
	end)
end
coroutine.wrap(UCKDK_fake_script)()
local function PSPIV_fake_script() -- close_2.LocalScript 
	local script = Instance.new('LocalScript', close_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	script.Parent.MouseEnter:Connect(function()
		script.Parent.TextColor3 = Color3.new(1,1,1)
		script.Parent.BackgroundColor3 = Color3.new(1,0,0)
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.TextColor3 = Color3.new(0,0,0)
		script.Parent.BackgroundColor3 = Color3.new(1,1,1)
	end)
end
coroutine.wrap(PSPIV_fake_script)()
local function GQKEDW_fake_script() -- cmdframe.LocalScript 
	local script = Instance.new('LocalScript', cmdframe)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(GQKEDW_fake_script)()
local function BNEKXVS_fake_script() -- close_3.LocalScript 
	local script = Instance.new('LocalScript', close_3)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	script.Parent.MouseEnter:Connect(function()
		script.Parent.TextColor3 = Color3.new(1,1,1)
		script.Parent.BackgroundColor3 = Color3.new(1,0,0)
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.TextColor3 = Color3.new(0,0,0)
		script.Parent.BackgroundColor3 = Color3.new(1,1,1)
	end)
end
coroutine.wrap(BNEKXVS_fake_script)()
local function FSJAKNV_fake_script() -- creditframe.LocalScript 
	local script = Instance.new('LocalScript', creditframe)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(FSJAKNV_fake_script)()
local function XZBUBT_fake_script() -- speed.LocalScript 
	local script = Instance.new('LocalScript', speed)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.Parent.speedtext.Text
	end)
end
coroutine.wrap(XZBUBT_fake_script)()
local function UAULF_fake_script() -- jump.LocalScript 
	local script = Instance.new('LocalScript', jump)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.Parent.jumptext.Text
	end)
end
coroutine.wrap(UAULF_fake_script)()
local function SSJLRZ_fake_script() -- reset.LocalScript 
	local script = Instance.new('LocalScript', reset)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character:BreakJoints()
	end)
end
coroutine.wrap(SSJLRZ_fake_script)()
local function VEGXM_fake_script() -- close_4.LocalScript 
	local script = Instance.new('LocalScript', close_4)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	script.Parent.MouseEnter:Connect(function()
		script.Parent.TextColor3 = Color3.new(1,1,1)
		script.Parent.BackgroundColor3 = Color3.new(1,0,0)
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.TextColor3 = Color3.new(0,0,0)
		script.Parent.BackgroundColor3 = Color3.new(1,1,1)
	end)
end
coroutine.wrap(VEGXM_fake_script)()
local function QTNNNL_fake_script() -- quickframe.LocalScript 
	local script = Instance.new('LocalScript', quickframe)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(QTNNNL_fake_script)()