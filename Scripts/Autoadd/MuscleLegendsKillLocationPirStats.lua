local SPTSGui = Instance.new("ScreenGui")
local OPEN = Instance.new("TextButton")
local UnSafeFR = Instance.new("Frame")
local KButton = Instance.new("TextButton")
local KButton2 = Instance.new("TextButton")
local SafeMode = Instance.new("TextButton")
local Name = Instance.new("TextBox")
local KButton3 = Instance.new("TextButton")
local KButton4 = Instance.new("TextButton")
local KButton5 = Instance.new("TextButton")
local SafeFR = Instance.new("Frame")
local KButton6 = Instance.new("TextButton")
local KButton7 = Instance.new("TextButton")
local SafeMode_2 = Instance.new("TextButton")
local Name_2 = Instance.new("TextBox")
local KButton8 = Instance.new("TextButton")
local KButton9 = Instance.new("TextButton")
local KButton10 = Instance.new("TextButton")
local Leak = Instance.new("TextButton")
local Leaks = Instance.new("Frame")
local PlrNameStats = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Innocence = Instance.new("TextLabel")
local Villain = Instance.new("TextLabel")
local Hero = Instance.new("TextLabel")
local Fist = Instance.new("TextLabel")
local Body = Instance.new("TextLabel")
local Psychic = Instance.new("TextLabel")
local Jump = Instance.new("TextLabel")
local Speed = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local AliveTime = Instance.new("TextLabel")
local PlrName = Instance.new("TextBox")
local Rep = Instance.new("TextLabel")
local LocationsB = Instance.new("TextButton")
local PLocation = Instance.new("Frame")
local Psychic1 = Instance.new("TextButton")
local RequestTxt = Instance.new("TextLabel")
local FLocation = Instance.new("Frame")
local Fist1 = Instance.new("TextButton")
local Fist2 = Instance.new("TextButton")
local Fist3 = Instance.new("TextButton")
local Fist4 = Instance.new("TextButton")
local Fist5 = Instance.new("TextButton")
local RequestTxt_2 = Instance.new("TextLabel")
local RequestTxt_3 = Instance.new("TextLabel")
local RequestTxt_4 = Instance.new("TextLabel")
local BLocation = Instance.new("Frame")
local Body1 = Instance.new("TextButton")
local Body2 = Instance.new("TextButton")
local Body3 = Instance.new("TextButton")
local Body4 = Instance.new("TextButton")
local Body5 = Instance.new("TextButton")
local RequestTxt_5 = Instance.new("TextLabel")
local RequestTxt_6 = Instance.new("TextLabel")
local Body6 = Instance.new("TextButton")
local RequestTxt_7 = Instance.new("TextLabel")
local RequestTxt_8 = Instance.new("TextLabel")
local RequestTxt_9 = Instance.new("TextLabel")
local RequestTxt_10 = Instance.new("TextLabel")
local QLOCATION = Instance.new("Frame")
local Other1 = Instance.new("TextButton")
local Other2 = Instance.new("TextButton")
local Credits = Instance.new("TextButton")
local CreditsFrame = Instance.new("Frame")
local CreditsTxt = Instance.new("TextLabel")
local CreditsTxt_2 = Instance.new("TextLabel")
local CreditsTxt_3 = Instance.new("TextLabel")
local CreditsTxt_4 = Instance.new("TextLabel")
local CreditsTxt_5 = Instance.new("TextLabel")
local CreditsTxt_6 = Instance.new("TextLabel")
local CreditsTxt_7 = Instance.new("TextLabel")
local CreditsTxt_8 = Instance.new("TextLabel")
local LocationFrame = Instance.new("Frame")
local FistL = Instance.new("TextButton")
local BodyL = Instance.new("TextButton")
local PsychicL = Instance.new("TextButton")
local QuestionL = Instance.new("TextButton")
local CloseL = Instance.new("TextButton")
local Healthbar = Instance.new("TextButton")
local Posbar = Instance.new("TextButton")
local Selected = Instance.new("StringValue")
local Selected2 = Instance.new("StringValue")
--Properties:
SPTSGui.Name = "SPTSGui"
SPTSGui.Parent = game.CoreGui
Selected.Value = "UnSafeFR"
Selected2.Value = "None"
Selected.Name = "Selected"
Selected2.Name = "Selected2"
 
OPEN.Name = "OPEN"
OPEN.Parent = SPTSGui
OPEN.BackgroundColor3 = Color3.new(1, 0, 0)
OPEN.BackgroundTransparency = 0.5
OPEN.BorderColor3 = Color3.new(0, 0, 0)
OPEN.BorderSizePixel = 2
OPEN.Position = UDim2.new(0, 0, 0.440029979, 0)
OPEN.Size = UDim2.new(0.0998007953, 0, 0.0500000045, 0)
OPEN.Selected = true
OPEN.Font = Enum.Font.Cartoon
OPEN.Text = "KILL"
OPEN.TextColor3 = Color3.new(1, 0.2, 0)
OPEN.TextScaled = true
OPEN.TextSize = 14
OPEN.TextStrokeTransparency = 0
OPEN.TextWrapped = true
 
UnSafeFR.Name = "UnSafeFR"
UnSafeFR.Parent = SPTSGui
UnSafeFR.BackgroundColor3 = Color3.new(0, 0, 0)
UnSafeFR.BackgroundTransparency = 0.30000001192093
UnSafeFR.BorderColor3 = Color3.new(1, 0, 0)
UnSafeFR.BorderSizePixel = 4
UnSafeFR.Position = UDim2.new(0.24960126, 0, 0.31184411, 0)
UnSafeFR.Size = UDim2.new(0.40271011, 0, 0.481259316, 0)
UnSafeFR.Visible = false
 
KButton.Name = "KButton"
KButton.Parent = UnSafeFR
KButton.BackgroundColor3 = Color3.new(0, 0, 0)
KButton.BackgroundTransparency = 0.5
KButton.BorderColor3 = Color3.new(1, 0, 0)
KButton.BorderSizePixel = 2
KButton.Position = UDim2.new(0.0634417087, 0, 0.164775103, 0)
KButton.Size = UDim2.new(0.867684603, 0, 0.109190084, 0)
KButton.Selected = true
KButton.Font = Enum.Font.Cartoon
KButton.Text = "KILL "
KButton.TextColor3 = Color3.new(1, 0, 0)
KButton.TextScaled = true
KButton.TextSize = 14
KButton.TextStrokeTransparency = 0
KButton.TextWrapped = true
 
KButton2.Name = "KButton2"
KButton2.Parent = UnSafeFR
KButton2.BackgroundColor3 = Color3.new(0, 0, 0)
KButton2.BackgroundTransparency = 0.5
KButton2.BorderColor3 = Color3.new(1, 0.4, 0)
KButton2.BorderSizePixel = 2
KButton2.Position = UDim2.new(0.0634417087, 0, 0.415014476, 0)
KButton2.Size = UDim2.new(0.867684901, 0, 0.0998442471, 0)
KButton2.Selected = true
KButton2.Font = Enum.Font.Cartoon
KButton2.Text = "KILL ALL (Risk)"
KButton2.TextColor3 = Color3.new(1, 0.501961, 0)
KButton2.TextScaled = true
KButton2.TextSize = 14
KButton2.TextStrokeTransparency = 0
KButton2.TextWrapped = true
 
SafeMode.Name = "SafeMode"
SafeMode.Parent = UnSafeFR
SafeMode.BackgroundColor3 = Color3.new(0, 0, 0)
SafeMode.BackgroundTransparency = 0.5
SafeMode.BorderColor3 = Color3.new(1, 0, 0)
SafeMode.BorderSizePixel = 3
SafeMode.Position = UDim2.new(0.107057884, 0, 0.0293614306, 0)
SafeMode.Size = UDim2.new(0.77648741, 0, 0.0760902986, 0)
SafeMode.Selected = true
SafeMode.Font = Enum.Font.Cartoon
SafeMode.Text = "Safe Mode OFF"
SafeMode.TextColor3 = Color3.new(1, 0, 0)
SafeMode.TextScaled = true
SafeMode.TextSize = 14
SafeMode.TextStrokeTransparency = 0
SafeMode.TextWrapped = true
 
Name.Name = "Name"
Name.Parent = UnSafeFR
Name.BackgroundColor3 = Color3.new(0, 0, 0)
Name.BackgroundTransparency = 0.5
Name.BorderColor3 = Color3.new(1, 0, 0)
Name.BorderSizePixel = 2
Name.Position = UDim2.new(0.0634417087, 0, 0.300069571, 0)
Name.Size = UDim2.new(0.867684662, 0, 0.0868584365, 0)
Name.Font = Enum.Font.SourceSans
Name.PlaceholderColor3 = Color3.new(1, 0, 0)
Name.PlaceholderText = "Name"
Name.Text = "Name"
Name.TextColor3 = Color3.new(1, 0, 0)
Name.TextScaled = true
Name.TextSize = 14
Name.TextStrokeTransparency = 0
Name.TextWrapped = true
 
KButton3.Name = "KButton3"
KButton3.Parent = UnSafeFR
KButton3.BackgroundColor3 = Color3.new(0, 0, 0)
KButton3.BackgroundTransparency = 0.5
KButton3.BorderColor3 = Color3.new(1, 0.262745, 0.262745)
KButton3.BorderSizePixel = 2
KButton3.Position = UDim2.new(0.0594766028, 0, 0.604027569, 0)
KButton3.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton3.Selected = true
KButton3.Font = Enum.Font.Cartoon
KButton3.Text = "KILL INNOCENT (Risk)"
KButton3.TextColor3 = Color3.new(1, 0.545098, 0.545098)
KButton3.TextScaled = true
KButton3.TextSize = 14
KButton3.TextStrokeTransparency = 0
KButton3.TextWrapped = true
 
KButton4.Name = "KButton4"
KButton4.Parent = UnSafeFR
KButton4.BackgroundColor3 = Color3.new(0, 0, 0)
KButton4.BackgroundTransparency = 0.5
KButton4.BorderColor3 = Color3.new(1, 0.8, 0)
KButton4.BorderSizePixel = 2
KButton4.Position = UDim2.new(0.0634417087, 0, 0.719292402, 0)
KButton4.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton4.Selected = true
KButton4.Font = Enum.Font.Cartoon
KButton4.Text = "KILL HEROS (Risk)"
KButton4.TextColor3 = Color3.new(1, 0.717647, 0)
KButton4.TextScaled = true
KButton4.TextSize = 14
KButton4.TextStrokeTransparency = 0
KButton4.TextWrapped = true
 
KButton5.Name = "KButton5"
KButton5.Parent = UnSafeFR
KButton5.BackgroundColor3 = Color3.new(0, 0, 0)
KButton5.BackgroundTransparency = 0.5
KButton5.BorderColor3 = Color3.new(1, 0.403922, 0.00392157)
KButton5.BorderSizePixel = 2
KButton5.Position = UDim2.new(0.0634417087, 0, 0.831441939, 0)
KButton5.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton5.Selected = true
KButton5.Font = Enum.Font.Cartoon
KButton5.Text = "KILL VILLIANS (Risk)"
KButton5.TextColor3 = Color3.new(1, 0, 0)
KButton5.TextScaled = true
KButton5.TextSize = 14
KButton5.TextStrokeColor3 = Color3.new(1, 0.364706, 0)
KButton5.TextStrokeTransparency = 0
KButton5.TextWrapped = true
 
SafeFR.Name = "SafeFR"
SafeFR.Parent = SPTSGui
SafeFR.BackgroundColor3 = Color3.new(0, 0, 0)
SafeFR.BackgroundTransparency = 0.30000001192093
SafeFR.BorderColor3 = Color3.new(0, 0.133333, 1)
SafeFR.BorderSizePixel = 4
SafeFR.Position = UDim2.new(0.24960126, 0, 0.31184411, 0)
SafeFR.Size = UDim2.new(0.40271011, 0, 0.481259316, 0)
SafeFR.Visible = false
 
KButton6.Name = "KButton6"
KButton6.Parent = SafeFR
KButton6.BackgroundColor3 = Color3.new(0, 0, 0)
KButton6.BackgroundTransparency = 0.5
KButton6.BorderColor3 = Color3.new(0, 0.4, 1)
KButton6.BorderSizePixel = 2
KButton6.Position = UDim2.new(0.0634417087, 0, 0.164775103, 0)
KButton6.Size = UDim2.new(0.867684603, 0, 0.109190084, 0)
KButton6.Selected = true
KButton6.Font = Enum.Font.Cartoon
KButton6.Text = "KILL "
KButton6.TextColor3 = Color3.new(0.00392157, 0.65098, 1)
KButton6.TextScaled = true
KButton6.TextSize = 14
KButton6.TextStrokeTransparency = 0
KButton6.TextWrapped = true
 
KButton7.Name = "KButton7"
KButton7.Parent = SafeFR
KButton7.BackgroundColor3 = Color3.new(0, 0, 0)
KButton7.BackgroundTransparency = 0.5
KButton7.BorderColor3 = Color3.new(0, 0.568627, 1)
KButton7.BorderSizePixel = 2
KButton7.Position = UDim2.new(0.0634417087, 0, 0.415014476, 0)
KButton7.Size = UDim2.new(0.867684901, 0, 0.0998442471, 0)
KButton7.Selected = true
KButton7.Font = Enum.Font.Cartoon
KButton7.Text = "KILL ALL"
KButton7.TextColor3 = Color3.new(0, 0.733333, 1)
KButton7.TextScaled = true
KButton7.TextSize = 14
KButton7.TextStrokeTransparency = 0
KButton7.TextWrapped = true
 
SafeMode_2.Name = "SafeMode"
SafeMode_2.Parent = SafeFR
SafeMode_2.BackgroundColor3 = Color3.new(0, 0, 0)
SafeMode_2.BackgroundTransparency = 0.5
SafeMode_2.BorderColor3 = Color3.new(0.0823529, 0, 1)
SafeMode_2.BorderSizePixel = 3
SafeMode_2.Position = UDim2.new(0.107057884, 0, 0.0293614306, 0)
SafeMode_2.Size = UDim2.new(0.77648741, 0, 0.0760902986, 0)
SafeMode_2.Selected = true
SafeMode_2.Font = Enum.Font.Cartoon
SafeMode_2.Text = "Safe Mode ON"
SafeMode_2.TextColor3 = Color3.new(0.0666667, 0, 1)
SafeMode_2.TextScaled = true
SafeMode_2.TextSize = 14
SafeMode_2.TextStrokeTransparency = 0
SafeMode_2.TextWrapped = true
 
Name_2.Name = "Name"
Name_2.Parent = SafeFR
Name_2.BackgroundColor3 = Color3.new(0, 0, 0)
Name_2.BackgroundTransparency = 0.5
Name_2.BorderColor3 = Color3.new(0, 0.784314, 1)
Name_2.BorderSizePixel = 2
Name_2.Position = UDim2.new(0.0634417087, 0, 0.300069571, 0)
Name_2.Size = UDim2.new(0.867684662, 0, 0.0868584365, 0)
Name_2.Font = Enum.Font.SourceSans
Name_2.PlaceholderColor3 = Color3.new(0.027451, 0.823529, 1)
Name_2.PlaceholderText = "Name"
Name_2.Text = "Name"
Name_2.TextColor3 = Color3.new(0.027451, 0.823529, 1)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextStrokeTransparency = 0
Name_2.TextWrapped = true
 
KButton8.Name = "KButton8"
KButton8.Parent = SafeFR
KButton8.BackgroundColor3 = Color3.new(0, 0, 0)
KButton8.BackgroundTransparency = 0.5
KButton8.BorderColor3 = Color3.new(0.0196078, 0.329412, 1)
KButton8.BorderSizePixel = 2
KButton8.Position = UDim2.new(0.0594766028, 0, 0.604027569, 0)
KButton8.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton8.Selected = true
KButton8.Font = Enum.Font.Cartoon
KButton8.Text = "KILL INNOCENT"
KButton8.TextColor3 = Color3.new(0, 0, 1)
KButton8.TextScaled = true
KButton8.TextSize = 14
KButton8.TextStrokeTransparency = 0
KButton8.TextWrapped = true
 
KButton9.Name = "KButton9"
KButton9.Parent = SafeFR
KButton9.BackgroundColor3 = Color3.new(0, 0, 0)
KButton9.BackgroundTransparency = 0.5
KButton9.BorderColor3 = Color3.new(0, 0.952941, 1)
KButton9.BorderSizePixel = 2
KButton9.Position = UDim2.new(0.0634417087, 0, 0.719292402, 0)
KButton9.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton9.Selected = true
KButton9.Font = Enum.Font.Cartoon
KButton9.Text = "KILL HEROS"
KButton9.TextColor3 = Color3.new(0.00784314, 1, 0.968628)
KButton9.TextScaled = true
KButton9.TextSize = 14
KButton9.TextStrokeTransparency = 0
KButton9.TextWrapped = true
 
KButton10.Name = "KButton10"
KButton10.Parent = SafeFR
KButton10.BackgroundColor3 = Color3.new(0, 0, 0)
KButton10.BackgroundTransparency = 0.5
KButton10.BorderColor3 = Color3.new(0, 0.0980392, 1)
KButton10.BorderSizePixel = 2
KButton10.Position = UDim2.new(0.0634417087, 0, 0.831441939, 0)
KButton10.Size = UDim2.new(0.867684662, 0, 0.087383233, 0)
KButton10.Selected = true
KButton10.Font = Enum.Font.Cartoon
KButton10.Text = "KILL VILLIANS"
KButton10.TextColor3 = Color3.new(0.784314, 0, 1)
KButton10.TextScaled = true
KButton10.TextSize = 14
KButton10.TextStrokeColor3 = Color3.new(0.113725, 0, 1)
KButton10.TextStrokeTransparency = 0
KButton10.TextWrapped = true
 
Leak.Name = "Leak"
Leak.Parent = SPTSGui
Leak.BackgroundColor3 = Color3.new(1, 0, 0)
Leak.BackgroundTransparency = 0.5
Leak.BorderColor3 = Color3.new(0, 0, 0)
Leak.BorderSizePixel = 2
Leak.Position = UDim2.new(-0.000278175023, 0, 0.498500705, 0)
Leak.Size = UDim2.new(0.100078978, 0, 0.0514992364, 0)
Leak.Selected = true
Leak.Font = Enum.Font.Cartoon
Leak.Text = "Plr Stats"
Leak.TextColor3 = Color3.new(1, 0.2, 0)
Leak.TextScaled = true
Leak.TextSize = 14
Leak.TextStrokeTransparency = 0
Leak.TextWrapped = true
 
Leaks.Name = "Leaks"
Leaks.Parent = SPTSGui
Leaks.BackgroundColor3 = Color3.new(1, 0.992157, 0.964706)
Leaks.BorderColor3 = Color3.new(0.721569, 0.721569, 0.721569)
Leaks.BorderSizePixel = 4
Leaks.Position = UDim2.new(0.240039483, 0, 0.160419837, 0)
Leaks.Size = UDim2.new(0.601913333, 0, 0.646176815, 0)
Leaks.Visible = false
 
PlrNameStats.Name = "PlrNameStats"
PlrNameStats.Parent = Leaks
PlrNameStats.BackgroundColor3 = Color3.new(1, 1, 1)
PlrNameStats.BackgroundTransparency = 1
PlrNameStats.Position = UDim2.new(0, 0, 1.77016144e-08, 0)
PlrNameStats.Size = UDim2.new(0.464866221, 0, 0.0814385116, 0)
PlrNameStats.Font = Enum.Font.Cartoon
PlrNameStats.Text = "Name : None"
PlrNameStats.TextColor3 = Color3.new(0, 0, 0)
PlrNameStats.TextScaled = true
PlrNameStats.TextSize = 14
PlrNameStats.TextWrapped = true
PlrNameStats.TextXAlignment = Enum.TextXAlignment.Left
 
Status.Name = "Status"
Status.Parent = Leaks
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(-5.96046448e-08, 0, 0.199535981, 0)
Status.Size = UDim2.new(0.37352401, 0, 0.088399075, 0)
Status.Font = Enum.Font.Cartoon
Status.Text = "Status : None"
Status.TextColor3 = Color3.new(0, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left
 
Innocence.Name = "Innocence"
Innocence.Parent = Leaks
Innocence.BackgroundColor3 = Color3.new(1, 1, 1)
Innocence.BackgroundTransparency = 1
Innocence.Position = UDim2.new(0.00794271752, 0, 0.31090492, 0)
Innocence.Size = UDim2.new(0.341752797, 0, 0.0651972219, 0)
Innocence.Font = Enum.Font.Cartoon
Innocence.Text = "Innocence Killed : 0"
Innocence.TextColor3 = Color3.new(0, 0, 0)
Innocence.TextScaled = true
Innocence.TextSize = 14
Innocence.TextWrapped = true
Innocence.TextXAlignment = Enum.TextXAlignment.Left
 
Villain.Name = "Villain"
Villain.Parent = Leaks
Villain.BackgroundColor3 = Color3.new(1, 1, 1)
Villain.BackgroundTransparency = 1
Villain.Position = UDim2.new(0.382578045, 0, 0.31090492, 0)
Villain.Size = UDim2.new(0.258353502, 0, 0.0651972219, 0)
Villain.Font = Enum.Font.Cartoon
Villain.Text = "Villain Killed : 0"
Villain.TextColor3 = Color3.new(0, 0, 0)
Villain.TextScaled = true
Villain.TextSize = 14
Villain.TextWrapped = true
Villain.TextXAlignment = Enum.TextXAlignment.Left
 
Hero.Name = "Hero"
Hero.Parent = Leaks
Hero.BackgroundColor3 = Color3.new(1, 1, 1)
Hero.BackgroundTransparency = 1
Hero.Position = UDim2.new(0.663223624, 0, 0.31090492, 0)
Hero.Size = UDim2.new(0.258353502, 0, 0.0651972219, 0)
Hero.Font = Enum.Font.Cartoon
Hero.Text = "Hero Killed : 0"
Hero.TextColor3 = Color3.new(0, 0, 0)
Hero.TextScaled = true
Hero.TextSize = 14
Hero.TextWrapped = true
Hero.TextXAlignment = Enum.TextXAlignment.Left
 
Fist.Name = "Fist"
Fist.Parent = Leaks
Fist.BackgroundColor3 = Color3.new(1, 1, 1)
Fist.BackgroundTransparency = 1
Fist.Position = UDim2.new(0.00794271752, 0, 0.403712362, 0)
Fist.Size = UDim2.new(0.507227838, 0, 0.0651972219, 0)
Fist.Font = Enum.Font.Cartoon
Fist.Text = "Fist : 0"
Fist.TextColor3 = Color3.new(0, 0, 0)
Fist.TextScaled = true
Fist.TextSize = 14
Fist.TextWrapped = true
Fist.TextXAlignment = Enum.TextXAlignment.Left
 
Body.Name = "Body"
Body.Parent = Leaks
Body.BackgroundColor3 = Color3.new(1, 1, 1)
Body.BackgroundTransparency = 1
Body.Position = UDim2.new(0.00794271752, 0, 0.46867764, 0)
Body.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
Body.Font = Enum.Font.Cartoon
Body.Text = "Body : 0"
Body.TextColor3 = Color3.new(0, 0, 0)
Body.TextScaled = true
Body.TextSize = 14
Body.TextWrapped = true
Body.TextXAlignment = Enum.TextXAlignment.Left
 
Psychic.Name = "Psychic"
Psychic.Parent = Leaks
Psychic.BackgroundColor3 = Color3.new(1, 1, 1)
Psychic.BackgroundTransparency = 1
Psychic.Position = UDim2.new(0.00794271752, 0, 0.531322658, 0)
Psychic.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
Psychic.Font = Enum.Font.Cartoon
Psychic.Text = "Psychic : 0"
Psychic.TextColor3 = Color3.new(0, 0, 0)
Psychic.TextScaled = true
Psychic.TextSize = 14
Psychic.TextWrapped = true
Psychic.TextXAlignment = Enum.TextXAlignment.Left
 
Jump.Name = "Jump"
Jump.Parent = Leaks
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.BackgroundTransparency = 1
Jump.Position = UDim2.new(0.00794271752, 0, 0.596287847, 0)
Jump.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
Jump.Font = Enum.Font.Cartoon
Jump.Text = "Jump : 0"
Jump.TextColor3 = Color3.new(0, 0, 0)
Jump.TextScaled = true
Jump.TextSize = 14
Jump.TextWrapped = true
Jump.TextXAlignment = Enum.TextXAlignment.Left
 
Speed.Name = "Speed"
Speed.Parent = Leaks
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.BackgroundTransparency = 1
Speed.Position = UDim2.new(0.00794271752, 0, 0.661253095, 0)
Speed.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
Speed.Font = Enum.Font.Cartoon
Speed.Text = "Speed : 0"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true
Speed.TextXAlignment = Enum.TextXAlignment.Left
 
Tokens.Name = "Tokens"
Tokens.Parent = Leaks
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Position = UDim2.new(0.00794271752, 0, 0.786543131, 0)
Tokens.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
Tokens.Font = Enum.Font.Cartoon
Tokens.Text = "Tokens : 0"
Tokens.TextColor3 = Color3.new(0, 0, 0)
Tokens.TextScaled = true
Tokens.TextSize = 14
Tokens.TextWrapped = true
Tokens.TextXAlignment = Enum.TextXAlignment.Left
 
AliveTime.Name = "AliveTime"
AliveTime.Parent = Leaks
AliveTime.BackgroundColor3 = Color3.new(1, 1, 1)
AliveTime.BackgroundTransparency = 1
AliveTime.Position = UDim2.new(0.00794271752, 0, 0.851508319, 0)
AliveTime.Size = UDim2.new(0.54011029, 0, 0.0651972219, 0)
AliveTime.Font = Enum.Font.Cartoon
AliveTime.Text = "Alive Time : 0"
AliveTime.TextColor3 = Color3.new(0, 0, 0)
AliveTime.TextScaled = true
AliveTime.TextSize = 14
AliveTime.TextWrapped = true
AliveTime.TextXAlignment = Enum.TextXAlignment.Left
 
PlrName.Name = "PlrName"
PlrName.Parent = Leaks
PlrName.BackgroundColor3 = Color3.new(1, 1, 1)
PlrName.BackgroundTransparency = 0.5
PlrName.BorderColor3 = Color3.new(0.764706, 0.764706, 0.764706)
PlrName.BorderSizePixel = 2
PlrName.Position = UDim2.new(0.47911483, 0, 0.0123665249, 0)
PlrName.Size = UDim2.new(0.508934915, 0, 0.0690720007, 0)
PlrName.Font = Enum.Font.SourceSans
PlrName.PlaceholderColor3 = Color3.new(0, 0, 0)
PlrName.PlaceholderText = "Set Player Name"
PlrName.Text = "Set Player Name"
PlrName.TextColor3 = Color3.new(0, 0, 0)
PlrName.TextScaled = true
PlrName.TextSize = 14
PlrName.TextWrapped = true
 
Rep.Name = "Rep"
Rep.Parent = Leaks
Rep.BackgroundColor3 = Color3.new(1, 1, 1)
Rep.BackgroundTransparency = 1
Rep.Position = UDim2.new(0.55864346, 0, 0.199535981, 0)
Rep.Size = UDim2.new(0.37352401, 0, 0.088399075, 0)
Rep.Font = Enum.Font.Cartoon
Rep.Text = "Reputation : None"
Rep.TextColor3 = Color3.new(0, 0, 0)
Rep.TextScaled = true
Rep.TextSize = 14
Rep.TextWrapped = true
Rep.TextXAlignment = Enum.TextXAlignment.Left
 
LocationsB.Name = "LocationsB"
LocationsB.Parent = SPTSGui
LocationsB.BackgroundColor3 = Color3.new(1, 0, 0)
LocationsB.BackgroundTransparency = 0.5
LocationsB.BorderColor3 = Color3.new(0, 0, 0)
LocationsB.BorderSizePixel = 2
LocationsB.Position = UDim2.new(0, 0, 0.55697149, 0)
LocationsB.Size = UDim2.new(0.0998007953, 0, 0.0500000045, 0)
LocationsB.Selected = true
LocationsB.Font = Enum.Font.Cartoon
LocationsB.Text = "Locations"
LocationsB.TextColor3 = Color3.new(1, 0.2, 0)
LocationsB.TextScaled = true
LocationsB.TextSize = 14
LocationsB.TextStrokeTransparency = 0
LocationsB.TextWrapped = true
 
PLocation.Name = "PLocation"
PLocation.Parent = SPTSGui
PLocation.BackgroundColor3 = Color3.new(0, 0, 0)
PLocation.BackgroundTransparency = 0.30000001192093
PLocation.BorderColor3 = Color3.new(1, 0, 0)
PLocation.BorderSizePixel = 4
PLocation.Position = UDim2.new(0.358764619, 0, 0.469040424, 0)
PLocation.Size = UDim2.new(0.172431216, 0, 0.186131969, 0)
PLocation.Visible = false
 
Psychic1.Name = "Psychic1"
Psychic1.Parent = PLocation
Psychic1.BackgroundColor3 = Color3.new(0, 0, 0)
Psychic1.BackgroundTransparency = 0.5
Psychic1.BorderColor3 = Color3.new(1, 0, 0)
Psychic1.BorderSizePixel = 3
Psychic1.Position = UDim2.new(0.0423633605, 0, 0.0692745224, 0)
Psychic1.Size = UDim2.new(0.914631486, 0, 0.28513512, 0)
Psychic1.Selected = true
Psychic1.Font = Enum.Font.Cartoon
Psychic1.Text = "Waterfall 100-1000x"
Psychic1.TextColor3 = Color3.new(1, 0, 0)
Psychic1.TextScaled = true
Psychic1.TextSize = 14
Psychic1.TextStrokeTransparency = 0
Psychic1.TextWrapped = true
 
RequestTxt.Name = "RequestTxt"
RequestTxt.Parent = PLocation
RequestTxt.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt.BackgroundTransparency = 1
RequestTxt.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt.Position = UDim2.new(1.41023165e-07, 0, 0.359645456, 0)
RequestTxt.Size = UDim2.new(0.999999762, 0, 0.640354812, 0)
RequestTxt.Font = Enum.Font.Cartoon
RequestTxt.Text = "1m - 1t Psychic request"
RequestTxt.TextColor3 = Color3.new(1, 0, 0)
RequestTxt.TextScaled = true
RequestTxt.TextSize = 14
RequestTxt.TextStrokeTransparency = 0
RequestTxt.TextWrapped = true
 
FLocation.Name = "FLocation"
FLocation.Parent = SPTSGui
FLocation.BackgroundColor3 = Color3.new(0, 0, 0)
FLocation.BackgroundTransparency = 0.30000001192093
FLocation.BorderColor3 = Color3.new(1, 0, 0)
FLocation.BorderSizePixel = 4
FLocation.Position = UDim2.new(0.354780555, 0, 0.217391282, 0)
FLocation.Size = UDim2.new(0.172431216, 0, 0.518740594, 0)
FLocation.Visible = false
 
Fist1.Name = "Fist1"
Fist1.Parent = FLocation
Fist1.BackgroundColor3 = Color3.new(0, 0, 0)
Fist1.BackgroundTransparency = 0.5
Fist1.BorderColor3 = Color3.new(1, 0, 0)
Fist1.BorderSizePixel = 3
Fist1.Position = UDim2.new(0.107058018, 0, 0.0462624505, 0)
Fist1.Size = UDim2.new(0.776000082, 0, 0.0835375637, 0)
Fist1.Selected = true
Fist1.Font = Enum.Font.Cartoon
Fist1.Text = "Stone 10x"
Fist1.TextColor3 = Color3.new(1, 0, 0)
Fist1.TextScaled = true
Fist1.TextSize = 14
Fist1.TextStrokeTransparency = 0
Fist1.TextWrapped = true
 
Fist2.Name = "Fist2"
Fist2.Parent = FLocation
Fist2.BackgroundColor3 = Color3.new(0, 0, 0)
Fist2.BackgroundTransparency = 0.5
Fist2.BorderColor3 = Color3.new(1, 0, 0)
Fist2.BorderSizePixel = 3
Fist2.Position = UDim2.new(0.11167907, 0, 0.163441747, 0)
Fist2.Size = UDim2.new(0.776000082, 0, 0.0893179104, 0)
Fist2.Selected = true
Fist2.Font = Enum.Font.Cartoon
Fist2.Text = "Crystal 100x"
Fist2.TextColor3 = Color3.new(1, 0, 0)
Fist2.TextScaled = true
Fist2.TextSize = 14
Fist2.TextStrokeTransparency = 0
Fist2.TextWrapped = true
 
Fist3.Name = "Fist3"
Fist3.Parent = FLocation
Fist3.BackgroundColor3 = Color3.new(0, 0, 0)
Fist3.BackgroundTransparency = 0.5
Fist3.BorderColor3 = Color3.new(1, 0, 0)
Fist3.BorderSizePixel = 3
Fist3.Position = UDim2.new(0.107058018, 0, 0.315028936, 0)
Fist3.Size = UDim2.new(0.776000082, 0, 0.101452366, 0)
Fist3.Selected = true
Fist3.Font = Enum.Font.Cartoon
Fist3.Text = "Green Planet 200x"
Fist3.TextColor3 = Color3.new(1, 0, 0)
Fist3.TextScaled = true
Fist3.TextSize = 14
Fist3.TextStrokeTransparency = 0
Fist3.TextWrapped = true
 
Fist4.Name = "Fist4"
Fist4.Parent = FLocation
Fist4.BackgroundColor3 = Color3.new(0, 0, 0)
Fist4.BackgroundTransparency = 0.5
Fist4.BorderColor3 = Color3.new(1, 0, 0)
Fist4.BorderSizePixel = 3
Fist4.Position = UDim2.new(0.11167907, 0, 0.543387294, 0)
Fist4.Size = UDim2.new(0.776000082, 0, 0.0950982645, 0)
Fist4.Selected = true
Fist4.Font = Enum.Font.Cartoon
Fist4.Text = "Blue Planet 500x"
Fist4.TextColor3 = Color3.new(1, 0, 0)
Fist4.TextScaled = true
Fist4.TextSize = 14
Fist4.TextStrokeTransparency = 0
Fist4.TextWrapped = true
 
Fist5.Name = "Fist5"
Fist5.Parent = FLocation
Fist5.BackgroundColor3 = Color3.new(0, 0, 0)
Fist5.BackgroundTransparency = 0.5
Fist5.BorderColor3 = Color3.new(1, 0, 0)
Fist5.BorderSizePixel = 3
Fist5.Position = UDim2.new(0.107058026, 0, 0.757615149, 0)
Fist5.Size = UDim2.new(0.776000082, 0, 0.0865069479, 0)
Fist5.Selected = true
Fist5.Font = Enum.Font.Cartoon
Fist5.Text = "Sun 1000x"
Fist5.TextColor3 = Color3.new(1, 0, 0)
Fist5.TextScaled = true
Fist5.TextSize = 14
Fist5.TextStrokeTransparency = 0
Fist5.TextWrapped = true
 
RequestTxt_2.Name = "RequestTxt"
RequestTxt_2.Parent = FLocation
RequestTxt_2.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_2.BackgroundTransparency = 1
RequestTxt_2.Position = UDim2.new(0.109605886, 0, 0.433915764, 0)
RequestTxt_2.Size = UDim2.new(0.773452282, 0, 0.0848705098, 0)
RequestTxt_2.Font = Enum.Font.Cartoon
RequestTxt_2.Text = "1B Fist Req"
RequestTxt_2.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_2.TextScaled = true
RequestTxt_2.TextSize = 14
RequestTxt_2.TextStrokeTransparency = 0
RequestTxt_2.TextWrapped = true
 
RequestTxt_3.Name = "RequestTxt"
RequestTxt_3.Parent = FLocation
RequestTxt_3.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_3.BackgroundTransparency = 1
RequestTxt_3.Position = UDim2.new(0.104984842, 0, 0.659349322, 0)
RequestTxt_3.Size = UDim2.new(0.773452282, 0, 0.0848705098, 0)
RequestTxt_3.Font = Enum.Font.Cartoon
RequestTxt_3.Text = "100B Fist Req"
RequestTxt_3.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_3.TextScaled = true
RequestTxt_3.TextSize = 14
RequestTxt_3.TextStrokeTransparency = 0
RequestTxt_3.TextWrapped = true
 
RequestTxt_4.Name = "RequestTxt"
RequestTxt_4.Parent = FLocation
RequestTxt_4.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_4.BackgroundTransparency = 1
RequestTxt_4.Position = UDim2.new(0.104984842, 0, 0.867441833, 0)
RequestTxt_4.Size = UDim2.new(0.773452282, 0, 0.0848705098, 0)
RequestTxt_4.Font = Enum.Font.Cartoon
RequestTxt_4.Text = "10T Fist Req"
RequestTxt_4.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_4.TextScaled = true
RequestTxt_4.TextSize = 14
RequestTxt_4.TextStrokeTransparency = 0
RequestTxt_4.TextWrapped = true
 
BLocation.Name = "BLocation"
BLocation.Parent = SPTSGui
BLocation.BackgroundColor3 = Color3.new(0, 0, 0)
BLocation.BackgroundTransparency = 0.30000001192093
BLocation.BorderColor3 = Color3.new(1, 0, 0)
BLocation.BorderSizePixel = 4
BLocation.Position = UDim2.new(0.354780555, 0, 0.143928006, 0)
BLocation.Size = UDim2.new(0.172431216, 0, 0.592203915, 0)
BLocation.Visible = false
 
Body1.Name = "Body1"
Body1.Parent = BLocation
Body1.BackgroundColor3 = Color3.new(0, 0, 0)
Body1.BackgroundTransparency = 0.5
Body1.BorderColor3 = Color3.new(1, 0, 0)
Body1.BorderSizePixel = 3
Body1.Position = UDim2.new(0.107058018, 0, 0.0209459905, 0)
Body1.Size = UDim2.new(0.776000082, 0, 0.0734109804, 0)
Body1.Selected = true
Body1.Font = Enum.Font.Cartoon
Body1.Text = "Cold Water 5x"
Body1.TextColor3 = Color3.new(1, 0, 0)
Body1.TextScaled = true
Body1.TextSize = 14
Body1.TextStrokeTransparency = 0
Body1.TextWrapped = true
 
Body2.Name = "Body2"
Body2.Parent = BLocation
Body2.BackgroundColor3 = Color3.new(0, 0, 0)
Body2.BackgroundTransparency = 0.5
Body2.BorderColor3 = Color3.new(1, 0, 0)
Body2.BorderSizePixel = 3
Body2.Position = UDim2.new(0.11167907, 0, 0.163441762, 0)
Body2.Size = UDim2.new(0.776000082, 0, 0.0715963915, 0)
Body2.Selected = true
Body2.Font = Enum.Font.Cartoon
Body2.Text = "Fire 10x"
Body2.TextColor3 = Color3.new(1, 0, 0)
Body2.TextScaled = true
Body2.TextSize = 14
Body2.TextStrokeTransparency = 0
Body2.TextWrapped = true
 
Body3.Name = "Body3"
Body3.Parent = BLocation
Body3.BackgroundColor3 = Color3.new(0, 0, 0)
Body3.BackgroundTransparency = 0.5
Body3.BorderColor3 = Color3.new(1, 0, 0)
Body3.BorderSizePixel = 3
Body3.Position = UDim2.new(0.107058018, 0, 0.315028936, 0)
Body3.Size = UDim2.new(0.776000082, 0, 0.0697812513, 0)
Body3.Selected = true
Body3.Font = Enum.Font.Cartoon
Body3.Text = "Ice mountain 20x"
Body3.TextColor3 = Color3.new(1, 0, 0)
Body3.TextScaled = true
Body3.TextSize = 14
Body3.TextStrokeTransparency = 0
Body3.TextWrapped = true
 
Body4.Name = "Body4"
Body4.Parent = BLocation
Body4.BackgroundColor3 = Color3.new(0, 0, 0)
Body4.BackgroundTransparency = 0.5
Body4.BorderColor3 = Color3.new(1, 0, 0)
Body4.BorderSizePixel = 3
Body4.Position = UDim2.new(0.102436975, 0, 0.462374628, 0)
Body4.Size = UDim2.new(0.776000082, 0, 0.0723134577, 0)
Body4.Selected = true
Body4.Font = Enum.Font.Cartoon
Body4.Text = "Tornado 50x"
Body4.TextColor3 = Color3.new(1, 0, 0)
Body4.TextScaled = true
Body4.TextSize = 14
Body4.TextStrokeTransparency = 0
Body4.TextWrapped = true
 
Body5.Name = "Body5"
Body5.Parent = BLocation
Body5.BackgroundColor3 = Color3.new(0, 0, 0)
Body5.BackgroundTransparency = 0.5
Body5.BorderColor3 = Color3.new(1, 0, 0)
Body5.BorderSizePixel = 3
Body5.Position = UDim2.new(0.111679062, 0, 0.605716407, 0)
Body5.Size = UDim2.new(0.776000082, 0, 0.0682064518, 0)
Body5.Selected = true
Body5.Font = Enum.Font.Cartoon
Body5.Text = "Vulcano 100x"
Body5.TextColor3 = Color3.new(1, 0, 0)
Body5.TextScaled = true
Body5.TextSize = 14
Body5.TextStrokeTransparency = 0
Body5.TextWrapped = true
 
RequestTxt_5.Name = "RequestTxt"
RequestTxt_5.Parent = BLocation
RequestTxt_5.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_5.BackgroundTransparency = 1
RequestTxt_5.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_5.Position = UDim2.new(0.104984835, 0, 0.0921436176, 0)
RequestTxt_5.Size = UDim2.new(0.773452282, 0, 0.0712981373, 0)
RequestTxt_5.Font = Enum.Font.Cartoon
RequestTxt_5.Text = "100 Body Req"
RequestTxt_5.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_5.TextScaled = true
RequestTxt_5.TextSize = 14
RequestTxt_5.TextStrokeTransparency = 0
RequestTxt_5.TextWrapped = true
 
RequestTxt_6.Name = "RequestTxt"
RequestTxt_6.Parent = BLocation
RequestTxt_6.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_6.BackgroundTransparency = 1
RequestTxt_6.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_6.Position = UDim2.new(0, 0, 0.824403822, 0)
RequestTxt_6.Size = UDim2.new(0.999999702, 0, 0.0848705024, 0)
RequestTxt_6.Font = Enum.Font.Cartoon
RequestTxt_6.Text = "10b - 10t Body Req"
RequestTxt_6.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_6.TextScaled = true
RequestTxt_6.TextSize = 14
RequestTxt_6.TextStrokeTransparency = 0
RequestTxt_6.TextWrapped = true
 
Body6.Name = "Body6"
Body6.Parent = BLocation
Body6.BackgroundColor3 = Color3.new(0, 0, 0)
Body6.BackgroundTransparency = 0.5
Body6.BorderColor3 = Color3.new(1, 0, 0)
Body6.BorderSizePixel = 3
Body6.Position = UDim2.new(0.111679062, 0, 0.757615149, 0)
Body6.Size = UDim2.new(0.776000082, 0, 0.0682064518, 0)
Body6.Selected = true
Body6.Font = Enum.Font.Cartoon
Body6.Text = "Souls 200-1000x"
Body6.TextColor3 = Color3.new(1, 0, 0)
Body6.TextScaled = true
Body6.TextSize = 14
Body6.TextStrokeTransparency = 0
Body6.TextWrapped = true
 
RequestTxt_7.Name = "RequestTxt"
RequestTxt_7.Parent = BLocation
RequestTxt_7.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_7.BackgroundTransparency = 1
RequestTxt_7.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_7.Position = UDim2.new(0.11422693, 0, 0.233915776, 0)
RequestTxt_7.Size = UDim2.new(0.773452282, 0, 0.0712981373, 0)
RequestTxt_7.Font = Enum.Font.Cartoon
RequestTxt_7.Text = "10k Body Req"
RequestTxt_7.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_7.TextScaled = true
RequestTxt_7.TextSize = 14
RequestTxt_7.TextStrokeTransparency = 0
RequestTxt_7.TextWrapped = true
 
RequestTxt_8.Name = "RequestTxt"
RequestTxt_8.Parent = BLocation
RequestTxt_8.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_8.BackgroundTransparency = 1
RequestTxt_8.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_8.Position = UDim2.new(0.104984835, 0, 0.38328287, 0)
RequestTxt_8.Size = UDim2.new(0.773452282, 0, 0.0712981373, 0)
RequestTxt_8.Font = Enum.Font.Cartoon
RequestTxt_8.Text = "100k Body Req"
RequestTxt_8.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_8.TextScaled = true
RequestTxt_8.TextSize = 14
RequestTxt_8.TextStrokeTransparency = 0
RequestTxt_8.TextWrapped = true
 
RequestTxt_9.Name = "RequestTxt"
RequestTxt_9.Parent = BLocation
RequestTxt_9.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_9.BackgroundTransparency = 1
RequestTxt_9.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_9.Position = UDim2.new(0.104984835, 0, 0.532649994, 0)
RequestTxt_9.Size = UDim2.new(0.773452282, 0, 0.0712981373, 0)
RequestTxt_9.Font = Enum.Font.Cartoon
RequestTxt_9.Text = "1m Body Req"
RequestTxt_9.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_9.TextScaled = true
RequestTxt_9.TextSize = 14
RequestTxt_9.TextStrokeTransparency = 0
RequestTxt_9.TextWrapped = true
 
RequestTxt_10.Name = "RequestTxt"
RequestTxt_10.Parent = BLocation
RequestTxt_10.BackgroundColor3 = Color3.new(1, 1, 1)
RequestTxt_10.BackgroundTransparency = 1
RequestTxt_10.BorderColor3 = Color3.new(1, 0, 0)
RequestTxt_10.Position = UDim2.new(0.100363791, 0, 0.671890497, 0)
RequestTxt_10.Size = UDim2.new(0.773452282, 0, 0.0712981373, 0)
RequestTxt_10.Font = Enum.Font.Cartoon
RequestTxt_10.Text = "10m Body Req"
RequestTxt_10.TextColor3 = Color3.new(1, 0, 0)
RequestTxt_10.TextScaled = true
RequestTxt_10.TextSize = 14
RequestTxt_10.TextStrokeTransparency = 0
RequestTxt_10.TextWrapped = true
 
QLOCATION.Name = "QLOCATION"
QLOCATION.Parent = SPTSGui
QLOCATION.BackgroundColor3 = Color3.new(0, 0, 0)
QLOCATION.BackgroundTransparency = 0.30000001192093
QLOCATION.BorderColor3 = Color3.new(1, 0, 0)
QLOCATION.BorderSizePixel = 4
QLOCATION.Position = UDim2.new(0.358764619, 0, 0.469040424, 0)
QLOCATION.Size = UDim2.new(0.172431216, 0, 0.186131969, 0)
QLOCATION.Visible = false
 
Other1.Name = "Other1"
Other1.Parent = QLOCATION
Other1.BackgroundColor3 = Color3.new(0, 0, 0)
Other1.BackgroundTransparency = 0.5
Other1.BorderColor3 = Color3.new(1, 0, 0)
Other1.BorderSizePixel = 3
Other1.Position = UDim2.new(0.0423633605, 0, 0.109548375, 0)
Other1.Size = UDim2.new(0.914631486, 0, 0.28513512, 0)
Other1.Selected = true
Other1.Font = Enum.Font.Cartoon
Other1.Text = "Question "
Other1.TextColor3 = Color3.new(1, 0, 0)
Other1.TextScaled = true
Other1.TextSize = 14
Other1.TextStrokeTransparency = 0
Other1.TextWrapped = true
 
Other2.Name = "Other2"
Other2.Parent = QLOCATION
Other2.BackgroundColor3 = Color3.new(0, 0, 0)
Other2.BackgroundTransparency = 0.5
Other2.BorderColor3 = Color3.new(1, 0, 0)
Other2.BorderSizePixel = 3
Other2.Position = UDim2.new(0.0423633605, 0, 0.520341694, 0)
Other2.Size = UDim2.new(0.914631486, 0, 0.28513512, 0)
Other2.Selected = true
Other2.Font = Enum.Font.Cartoon
Other2.Text = "Safe Point"
Other2.TextColor3 = Color3.new(1, 0, 0)
Other2.TextScaled = true
Other2.TextSize = 14
Other2.TextStrokeTransparency = 0
Other2.TextWrapped = true
 
Credits.Name = "Credits"
Credits.Parent = SPTSGui
Credits.BackgroundColor3 = Color3.new(1, 0, 0)
Credits.BackgroundTransparency = 0.5
Credits.BorderColor3 = Color3.new(0, 0, 0)
Credits.BorderSizePixel = 2
Credits.Position = UDim2.new(-0.000796812761, 0, 0.618440747, 0)
Credits.Size = UDim2.new(0.0998007953, 0, 0.0500000045, 0)
Credits.Selected = true
Credits.Font = Enum.Font.Cartoon
Credits.Text = "Credits"
Credits.TextColor3 = Color3.new(1, 0.2, 0)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextStrokeTransparency = 0
Credits.TextWrapped = true
 
CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = SPTSGui
CreditsFrame.BackgroundColor3 = Color3.new(1, 0.996078, 0.968628)
CreditsFrame.BorderColor3 = Color3.new(0.686275, 0.686275, 0.686275)
CreditsFrame.BorderSizePixel = 4
CreditsFrame.Position = UDim2.new(0.24960126, 0, 0.31184411, 0)
CreditsFrame.Size = UDim2.new(0.40271011, 0, 0.481259316, 0)
CreditsFrame.Visible = false
 
CreditsTxt.Name = "CreditsTxt"
CreditsTxt.Parent = CreditsFrame
CreditsTxt.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt.BackgroundTransparency = 1
CreditsTxt.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt.Position = UDim2.new(0.0138505036, 0, -0.00172528916, 0)
CreditsTxt.Size = UDim2.new(0.999999762, 0, 0.1071769, 0)
CreditsTxt.Font = Enum.Font.Cartoon
CreditsTxt.Text = "Script Version 0.065"
CreditsTxt.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt.TextScaled = true
CreditsTxt.TextSize = 14
CreditsTxt.TextWrapped = true
 
CreditsTxt_2.Name = "CreditsTxt"
CreditsTxt_2.Parent = CreditsFrame
CreditsTxt_2.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_2.BackgroundTransparency = 1
CreditsTxt_2.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_2.Position = UDim2.new(0.0138505036, 0, 0.132231116, 0)
CreditsTxt_2.Size = UDim2.new(0.999999762, 0, 0.1071769, 0)
CreditsTxt_2.Font = Enum.Font.Cartoon
CreditsTxt_2.Text = "Made in 5 Hours"
CreditsTxt_2.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_2.TextScaled = true
CreditsTxt_2.TextSize = 14
CreditsTxt_2.TextWrapped = true
 
CreditsTxt_3.Name = "CreditsTxt"
CreditsTxt_3.Parent = CreditsFrame
CreditsTxt_3.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_3.BackgroundTransparency = 1
CreditsTxt_3.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_3.Position = UDim2.new(0.0138505036, 0, 0.263072252, 0)
CreditsTxt_3.Size = UDim2.new(0.999999762, 0, 0.1071769, 0)
CreditsTxt_3.Font = Enum.Font.Cartoon
CreditsTxt_3.Text = "Level Script : Op (7/10)"
CreditsTxt_3.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_3.TextScaled = true
CreditsTxt_3.TextSize = 14
CreditsTxt_3.TextWrapped = true
 
CreditsTxt_4.Name = "CreditsTxt"
CreditsTxt_4.Parent = CreditsFrame
CreditsTxt_4.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_4.BackgroundTransparency = 1
CreditsTxt_4.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_4.Position = UDim2.new(0.0138505036, 0, 0.400143951, 0)
CreditsTxt_4.Size = UDim2.new(0.999999762, 0, 0.1071769, 0)
CreditsTxt_4.Font = Enum.Font.Cartoon
CreditsTxt_4.Text = "By : Andreas21 - V3mil"
CreditsTxt_4.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_4.TextScaled = true
CreditsTxt_4.TextSize = 14
CreditsTxt_4.TextWrapped = true
 
CreditsTxt_5.Name = "CreditsTxt"
CreditsTxt_5.Parent = CreditsFrame
CreditsTxt_5.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_5.BackgroundTransparency = 1
CreditsTxt_5.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_5.Position = UDim2.new(0.0138505036, 0, 0.552791953, 0)
CreditsTxt_5.Size = UDim2.new(0.999999762, 0, 0.1071769, 0)
CreditsTxt_5.Font = Enum.Font.Cartoon
CreditsTxt_5.Text = "Change Log ;"
CreditsTxt_5.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_5.TextScaled = true
CreditsTxt_5.TextSize = 14
CreditsTxt_5.TextWrapped = true
 
CreditsTxt_6.Name = "CreditsTxt"
CreditsTxt_6.Parent = CreditsFrame
CreditsTxt_6.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_6.BackgroundTransparency = 1
CreditsTxt_6.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_6.Position = UDim2.new(0.205777243, 0, 0.66494149, 0)
CreditsTxt_6.Size = UDim2.new(0.588445544, 0, 0.0760242492, 0)
CreditsTxt_6.Font = Enum.Font.Cartoon
CreditsTxt_6.Text = "V0.001 (Private) Added Kill"
CreditsTxt_6.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_6.TextScaled = true
CreditsTxt_6.TextSize = 14
CreditsTxt_6.TextTransparency = 0.69999998807907
CreditsTxt_6.TextWrapped = true
 
CreditsTxt_7.Name = "CreditsTxt"
CreditsTxt_7.Parent = CreditsFrame
CreditsTxt_7.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_7.BackgroundTransparency = 1
CreditsTxt_7.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_7.Position = UDim2.new(0.0455085188, 0, 0.742823184, 0)
CreditsTxt_7.Size = UDim2.new(0.934705079, 0, 0.0853700489, 0)
CreditsTxt_7.Font = Enum.Font.Cartoon
CreditsTxt_7.Text = "V0.02 (Public)  Added Plr Stats"
CreditsTxt_7.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_7.TextScaled = true
CreditsTxt_7.TextSize = 14
CreditsTxt_7.TextTransparency = 0.40000000596046
CreditsTxt_7.TextWrapped = true
 
CreditsTxt_8.Name = "CreditsTxt"
CreditsTxt_8.Parent = CreditsFrame
CreditsTxt_8.BackgroundColor3 = Color3.new(1, 1, 1)
CreditsTxt_8.BackgroundTransparency = 1
CreditsTxt_8.BorderColor3 = Color3.new(1, 0, 0)
CreditsTxt_8.Position = UDim2.new(0.00593599863, 0, 0.809501529, 0)
CreditsTxt_8.Size = UDim2.new(0.986149371, 0, 0.143302187, 0)
CreditsTxt_8.Font = Enum.Font.Cartoon
CreditsTxt_8.Text = "V0.065  Added Locations Credits"
CreditsTxt_8.TextColor3 = Color3.new(0, 0, 0)
CreditsTxt_8.TextScaled = true
CreditsTxt_8.TextSize = 14
CreditsTxt_8.TextWrapped = true
 
LocationFrame.Name = "LocationFrame"
LocationFrame.Parent = SPTSGui
LocationFrame.BackgroundColor3 = Color3.new(0, 0, 0)
LocationFrame.BackgroundTransparency = 0.30000001192093
LocationFrame.BorderColor3 = Color3.new(1, 0, 0)
LocationFrame.BorderSizePixel = 4
LocationFrame.Position = UDim2.new(0.173107252, 0, 0.284723848, 0)
LocationFrame.Size = UDim2.new(0.172431216, 0, 0.451773822, 0)
LocationFrame.Visible = false
 
FistL.Name = "FistL"
FistL.Parent = LocationFrame
FistL.BackgroundColor3 = Color3.new(0, 0, 0)
FistL.BackgroundTransparency = 0.5
FistL.BorderColor3 = Color3.new(1, 0, 0)
FistL.BorderSizePixel = 3
FistL.Position = UDim2.new(0.0423633605, 0, 0.0692745298, 0)
FistL.Size = UDim2.new(0.914631486, 0, 0.113408819, 0)
FistL.Selected = true
FistL.Font = Enum.Font.Cartoon
FistL.Text = "Fist"
FistL.TextColor3 = Color3.new(1, 0, 0)
FistL.TextScaled = true
FistL.TextSize = 14
FistL.TextStrokeTransparency = 0
FistL.TextWrapped = true
 
BodyL.Name = "BodyL"
BodyL.Parent = LocationFrame
BodyL.BackgroundColor3 = Color3.new(0, 0, 0)
BodyL.BackgroundTransparency = 0.5
BodyL.BorderColor3 = Color3.new(1, 0, 0)
BodyL.BorderSizePixel = 3
BodyL.Position = UDim2.new(0.0423633605, 0, 0.21261847, 0)
BodyL.Size = UDim2.new(0.914631486, 0, 0.113408819, 0)
BodyL.Selected = true
BodyL.Font = Enum.Font.Cartoon
BodyL.Text = "Body"
BodyL.TextColor3 = Color3.new(1, 0, 0)
BodyL.TextScaled = true
BodyL.TextSize = 14
BodyL.TextStrokeTransparency = 0
BodyL.TextWrapped = true
 
PsychicL.Name = "PsychicL"
PsychicL.Parent = LocationFrame
PsychicL.BackgroundColor3 = Color3.new(0, 0, 0)
PsychicL.BackgroundTransparency = 0.5
PsychicL.BorderColor3 = Color3.new(1, 0, 0)
PsychicL.BorderSizePixel = 3
PsychicL.Position = UDim2.new(0.0423633605, 0, 0.34596166, 0)
PsychicL.Size = UDim2.new(0.914631486, 0, 0.113408819, 0)
PsychicL.Selected = true
PsychicL.Font = Enum.Font.Cartoon
PsychicL.Text = "Psychic"
PsychicL.TextColor3 = Color3.new(1, 0, 0)
PsychicL.TextScaled = true
PsychicL.TextSize = 14
PsychicL.TextStrokeTransparency = 0
PsychicL.TextWrapped = true
 
QuestionL.Name = "QuestionL"
QuestionL.Parent = LocationFrame
QuestionL.BackgroundColor3 = Color3.new(0, 0, 0)
QuestionL.BackgroundTransparency = 0.5
QuestionL.BorderColor3 = Color3.new(1, 0, 0)
QuestionL.BorderSizePixel = 3
QuestionL.Position = UDim2.new(0.0423633605, 0, 0.485972017, 0)
QuestionL.Size = UDim2.new(0.914631486, 0, 0.113408819, 0)
QuestionL.Selected = true
QuestionL.Font = Enum.Font.Cartoon
QuestionL.Text = "Others"
QuestionL.TextColor3 = Color3.new(1, 0, 0)
QuestionL.TextScaled = true
QuestionL.TextSize = 14
QuestionL.TextStrokeTransparency = 0
QuestionL.TextWrapped = true
 
CloseL.Name = "CloseL"
CloseL.Parent = LocationFrame
CloseL.BackgroundColor3 = Color3.new(0, 0, 0)
CloseL.BackgroundTransparency = 0.5
CloseL.BorderColor3 = Color3.new(1, 0, 0)
CloseL.BorderSizePixel = 3
CloseL.Position = UDim2.new(0.0423633605, 0, 0.835997939, 0)
CloseL.Size = UDim2.new(0.914631486, 0, 0.113408819, 0)
CloseL.Selected = true
CloseL.Font = Enum.Font.Cartoon
CloseL.Text = "Close"
CloseL.TextColor3 = Color3.new(1, 0, 0)
CloseL.TextScaled = true
CloseL.TextSize = 14
CloseL.TextStrokeTransparency = 0
CloseL.TextWrapped = true
 
Healthbar.Name = "Healthbar"
Healthbar.Parent = SPTSGui
Healthbar.BackgroundColor3 = Color3.new(1, 0, 0)
Healthbar.BackgroundTransparency = 1
Healthbar.BorderColor3 = Color3.new(0, 0, 0)
Healthbar.BorderSizePixel = 2
Healthbar.Position = UDim2.new(0, 0, 0.677175641, 0)
Healthbar.Size = UDim2.new(0.15, 0, 0.0400000082, 0)
Healthbar.Selected = true
Healthbar.Font = Enum.Font.Cartoon
Healthbar.Text = "Health :"
Healthbar.TextColor3 = Color3.new(1, 0.4, 0)
Healthbar.TextScaled = true
Healthbar.TextSize = 14
Healthbar.TextStrokeTransparency = 0
Healthbar.TextWrapped = true
Healthbar.TextXAlignment = Enum.TextXAlignment.Left
 
Posbar.Name = "Posbar"
Posbar.Parent = SPTSGui
Posbar.BackgroundColor3 = Color3.new(1, 0, 0)
Posbar.BackgroundTransparency = 1
Posbar.BorderColor3 = Color3.new(0, 0, 0)
Posbar.BorderSizePixel = 2
Posbar.Position = UDim2.new(0, 0, 0.726874411, 0)
Posbar.Size = UDim2.new(0.15, 0, 0.0400000082, 0)
Posbar.Selected = true
Posbar.Font = Enum.Font.Cartoon
Posbar.Text = "Pos :"
Posbar.TextColor3 = Color3.new(1, 0.709804, 0.027451)
Posbar.TextScaled = true
Posbar.TextSize = 14
Posbar.TextStrokeTransparency = 0
Posbar.TextWrapped = true
Posbar.TextXAlignment = Enum.TextXAlignment.Left
-- Scripts:
Body1.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(365,249,-435)
end)
Body2.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(354,263,-480)
end)
Body3.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1603,269,2248)
end)
Body4.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2300,979,1065)
end)
Body5.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1980,745,-1861)
end)
Body6.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-244,290,961)
end)
Fist1.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(403,271,973)
end)
Fist2.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2275,1966,1057)
end)
Fist3.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1177,4788,-2291)
end)
Fist4.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1378,9274,1650)
end)
Fist5.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-369,15735,-9)
end)
Psychic1.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2624,5548,-517)
end)
Other1.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(486,249,898)
end)
Other2.MouseButton1Click:Connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100000,0)
end)
FistL.MouseButton1Click:Connect(function()
 if Selected2.Value == "None" then
  else
 SPTSGui[Selected2.Value].Visible = false
 end
 FLocation.Visible = true
Selected2.Value = "FLocation"
end)
PsychicL.MouseButton1Click:Connect(function()
 if Selected2.Value == "None" then
  else
 SPTSGui[Selected2.Value].Visible = false
 end
 PLocation.Visible = true
Selected2.Value = "PLocation"
end)
BodyL.MouseButton1Click:Connect(function()
 if Selected2.Value == "None" then
  else
 SPTSGui[Selected2.Value].Visible = false
 end
 BLocation.Visible = true
Selected2.Value = "BLocation"
end)
QuestionL.MouseButton1Click:Connect(function()
 if Selected2.Value == "None" then
  else
 SPTSGui[Selected2.Value].Visible = false
 end
 QLOCATION.Visible = true
Selected2.Value = "QLOCATION"
end)
CloseL.MouseButton1Click:Connect(function()
 if Selected2.Value == "None" then
  else
 SPTSGui[Selected2.Value].Visible = false
 end
Selected2.Value = "None"
end)
LocationsB.MouseButton1Click:Connect(function()
 if LocationFrame.Visible == false then
  LocationFrame.Visible = true
 elseif LocationFrame.Visible == true then
  LocationFrame.Visible = false
  if Selected2.Value == "None" then
  else
  SPTSGui[Selected2.Value].Visible = false
  end
 end
end)
Credits.MouseButton1Click:Connect(function()
 if CreditsFrame.Visible == false then
  CreditsFrame.Visible = true
 elseif CreditsFrame.Visible == true then
  CreditsFrame.Visible = false
 end
end)
 
 
 
 
 
 
 
 
 
 
 
KButton.MouseButton1Click:Connect(function()
 for i = 1,300 do
  game.Workspace[Name.Text].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
  wait()
 end
end)
KButton6.MouseButton1Click:Connect(function()
 for i = 1,300 do
  if game.Workspace[Name.Text].Humanoid.MaxHealth <= game.Players.LocalPlayer.Character.Humanoid.MaxHealth*3 then
  game.Workspace[Name.Text].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
  wait()
  end
  end
end)
 
KButton2.MouseButton1Click:Connect(function()
     run = not run
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
    if run then
    while wait() do
    if run then
    tp()
    end
    end
    end
    end)
KButton7.MouseButton1Click:Connect(function()
     run2 = not run2
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid").MaxHealth <= game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MaxHealth then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run2 then
    while wait() do
    if run2 then
    tp()
    end
    end
    end
    end)
KButton3.MouseButton1Click:Connect(function()
     run3 = not run3
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value == 0 then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run3 then
    while wait() do
    if run3 then
    tp()
    end
    end
    end
    end)
KButton4.MouseButton1Click:Connect(function()
     run4 = not run4
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value >= 1 then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run4 then
    while wait() do
    if run4 then
    tp()
    end
    end
    end
    end)
KButton5.MouseButton1Click:Connect(function()
     run5 = not run5
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value <= -1 then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run5 then
    while wait() do
    if run5 then
    tp()
    end
    end
    end
    end)
KButton8.MouseButton1Click:Connect(function()
     run6 = not run6
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value == 0 and player.Character:FindFirstChild("Humanoid").MaxHealth <= game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MaxHealth  then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run6 then
    while wait() do
    if run6 then
    tp()
    end
    end
    end
    end)
KButton9.MouseButton1Click:Connect(function()
     run7 = not run7
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value >= 1 and player.Character:FindFirstChild("Humanoid").MaxHealth <= game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MaxHealth  then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run7 then
    while wait() do
    if run7 then
    tp()
    end
    end
    end
    end)
KButton10.MouseButton1Click:Connect(function()
     run8 = not run8
    local function tp()
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and game.Players[player.Name].PrivateStats.Reputation.Value <= -1 and player.Character:FindFirstChild("Humanoid").MaxHealth <= game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MaxHealth  then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
    end
    end
    end
 
    if run8 then
    while wait() do
    if run8 then
    tp()
    end
    end
    end
    end)
OPEN.MouseButton1Click:Connect(function()
 if SPTSGui[Selected.Value].Visible == true then
  SPTSGui[Selected.Value].Visible = false
 elseif SPTSGui[Selected.Value].Visible == false then
  SPTSGui[Selected.Value].Visible = true
 end
end)
SafeMode.MouseButton1Click:Connect(function()
 Selected.Value = "SafeFR"
 UnSafeFR.Visible = false
 SafeFR.Visible = true
end)
SafeMode_2.MouseButton1Click:Connect(function()
 Selected.Value = "UnSafeFR"
 UnSafeFR.Visible = true
 SafeFR.Visible = false
end)
Leak.MouseButton1Click:Connect(function()
 if Leaks.Visible == true then
  Leaks.Visible = false
 elseif Leaks.Visible == false then
  Leaks.Visible = true
 end
end)
while true do
if game.Players.LocalPlayer.Character == nil then
Posbar.Text = "Pos : Not Spawned"
Healthbar.Text = "Health : Not Spawned"
else
 if game.Players[PlrName.Text] == nil then
  PlrNameStats.Text = "Name : None"
 else
  PlrNameStats.Text = "Name :"..game.Players[PlrName.Text].Name
  Villain.Text = "Villain Killed : "..game.Players[PlrName.Text].PrivateStats.VillainKilled.Value
  AliveTime.Text = "Alive : "..game.Players[PlrName.Text].PrivateStats.AliveTime.Value.." Mins"
  Hero.Text = "Hero Killed : "..game.Players[PlrName.Text].PrivateStats.HeroKilled.Value
  Innocence.Text = "Innocent Killed : "..game.Players[PlrName.Text].PrivateStats.InnocentKilled.Value
  Rep.Text = "Reputation : "..game.Players[PlrName.Text].PrivateStats.Reputation.Value
  Status.Text = "Status : "..game.Players[PlrName.Text].leaderstats.Status.Value
  Fist.Text = "Fist : "..game.Players[PlrName.Text].PrivateStats.FistStrength.Value
  Psychic.Text = "Psychic : "..game.Players[PlrName.Text].PrivateStats.PsychicPower.Value
  Jump.Text = "Jump : "..game.Players[PlrName.Text].PrivateStats.JumpForce.Value
  Speed.Text = "Speed : "..game.Players[PlrName.Text].PrivateStats.MovementSpeed.Value
  Body.Text = "Body : "..game.Players[PlrName.Text].PrivateStats.BodyToughness.Value
  Tokens.Text = "Tokens : "..game.Players[PlrName.Text].PrivateStats.Token.Value
 end
        if game.Players.LocalPlayer.Character.Humanoid == nil then
        Healthbar.Text = "Health : Dead"
        else
 if game.Players.LocalPlayer.Character.Humanoid.Health <= 999 then
  Healthbar.Text = "Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health/1).." ("..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100/1).."%)"
 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 999999 then
  Healthbar.Text = "Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health/100/10).."K ("..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100/1).."%)"
 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 999999999 then
  Healthbar.Text = "Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health/100000/10).."M ("..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100/1).."%)"
 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 999999999999 then
  Healthbar.Text = "Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health/100000000/10).."B ("..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100/1).."%)"
 else
  Healthbar.Text = "Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health/100000000000/10).."T ("..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100/1).."%)"
  end
         end
                if game.Players.LocalPlayer.Character.HumanoidRootPart == nil then
                Posbar.Text = "Pos : Dead"
                else
  Posbar.Text = "Pos : "..math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X/1).." , "..math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y/1).." , "..math.floor(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z/1)
end
end
 wait(.5)
 
end