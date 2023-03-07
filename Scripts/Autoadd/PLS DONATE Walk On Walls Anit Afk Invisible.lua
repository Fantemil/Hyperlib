--https://discord.gg/dkDu7zAmZA--
local METABGUI = Instance.new("ScreenGui")
local METAB = Instance.new("ImageLabel")
local METABBUTTON = Instance.new("ImageButton")
local BtnText = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient = Instance.new("UIGradient")
local METABBUTTON_2 = Instance.new("ImageButton")
local BtnText_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIGradient_2 = Instance.new("UIGradient")
local METABBUTTON_3 = Instance.new("ImageButton")
local BtnText_3 = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIGradient_3 = Instance.new("UIGradient")
local METABBUTTON_4 = Instance.new("ImageButton")
local BtnText_4 = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UIGradient_4 = Instance.new("UIGradient")
local HOMEFRAME = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local TextBox_2 = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local TPFRAME = Instance.new("Frame")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextBox_3 = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local UIGradient_5 = Instance.new("UIGradient")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local TextButton_2 = Instance.new("TextButton")
local UIGradient_6 = Instance.new("UIGradient")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextBox_4 = Instance.new("TextBox")
local TextButton_3 = Instance.new("TextButton")
local UIGradient_7 = Instance.new("UIGradient")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local TextButton_4 = Instance.new("TextButton")
local UIGradient_8 = Instance.new("UIGradient")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local AUTOFARMFRAME = Instance.new("Frame")
local Button = Instance.new("ImageButton")
local BtnText_5 = Instance.new("TextLabel")
local CloseButton = Instance.new("ImageButton")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UIGradient_9 = Instance.new("UIGradient")
local MISCFRAME = Instance.new("Frame")
local Button_2 = Instance.new("ImageButton")
local BtnText_6 = Instance.new("TextLabel")
local Button_3 = Instance.new("ImageButton")
local BtnText_7 = Instance.new("TextLabel")
local Button_4 = Instance.new("ImageButton")
local BtnText_8 = Instance.new("TextLabel")
local Button_5 = Instance.new("ImageButton")
local BtnText_9 = Instance.new("TextLabel")
local ImageLabel_5 = Instance.new("ImageLabel")
local ImageButton = Instance.new("ImageButton")

--Properties:

METABGUI.Name = "METAB GUI "
METABGUI.Parent = game.CoreGui
METABGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
METABGUI.ResetOnSpawn = false

METAB.Name = "METAB"
METAB.Parent = METABGUI
METAB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
METAB.BackgroundTransparency = 1.000
METAB.Position = UDim2.new(0.241488442, 0, 0.234954193, 0)
METAB.Size = UDim2.new(0, 511, 0, 274)
METAB.Image = "http://www.roblox.com/asset/?id=8452582871"

METABBUTTON.Name = "METAB BUTTON"
METABBUTTON.Parent = METAB
METABBUTTON.AnchorPoint = Vector2.new(1, 1)
METABBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
METABBUTTON.BackgroundTransparency = 1.000
METABBUTTON.Position = UDim2.new(0.360256642, 0, 0.301020205, 0)
METABBUTTON.Size = UDim2.new(0.212513566, 0, 0.0514132902, 0)
METABBUTTON.Image = "rbxassetid://2790382281"
METABBUTTON.ImageColor3 = Color3.fromRGB(34, 255, 255)
METABBUTTON.ScaleType = Enum.ScaleType.Slice
METABBUTTON.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText.Name = "BtnText"
BtnText.Parent = METABBUTTON
BtnText.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText.BackgroundTransparency = 1.000
BtnText.BorderSizePixel = 0
BtnText.Position = UDim2.new(0.501231551, 0, 0.5, 0)
BtnText.Size = UDim2.new(0.989716768, -5, 0.917372882, -5)
BtnText.Font = Enum.Font.GothamBlack
BtnText.Text = "HOME MENU"
BtnText.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText.TextScaled = true
BtnText.TextSize = 14.000
BtnText.TextWrapped = true

UIAspectRatioConstraint.Parent = METABBUTTON
UIAspectRatioConstraint.AspectRatio = 7.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Offset = Vector2.new(-0.349999994, 0)
UIGradient.Rotation = -135
UIGradient.Parent = METABBUTTON

METABBUTTON_2.Name = "METAB BUTTON"
METABBUTTON_2.Parent = METAB
METABBUTTON_2.AnchorPoint = Vector2.new(1, 1)
METABBUTTON_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
METABBUTTON_2.BackgroundTransparency = 1.000
METABBUTTON_2.Position = UDim2.new(0.360288024, 0, 0.407894492, 0)
METABBUTTON_2.Size = UDim2.new(0.212513566, 0, 0.0514132902, 0)
METABBUTTON_2.Image = "rbxassetid://2790382281"
METABBUTTON_2.ImageColor3 = Color3.fromRGB(34, 255, 255)
METABBUTTON_2.ScaleType = Enum.ScaleType.Slice
METABBUTTON_2.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_2.Name = "BtnText"
BtnText_2.Parent = METABBUTTON_2
BtnText_2.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.BackgroundTransparency = 1.000
BtnText_2.BorderSizePixel = 0
BtnText_2.Position = UDim2.new(0.501231551, 0, 0.5, 0)
BtnText_2.Size = UDim2.new(0.989716768, -5, 0.917372882, -5)
BtnText_2.Font = Enum.Font.GothamBlack
BtnText_2.Text = "TROLL"
BtnText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_2.TextScaled = true
BtnText_2.TextSize = 14.000
BtnText_2.TextWrapped = true

UIAspectRatioConstraint_2.Parent = METABBUTTON_2
UIAspectRatioConstraint_2.AspectRatio = 7.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_2.Offset = Vector2.new(-0.349999994, 0)
UIGradient_2.Rotation = -135
UIGradient_2.Parent = METABBUTTON_2

METABBUTTON_3.Name = "METAB BUTTON"
METABBUTTON_3.Parent = METAB
METABBUTTON_3.AnchorPoint = Vector2.new(1, 1)
METABBUTTON_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
METABBUTTON_3.BackgroundTransparency = 1.000
METABBUTTON_3.Position = UDim2.new(0.360288024, 0, 0.524489105, 0)
METABBUTTON_3.Size = UDim2.new(0.212513566, 0, 0.0514132902, 0)
METABBUTTON_3.Image = "rbxassetid://2790382281"
METABBUTTON_3.ImageColor3 = Color3.fromRGB(34, 255, 255)
METABBUTTON_3.ScaleType = Enum.ScaleType.Slice
METABBUTTON_3.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_3.Name = "BtnText"
BtnText_3.Parent = METABBUTTON_3
BtnText_3.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.BackgroundTransparency = 1.000
BtnText_3.BorderSizePixel = 0
BtnText_3.Position = UDim2.new(0.501231551, 0, 0.5, 0)
BtnText_3.Size = UDim2.new(0.989716768, -5, 0.917372882, -5)
BtnText_3.Font = Enum.Font.GothamBlack
BtnText_3.Text = "TEXT"
BtnText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_3.TextScaled = true
BtnText_3.TextSize = 14.000
BtnText_3.TextWrapped = true

UIAspectRatioConstraint_3.Parent = METABBUTTON_3
UIAspectRatioConstraint_3.AspectRatio = 7.000

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_3.Offset = Vector2.new(-0.349999994, 0)
UIGradient_3.Rotation = -135
UIGradient_3.Parent = METABBUTTON_3

METABBUTTON_4.Name = "METAB BUTTON"
METABBUTTON_4.Parent = METAB
METABBUTTON_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
METABBUTTON_4.BackgroundTransparency = 1.000
METABBUTTON_4.Position = UDim2.new(0.166214839, 0, 0.585720301, 0)
METABBUTTON_4.Size = UDim2.new(0.212513566, 0, 0.0514132902, 0)
METABBUTTON_4.Image = "rbxassetid://2790382281"
METABBUTTON_4.ImageColor3 = Color3.fromRGB(34, 255, 255)
METABBUTTON_4.ScaleType = Enum.ScaleType.Slice
METABBUTTON_4.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_4.Name = "BtnText"
BtnText_4.Parent = METABBUTTON_4
BtnText_4.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_4.BackgroundTransparency = 1.000
BtnText_4.BorderSizePixel = 0
BtnText_4.Position = UDim2.new(0.481862336, 0, 0.490240306, 0)
BtnText_4.Size = UDim2.new(0.989716768, -5, 0.917372882, -5)
BtnText_4.Font = Enum.Font.GothamBlack
BtnText_4.Text = "MISC"
BtnText_4.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_4.TextScaled = true
BtnText_4.TextSize = 14.000
BtnText_4.TextWrapped = true

UIAspectRatioConstraint_4.Parent = METABBUTTON_4
UIAspectRatioConstraint_4.AspectRatio = 7.000

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_4.Offset = Vector2.new(-0.349999994, 0)
UIGradient_4.Rotation = -135
UIGradient_4.Parent = METABBUTTON_4

HOMEFRAME.Name = "HOMEFRAME"
HOMEFRAME.Parent = METAB
HOMEFRAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HOMEFRAME.BackgroundTransparency = 1.000
HOMEFRAME.Position = UDim2.new(0.323545516, 0, 0.200995743, 0)
HOMEFRAME.Size = UDim2.new(0, 410, 0, 285)

ImageLabel.Parent = HOMEFRAME
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.535485387, 0, 0.299366623, 0)
ImageLabel.Size = UDim2.new(0, 43, 0, 45)
ImageLabel.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="

TextLabel.Parent = HOMEFRAME
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.153658539, 0, 0.307950318, 0)
TextLabel.Size = UDim2.new(0, 172, 0, 32)
TextLabel.Font = Enum.Font.AmaticSC
TextLabel.Text = "join discord :"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 50.000

TextLabel_2.Parent = HOMEFRAME
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.153658539, 0, 0.0315789431, 0)
TextLabel_2.Size = UDim2.new(0, 172, 0, 32)
TextLabel_2.Font = Enum.Font.AmaticSC
TextLabel_2.Text = "SUB TO METAB :"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 50.000

TextBox.Parent = HOMEFRAME
TextBox.BackgroundColor3 = Color3.fromRGB(92, 209, 209)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0845068991, 0, 0.185964912, 0)
TextBox.Size = UDim2.new(0, 227, 0, 21)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.FredokaOne
TextBox.Text = "https://www.youtube.com/channel/UCmLuV1ju-DeCoH638qm_fYQ"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 9.000
TextBox.TextWrapped = true

UICorner.Parent = TextBox

TextBox_2.Parent = HOMEFRAME
TextBox_2.BackgroundColor3 = Color3.fromRGB(92, 209, 209)
TextBox_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.0869459212, 0, 0.501494408, 0)
TextBox_2.Size = UDim2.new(0, 227, 0, 21)
TextBox_2.ClearTextOnFocus = false
TextBox_2.Font = Enum.Font.FredokaOne
TextBox_2.Text = "https://discord.gg/dn2HCDs6xk"
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextSize = 10.000

UICorner_2.Parent = TextBox_2

ImageLabel_2.Parent = TextBox_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.808613181, 0, -6.36730003, 0)
ImageLabel_2.Size = UDim2.new(0, 43, 0, 45)
ImageLabel_2.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="

TPFRAME.Name = "TPFRAME"
TPFRAME.Parent = METAB
TPFRAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPFRAME.BackgroundTransparency = 1.000
TPFRAME.BorderSizePixel = 0
TPFRAME.Position = UDim2.new(0.394036174, 0, 0.202200115, 0)
TPFRAME.Size = UDim2.new(0, 224, 0, 163)
TPFRAME.Visible = false

ImageLabel_3.Parent = TPFRAME
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(0, 0, 0.541761875, 0)
ImageLabel_3.Size = UDim2.new(0, 232, 0, 77)
ImageLabel_3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel_3.ImageTransparency = 1.000

TextBox_3.Parent = ImageLabel_3
TextBox_3.BackgroundColor3 = Color3.fromRGB(74, 152, 203)
TextBox_3.BorderColor3 = Color3.fromRGB(67, 105, 132)
TextBox_3.BorderSizePixel = 0
TextBox_3.Position = UDim2.new(0.0613048151, 0, 0.217166647, 0)
TextBox_3.Size = UDim2.new(0, 203, 0, 57)
TextBox_3.Font = Enum.Font.SourceSans
TextBox_3.Text = ""
TextBox_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_3.TextSize = 14.000

TextButton.Parent = ImageLabel_3
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.500
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.746334255, 0, -0.0413827896, 0)
TextButton.Size = UDim2.new(0, 44, 0, 24)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_5.Offset = Vector2.new(-0.349999994, 0)
UIGradient_5.Rotation = -135
UIGradient_5.Parent = TextButton

UIAspectRatioConstraint_5.Parent = TextButton
UIAspectRatioConstraint_5.AspectRatio = 3.042

TextButton_2.Parent = ImageLabel_3
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 0.500
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0613047928, 0, -0.0108217001, 0)
TextButton_2.Size = UDim2.new(0, 44, 0, 22)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "ON"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_6.Offset = Vector2.new(-0.349999994, 0)
UIGradient_6.Rotation = -135
UIGradient_6.Parent = TextButton_2

UIAspectRatioConstraint_6.Parent = TextButton_2
UIAspectRatioConstraint_6.AspectRatio = 3.042

ImageLabel_4.Parent = TPFRAME
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.Position = UDim2.new(0, 0, 0.0448293686, 0)
ImageLabel_4.Size = UDim2.new(0, 232, 0, 77)
ImageLabel_4.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImageLabel_4.ImageTransparency = 1.000

TextBox_4.Parent = ImageLabel_4
TextBox_4.BackgroundColor3 = Color3.fromRGB(74, 152, 203)
TextBox_4.BorderColor3 = Color3.fromRGB(67, 105, 132)
TextBox_4.BorderSizePixel = 0
TextBox_4.Position = UDim2.new(0.0613048151, 0, 0.217166647, 0)
TextBox_4.Size = UDim2.new(0, 203, 0, 57)
TextBox_4.Font = Enum.Font.SourceSans
TextBox_4.Text = ""
TextBox_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_4.TextSize = 14.000

TextButton_3.Parent = ImageLabel_4
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 0.500
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.746334255, 0, -0.0413827896, 0)
TextButton_3.Size = UDim2.new(0, 44, 0, 24)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "OFF"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_7.Offset = Vector2.new(-0.349999994, 0)
UIGradient_7.Rotation = -135
UIGradient_7.Parent = TextButton_3

UIAspectRatioConstraint_7.Parent = TextButton_3
UIAspectRatioConstraint_7.AspectRatio = 3.042

TextButton_4.Parent = ImageLabel_4
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BackgroundTransparency = 0.500
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0613047928, 0, -0.0108217001, 0)
TextButton_4.Size = UDim2.new(0, 44, 0, 22)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "ON"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(0.98, Color3.fromRGB(19, 143, 143)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_8.Offset = Vector2.new(-0.349999994, 0)
UIGradient_8.Rotation = -135
UIGradient_8.Parent = TextButton_4

UIAspectRatioConstraint_8.Parent = TextButton_4
UIAspectRatioConstraint_8.AspectRatio = 3.042

TextLabel_3.Parent = TPFRAME
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.415178597, 0, 0.00786201656, 0)
TextLabel_3.Size = UDim2.new(0, 40, 0, 23)
TextLabel_3.Font = Enum.Font.AmaticSC
TextLabel_3.Text = "booth"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 30.000

TextLabel_4.Parent = TPFRAME
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.415178597, 0, 0.504794419, 0)
TextLabel_4.Size = UDim2.new(0, 45, 0, 23)
TextLabel_4.Font = Enum.Font.AmaticSC
TextLabel_4.Text = "Sign"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 30.000

AUTOFARMFRAME.Name = "AUTOFARMFRAME"
AUTOFARMFRAME.Parent = METAB
AUTOFARMFRAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AUTOFARMFRAME.BackgroundTransparency = 1.000
AUTOFARMFRAME.Position = UDim2.new(0.340483487, 0, 0.14239803, 0)
AUTOFARMFRAME.Size = UDim2.new(0, 354, 0, 215)
AUTOFARMFRAME.Visible = false

Button.Name = "Button "
Button.Parent = AUTOFARMFRAME
Button.AnchorPoint = Vector2.new(1, 1)
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.599313676, 0, 0.600667298, 0)
Button.Size = UDim2.new(0.385020077, 0, 0.301646978, 0)
Button.Image = "rbxassetid://2790382281"
Button.ImageColor3 = Color3.fromRGB(19, 143, 143)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_5.Name = "BtnText"
BtnText_5.Parent = Button
BtnText_5.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_5.BackgroundTransparency = 1.000
BtnText_5.BorderSizePixel = 0
BtnText_5.Position = UDim2.new(0.497507751, 0, 0.489361316, 0)
BtnText_5.Size = UDim2.new(0.868023694, -5, 0.816443741, -5)
BtnText_5.Font = Enum.Font.GothamBlack
BtnText_5.Text = "ANTI AFK"
BtnText_5.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_5.TextScaled = true
BtnText_5.TextSize = 14.000
BtnText_5.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = METAB
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.259426743, 0, 0.189738885, 0)
CloseButton.Size = UDim2.new(0.107288666, 0, 0.0898109898, 0)
CloseButton.Modal = true
CloseButton.Image = "http://www.roblox.com/asset/?id=7400386959"

UIAspectRatioConstraint_9.Parent = CloseButton
UIAspectRatioConstraint_9.AspectRatio = 2.000

UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 255, 255)), ColorSequenceKeypoint.new(0.97, Color3.fromRGB(85, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_9.Offset = Vector2.new(-0.349999994, 0)
UIGradient_9.Rotation = -135
UIGradient_9.Parent = CloseButton

MISCFRAME.Name = "MISCFRAME"
MISCFRAME.Parent = METAB
MISCFRAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISCFRAME.BackgroundTransparency = 1.000
MISCFRAME.Position = UDim2.new(0.340483546, 0, 0.162054047, 0)
MISCFRAME.Size = UDim2.new(0, 416, 0, 309)
MISCFRAME.Visible = false

Button_2.Name = "Button "
Button_2.Parent = MISCFRAME
Button_2.AnchorPoint = Vector2.new(1, 1)
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.Position = UDim2.new(0.528692305, 0, 0.196016178, 0)
Button_2.Size = UDim2.new(0.385020077, 0, 0.0737401098, 0)
Button_2.Image = "rbxassetid://2790382281"
Button_2.ImageColor3 = Color3.fromRGB(19, 143, 143)
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_6.Name = "BtnText"
BtnText_6.Parent = Button_2
BtnText_6.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_6.BackgroundTransparency = 1.000
BtnText_6.BorderSizePixel = 0
BtnText_6.Position = UDim2.new(0.51218158, 0, 0.59729588, 0)
BtnText_6.Size = UDim2.new(0.868023694, -5, 0.816443741, -5)
BtnText_6.Font = Enum.Font.GothamBlack
BtnText_6.Text = "WALK ON WALL"
BtnText_6.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_6.TextScaled = true
BtnText_6.TextSize = 14.000
BtnText_6.TextWrapped = true

Button_3.Name = "Button "
Button_3.Parent = MISCFRAME
Button_3.AnchorPoint = Vector2.new(1, 1)
Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_3.BackgroundTransparency = 1.000
Button_3.Position = UDim2.new(0.528692305, 0, 0.296016157, 0)
Button_3.Size = UDim2.new(0.385020077, 0, 0.0737401098, 0)
Button_3.Image = "rbxassetid://2790382281"
Button_3.ImageColor3 = Color3.fromRGB(19, 143, 143)
Button_3.ScaleType = Enum.ScaleType.Slice
Button_3.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_7.Name = "BtnText"
BtnText_7.Parent = Button_3
BtnText_7.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_7.BackgroundTransparency = 1.000
BtnText_7.BorderSizePixel = 0
BtnText_7.Position = UDim2.new(0.498111337, 0, 0.482122391, 0)
BtnText_7.Size = UDim2.new(0.808755696, -5, 0.794257462, -5)
BtnText_7.Font = Enum.Font.GothamBlack
BtnText_7.Text = "INVISIBLE"
BtnText_7.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_7.TextScaled = true
BtnText_7.TextSize = 14.000
BtnText_7.TextWrapped = true

Button_4.Name = "Button "
Button_4.Parent = MISCFRAME
Button_4.AnchorPoint = Vector2.new(1, 1)
Button_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_4.BackgroundTransparency = 1.000
Button_4.Position = UDim2.new(0.53109616, 0, 0.385983825, 0)
Button_4.Size = UDim2.new(0.385020077, 0, 0.0737401098, 0)
Button_4.Image = "rbxassetid://2790382281"
Button_4.ImageColor3 = Color3.fromRGB(19, 143, 143)
Button_4.ScaleType = Enum.ScaleType.Slice
Button_4.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_8.Name = "BtnText"
BtnText_8.Parent = Button_4
BtnText_8.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_8.BackgroundTransparency = 1.000
BtnText_8.BorderSizePixel = 0
BtnText_8.Position = UDim2.new(0.498111337, 0, 0.482122391, 0)
BtnText_8.Size = UDim2.new(0.808755696, -5, 0.794257462, -5)
BtnText_8.Font = Enum.Font.GothamBlack
BtnText_8.Text = "GIANT R15"
BtnText_8.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_8.TextScaled = true
BtnText_8.TextSize = 14.000
BtnText_8.TextWrapped = true

Button_5.Name = "Button "
Button_5.Parent = MISCFRAME
Button_5.AnchorPoint = Vector2.new(1, 1)
Button_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_5.BackgroundTransparency = 1.000
Button_5.Position = UDim2.new(0.53109616, 0, 0.486394882, 0)
Button_5.Size = UDim2.new(0.385020077, 0, 0.0737401098, 0)
Button_5.Image = "rbxassetid://2790382281"
Button_5.ImageColor3 = Color3.fromRGB(19, 143, 143)
Button_5.ScaleType = Enum.ScaleType.Slice
Button_5.SliceCenter = Rect.new(4, 4, 252, 252)

BtnText_9.Name = "BtnText"
BtnText_9.Parent = Button_5
BtnText_9.AnchorPoint = Vector2.new(0.5, 0.5)
BtnText_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnText_9.BackgroundTransparency = 1.000
BtnText_9.BorderSizePixel = 0
BtnText_9.Position = UDim2.new(0.498111337, 0, 0.482122391, 0)
BtnText_9.Size = UDim2.new(0.808755696, -5, 0.794257462, -5)
BtnText_9.Font = Enum.Font.GothamBlack
BtnText_9.Text = "FLY / SPEED (V)"
BtnText_9.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnText_9.TextScaled = true
BtnText_9.TextSize = 14.000
BtnText_9.TextWrapped = true

ImageLabel_5.Parent = METABGUI
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.Size = UDim2.new(0, 1367, 0, 624)
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=8139799244"
ImageLabel_5.ScaleType = Enum.ScaleType.Tile

ImageButton.Parent = METABGUI
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.418934047, 0, 0, 0)
ImageButton.Size = UDim2.new(0, 123, 0, 60)
ImageButton.Image = "http://www.roblox.com/asset/?id=8139623167"

-- Scripts:

local function BHRNT_fake_script() -- METABBUTTON.LocalScript 
 local script = Instance.new('LocalScript', METABBUTTON)

 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.TPFRAME.Visible = false
  script.Parent.Parent.MISCFRAME.Visible = false
  script.Parent.Parent.HOMEFRAME.Visible = true
  script.Parent.Parent.AUTOFARMFRAME.Visible = false
  wait(0.1)
 end)
end
coroutine.wrap(BHRNT_fake_script)()
local function FQVI_fake_script() -- METABBUTTON.DESIGN 
 local script = Instance.new('LocalScript', METABBUTTON)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(FQVI_fake_script)()
local function BKMQOB_fake_script() -- METABBUTTON_2.LocalScript 
 local script = Instance.new('LocalScript', METABBUTTON_2)

 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.TPFRAME.Visible = false
  script.Parent.Parent.MISCFRAME.Visible = true
  script.Parent.Parent.HOMEFRAME.Visible = false
  script.Parent.Parent.AUTOFARMFRAME.Visible = false
  wait(0.1)
 end)
end
coroutine.wrap(BKMQOB_fake_script)()
local function ZBAIZ_fake_script() -- METABBUTTON_2.DESIGN 
 local script = Instance.new('LocalScript', METABBUTTON_2)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(ZBAIZ_fake_script)()
local function PIUTGH_fake_script() -- METABBUTTON_3.LocalScript 
 local script = Instance.new('LocalScript', METABBUTTON_3)

 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.TPFRAME.Visible = true
  script.Parent.Parent.MISCFRAME.Visible = false
  script.Parent.Parent.HOMEFRAME.Visible = false
  script.Parent.Parent.AUTOFARMFRAME.Visible = false
  wait(0.1)
 end)
end
coroutine.wrap(PIUTGH_fake_script)()
local function LZOJR_fake_script() -- METABBUTTON_3.DESIGN 
 local script = Instance.new('LocalScript', METABBUTTON_3)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(LZOJR_fake_script)()
local function VKHQZL_fake_script() -- METABBUTTON_4.LocalScript 
 local script = Instance.new('LocalScript', METABBUTTON_4)

 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.TPFRAME.Visible = false
  script.Parent.Parent.MISCFRAME.Visible = false
  script.Parent.Parent.HOMEFRAME.Visible = false
  script.Parent.Parent.AUTOFARMFRAME.Visible = true
  wait(0.1)
 end)
end
coroutine.wrap(VKHQZL_fake_script)()
local function MYXFJYM_fake_script() -- METABBUTTON_4.DESIGN 
 local script = Instance.new('LocalScript', METABBUTTON_4)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(MYXFJYM_fake_script)()
local function RHJVWM_fake_script() -- TextButton.LocalScript 
 local script = Instance.new('LocalScript', TextButton)

 
 script.Parent.MouseButton1Down:connect(function()
  _G.Toggle = false
  while _G.Toggle do
   wait(0.1)
   local args = {
    [1] = '<font color="#9400D3">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#0000FF">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FFFF00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF7F00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF0000">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
 
  end
 
 end)
 
end
coroutine.wrap(RHJVWM_fake_script)()
local function JVLE_fake_script() -- TextButton_2.LocalScript 
 local script = Instance.new('LocalScript', TextButton_2)

 
 script.Parent.MouseButton1Down:connect(function()
  _G.Toggle = true
  while _G.Toggle do
   wait(0.1)
   local args = {
    [1] = '<font color="#9400D3">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#0000FF">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FFFF00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF7F00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF0000">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "sign"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
 
  end
 
 end)
 
end
coroutine.wrap(JVLE_fake_script)()
local function LIGP_fake_script() -- TextButton_3.LocalScript 
 local script = Instance.new('LocalScript', TextButton_3)

 
 script.Parent.MouseButton1Down:connect(function()
  _G.Toggle = false
  while _G.Toggle do
   wait(0.1)
   local args = {
    [1] = '<font color="#9400D3">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#0000FF">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FFFF00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF7F00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF0000">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
 
  end
 
 end)
 
end
coroutine.wrap(LIGP_fake_script)()
local function OENVOAR_fake_script() -- TextButton_4.LocalScript 
 local script = Instance.new('LocalScript', TextButton_4)

 
 script.Parent.MouseButton1Down:connect(function()
  _G.Toggle = true
  while _G.Toggle do
   wait(0.1)
   local args = {
    [1] = '<font color="#9400D3">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#0000FF">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FFFF00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF7F00">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
   local args = {
    [1] = '<font color="#FF0000">' .. script.Parent.Parent.TextBox.Text .. '</font>',
    [2] = "booth"
   }
 
   game:GetService("ReplicatedStorage").Events.EditBooth:FireServer(unpack(args))
   wait(0.1)
 
  end
 
 end)
 
end
coroutine.wrap(OENVOAR_fake_script)()
local function LLXJQM_fake_script() -- AUTOFARMFRAME.DESIGN 
 local script = Instance.new('LocalScript', AUTOFARMFRAME)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(LLXJQM_fake_script)()
local function TVWOQ_fake_script() -- Button.METAB SCRIPT 
 local script = Instance.new('LocalScript', Button)

 script.Parent.MouseButton1Down:connect(function()
 
 
  local bb=game:service'VirtualUser'
  game:service'Players'.LocalPlayer.Idled:connect(function()
   bb:CaptureController()bb:ClickButton2(Vector2.new())
  end)
 
 end)
 
 
 
 
 
end
coroutine.wrap(TVWOQ_fake_script)()
local function TGHIDN_fake_script() -- CloseButton.LocalScript 
 local script = Instance.new('LocalScript', CloseButton)

 script.Parent.MouseButton1Click:Connect(function()
  script.Parent.Parent.Visible = false
 end)
end
coroutine.wrap(TGHIDN_fake_script)()
local function LZEJANR_fake_script() -- CloseButton.ANIME 
 local script = Instance.new('LocalScript', CloseButton)

 local btn = script.Parent
 local uiGradient = btn:WaitForChild("UIGradient")
 
 local isHovering = false
 
 local tweenService = game:GetService("TweenService")
 local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
 
 local gradientRestoreTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-0.35, 0)})
 local gradientAddTween = tweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(1, 0)})
 
 
 btn.MouseEnter:Connect(function()
  
  isHovering = true
  
  gradientAddTween:Play()
 end)
 
 btn.MouseLeave:Connect(function()
  
  isHovering = false
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Down:Connect(function()
  
  gradientRestoreTween:Play()
 end)
 
 btn.MouseButton1Up:Connect(function()
  
  if not isHovering then
   gradientRestoreTween:Play()
  else
   gradientAddTween:Play()
  end
 end)
end
coroutine.wrap(LZEJANR_fake_script)()
local function XXTFQ_fake_script() -- METAB.DEPLACE  
 local script = Instance.new('LocalScript', METAB)

 
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
coroutine.wrap(XXTFQ_fake_script)()
local function AXNBFDT_fake_script() -- Button_2.METAB SCRIPT 
 local script = Instance.new('LocalScript', Button_2)

 script.Parent.MouseButton1Down:connect(function()
 
 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/WALK-ON-WALLS/main/METAB", true))()
 
 end)
 
 
 
 
 
end
coroutine.wrap(AXNBFDT_fake_script)()
local function DPJBXXS_fake_script() -- Button_3.METAB SCRIPT 
 local script = Instance.new('LocalScript', Button_3)

 script.Parent.MouseButton1Down:connect(function()
 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/INVISIBLE/main/METAB", true))()
 end)
 
 
 
 
 
end
coroutine.wrap(DPJBXXS_fake_script)()
local function VQVW_fake_script() -- Button_4.METAB SCRIPT 
 local script = Instance.new('LocalScript', Button_4)

 script.Parent.MouseButton1Down:connect(function()
 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/GIANT/main/METAB", true))()
 end)
 
 
 
 
 
end
coroutine.wrap(VQVW_fake_script)()
local function LRWIQ_fake_script() -- Button_5.METAB SCRIPT 
 local script = Instance.new('LocalScript', Button_5)

 
 
 script.Parent.MouseButton1Down:connect(function()
 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/FLY-/main/METAB", true))()
 
  end)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end
coroutine.wrap(LRWIQ_fake_script)()
local function BIMG_fake_script() -- ImageLabel_5.Script 
 local script = Instance.new('Script', ImageLabel_5)

 wait(4)
 script.Parent:Destroy()
end
coroutine.wrap(BIMG_fake_script)()
local function CHYGW_fake_script() -- ImageButton.LocalScript 
 local script = Instance.new('LocalScript', ImageButton)

 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.METAB.Visible = not script.Parent.Parent.METAB.Visible
 end)
 
end
coroutine.wrap(CHYGW_fake_script)()