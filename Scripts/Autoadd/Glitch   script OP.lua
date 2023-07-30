--Effect By King Green Script By ErrorScripter/Green
--Glitch God 404 Keybing TP: z x c v b n m g h j k p 
game.Players.LocalPlayer.PlayerGui.Pro.Frame.Staminas:Destroy()

local StarGlitcherv2 = Instance.new("ScreenGui")
local Left = Instance.new("Frame")
local Spinners = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Back = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Center = Instance.new("ImageLabel")
local OuterCircle1 = Instance.new("ImageLabel")
local OuterCircle2 = Instance.new("ImageLabel")
local Spin1 = Instance.new("ImageLabel")
local Spin2 = Instance.new("ImageLabel")
local Side_BG = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Form_BG = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local Form = Instance.new("TextLabel")
local Side = Instance.new("TextLabel")
local icon = Instance.new("ImageLabel")
local Inner = Instance.new("ImageLabel")
local Stroke = Instance.new("ImageLabel")
local LowerFrameBG = Instance.new("Frame")
local UIGradient_3 = Instance.new("UIGradient")
local Credits = Instance.new("TextLabel")
local icon_2 = Instance.new("ImageLabel")
local UIScale = Instance.new("UIScale")
local Right = Instance.new("Frame")
local UIScale_2 = Instance.new("UIScale")
local Inner_2 = Instance.new("ImageLabel")
local Stroke_2 = Instance.new("ImageLabel")
local Music = Instance.new("TextLabel")
local MusicBar_BG = Instance.new("Frame")
local Main = Instance.new("Frame")
local UIGradient_4 = Instance.new("UIGradient")
local UIPadding = Instance.new("UIPadding")
local Bar = Instance.new("Frame")
local Spinnyz = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Center_2 = Instance.new("ImageLabel")
local OuterCircle2_2 = Instance.new("ImageLabel")
local Spin1_2 = Instance.new("ImageLabel")
local Spin2_2 = Instance.new("ImageLabel")
local OuterCircle1_2 = Instance.new("ImageLabel")
local Time = Instance.new("TextLabel")
local Music_BG = Instance.new("Frame")
local UIGradient_5 = Instance.new("UIGradient")
local Health = Instance.new("TextLabel")

StarGlitcherv2.Name = "Star Glitcher v2"
StarGlitcherv2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StarGlitcherv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Left.Name = "Left"
Left.Parent = StarGlitcherv2
Left.AnchorPoint = Vector2.new(0, 1)
Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Left.BackgroundTransparency = 1.000
Left.Position = UDim2.new(0, 0, 1, 0)
Left.Size = UDim2.new(0, 150, 0, 150)

Health.Name = "Health"
Health.Parent = Left
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.BackgroundTransparency = 1.000
Health.Position = UDim2.new(0.14913778, 0, -1.05651045, 0)
Health.Size = UDim2.new(0, 160, 0, 33)
Health.Font = Enum.Font.Arcade
Health.Text = "200/200"
Health.TextColor3 = Color3.fromRGB(255, 255, 255)
Health.TextScaled = true
Health.TextSize = 14.000
Health.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
Health.TextStrokeTransparency = 0.000
Health.TextWrapped = true

Spinners.Name = "Spinners"
Spinners.Parent = Left
Spinners.AnchorPoint = Vector2.new(0.5, 0.5)
Spinners.BackgroundColor3 = Color3.fromRGB(6, 0, 208)
Spinners.BackgroundTransparency = 0.600
Spinners.Position = UDim2.new(0.300000012, 0, 0.699999988, 0)
Spinners.Size = UDim2.new(2, 0, 2, 0)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Spinners

Back.Name = "Back"
Back.Parent = Spinners
Back.BackgroundColor3 = Color3.fromRGB(64, 0, 0)
Back.BackgroundTransparency = 0.600
Back.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Back.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
Back.ZIndex = 0

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Back

Center.Name = "Center"
Center.Parent = Spinners
Center.AnchorPoint = Vector2.new(0.5, 0.5)
Center.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Center.BackgroundTransparency = 1.000
Center.Position = UDim2.new(0.5, 0, 0.5, 0)
Center.Rotation = 45.000
Center.Size = UDim2.new(1, 20, 1, 20)
Center.ZIndex = 0
Center.Image = "rbxassetid://2273224484"
Center.ImageColor3 = Color3.fromRGB(0, 3, 63)

OuterCircle1.Name = "OuterCircle1"
OuterCircle1.Parent = Spinners
OuterCircle1.AnchorPoint = Vector2.new(0.5, 0.5)
OuterCircle1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OuterCircle1.BackgroundTransparency = 1.000
OuterCircle1.Position = UDim2.new(0.5, 0, 0.5, 0)
OuterCircle1.Rotation = 45.000
OuterCircle1.Size = UDim2.new(1, 0, 1, 0)
OuterCircle1.ZIndex = 2
OuterCircle1.Image = "rbxassetid://2312119891"
OuterCircle1.ImageColor3 = Color3.fromRGB(0, 3, 63)

OuterCircle2.Name = "OuterCircle2"
OuterCircle2.Parent = Spinners
OuterCircle2.AnchorPoint = Vector2.new(0.5, 0.5)
OuterCircle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OuterCircle2.BackgroundTransparency = 1.000
OuterCircle2.Position = UDim2.new(0.5, 0, 0.5, 0)
OuterCircle2.Rotation = 45.000
OuterCircle2.Size = UDim2.new(1, 60, 1, 60)
OuterCircle2.ZIndex = 4
OuterCircle2.Image = "rbxassetid://2312119891"
OuterCircle2.ImageColor3 = Color3.fromRGB(6, 0, 208)

Spin1.Name = "Spin1"
Spin1.Parent = Spinners
Spin1.AnchorPoint = Vector2.new(0.5, 0.5)
Spin1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spin1.BackgroundTransparency = 1.000
Spin1.Position = UDim2.new(0.5, 0, 0.5, 0)
Spin1.Rotation = 45.000
Spin1.Size = UDim2.new(1, 100, 1, 100)
Spin1.Image = "rbxassetid://2325939897"
Spin1.ImageColor3 = Color3.fromRGB(0, 3, 63)

Spin2.Name = "Spin2"
Spin2.Parent = Spinners
Spin2.AnchorPoint = Vector2.new(0.5, 0.5)
Spin2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spin2.BackgroundTransparency = 1.000
Spin2.Position = UDim2.new(0.5, 0, 0.5, 0)
Spin2.Rotation = 45.000
Spin2.Size = UDim2.new(1, 160, 1, 160)
Spin2.Image = "rbxassetid://2325939897"
Spin2.ImageColor3 = Color3.fromRGB(6, 0, 208)
Spin2.ImageTransparency = 0.250

Side_BG.Name = "Side_BG"
Side_BG.Parent = Left
Side_BG.AnchorPoint = Vector2.new(0, 0.5)
Side_BG.BackgroundColor3 = Color3.fromRGB(0, 3, 63)
Side_BG.BorderColor3 = Color3.fromRGB(6, 0, 208)
Side_BG.BorderSizePixel = 3
Side_BG.Position = UDim2.new(0, 0, 0.649999976, 0)
Side_BG.Size = UDim2.new(0, 299, 0.200000003, 0)
Side_BG.ZIndex = 2

UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.18, 0.11), NumberSequenceKeypoint.new(0.44, 0.31), NumberSequenceKeypoint.new(0.60, 0.43), NumberSequenceKeypoint.new(0.74, 0.49), NumberSequenceKeypoint.new(0.81, 0.55), NumberSequenceKeypoint.new(0.87, 0.61), NumberSequenceKeypoint.new(0.90, 0.79), NumberSequenceKeypoint.new(0.95, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Side_BG

Form_BG.Name = "Form_BG"
Form_BG.Parent = Left
Form_BG.AnchorPoint = Vector2.new(0, 0.5)
Form_BG.BackgroundColor3 = Color3.fromRGB(0, 3, 63)
Form_BG.BorderColor3 = Color3.fromRGB(6, 0, 208)
Form_BG.BorderSizePixel = 4
Form_BG.Position = UDim2.new(0, 0, 0.300000012, 0)
Form_BG.Size = UDim2.new(0, 437, 0.400000006, 0)
Form_BG.ZIndex = 2

UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.18, 0.11), NumberSequenceKeypoint.new(0.44, 0.31), NumberSequenceKeypoint.new(0.60, 0.43), NumberSequenceKeypoint.new(0.74, 0.49), NumberSequenceKeypoint.new(0.81, 0.55), NumberSequenceKeypoint.new(0.87, 0.61), NumberSequenceKeypoint.new(0.90, 0.79), NumberSequenceKeypoint.new(0.95, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_2.Parent = Form_BG

Form.Name = "Form"
Form.Parent = Left
Form.AnchorPoint = Vector2.new(0, 0.5)
Form.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Form.BackgroundTransparency = 1.000
Form.Position = UDim2.new(0.200000003, 0, 0.300000012, 0)
Form.Size = UDim2.new(4, 0, 0.400000006, 0)
Form.ZIndex = 4
Form.Font = Enum.Font.Antique
Form.Text = "Glitch God 404"
Form.TextColor3 = Color3.fromRGB(0, 3, 63)
Form.TextScaled = true
Form.TextSize = 14.000
Form.TextStrokeColor3 = Color3.fromRGB(6, 0, 208)
Form.TextStrokeTransparency = 0.000
Form.TextWrapped = true
Form.TextXAlignment = Enum.TextXAlignment.Left

Side.Name = "Side"
Side.Parent = Left
Side.AnchorPoint = Vector2.new(0, 0.5)
Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Side.BackgroundTransparency = 1.000
Side.Position = UDim2.new(0.200000003, 0, 0.649999976, 0)
Side.Size = UDim2.new(2, 0, 0.150000006, 0)
Side.ZIndex = 4
Side.Font = Enum.Font.DenkOne
Side.Text = "SPECTRUN"
Side.TextColor3 = Color3.fromRGB(0, 3, 63)
Side.TextScaled = true
Side.TextSize = 14.000
Side.TextStrokeColor3 = Color3.fromRGB(6, 0, 208)
Side.TextStrokeTransparency = 0.000
Side.TextWrapped = true
Side.TextXAlignment = Enum.TextXAlignment.Left

icon.Name = "icon"
icon.Parent = Side
icon.AnchorPoint = Vector2.new(1, 0.5)
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.Position = UDim2.new(0, -2, 0.5, 0)
icon.Size = UDim2.new(0, 25, 0, 25)
icon.Image = "rbxassetid://5021034669"
icon.ImageColor3 = Color3.fromRGB(6, 0, 208)

Inner.Name = "Inner"
Inner.Parent = Left
Inner.AnchorPoint = Vector2.new(0, 1)
Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inner.BackgroundTransparency = 1.000
Inner.Position = UDim2.new(0, 0, 1, 0)
Inner.Size = UDim2.new(0.75, 0, 0.75, 0)
Inner.ZIndex = 3
Inner.Image = "http://www.roblox.com/asset/?id=10375874722"
Inner.ImageColor3 = Color3.fromRGB(0, 3, 63)

Stroke.Name = "Stroke"
Stroke.Parent = Left
Stroke.AnchorPoint = Vector2.new(0, 1)
Stroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stroke.BackgroundTransparency = 1.000
Stroke.Position = UDim2.new(0, 0, 1, 0)
Stroke.Size = UDim2.new(1, 0, 1, 0)
Stroke.Image = "http://www.roblox.com/asset/?id=10375874722"
Stroke.ImageColor3 = Color3.fromRGB(6, 0, 208)

LowerFrameBG.Name = "LowerFrameBG"
LowerFrameBG.Parent = Left
LowerFrameBG.AnchorPoint = Vector2.new(0, 0.5)
LowerFrameBG.BackgroundColor3 = Color3.fromRGB(0, 3, 63)
LowerFrameBG.BorderColor3 = Color3.fromRGB(6, 0, 208)
LowerFrameBG.BorderSizePixel = 2
LowerFrameBG.Position = UDim2.new(0, 0, 0.859999835, 0)
LowerFrameBG.Size = UDim2.new(-0.83504045, 406, 0.110314824, 7)
LowerFrameBG.ZIndex = 2

UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.18, 0.11), NumberSequenceKeypoint.new(0.44, 0.31), NumberSequenceKeypoint.new(0.60, 0.43), NumberSequenceKeypoint.new(0.74, 0.49), NumberSequenceKeypoint.new(0.81, 0.55), NumberSequenceKeypoint.new(0.87, 0.61), NumberSequenceKeypoint.new(0.90, 0.79), NumberSequenceKeypoint.new(0.95, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_3.Parent = LowerFrameBG

Credits.Name = "Credits"
Credits.Parent = Left
Credits.AnchorPoint = Vector2.new(0, 0.5)
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.199999973, 0, 0.859999895, 0)
Credits.Size = UDim2.new(1.58113408, 0, 0.135000005, 0)
Credits.ZIndex = 4
Credits.Font = Enum.Font.DenkOne
Credits.Text = "Credits to AdamHack,ErrorScripter"
Credits.TextColor3 = Color3.fromRGB(0, 3, 63)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextStrokeColor3 = Color3.fromRGB(6, 0, 208)
Credits.TextStrokeTransparency = 0.000
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left

icon_2.Name = "icon"
icon_2.Parent = Credits
icon_2.AnchorPoint = Vector2.new(1, 0.5)
icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon_2.BackgroundTransparency = 1.000
icon_2.Position = UDim2.new(0, -2, 0.5, 0)
icon_2.Size = UDim2.new(0, 25, 0, 25)
icon_2.Image = "rbxassetid://5021034669"
icon_2.ImageColor3 = Color3.fromRGB(6, 0, 208)

UIScale.Parent = Left
UIScale.Scale = 1.284

Right.Name = "Right"
Right.Parent = StarGlitcherv2
Right.AnchorPoint = Vector2.new(0.790000021, 0.790000021)
Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right.BackgroundTransparency = 1.000
Right.Position = UDim2.new(1, 0, 1, 0)
Right.Size = UDim2.new(0, 400, 0, 400)

UIScale_2.Parent = Right
UIScale_2.Scale = 1.271

Inner_2.Name = "Inner"
Inner_2.Parent = Right
Inner_2.AnchorPoint = Vector2.new(1, 1)
Inner_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inner_2.BackgroundTransparency = 1.000
Inner_2.Position = UDim2.new(1, 0, 1, 0)
Inner_2.Rotation = -90.000
Inner_2.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
Inner_2.ZIndex = 3
Inner_2.Image = "http://www.roblox.com/asset/?id=10375874722"
Inner_2.ImageColor3 = Color3.fromRGB(0, 3, 63)

Stroke_2.Name = "Stroke"
Stroke_2.Parent = Right
Stroke_2.AnchorPoint = Vector2.new(1, 1)
Stroke_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stroke_2.BackgroundTransparency = 1.000
Stroke_2.Position = UDim2.new(1, 0, 1, 0)
Stroke_2.Rotation = -90.000
Stroke_2.Size = UDim2.new(0, 365, 0, 365)
Stroke_2.Image = "http://www.roblox.com/asset/?id=10375874722"
Stroke_2.ImageColor3 = Color3.fromRGB(6, 0, 208)

Music.Name = "Music"
Music.Parent = Right
Music.AnchorPoint = Vector2.new(1, 0.5)
Music.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Music.BackgroundTransparency = 1.000
Music.Position = UDim2.new(1, -120, 0.600000024, 0)
Music.Size = UDim2.new(1.35000002, 0, 0.100000001, 0)
Music.ZIndex = 4
Music.Font = Enum.Font.Antique
Music.Text = "AB - NMM Bad Time"
Music.TextColor3 = Color3.fromRGB(0, 3, 63)
Music.TextScaled = true
Music.TextSize = 14.000
Music.TextStrokeColor3 = Color3.fromRGB(6, 0, 208)
Music.TextStrokeTransparency = 0.000
Music.TextWrapped = true
Music.TextXAlignment = Enum.TextXAlignment.Right

MusicBar_BG.Name = "MusicBar_BG"
MusicBar_BG.Parent = Right
MusicBar_BG.AnchorPoint = Vector2.new(1, 0.5)
MusicBar_BG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MusicBar_BG.BackgroundTransparency = 1.000
MusicBar_BG.Position = UDim2.new(1, -120, 0.720000029, 0)
MusicBar_BG.Size = UDim2.new(0, 420, 0.0599999987, 0)
MusicBar_BG.ZIndex = 3

Main.Name = "Main"
Main.Parent = MusicBar_BG
Main.AnchorPoint = Vector2.new(0, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 3, 63)
Main.BorderColor3 = Color3.fromRGB(6, 0, 208)
Main.BorderSizePixel = 3
Main.Position = UDim2.new(0, 0, 0.5, 0)
Main.Size = UDim2.new(1, -77, 0.419999987, 0)

UIGradient_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 0.00), NumberSequenceKeypoint.new(1.00, 0.18)}
UIGradient_4.Parent = Main

UIPadding.Parent = Main
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 3)

Bar.Name = "Bar"
Bar.Parent = Main
Bar.AnchorPoint = Vector2.new(0, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(6, 0, 208)
Bar.BackgroundTransparency = 0.600
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(-0.0129433423, 0, 0.500000536, 0)
Bar.Size = UDim2.new(1.02296519, 0, 0.419999957, 0)

Spinnyz.Name = "Spinnyz"
Spinnyz.Parent = Bar
Spinnyz.AnchorPoint = Vector2.new(0, 0.5)
Spinnyz.BackgroundColor3 = Color3.fromRGB(6, 0, 208)
Spinnyz.BorderColor3 = Color3.fromRGB(0, 0, 0)
Spinnyz.Position = UDim2.new(1, -7, 0.5, 0)
Spinnyz.Size = UDim2.new(0, 16, 0, 16)

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = Spinnyz

Center_2.Name = "Center"
Center_2.Parent = Spinnyz
Center_2.AnchorPoint = Vector2.new(0.5, 0.5)
Center_2.BackgroundTransparency = 1.000
Center_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Center_2.Size = UDim2.new(1, 10, 1, 10)
Center_2.ZIndex = 0
Center_2.Image = "rbxassetid://2273224484"
Center_2.ImageColor3 = Color3.fromRGB(0, 3, 63)

OuterCircle2_2.Name = "OuterCircle2"
OuterCircle2_2.Parent = Spinnyz
OuterCircle2_2.AnchorPoint = Vector2.new(0.5, 0.5)
OuterCircle2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OuterCircle2_2.BackgroundTransparency = 1.000
OuterCircle2_2.Position = UDim2.new(0.5, 0, 0.5, 0)
OuterCircle2_2.Size = UDim2.new(1, 10, 1, 10)
OuterCircle2_2.ZIndex = 4
OuterCircle2_2.Image = "rbxassetid://2312119891"
OuterCircle2_2.ImageColor3 = Color3.fromRGB(6, 0, 208)

Spin1_2.Name = "Spin1"
Spin1_2.Parent = Spinnyz
Spin1_2.AnchorPoint = Vector2.new(0.5, 0.5)
Spin1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spin1_2.BackgroundTransparency = 1.000
Spin1_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Spin1_2.Size = UDim2.new(1, 0, 1, 0)
Spin1_2.Image = "rbxassetid://2325939897"
Spin1_2.ImageColor3 = Color3.fromRGB(0, 3, 63)

Spin2_2.Name = "Spin2"
Spin2_2.Parent = Spinnyz
Spin2_2.AnchorPoint = Vector2.new(0.5, 0.5)
Spin2_2.BackgroundTransparency = 1.000
Spin2_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Spin2_2.Size = UDim2.new(1, 10, 1, 10)
Spin2_2.Image = "rbxassetid://2325939897"
Spin2_2.ImageColor3 = Color3.fromRGB(6, 0, 208)

OuterCircle1_2.Name = "OuterCircle1"
OuterCircle1_2.Parent = Spinnyz
OuterCircle1_2.AnchorPoint = Vector2.new(0.5, 0.5)
OuterCircle1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OuterCircle1_2.BackgroundTransparency = 1.000
OuterCircle1_2.Position = UDim2.new(0.5, 0, 0.5, 0)
OuterCircle1_2.Size = UDim2.new(1, 5, 1, 5)
OuterCircle1_2.ZIndex = 2
OuterCircle1_2.Image = "rbxassetid://2312119891"
OuterCircle1_2.ImageColor3 = Color3.fromRGB(0, 3, 63)

Time.Name = "Time"
Time.Parent = MusicBar_BG
Time.AnchorPoint = Vector2.new(1, 0.5)
Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Time.BackgroundTransparency = 1.000
Time.Position = UDim2.new(1, 35, 0.5, 0)
Time.Size = UDim2.new(0.159999996, 30, 1.20000005, 0)
Time.ZIndex = 4
Time.Font = Enum.Font.Antique
Time.Text = "00:00/00:00"
Time.TextColor3 = Color3.fromRGB(0, 3, 63)
Time.TextScaled = true
Time.TextSize = 14.000
Time.TextStrokeColor3 = Color3.fromRGB(6, 0, 208)
Time.TextStrokeTransparency = 0.000
Time.TextWrapped = true

Music_BG.Name = "Music_BG"
Music_BG.Parent = Right
Music_BG.AnchorPoint = Vector2.new(1, 0.5)
Music_BG.BackgroundColor3 = Color3.fromRGB(0, 3, 63)
Music_BG.BorderColor3 = Color3.fromRGB(6, 0, 208)
Music_BG.BorderSizePixel = 4
Music_BG.Position = UDim2.new(1, -120, 0.600000024, 0)
Music_BG.Size = UDim2.new(0, 362, 0.100000001, 0)
Music_BG.ZIndex = 2

UIGradient_5.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.15, 1.00), NumberSequenceKeypoint.new(0.64, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient_5.Parent = Music_BG

-- Scripts:

local function HABHNIX_fake_script() -- Spinners.LocalScript 
	local script = Instance.new('LocalScript', Spinners)

	local idk = script.Parent
	
	while wait() do
		idk.OuterCircle1.Rotation = idk.OuterCircle1.Rotation - 7.111
		idk.OuterCircle2.Rotation = idk.OuterCircle2.Rotation + 5.111
		idk.Spin1.Rotation = idk.Spin1.Rotation + 11.111
		idk.Spin2.Rotation = idk.Spin2.Rotation - 11.111	
		idk.Center.Rotation = idk.Center.Rotation + 4.123
	end
end
coroutine.wrap(HABHNIX_fake_script)()
local function JDAWWP_fake_script() -- Spinnyz.LocalScript 
	local script = Instance.new('LocalScript', Spinnyz)

	local idk = script.Parent
	
	while wait() do
		idk.OuterCircle1.Rotation = idk.OuterCircle1.Rotation - 7.111
		idk.OuterCircle2.Rotation = idk.OuterCircle2.Rotation + 5.111
		idk.Spin1.Rotation = idk.Spin1.Rotation + 11.111
		idk.Spin2.Rotation = idk.Spin2.Rotation - 11.111	
		idk.Center.Rotation = idk.Center.Rotation + 4.123
	end
end
coroutine.wrap(JDAWWP_fake_script)()
local function UXBUIUP_fake_script() -- StarGlitcherv2.MusicVizual 
	local script = Instance.new('LocalScript', StarGlitcherv2)

	local song = Instance.new("Sound")
	
	song.Parent = game.Players.LocalPlayer
	song.Volume = 1
	song.Playing = true
	song.Looped = true
	song.SoundId = "rbxassetid://11893116465" 
	song.Name = "Cool Music"
	song.PlaybackSpeed = 1
	
	local gui = script.Parent
	local container = gui.Right.MusicBar_BG
	
	game:GetService("RunService").Heartbeat:Connect(function()
		container.Main.Bar.Size = UDim2.new(
			math.clamp(song.TimePosition / song.TimeLength, 0, 1),
			0, 1, 0
		)
		container.Time.Text = string.format("%i:%02i - %i:%02i",
			math.floor(song.TimePosition / 60), song.TimePosition % 60,
			math.floor(song.TimeLength / 60), song.TimeLength % 60
		)
	end)
	
end
coroutine.wrap(UXBUIUP_fake_script)()

game:GetObjects("rbxassetid://13331067733")[1].Parent = game.Workspace
game.Workspace.Part.OVW:Destroy()
game.Workspace.Part.SS.Parent = game.Players.LocalPlayer.Character.Torso
game.Workspace.Part.EE.Parent = game.Players.LocalPlayer.Character.Torso
game.Workspace.Part.DisplayII.Parent = game.Players.LocalPlayer.Character.Head
game.Players.LocalPlayer.Character.Head.Display.Frame.Visible = false

local TweenService = game:GetService("TweenService")
local Display = game.Players.LocalPlayer.Character.Head.DisplayII.TextLabel

Display.Rotation = 5
local part = Display
        
        local Info = TweenInfo.new(--- overwrite
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        }
        
        local nametween = TweenService:Create(Display, Info, Goals)
        nametween:Play()
        

game.Lighting.Ambient = Color3.fromRGB(0, 0, 255)
game.Lighting.Brightness = 2
game.Lighting.ClockTime = 0
game.Lighting.FogColor = Color3.fromRGB(0, 0, 255)
game.Lighting.FogEnd = 500
game.Lighting.FogStart = 20
game.Players.LocalPlayer.Character.Data.TimeMulti.Value = 25
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "z" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33402.0352, -302.080963, 9.71844673, -0.266530156, 0.0177947376, 0.963662326, 0.0453572832, 0.998953402, -0.00590160862, -0.962758899, 0.0421361513, -0.267058372)
game.Players:Chat(("ACT = [TELEPORT-TO-JudgementHall]"))
	end
	end)
	local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "x" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49988.125, 445.247162, 26846.7051, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players:Chat(("ACT = [TELEPORT-TO-MarisaFinisher]"))
	end
	end)
		local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "c" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6620.58691, 9.91717148, -89.1184845, -1, 0, 0, 0, 1, 0, 0, 0, -1)
game.Players:Chat(("ACT = [TELEPORT-TO-FNF]"))
	end
	end)
			local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "v" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-518.961914, 146.286057, -51461.0586, 0, 0, -1, 0, 1, 0, 1, 0, 0)
game.Players:Chat(("ACT = [TELEPORT-TO-ATrain]"))
	end
	end)
	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(k) 
		if k == "g" then
			game.Players:Chat(("ACT = [Standing Here, I Realize]"))
			local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://11273021696"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            wait(23)
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://11273005728"
            local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            k:Play()
            k:AdjustSpeed(1)
            wait(10)
            k:Stop()
		end
		end)
		local sitstart = Instance.new("Animation")
		sitstart.AnimationId = "rbxassetid://6821079045"
		local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
		
		local sitloop = Instance.new("Animation")
		sitloop.AnimationId = "rbxassetid://6821100086"
		local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)
		
		local sitend = Instance.new("Animation")
		sitend.AnimationId = "rbxassetid://6821115515"
		local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend)
		
		local sitting = false
		local mouse = game.Players.LocalPlayer:GetMouse()
		mouse.KeyDown:Connect(function(k) 
		if k == "b" then
		    if sitting == false then
				sitting = true
				sitstartplay:Play()
				wait(1)
				sitloopplay:Play()
			elseif sitting == true then
				sitting = false
				sitloopplay:Stop()
				sitendplay:Play()
		end
		end
		end)
	local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == "u" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.6236925, 452.007355, -97.8616867, 0.259322345, -0.0406263918, -0.964935899, 0.0526981726, 0.998221576, -0.0278655179, 0.964352131, -0.0436242111, 0.261002123)
game.Players:Chat(("ACT = [TELEPORT-TO-Map]"))
	end
	end)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:Destroy()
while true do
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 225)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 200)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 175)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 150)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 125)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 100)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 75)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 50)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 25)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 25)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 50)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 75)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 100)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 125)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 150)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 175)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 200)
	wait(0.25)
	game.Players.LocalPlayer.Character.Head.Chat.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 225)
	wait(0.25)
	Health.Text = game.Players.LocalPlayer.Character.Head.Display.Frame.Health.TextLabel.Text

end