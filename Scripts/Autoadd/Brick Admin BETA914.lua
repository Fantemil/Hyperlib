loadstring(game:HttpGet("https://github.com/MuhXd/Roblox-mobile-script/blob/main/FileFixes.lua?raw=true"))();
if _G.BrickAdmin then
    for i, v in _G.ExtensionAPI:GetToggles() do v.Toggled = false end
	_G.BrickAdmin:Destroy()
	writefile("BrickAdmin/config.json", _G.ExtensionAPI:GetSettings(true))
	_G.ExtensionAPI = nil
end
local bindable = Instance.new("BindableFunction")

function bindable.OnInvoke(response)
	if response == 'Copy Link' then
		setclipboard('https://discord.gg/gYhqMRBeZV')
	end
end
game:GetService("StarterGui"):SetCore('SendNotification', {Title='Join The Discord', Text="https://discord.gg/gYhqMRBeZV", Duration=5, Button1='Copy Link', Button2='No thanks', Callback=bindable})
function GenKey(bytes)
	local Str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'
	local b = ''
	local counter = 0
	for i = 1, bytes do
		if counter == 8 then b = b .. "-" counter = 0 end
		local num = math.random(1, #Str)
		b = b .. Str:sub(num, num)
		counter+=1
	end
	return b
end
function gethui()
	return game:GetService("CoreGui")
end
local randomstring = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local BackgroundImage = Instance.new("ImageLabel")
local Settings = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Settings_2 = Instance.new("ImageButton")
local Extensions = Instance.new("ImageButton")
local TimeDisplay = Instance.new("TextLabel")
local DisplayThing = Instance.new("TextLabel")
local Commands = Instance.new("ScrollingFrame")
local Template = Instance.new("Frame")
local NameLabel = Instance.new("TextLabel")
local DescLabel = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local SearchBox = Instance.new("TextBox")
local ImageLabel = Instance.new("ImageLabel")
local CommandBar = Instance.new("TextBox")
local Close = Instance.new("ImageButton")
local SettingsTab = Instance.new("Folder")
local ToggleOff = Instance.new("Frame")
local a = Instance.new("UICorner")
local Dot = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local PrefixBox = Instance.new("TextBox")
local CustomThemes = Instance.new("TextLabel")
local Prefix = Instance.new("TextLabel")
local SliderBG = Instance.new("Frame")
local Slide = Instance.new("ImageButton")
local ThemeBright = Instance.new("TextLabel")
local Toggles = Instance.new("Frame")
local Layout = Instance.new("UIListLayout")
local Template_2 = Instance.new("TextLabel")
local ExtensionsTab = Instance.new("Folder")
local ExtensionsHolder = Instance.new("ScrollingFrame")
local EXTemplate = Instance.new("Frame")
local EXTitle = Instance.new("TextLabel")
local EXDescription = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local RPT = Instance.new("ImageButton")
local Send = Instance.new("ImageButton")
local EXIcon = Instance.new("ImageLabel")
local HideBindC = Instance.new("TextButton", SettingsTab)

_G.BrickAdmin = randomstring
_G.BrickAdminFuncs = {}
randomstring.Destroying:Connect(function()
 for i, v in _G.BrickAdminFuncs do
  v = nil
 end
end)
randomstring.Name = GenKey(256) -- a lot of bytes 
randomstring.Parent = gethui()
randomstring.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
randomstring.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = randomstring
Background.Active = true
Background.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Background.BorderColor3 = Color3.new(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.233468279, 0, 0.161854446, 0)
Background.Size = UDim2.new(0.507, 0,0.659, 0)
Background.Draggable = true

BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = Background
BackgroundImage.BackgroundColor3 = Color3.new(1, 1, 1)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.BorderColor3 = Color3.new(0, 0, 0)
BackgroundImage.BorderSizePixel = 0
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.ZIndex = -1
BackgroundImage.Image = "rbxassetid://16953009805"
BackgroundImage.Active = false

Settings.Name = "Settings"
Settings.Parent = Background
Settings.BackgroundColor3 = Color3.new(1, 1, 1)
Settings.BackgroundTransparency = 1
Settings.BorderColor3 = Color3.new(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Size = UDim2.new(0.119680852, 0, 1, 0)

UIListLayout.Parent = Settings
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0.05, 0)

Settings_2.Name = "Settings"
Settings_2.Parent = Settings
Settings_2.BackgroundColor3 = Color3.new(1, 1, 1)
Settings_2.BackgroundTransparency = 1
Settings_2.BorderColor3 = Color3.new(0, 0, 0)
Settings_2.BorderSizePixel = 0
Settings_2.Size = UDim2.new(0.722222209, 0, 0.153664306, 0)
Settings_2.Image = "rbxassetid://16953275663"

Extensions.Name = "Extensions"
Extensions.Parent = Settings
Extensions.BackgroundColor3 = Color3.new(1, 1, 1)
Extensions.BackgroundTransparency = 1
Extensions.BorderColor3 = Color3.new(0, 0, 0)
Extensions.BorderSizePixel = 0
Extensions.Size = UDim2.new(0.722222209, 0, 0.153664306, 0)
Extensions.Image = "rbxassetid://17023645582"

TimeDisplay.Name = "TimeDisplay"
TimeDisplay.Parent = Background
TimeDisplay.AnchorPoint = Vector2.new(0.5, 0)
TimeDisplay.BackgroundColor3 = Color3.new(1, 1, 1)
TimeDisplay.BackgroundTransparency = 1
TimeDisplay.BorderColor3 = Color3.new(0, 0, 0)
TimeDisplay.BorderSizePixel = 0
TimeDisplay.Position = UDim2.new(0.5, 0, 0, 0)
TimeDisplay.Size = UDim2.new(0.265957445, 0, 0.118203312, 0)
TimeDisplay.Font = Enum.Font.GothamBold
TimeDisplay.Text = "00:00"
TimeDisplay.TextColor3 = Color3.new(1, 1, 1)
TimeDisplay.TextScaled = true
TimeDisplay.TextSize = 14
TimeDisplay.TextWrapped = true

DisplayThing.Name = "DisplayThing"
DisplayThing.Parent = Background
DisplayThing.AnchorPoint = Vector2.new(0.5, 0)
DisplayThing.BackgroundColor3 = Color3.new(1, 1, 1)
DisplayThing.BackgroundTransparency = 1
DisplayThing.BorderColor3 = Color3.new(0, 0, 0)
DisplayThing.BorderSizePixel = 0
DisplayThing.Position = UDim2.new(0.75, 0, 0, 0)
DisplayThing.Size = UDim2.new(0.3, 0, 0.1, 0)
DisplayThing.Font = Enum.Font.GothamBold
DisplayThing.Text = "{KEY_BIND} to hide."
DisplayThing.TextColor3 = Color3.new(1, 1, 1)
DisplayThing.TextSize = 15
DisplayThing.TextWrapped = true

Commands.Name = "Commands"
Commands.Parent = Background
Commands.Active = true
Commands.BackgroundColor3 = Color3.new(1, 1, 1)
Commands.BackgroundTransparency = 1
Commands.BorderColor3 = Color3.new(0, 0, 0)
Commands.BorderSizePixel = 0
Commands.Position = UDim2.new(0.25132978, 0, 0.248227015, 0)
Commands.Size = UDim2.new(0.497340411, 0, 0.635933816, 0)
Commands.CanvasSize = UDim2.new(0, 0, 0, 0)
Commands.AutomaticCanvasSize = Enum.AutomaticSize.XY
Commands.ScrollBarThickness = 0
Commands.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left


Template.Name = "Template"
Template.Parent = Commands
Template.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Template.BackgroundTransparency = 1
Template.BorderColor3 = Color3.new(0, 0, 0)
Template.BorderSizePixel = 0
Template.Size = UDim2.new(1, 0, 0.42085427, 0)
Template.Visible = false

NameLabel.Name = "NameLabel"
NameLabel.Parent = Template
NameLabel.AnchorPoint = Vector2.new(0.5, 0)
NameLabel.BackgroundColor3 = Color3.new(1, 1, 1)
NameLabel.BackgroundTransparency = 1
NameLabel.BorderColor3 = Color3.new(0, 0, 0)
NameLabel.BorderSizePixel = 0
NameLabel.Position = UDim2.new(0.5, 0, 0, 0)
NameLabel.Size = UDim2.new(1, 0, 0.349999994, 0)
NameLabel.Font = Enum.Font.GothamBold
NameLabel.Text = "No Results Found!"
NameLabel.TextColor3 = Color3.new(1, 1, 1)
NameLabel.TextScaled = true
NameLabel.TextWrapped = true
NameLabel.RichText = true

DescLabel.Name = "DescLabel"
DescLabel.Parent = Template
DescLabel.AnchorPoint = Vector2.new(0.5, 0)
DescLabel.BackgroundColor3 = Color3.new(1, 1, 1)
DescLabel.BackgroundTransparency = 1
DescLabel.BorderColor3 = Color3.new(0, 0, 0)
DescLabel.BorderSizePixel = 0
DescLabel.Position = UDim2.new(0.5, 0, 0.346268654, 0)
DescLabel.Size = UDim2.new(1, 0, 0.649999976, 0)
DescLabel.Font = Enum.Font.GothamBold
DescLabel.Text = "We looked in the commands list for the command '{CMD_NAME}' but could not find it."
DescLabel.TextColor3 = Color3.new(1, 0, 0)
DescLabel.TextSize = 15
DescLabel.TextWrapped = true
DescLabel.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_2.Parent = Commands
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(.05, 0)

SearchBox.Name = "SearchBox"
SearchBox.Parent = Background
SearchBox.BackgroundColor3 = Color3.new(1, 1, 1)
SearchBox.BackgroundTransparency = 1
SearchBox.BorderColor3 = Color3.new(0, 0, 0)
SearchBox.BorderSizePixel = 0
SearchBox.Position = UDim2.new(0.367021263, 0, 0.118203312, 0)
SearchBox.Size = UDim2.new(0.265957445, 0, 0.118203312, 0)
SearchBox.ZIndex = -1
SearchBox.Font = Enum.Font.GothamBlack
SearchBox.PlaceholderColor3 = Color3.new(1, 1, 1)
SearchBox.PlaceholderText = "..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.new(1, 1, 1)
SearchBox.TextSize = 18
SearchBox.TextWrapped = true

ImageLabel.Parent = SearchBox
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.75, 0, 0, 0)
ImageLabel.Size = UDim2.new(0.25, 0, 1, 0)
ImageLabel.ZIndex = 3
ImageLabel.Image = "rbxassetid://16953657353"

CommandBar.Name = "CommandBar"
CommandBar.Parent = Background
CommandBar.BackgroundColor3 = Color3.new(1, 1, 1)
CommandBar.BackgroundTransparency = 1
CommandBar.BorderColor3 = Color3.new(0, 0, 0)
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.300531924, 0, 0.862884223, 0)
CommandBar.Size = UDim2.new(0.332, 0,0.118, 0)
CommandBar.ClearTextOnFocus = false
CommandBar.Font = Enum.Font.GothamBlack
CommandBar.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.new(0.254902, 0.254902, 0.254902)
CommandBar.TextSize = 25
CommandBar.TextWrapped = true
CommandBar.TextXAlignment = Enum.TextXAlignment.Left


Close.Name = "Close"
Close.Parent = Background
Close.Active = false
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.966755331, 0, 0, 0)
Close.Selectable = false
Close.Size = UDim2.new(0.0332446806, 0, 0.0591016561, 0)
Close.Image = "rbxassetid://16953009199"

SettingsTab.Name = "SettingsTab"
SettingsTab.Parent = Background

ToggleOff.Name = "ToggleOff"
ToggleOff.Parent = SettingsTab
ToggleOff.BackgroundColor3 = Color3.new(0, 0.470588, 0.831373)
ToggleOff.BorderColor3 = Color3.new(0, 0, 0)
ToggleOff.BorderSizePixel = 0
ToggleOff.Position = UDim2.new(0.525265932, 0, 0.193853423, 0)
ToggleOff.Size = UDim2.new(0.0877659544, 0, 0.0638297871, 0)
ToggleOff.Visible = false

a.Name = "a"
a.Parent = ToggleOff
a.CornerRadius = UDim.new(1, 0)

Dot.Name = "Dot"
Dot.Parent = ToggleOff
Dot.Active = false
Dot.BackgroundColor3 = Color3.new(1, 1, 1)
Dot.BorderColor3 = Color3.new(0, 0, 0)
Dot.BorderSizePixel = 0
Dot.Position = UDim2.new(0.600000024, 0, 0, 0)
Dot.Selectable = false
Dot.Size = UDim2.new(0.410606116, 0, 1, 0)

UICorner.Parent = Dot
UICorner.CornerRadius = UDim.new(0.75, 0)

PrefixBox.Name = "PrefixBox"
PrefixBox.Parent = SettingsTab
PrefixBox.BackgroundColor3 = Color3.new(1, 1, 1)
PrefixBox.BackgroundTransparency = 1
PrefixBox.BorderColor3 = Color3.new(0, 0, 0)
PrefixBox.BorderSizePixel = 0
PrefixBox.Position = UDim2.new(0.525265932, 0, 0.303000003, 0)
PrefixBox.Size = UDim2.new(0.0877659544, 0, 0.118203312, 0)
PrefixBox.Visible = false
PrefixBox.Font = Enum.Font.GothamBold
PrefixBox.PlaceholderColor3 = Color3.new(1, 1, 1)
PrefixBox.PlaceholderText = ";"
PrefixBox.Text = ""
PrefixBox.TextColor3 = Color3.new(1, 1, 1)
PrefixBox.TextScaled = true
PrefixBox.TextSize = 14
PrefixBox.TextWrapped = true

CustomThemes.Name = "Custom Themes"
CustomThemes.Parent = SettingsTab
CustomThemes.BackgroundColor3 = Color3.new(1, 1, 1)
CustomThemes.BackgroundTransparency = 1
CustomThemes.BorderColor3 = Color3.new(0, 0, 0)
CustomThemes.BorderSizePixel = 0
CustomThemes.Position = UDim2.new(0.25132978, 0, 0.167848706, 0)
CustomThemes.Size = UDim2.new(0.265957445, 0, 0.118203312, 0)
CustomThemes.Visible = false
CustomThemes.Font = Enum.Font.GothamBold
CustomThemes.Text = "Custom Themes"
CustomThemes.TextColor3 = Color3.new(1, 1, 1)
CustomThemes.TextScaled = true
CustomThemes.TextSize = 20
CustomThemes.TextWrapped = true
CustomThemes.TextXAlignment = Enum.TextXAlignment.Left

Prefix.Name = "Prefix"
Prefix.Parent = SettingsTab
Prefix.BackgroundColor3 = Color3.new(1, 1, 1)
Prefix.BackgroundTransparency = 1
Prefix.BorderColor3 = Color3.new(0, 0, 0)
Prefix.BorderSizePixel = 0
Prefix.Position = UDim2.new(0.25132978, 0, 0.302600473, 0)
Prefix.Size = UDim2.new(0.265957445, 0, 0.118203312, 0)
Prefix.Visible = false
Prefix.Font = Enum.Font.GothamBold
Prefix.Text = "Choose Prefix"
Prefix.TextColor3 = Color3.new(1, 1, 1)
Prefix.TextScaled = true
Prefix.TextSize = 20
Prefix.TextWrapped = true
Prefix.TextXAlignment = Enum.TextXAlignment.Left

HideBindC.Name = "HideBi"
HideBindC.BackgroundColor3 = Color3.new(1, 1, 1)
HideBindC.BackgroundTransparency = 1
HideBindC.BorderColor3 = Color3.new(0, 0, 0)
HideBindC.BorderSizePixel = 0
HideBindC.Position = UDim2.new(0.25132978, 0, 0.65, 0)
HideBindC.Size = UDim2.new(0.465957445, 0, 0.118203312, 0)
HideBindC.Visible = false
HideBindC.Font = Enum.Font.GothamBold
HideBindC.Text = "Change hide bind"
HideBindC.TextColor3 = Color3.fromRGB(30, 30, 30)
HideBindC.TextScaled = true
HideBindC.TextSize = 15
HideBindC.TextWrapped = true
HideBindC.TextXAlignment = Enum.TextXAlignment.Left

SliderBG.Name = "SliderBG"
SliderBG.Parent = SettingsTab
SliderBG.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
SliderBG.BorderColor3 = Color3.new(0, 0, 0)
SliderBG.BorderSizePixel = 0
SliderBG.Position = UDim2.new(0.25132978, 0, 0.560283661, 0)
SliderBG.Size = UDim2.new(0.381648928, 0, 0.0496453904, 0)
SliderBG.Visible = false

Slide.Name = "Slide"
Slide.Parent = SliderBG
Slide.Active = false
Slide.BackgroundColor3 = Color3.new(0.913725, 0.176471, 0.231373)
Slide.BorderColor3 = Color3.new(0, 0, 0)
Slide.BorderSizePixel = 0
Slide.Position = UDim2.new(0.951219499, 0, -0.285714298, 0)
Slide.Selectable = false
Slide.Size = UDim2.new(0.048780486, 0, 1.5, 0)

ThemeBright.Name = "ThemeBright"
ThemeBright.Parent = SettingsTab
ThemeBright.BackgroundColor3 = Color3.new(1, 1, 1)
ThemeBright.BackgroundTransparency = 1
ThemeBright.BorderColor3 = Color3.new(0, 0, 0)
ThemeBright.BorderSizePixel = 0
ThemeBright.Position = UDim2.new(0.25132978, 0, 0.420803785, 0)
ThemeBright.Size = UDim2.new(0.381648928, 0, 0.118203312, 0)
ThemeBright.Visible = false
ThemeBright.Font = Enum.Font.GothamBold
ThemeBright.Text = "Theme Brightness"
ThemeBright.TextColor3 = Color3.new(1, 1, 1)
ThemeBright.TextScaled = true
ThemeBright.TextSize = 20
ThemeBright.TextWrapped = true
ThemeBright.TextXAlignment = Enum.TextXAlignment.Left

Toggles.Name = "Toggles"
Toggles.Parent = randomstring
Toggles.BackgroundColor3 = Color3.new(1, 1, 1)
Toggles.BackgroundTransparency = 1
Toggles.BorderColor3 = Color3.new(0, 0, 0)
Toggles.BorderSizePixel = 0
Toggles.Size = UDim2.new(0.122132257, 0, 1, 0)

Layout.Name = "Layout"
Layout.Parent = Toggles
Layout.SortOrder = Enum.SortOrder.LayoutOrder

Template_2.Name = "Template"
Template_2.Parent = Toggles
Template_2.BackgroundColor3 = Color3.new(1, 1, 1)
Template_2.BackgroundTransparency = 1
Template_2.BorderColor3 = Color3.new(0, 0, 0)
Template_2.BorderSizePixel = 0
Template_2.Size = UDim2.new(1, 0, 0.062656641, 0)
Template_2.Font = Enum.Font.GothamMedium
Template_2.Text = "Enabled Toggles"
Template_2.TextColor3 = Color3.new(1, 1, 1)
Template_2.TextSize = 23
Template_2.TextWrapped = true

ExtensionsTab.Name = "ExtensionsTab"
ExtensionsTab.Parent = Background

ExtensionsHolder.Name = "ExtensionsHolder"
ExtensionsHolder.Parent = ExtensionsTab
ExtensionsHolder.Active = true
ExtensionsHolder.BackgroundColor3 = Color3.new(1, 1, 1)
ExtensionsHolder.BackgroundTransparency = 1
ExtensionsHolder.BorderColor3 = Color3.new(0, 0, 0)
ExtensionsHolder.BorderSizePixel = 0
ExtensionsHolder.Position = UDim2.new(0.14475143, 0, 0.118039608, 0)
ExtensionsHolder.Size = UDim2.new(0.782189131, 0, 0.800982594, 0)
ExtensionsHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
ExtensionsHolder.ScrollBarThickness = 0
ExtensionsHolder.Visible = false

EXTemplate.Name = "EXTemplate"
EXTemplate.Parent = ExtensionsHolder
EXTemplate.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
EXTemplate.BackgroundTransparency = 0.8999999761581421
EXTemplate.BorderColor3 = Color3.new(0, 0, 0)
EXTemplate.BorderSizePixel = 0
EXTemplate.Position = UDim2.new(0.00339558581, 0, 0, 0)
EXTemplate.Size = UDim2.new(1, 0,0.507, 0)
EXTemplate.Visible = false

EXTitle.Name = "EXTitle"
EXTitle.Parent = EXTemplate
EXTitle.AnchorPoint = Vector2.new(0.5, 0)
EXTitle.BackgroundColor3 = Color3.new(1, 1, 1)
EXTitle.BackgroundTransparency = 1
EXTitle.BorderColor3 = Color3.new(0, 0, 0)
EXTitle.BorderSizePixel = 0
EXTitle.Position = UDim2.new(0.499300212, 0, -1.60618839e-07, 0)
EXTitle.Size = UDim2.new(1.00139952, 0, 0.29715094, 0)
EXTitle.Font = Enum.Font.GothamBold
EXTitle.Text = "Extension Name"
EXTitle.TextColor3 = Color3.new(1, 1, 1)
EXTitle.TextScaled = true
EXTitle.TextSize = 14
EXTitle.TextWrapped = true
EXTitle.TextXAlignment = Enum.TextXAlignment.Left

EXDescription.Name = "EXDescription"
EXDescription.Parent = EXTemplate
EXDescription.AnchorPoint = Vector2.new(0.5, 0)
EXDescription.BackgroundColor3 = Color3.new(1, 1, 1)
EXDescription.BackgroundTransparency = 1
EXDescription.BorderColor3 = Color3.new(0, 0, 0)
EXDescription.BorderSizePixel = 0
EXDescription.Position = UDim2.new(0.499300212, 0, 0.294736534, 0)
EXDescription.Size = UDim2.new(1.00139952, 0, 0.705263734, 0)
EXDescription.Font = Enum.Font.GothamBold
EXDescription.Text = "Extension Description"
EXDescription.TextColor3 = Color3.new(1, 1, 1)
EXDescription.TextSize = 15
EXDescription.TextWrapped = true
EXDescription.TextXAlignment = Enum.TextXAlignment.Left
EXDescription.TextYAlignment = Enum.TextYAlignment.Top

EXIcon.Name = "EXIcon"
EXIcon.Parent = EXTemplate
EXIcon.BackgroundColor3 = Color3.new(1, 1, 1)
EXIcon.BackgroundTransparency = 1
EXIcon.BorderColor3 = Color3.new(0, 0, 0)
EXIcon.BorderSizePixel = 0
EXIcon.Position = UDim2.new(0.9, 0,0, 0)
EXIcon.Size = UDim2.new(0.65, 0,0.35, 0)
EXIcon.ZIndex = math.huge

UIListLayout_3.Parent = ExtensionsHolder
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

RPT.Name = "RPT"
RPT.Parent = Background
RPT.BackgroundColor3 = Color3.new(1, 1, 1)
RPT.BackgroundTransparency = 1
RPT.BorderColor3 = Color3.new(0, 0, 0)
RPT.BorderSizePixel = 0
RPT.Position = UDim2.new(0.244351059, 0, 0.881796718, 0)
RPT.Size = UDim2.new(0.0464798287, 0, 0.0827423185, 0)
RPT.Image = "rbxassetid://17025977129"

Send.Name = "Send"
Send.Parent = Background
Send.BackgroundColor3 = Color3.new(1, 1, 1)
Send.BackgroundTransparency = 1
Send.BorderColor3 = Color3.new(0, 0, 0)
Send.BorderSizePixel = 0
Send.Position = UDim2.new(0.642749608, 0, 0.881796718, 0)
Send.Size = UDim2.new(0.0464798287, 0, 0.0827423185, 0)
Send.Image = "rbxassetid://17025986943"

local function SVHU_fake_script() -- Background.CommandAdder
	local script = Instance.new('LocalScript', Background)
    local TweenService = game:GetService('TweenService');
local Players = game:GetService('Players');
local TweenService = game:GetService('TweenService');
local UIS = game:GetService('UserInputService');
local Runservice = game:GetService('RunService');
local HTTPs = game:GetService('HttpService');
local vim = game:GetService('VirtualInputManager');
local Path = game:GetService('ReplicatedStorage');
local UserInputService = game:GetService('UserInputService');
	local SearchBox = script.Parent:WaitForChild('SearchBox')

	local CMD = script.Parent:WaitForChild('CommandBar')



	local lp = Players.LocalPlayer

	local Char = lp.Character or lp.CharacterAdded:Wait()

	local Humanoid = Char:WaitForChild('Humanoid')

	local Root = Char:WaitForChild('HumanoidRootPart')




	local TIME_LABEL = script.Parent.TimeDisplay

	local Frame = script.Parent.SettingsTab.SliderBG

	local Button = script.Parent.SettingsTab.SliderBG.Slide


	local cmds = {} -- table: Name and Description
	local ExtensionsTable = {} -- table: Name, Code, Description, Icon
	local NoResultsTBL = {}
	local NoClipSave = {}
    local funcs = {}
	_G.BrickAdminFuncs = funcs
	
	local ToggleColors = {
		Off=Color3.fromRGB(233, 45, 59), 
		On=Color3.fromRGB(0, 120, 212)
	}
	local Errors = {
		'Player not found', 'Command not found', 'Missing arguements', 'Macro not found.'
	}
	local Toggles = {}


	local prefix = ''
	local CurrentTab = 'home'
	local LastCmd = ''


	local step = 0.01
	local percentage = 0
	local Speed = Humanoid.WalkSpeed

	local HoveringOver = false
	local db = false
	local Chatting = false
	local ChatType = game:GetService("TextChatService").ChatVersion
	if isfolder('BrickAdmin') then
		local Files = listfiles('BrickAdmin')
		local config;
        local success, config = pcall(function()
		 return HTTPs:JSONDecode(readfile('BrickAdmin/config.json'))
        end)
        if success then
		if config.CustomThemes.CustomThemePath ~= '' then
			BackgroundImage.Image = getcustomasset(config.CustomThemes.CustomThemePath)
		elseif config.CustomThemes.Theme ~= '' and config.CustomThemes.CustomThemePath == '' then
			BackgroundImage.Image = config.CustomThemes.Theme
		end
        if config.HideBind then
		 DisplayThing.Text = config.HideBind:split(".")[3] .. " to hide."
        else
         config.HideBind = 'Enum.KeyCode.RightShift'
         DisplayThing.Text = config.HideBind:split(".")[3] .. " to hide."
        end
        Settings = config
        else
         Settings = {
			CustomThemes= {
				Enabled=true,
				Theme='rbxassetid://16953009805',
				CustomThemePath = ''
			}, 
			Prefix='', 
			ThemeBrightness=1,
            HideBind = 'Enum.KeyCode.RightShift'
		}
        writefile('BrickAdmin/config.json', HTTPs:JSONEncode(Settings))
        warn("Failed to get BrickAdmin/config.json content, overriding..")
        end
	else
		print("Hello new user/tester!")
		Settings = {
			CustomThemes= {
				Enabled=true,
				Theme='rbxassetid://16953009805',
				CustomThemePath = ''
			}, 
			Prefix='', 
			ThemeBrightness=1,
            HideBind = 'Enum.KeyCode.RightShift'
		}
		makefolder("BrickAdmin")
		writefile("BrickAdmin/config.json", HTTPs:JSONEncode(Settings))
		writefile("BrickAdmin/README.txt", 'To use custom themes, Instead of the default theme: Go to config.json, Edit the CustomThemePath to BrickAdmin/YourThemeName.png and edit the Theme=\'rbx:assetid://16953009805\' to Theme=""')
	end
	local Api = setmetatable({}, {})
	local ExtensionAPI = {}

	function Api:AddExtension(name, desc, icon, code)
		print(name, desc, icon, code)
		local Tmp = EXTemplate:Clone()
		Tmp.Parent = ExtensionsHolder
		Tmp.EXTitle.Text = tostring(name)
		Tmp.EXDescription.Text = tostring(desc)
		if #desc > 700 then
			Tmp.EXDescription.TextSize = 13
			Tmp.Size = UDim2.new(1, 0, .807, 0)
		end
		if #desc > 300 and #desc < 500 then
			Tmp.EXDescription.TextSize = 14
			Tmp.Size = UDim2.new(1, 0, .407, 0)
		end
		if not icon or icon == '' then
			Tmp.EXIcon.Image = 'rbxassetid://17031987165'
		else
		 if icon:sub(1, #'rbxassetid://') == 'rbxassetid://' then
			Tmp.EXIcon.Image = icon
		 else
			Tmp.EXIcon.Image = getcustomasset(icon)
		 end
		end
		Tmp.Visible = true
		table.insert(ExtensionsTable, {Name=name, Desc=desc, Icon=icon, Code=code})
		return Tmp
	end
	function Api:LoadExtension(name)
		for i, v in ExtensionsTable do
			if v.Name == name then
				task.spawn(function()
					loadstring(v.Code)()
					--Api:AddExtension(v.Name, v.Desc, v.Icon, v.Code)
				end)
			end
		end
	end
    if not isfolder("BrickAdmin/Extensions") then
     makefolder("BrickAdmin/Extensions")
	elseif isfolder("BrickAdmin/Extensions") and #listfiles("BrickAdmin/Extensions") > 0 then
	 local FailedFiles = {}
	 for i, v in listfiles("BrickAdmin/Extensions") do
	  local s, e = pcall(function()
	   local Extension = HTTPs:JSONDecode(readfile(v.."/config.json"))
	   Api:AddExtension(Extension.Name, Extension.Desc, Extension.Icon, readfile(v.."/Code.lua"))
	  end)
	  if not s then table.insert(FailedFiles, v..":\n"..e) end
	 end
	 if #FailedFiles > 0 then
	  for i, v in FailedFiles do
	   print("!EXTENSION ERROR!\n"..tostring(v))
	  end
	 end
	 print(("Loaded %d/%d extensions successfully."):format(#listfiles("BrickAdmin/Extensions") - #FailedFiles, #listfiles("BrickAdmin/Extensions")))
	end
	if not isfolder("BrickAdmin/Macros") then
	  makefolder("BrickAdmin/Macros")
	 end
    prefix = Settings.Prefix
	PrefixBox.PlaceholderText = prefix
    function ExtensionAPI:SaveExtension(name, desc, icon, code)
     if icon:sub(1, #'rbxassetid') == 'rbxassetid' then
      Url = 'https://assetdelivery.roblox.com/v1/asset/?id=' .. tostring(icon:gsub("rbxassetid://", ''))
     end -- Download the extension icon and save it.
     local Path = "BrickAdmin/Extensions/"..tostring(name)
     local ConfPath = Path .. "/config.json"
     local Tbl = {
      Icon = Path .. "/Icon.png",
      Name = name,
      Desc = desc
     }
     makefolder(Path)
     writefile(ConfPath, HTTPs:JSONEncode(Tbl))
     writefile(Path.."/Code.lua", code)
     if Url then
      writefile(Path.."/Icon.png", game:HttpGet(url)) -- If rbxassetid://
     else
      writefile(Path..'/Icon.png', readfile(icon)) -- If getcustomasset()
     end
     Api:AddExtension(name, desc, icon)
	 Api:LoadExtension(name)
    end
	function CloseUI()
		randomstring.Enabled = not randomstring.Enabled
	end
	function ExtensionAPI:GetUI()
		return randomstring
	end
	function ExtensionAPI:GetExtensions()
		return ExtensionsTable
	end
	function ExtensionAPI:AddCommand(name, desc, args, ToggleOptions, callback) -- Example usage: AddCommand('sit', "Makes your character sit for x seconds.", {'x'}, {isToggle=true}, function() print("Hello World") end) -- To make a command a toggle, add {isToggle=true}, Otherwise add {}, Callback is what happens whenever the command is used.
		return AddCommand(name, desc, args, ToggleOptions, callback)
	end
	function ExtensionAPI:GetCurrentTab()
		return CurrentTab
	end
	function ExtensionAPI:AddTab(name, children, icon, callback)
		local a = Settings_2:Clone()
		a.Parent = Settings_2.Parent
		a.Image = icon
		a.MouseButton1Click:Connect(callback)
		local b = Instance.new('Folder', Background)
		b.Name = name
		for i, v in children do
			local inst = v:Clone()
			inst.Parent = v.Parent
		end
		return a
	end
	function ExtensionAPI:SetTheme(id)
		Settings.CustomThemes.Theme = id
	end
	function ExtensionAPI:GetTabs()
		return {SettingsTab=SettingsTab, ExtensionsTab=ExtensionsTab, Background=Background}
	end
	function ExtensionAPI:IsGUIObject(object)
		local classNames = {'ScrollingFrame', 'Frame', "TextLabel", 'TextButton', 'TextBox', 'ImageButton', 'ImageLabel'}
		return table.find(classNames, object.ClassName)
	end
	function ExtensionAPI:GetToggles()
		return Toggles
	end
	function ExtensionAPI:GetSettings(asjson)
	 return asjson and HTTPs:JSONEncode(Settings) or Settings
	end
	_G.ExtensionAPI = ExtensionAPI
    for _, func in _G.ExtensionAPI do table.insert(funcs, func) end
	for i, v in ExtensionsTable do
		Api:LoadExtension(v.Name)
	end
	function checkHover(position, maxoffset)
		local mousePosition = UIS:GetMouseLocation()

		if mousePosition.X >= position.X and
			mousePosition.X <= position.X + maxoffset and  -- Adjust width as needed
			mousePosition.Y >= position.Y and
			mousePosition.Y <= position.Y + maxoffset then  -- Adjust height as needed
			return true
		else
			return false
		end
	end
	function Chat(message)
		if ChatType == Enum.ChatVersion.TextChatService then
			game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
		else
			local Path2 = Path.DefaultChatSystemChatEvents
			if not Path2 then return error ("Could not chat because: DefaultChatSystemChatEvents missing.") end
			local Path3 = Path2.SayMessageRequest
			if not Path3 then return error("Could not chat because: SayMessageRequest not found.") end
			Path3:FireServer(message, 'All')
		end
	end
	function toggleTab()
		local b = script.Parent
		if CurrentTab == 'settings' then
			for i, v in b:GetChildren() do
				if not v:IsA("LocalScript") and not v:IsA("UICorner") and not v:IsA("Folder") and v.Name ~= 'Settings' and v.Name ~= 'BackgroundImage' and v.Name ~= 'TimeDisplay' and v.Name ~= 'Close' then
					v.Visible = false
				end	
			end
			for i, v in ExtensionsTab:GetChildren() do
				v.Visible = false
			end
			for i, v in SettingsTab:GetChildren() do
				v.Visible = true
			end
		elseif CurrentTab == 'home' then
			for i, v in b:GetChildren() do
				if not v:IsA("LocalScript") and not v:IsA("UICorner") and not v:IsA("Folder") then
					v.Visible = true
				end	
			end
			for i, v in SettingsTab:GetChildren() do
				v.Visible = false
			end
			for i, v in ExtensionsTab:GetChildren() do
				v.Visible = false
			end
		elseif CurrentTab == 'extensions' then
			for i, v in b:GetChildren() do
				if not v:IsA("LocalScript") and not v:IsA("UICorner") and not v:IsA("Folder") and v.Name ~= 'Settings' and v.Name ~= 'BackgroundImage' and v.Name ~= 'TimeDisplay' and v.Name ~= 'Close' then
					v.Visible = false
				end		
			end
			for i, v in SettingsTab:GetChildren() do
				v.Visible = false
			end
			for i, v in ExtensionsTab:GetChildren() do
				v.Visible = true
			end
		end
	end
	function snap(number,factor)
		if factor == 0 then
			return number
		else
			return math.floor(number/factor+0.5)*factor

		end
	end
    table.insert(funcs, snap)
    table.insert(funcs, toggleTab)
    table.insert(funcs, Chat)
	Background.MouseEnter:Connect(function()
		HoveringOver = true
	end)
	BackgroundImage.MouseEnter:Connect(function()
		HoveringOver = true
	end)
	Background.MouseLeave:Connect(function()
		HoveringOver = false
	end)
	BackgroundImage.MouseLeave:Connect(function()
		HoveringOver = false
	end)
	function fly(Speed)
		Toggles['fly'].Toggled = true
		Humanoid.PlatformStand = true
		local ctrl = {left=0, forward=0,right=0,backwards=0}
		local bg = Instance.new("BodyGyro", Root)
		bg.P = 9e9
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = Root.CFrame
		bg.Name = 'bg'
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Parent = Root
		bodyVelocity.Velocity = Humanoid.MoveDirection*Speed 
		bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
		bodyVelocity.Name = 'bv'
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		Char.Animate.Disabled = true
		while task.wait() do
			if Humanoid.MoveDirection ~= Vector3.zero then
				local cam = workspace.CurrentCamera
				local cf = cam.CFrame
				local lv = cam.CFrame.LookVector
				local a = lv * Speed + Vector3.new(0, .2*lv.Y, 0);

				bodyVelocity.Velocity = a
				bg.cframe = cf * CFrame.Angles(0,.2,0)
				Char:TranslateBy(Humanoid.MoveDirection)
			else
				bodyVelocity.Velocity = Vector3.zero
			end
			if not Toggles['fly'].Toggled then
				break
			end
		end
		if Root:FindFirstChild('bv') then Root:FindFirstChild('bv'):Destroy() end 
		if Root:FindFirstChild('bg') then Root:FindFirstChild('bg'):Destroy() end
		Humanoid.PlatformStand = false
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		Char.Animate.Disabled = false
		return
	end
    table.insert(funcs, fly)
	function ToggleChange(ToggleI: Instance)
		local Clr = ToggleI.BackgroundColor3
		if ToggleI.Position == UDim2.new(0,0,0,0) then
			-- Off
			TweenService:Create(ToggleI, TweenInfo.new(1), {Position=UDim2.new(.6,0,0,0)}):Play()
			task.wait(.25)
			ToggleI.Parent.BackgroundColor3 = ToggleColors.On
		else
			TweenService:Create(ToggleI, TweenInfo.new(1), {Position=UDim2.new(0,0,0,0)}):Play()
			task.wait(.25)
			ToggleI.Parent.BackgroundColor3 = ToggleColors.Off
		end
	end
    table.insert(funcs, ToggleChange)
	CMD.PlaceholderText = prefix .. 'command'
	function orbitPart(part, speed)
		local distance = 10

		local angle = tick() * speed
		local offsetX = math.cos(angle) * distance
		local offsetZ = math.sin(angle) * distance

		local newPosition = part.Position + Vector3.new(offsetX, 0, offsetZ)
		Root.CFrame = CFrame.new(newPosition) * CFrame.lookAt(newPosition, part.Position)
	end
	function rainbow(t)
		local frequency = 1
		local red = math.sin(frequency*t + 0) * 127 + 128
		local green = math.sin(frequency*t + 2*math.pi/3) * 127 + 128
		local blue = math.sin(frequency*t + 4*math.pi/3) * 127 + 128

		return Color3.fromRGB(red, green, blue)
	end
	function transitionColor(part)
		local duration = .01
		local totalDuration = 2 * duration
		task.spawn(function()
			while task.wait() do
				-- Transition from white to rainbow
				local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
				local tween = TweenService:Create(part, tweenInfo, { TextColor3 = rainbow(tick()) })
				tween:Play()
				tween.Completed:Wait()

				-- Transition from rainbow to white
				tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
				tween = TweenService:Create(part, tweenInfo, { TextColor3 = Color3.new(1, 1, 1) })
				tween:Play()
				tween.Completed:Wait()
			end
		end)
	end
	function Search(name)
		local Found = {}
		for i, v in cmds do
			if v.Name.Text:lower():find(name:lower()) or v.Desc.Text:lower():find(name:lower()) then
				table.insert(Found, v)
			end
		end
		return Found
	end
	function CustomError(Index)
		CMD.Text = Errors[Index]
		task.wait(2)
		CMD.Text = CMD.Text:gsub(Errors[Index], '')
	end
	function UpdateTime()
		local _TIME = os.date('*t')
		local _H = tostring(_TIME.hour)
		local _M = tostring(_TIME.min)
		local TIME = ("%s:%s"):format(#_H >= 2 and _H or "0".._H, #_M >=2 and _M or "0".._M)
		TIME_LABEL.Text = TIME
	end
	function NoResults(cmd)
		local NoResults = script.Parent.Commands.Template:Clone()
		NoResults.DescLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		NoResults.Visible = true
		NoResults.Parent = script.Parent.Commands
		NoResults.DescLabel.Text = NoResults.DescLabel.Text:gsub('{CMD_NAME}', cmd)
		table.insert(NoResultsTBL, NoResults)
	end
    table.insert(funcs, NoResults)
    table.insert(funcs, Search)
    table.insert(funcs, UpdateTime)
    table.insert(funcs, CustomError)
    table.insert(funcs, transitionColor)
    table.insert(funcs, rainbow)
    table.insert(funcs, orbitPart)
	function AddCommand(name, desc, args, Toggle, callback)
		local Temp = Template:Clone()
		Temp.Name = ''
		Temp.NameLabel.Text = prefix .. name
		Temp.NameLabel.TextColor3 = Color3.fromRGB(80, 80, 80)
		Temp.DescLabel.Text = desc
		if args then
			local str = '';
			if typeof(args)=='string' then
				str = args
			elseif typeof(args)=='table' then
				for i, v in args do
					str = str .. ("<font color='rgb(255, 0, 0)'>%s</font>"):format(v)
					if i ~= #args then
						str = str .. ", "
					end
				end
			end
			Temp.NameLabel.Text = Temp.NameLabel.Text .. " " .. str
		end
		Temp.DescLabel.TextColor3 = Color3.fromRGB(90, 90, 90)
		Temp.Visible = true
		Temp.Parent = Commands
		table.insert(cmds, {Self = Temp, Name=Temp.NameLabel, Desc=Temp.DescLabel, Callback=callback})
        table.insert(funcs, callback)
		if Toggle.isToggle then
			Toggles[name] = Toggle
			Toggles[name].isToggle = nil
			Toggles[name].Toggled = false
			if Toggle.ToggleCmd then table.insert(funcs, Toggles[name].ToggleCmd) end
			AddCommand('un'..name, 'Cancels '..name.." if on", '', {isToggle = false}, function()
				Toggles[name].Toggled = false
				if Toggles[name].ToggleCmd then
					Toggles[name].ToggleCmd()
				end
			end)
		end
	end
	function Toggle(name)
		Toggles[name].Toggled = false
	end
	function UpdateSearch()
	 if SearchBox then
		local Results = Search(SearchBox.Text:gsub(prefix, ''))
		for i, v in Commands:GetChildren() do
			if v:IsA("Frame") then v.Visible = false end
		end
		for i, v in Results do
			v.Self.Visible = true
		end
		if #Results == 0 then
			NoResults(SearchBox.Text)
		else
			for i, v in NoResultsTBL do v:Destroy() end
		end
	 end
	end
	function FindCommand(cmd)
		for i, v in cmds do
			if v.Name.Text:lower():split(" ")[1]:sub(1, #v.Name.Text) == cmd:lower():split(" ")[1]:sub(1, #cmd) then
				return v.Callback
			end
		end
		return nil
	end
	function GetPlayer(name)
		if name:lower() == 'me' then return lp end
		if name:lower() == 'random' then return Players:GetChildren(math.random(#Players:GetChildren() >= 2 and 2 or 1, #Players:GetChildren())) end
		local Plr = nil;
		local Plrs = Players:GetChildren()
		table.remove(Plrs, 1)
		for i, v in Plrs do
			if v.Name:lower():find(name:lower()) or v.DisplayName:lower():find(name:lower()) then return v end
		end
		return Plr
	end
    table.insert(funcs, GetPlayer)
    table.insert(funcs, Toggle)
    table.insert(funcs, UpdateSearch)
	AddCommand('headsit', 'Allows you to sit on playrs heads!', {'playerName'}, {isToggle=true, ToggleCmd=function()
     workspace.Gravity = 196.2
     Toggles['headsit'].Selected = nil
    end, Selected=nil}, function(tbl)
		if not tbl[1] then return end
		local Player = GetPlayer(tbl[1])
		if not Player then
			return CustomError(1)
		end
		if Toggles['headsit'].Toggled then Toggles['headsit'].Selected = Player else Toggles['headsit'].Toggled = true Toggles['headsit'].Selected = Player end
	end)
	AddCommand('spin', 'Allows your character to spin at x speed!', {'x'}, {isToggle=true, Speed=0, Counter=0}, function(args)
		if not args[1] then return end
		if Toggles['spin'].Toggled then
			Toggles['spin'].Speed = tonumber(args[1])
		else
			Toggles['spin'].Toggled = true
			Toggles['spin'].Speed = tonumber(args[1])
		end
	end)
	AddCommand('void', 'Immediately sends your character to the void (-10000) and back without killing you for x seconds.', {'x'}, {isToggle=false}, function(Args)
		local Seconds = 5;
		if Args[1] then
			local success, err = pcall(function() Seconds = tonumber(Args[1]) end) -- Incase Args[1] isn't a number.
		end
		local Fallen = workspace.FallenPartsDestroyHeight
		pcall(function() workspace.FallenPartsDestroyHeight = 'nan' end)
		local CurrentY = Root.Position.Y
		Root.CFrame = CFrame.new(Root.Position.X, -10000, Root.Position.Z)
		Root.Anchored = true
		task.wait(Seconds)
		Root.Anchored = false
		Root.CFrame = CFrame.new(Root.Position.X, CurrentY, Root.Position.Z)
		workspace.FallenPartsDestroyHeight = Fallen
	end)
	AddCommand('speed', 'Sets your walkspeed to x, Attempts to bypass local anticheats.', {'x'}, {}, function(args)
		if not args[1] then return CustomError(3) end
		local Speed = tonumber(args[1])
		Humanoid.WalkSpeed = Speed
	end)
	AddCommand('jp', 'Sets your jumppower to x, Attempts to bypass local anticheats.', {'x'}, {}, function(args)
		if not args[1] then return CustomError(3) end
		Humanoid.UseJumpPower = true
		local Power = tonumber(args[1])
		Humanoid.JumpPower = Power
	end)
	AddCommand('view', 'Sets your CameraSubject to plr, Basically lets you view what plr sees.', {'plr'}, {isToggle=true,Viewing=nil, ToggleCmd=function()
		Toggles['view'].Viewing = Humanoid
		workspace.CurrentCamera.CameraSubject = Humanoid
	end}, function(args)
		if not args[1] then return end
		if GetPlayer(args[1]) ~= nil then
			Toggles['view'].Viewing = GetPlayer(args[1])
		elseif not GetPlayer(args[1]) or not GetPlayer(args[1]).Character then
			return CustomError(1)
		end
		workspace.CurrentCamera.CameraSubject = GetPlayer(args[1]).Character:FindFirstChildWhichIsA('Humanoid')
	end)
	AddCommand("spam", 'Spams the specified message in chat with x delay between the messages.', {'message', 'x'}, {isToggle=true, Delay=math.huge, Message=''}, function(args)
		if #args < 1 then return end
		Toggles['spam'].Toggled = true
		Toggles['spam'].Message = args[1]
		pcall(function()
			Toggles['spam'].Delay = tonumber(args[2] / 1000)
		end)
	end)
	AddCommand('whois', 'Displays information about a player, Outputs result into console.', {'player'}, {}, function(args)
		if not args[1] then return CustomError(3) end
		local function formatDate(date)
			local formattedDate = DateTime.fromUnixTimestamp(date)
			return formattedDate:FormatLocalTime("d MMMM YYYY", game:GetService("LocalizationService").SystemLocaleId)
		end
		local function a(b)return coroutine.wrap(function()local c=1;while true do for d,e in ipairs(b:GetCurrentPage())do coroutine.yield(e,c)end;if b.IsFinished then break end;b:AdvanceToNextPageAsync()c=c+1 end end)end
		local Plr = GetPlayer(args[1])
		if Plr == nil then return CustomError(1) end
		local c={}for i, v in a(game:GetService("Players"):GetFriendsAsync(Plr.UserId)) do table.insert(c, v) end
		local FullData = ('@%s (%s):\nJoin Date: %s\nFriend Count: %d\nID: %d'):format(Plr.Name, Plr.DisplayName, formatDate(os.time() - Plr.AccountAge * 24 * 60 * 60), #c, Plr.UserId)
		print(FullData)
	end)
	AddCommand('hownice', 'Sends a (fake) message in chat saying how nice a player is, Chance is randomized from 1 - 100 everytime.', {'plr'}, {}, function(args)
		if not args[1] then return CustomError(2) end
		Chat(string.format("%s is %d%% nice.", GetPlayer(args[1])~=nil and GetPlayer(args[1]).DisplayName or 'Unknown', math.random(1, 100)))
	end)
	AddCommand('howlucky', 'Sends a (fake) message in chat saying how lucky a player is, Chance is randomized from 1 - 100 everytime.', {'plr'}, {}, function(args)
		if not args[1] then return CustomError(2) end
		Chat(string.format("%s is %d%% lucky.", GetPlayer(args[1])~=nil and GetPlayer(args[1]).DisplayName or 'Unknown', math.random(1, 100)))
	end)
	AddCommand('to', 'Teleports to player Z', {'Z'}, {}, function(a)
		if not a[1] then return CustomError(1) elseif a[1] and GetPlayer(a[1]) == nil then return CustomError(2) end
		local Player = GetPlayer(a[1])
		if not Player.Character then Player.CharacterAdded:Wait() end
		Root.CFrame = GetPlayer(a[1]).Character:FindFirstChildWhichIsA('BasePart').CFrame
	end)
	AddCommand('annoy', 'Loop teleports to player Z until stopped', {'Z'}, {isToggle=true,Plr=nil}, function(a)
		if not a[1] then return CustomError(3) elseif a[1] and GetPlayer(a[1]) == nil then return CustomError(1) end
		local Player = GetPlayer(a[1])
		if not Player.Character then print("Waiting for character") Player.CharacterAdded:Wait() end
		Toggles['annoy'].Plr = Player
		Toggles['annoy'].Toggled = true
	end)
	AddCommand('fullbright', 'Removes any lighting effects, Makes you see the game clearly (USE THE COMMAND DAY IF YOU JUST WANT TO THE SET GAME TIME TO DAY!).', {}, {}, function(a)
		game:GetService("Lighting").Ambient = Color3.fromRGB(70, 70, 70)
		game:GetService("Lighting").Brightness = 3
	end)
	AddCommand('day', 'Sets the game time to day (CLIENT SIDED)', {}, {}, function(a)
		game:GetService("Lighting").ClockTime = 14.5
	end)
	AddCommand('night', 'Sets the game time to night (CLIENT SIDED)', {}, {}, function(a)
		game:GetService("Lighting").ClockTime = 20.5
	end)
	AddCommand('plog', 'Notifies you whenever a player leaves or joins.', {'sendInChat'}, {isToggle=true, inChat=false}, function(args)
		Toggles['plog'].Toggled = true
		Toggles.plog.inChat = #args >= 1 and true or false
	end)
	AddCommand('re', 'Resets your character and teleports you to where you last were.', {}, {}, function(args)
		local cf = Root.CFrame
		Humanoid.Health = 0
		lp.CharacterAdded:Wait()
		task.wait(1)
		Root.CFrame = cf
	end)
	AddCommand('float', 'Changes your hipheight to x.', {'x'}, {isToggle=true, ToggleCmd=function()
		Humanoid.HipHeight = 1
	end}, function(args)
		if not args[1] then return CustomError(3) end
		Humanoid.HipHeight = tonumber(args[1])
	end)
	AddCommand('giant', 'Turns a player into a giant. (CLIENTSIDED)', {'plr'}, {isToggle=true, p={OriginalScale=1,player=nil}, ToggleCmd=function()
		local plr = Toggles.giant.p.player
		if not plr.Character then plr.CharacterAdded:Wait() task.wait(.1) end
		plr.Character:ScaleTo(Toggles.giant.p.OriginalScale)
		plr.Character.HumanoidRootPart.CFrame += CFrame.new(0, 30, 0)
		Toggles.giant.Toggled=false
	end}, function(args)
		if not args[1] then return CustomError(3) end
		local plr = GetPlayer(args[1])
		if not plr then return CustomError(3) end
		if not plr.Character then plr.CharacterAdded:Wait() task.wait(.1) end
		Toggles.giant.p = {player=plr,OriginalScale=plr.Character:GetScale()}
		plr.Character:ScaleTo(7)
		Toggles.giant.Toggled = true
	end)
	AddCommand('follow', 'Follows a player.', {'plr'}, {isToggle=true,Following=nil}, function(args)
		if not args[1] or (args[1] and not args[1]:match("%s")) then return CustomError(3) end
		local Player = GetPlayer(args[1])
		if not Player then return CustomError(1) end
		Toggles['follow'].Following = Player
		Toggles['follow'].Toggled = true
	end)
	AddCommand('fly', "Allows you to fly at X speed!", {'X'}, {isToggle=true}, function(args)
		local speed;
		if args[1] and args[1]:match("%d+") then speed = tonumber(args[1]:match("%d+")) else speed = 20 end
		fly(speed)
	end)
	AddCommand('rj', 'Rejoins the game', {}, {}, function(args)
		game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
	end)
	AddCommand('noclip', 'Enables noclip which allows you to walk through walls, Sets every part to walkthrough enabled in radius RDS, If no RDS is given radius is infinite.', {'rds'}, {isToggle=true, ToggleCmd=function()
		for i, v in NoClipSave do
			v.object.CanCollide = v.cancollide
		end	
	end}, function(args)
		local Radius = math.huge;
		if args[2] then Radius = tonumber(args[2]:match("%d+")) end
		for i, v in workspace:GetPartBoundsInRadius(Root.Position, Radius) do
			if Root.Position.Y < v.Position.Y then
				table.insert(NoClipSave, {object=v, cancollide=v.CanCollide})
				v.CanCollide = false
			end
		end
	end)
	AddCommand('autoclick', 'Autoclicks at your mouse position while waiting {delay} MILLIseconds. Default delay is 100 MS (0.1)', {'delay'}, {isToggle=true, delay=100}, function(args)
		Toggles['autoclick'].Toggled = true
		if args[1] and args[1]:match('%d+') then
			Toggles['autoclick'].delay = tonumber(args[1]:match('%d+'))
		end
	end)
	AddCommand('orbit', 'Orbits your character around a player.', {'plr', 'speed'}, {isToggle=true,Selected=nil, Speed=5, ToggleCmd=function()
     workspace.Gravity = 196.2
    end}, function(args)
		if not args[1] then return CustomError(3) elseif args[1] and GetPlayer(args[1]) == nil then return CustomError(1) end
		Toggles['orbit'].Toggled = true
		Toggles['orbit'].Selected = GetPlayer(args[1])
		if args[2] and args[2]:match("%d+") then
			Toggles.orbit.Speed = tonumber(args[2]:match("%d+"))
		end
	end)
	AddCommand('autowalk', 'Automatically walks forward.', {}, {isToggle=true}, function()
		Toggles.autowalk.Toggled = true
	end)
	AddCommand('discord', 'Copies the discord join link.', {}, {}, function()
	 setclipboard('https://discord.gg/gYhqMRBeZV')
	end)
	AddCommand('animbuff', 'Boosts your animation speeds by X (/e dance becomes X times faster)', {'x'}, {isToggle=true,Boost=1, ToggleCmd=function() Toggles['animbuff'].Boost = 1 end}, function(args)
	 if not args[1] then return CustomError(3) elseif args[1] and not args[1]:match('%d+') then return CustomError(1) end
	 Toggles['animbuff'].Buff = tonumber(args[1]:match("%d+"))
	 Toggles['animbuff'].Toggled = true
	end)
    AddCommand("macros", 'Lists the macros you\'ve created (And prints in console)', {}, {}, function()
     if not isfolder("BrickAdmin/Macros") then return print("Macros folder does not exist.") end
     for i, v in listfiles('BrickAdmin/Macros') do
      print(i, v)
     end
    end)
	AddCommand("macro", 'Runs the specified macro.', {'macroID'}, {}, function(args)
	 if not args[1] then return CustomError(3) end
	 local macro = isfile("BrickAdmin/Macros/"..args[1]) and readfile('BrickAdmin/Macros/'..args[1]) or 'warn("Macro does not exist.")'
	 CloseUI()
	 loadstring(macro)()
	 CloseUI()
	end)
	AddCommand("createmacro", 'Records until stopbind is pressed and saves the macro as macroID', {'macroID', 'stopbind'}, {}, function(args)
	 if not args[1] or not args[2] then return CustomError(3) end
	 macroName = args[1]
	 macroStopBind = ToEnum("Enum.KeyCode."..args[2])
	 macroCreate = true
	 game:GetService("VirtualUser"):StartRecording()
	 CloseUI()
	end)
    AddCommand('\n\n', '\n\n\n', {}, {}, function() end)
    AddCommand('\n\n', '\n\n\n', {}, {}, function() end)
	Players.PlayerAdded:Connect(function(plr)
		if Toggles['plog'].Toggled then
			if Toggles.plog.inChat then
				Chat(plr.DisplayName.." joined the game!")
			else
				game:GetService("StarterGui"):SetCore('SendNotification', {Title='Player Joined', Text=plr.DisplayName.." joined the game!", Duration=5})
			end
		end
	end)
	Players.PlayerRemoving:Connect(function(plr)
		if Toggles['plog'].Toggled then
			if Toggles.plog.inChat then
				Chat(plr.DisplayName.." left the game.")
			else
				game:GetService("StarterGui"):SetCore('SendNotification', {Title='Player Left', Text=plr.DisplayName.." left the game!", Duration=5})
			end
		end
	end)
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			db = false
		end
	end)
	Button.MouseButton1Down:Connect(function()
		db = true
	end)
	Settings_2.MouseButton1Click:Connect(function()
		if CurrentTab ~= 'settings' then
			CurrentTab = 'settings'
		else
			CurrentTab = 'home'
		end
		toggleTab()
	end)
	Extensions.MouseButton1Click:Connect(function()
		if CurrentTab ~= 'extensions' then
			CurrentTab = 'extensions'
		else
			CurrentTab = 'home'
		end
		toggleTab()
	end)
	PrefixBox.FocusLost:Connect(function()
		local text = PrefixBox.Text:gsub(" ", ""):sub(1,1)
		if text ~= ' ' and text ~= '[' and text ~= ']' and text ~= "'" and text ~= '"' then
			local subfrom = 2
			if Settings.Prefix == '' then
			 subfrom = 1
			end
			PrefixBox.Text = ''
			Settings.Prefix = text
			prefix = Settings.Prefix
			for i, v in cmds do
				v.Name.Text = text .. v.Name.Text:sub(subfrom, #v.Name.Text)
			end
			CMD.PlaceholderText = prefix .. 'command'
			writefile("BrickAdmin/config.json", HTTPs:JSONEncode(Settings))
		else
			PrefixBox.Text = 'Blacklisted Prefix.'
		end
	end)
	RPT.MouseButton1Click:Connect(function()
		CMD.Text = LastCmd
	end)
	Send.MouseButton1Click:Connect(function()
		if CMD.Text == '' then
			CMD.Text = LastCmd
		end
		LastCmd = CMD.Text
		local Command = FindCommand(CMD.Text)
		local Args = CMD.Text:split(" ")
		if not Command then
			return CustomError(2)
		end
		CMD.Text = ''
		if #Args > 1 then table.remove(Args, 1) end
		Command(Args)
	end)
	CMD.FocusLost:Connect(function(enter)
		if not enter then return end
		LastCmd = CMD.Text
		local Command = FindCommand(CMD.Text)
		local Args = CMD.Text:split(" ")
		if not Command then
			return CustomError(2)
		end
		CMD.Text = ''
		if #Args > 1 then table.remove(Args, 1) end
		Command(Args)
	end)
	Dot.MouseButton1Click:Connect(function()
		ToggleChange(Dot)
		Settings.CustomThemes.Enabled = not Settings.CustomThemes.Enabled
	end)
	function loopfunc()
		while task.wait() do
			task.spawn(function()
				if Toggles['spin'].Toggled then
					task.wait(1/Toggles['spin'].Speed)
					Root.CFrame *= CFrame.Angles(0, Toggles['spin'].Counter, 0)
					Toggles['spin'].Counter+=1
				end
			end)
			task.spawn(function()
				if Toggles['spam'].Toggled and Toggles['spam'].Message ~= '' and not Chatting then
					Chatting = true
					Chat(Toggles['spam'].Message)
					task.wait(Toggles['spam'].Delay / 1000)
					Chatting = false
				end
			end)
			task.spawn(function()
				if Toggles['annoy'].Toggled and Toggles['annoy'].Plr ~= nil and Root then
					local Char = Toggles['annoy'].Plr.Character or Toggles['annoy'].Plr.CharacterAdded:Wait()
					local root = Char:FindFirstChild("HumanoidRootPart") or Char:FindFirstChild('Head')
					Root.CFrame = root.CFrame
				end
			end)
			if Toggles['headsit'].Toggled and Toggles['headsit'].Selected then
				task.spawn(function()
					pcall(function() workspace.FallenPartsDestroyHeight = 'nan' end)
					workspace.Gravity = 0
					local Player = Toggles['headsit'].Selected
					local Char = Player.Character or Player.CharacterAdded:Wait()
					local PRoot = Char:FindFirstChild("Head") or Char.PrimaryPart
					Humanoid.Sit = true
					Root.CFrame = PRoot.CFrame
				end)
			elseif not Toggles['headsit'].Selected and Toggles['headsit'].Toggled then
				Humanoid.Sit = false
				workspace.Gravity = 196.2
				Toggles['headsit'].Toggled = false
			end
			if Toggles.follow.Toggled and Toggles.follow.Following then
				task.spawn(function()
					local Player = Toggles.follow.Following
					local Char = Player.Character or Player.CharacterAdded:Wait()
					local Root = Char:FindFirstChild('HumanoidRootPart') or Char:FindFirstChild('Torso')
					Humanoid.WalkToPoint = Root.Position
				end)
			elseif Toggles.follow.Toggled and not Toggles.follow.Following then
				Toggles.follow.Toggled = false
			end
			if Toggles.autoclick.Toggled then
				local x, y = UIS:GetMouseLocation().X, UIS:GetMouseLocation().Y
				if not HoveringOver and not game:GetService("GuiService").MenuIsOpen then
					if ChatType == Enum.ChatVersion.TextChatService then
						local Pos = game:GetService("TextChatService").ChatWindowConfiguration.AbsolutePosition
						if not checkHover(game:GetService("TextChatService").ChatWindowConfiguration.AbsolutePosition, (Pos.X+Pos.Y)/1.9) then
							vim:SendMouseButtonEvent(x, y, 0, true, game, 0)
							task.wait(Toggles.autoclick.delay / 1000)
							vim:SendMouseButtonEvent(x, y, 0, false, game, 0)
						end
					end
				end
			end
			if Toggles.orbit.Toggled and Toggles.orbit.Selected then
				task.spawn(function()
					local Char2 = Toggles.orbit.Selected.Character or Toggles.orbit.Selected.CharacterAdded:Wait()
					local Root2 = Char2:FindFirstChild('HumanoidRootPart') or Char2:FindFirstChild('Head')
					orbitPart(Root2, Toggles.orbit.Speed)
				end)
			end
			if Toggles.autowalk.Toggled then
				Humanoid.WalkToPoint = Root.Position + Root.CFrame.LookVector * 5
			end
		end
		if db then
			local MousePos = UIS:GetMouseLocation().X
			local BtnPos = Button.Position
			local FrameSize = Frame.AbsoluteSize.X
			local FramePos = Frame.AbsolutePosition.X
			local pos = snap((MousePos-FramePos)/FrameSize,step)
			percentage = math.clamp(pos,0,1)
			Button.Position = UDim2.new(percentage,0,BtnPos.Y.Scale,BtnPos.Y.Offset)
			Settings.ThemeBrightness = percentage
		end
	end
    table.insert(funcs, loopfunc)
    task.spawn(loopfunc)
	task.spawn(function()
		while task.wait(1) do
			UpdateTime()
			UpdateSearch()
			BackgroundImage.ImageColor3 = Color3.fromRGB(Settings.ThemeBrightness*255,Settings.ThemeBrightness*255,Settings.ThemeBrightness*255)
			BackgroundImage.Visible = Settings.CustomThemes.Enabled
			BackgroundImage.Image = Settings.CustomThemes.Theme
			for i, v in Toggles do
				if v.Toggled then
					if not script.Parent.Parent.Toggles:FindFirstChild(i) then
						local clone = script.Parent.Parent.Toggles.Template:Clone()
						clone.Parent = script.Parent.Parent.Toggles
						clone.Text = i
						clone.Visible = true
						clone.Name = i
					else
						local obj = script.Parent.Parent.Toggles:FindFirstChild(i)
						transitionColor(obj)
					end
				elseif not v.Toggled and script and script.Parent and script.Parent.Parent and script.Parent.Parent.Toggles:FindFirstChild(i) then
					script.Parent.Parent.Toggles:FindFirstChild(i):Destroy()
				end
			end
		end
	end)
    function ToEnum(str)
     for _, enum in Enum:GetEnums() do
      for i, v in enum:GetEnumItems() do
       if tostring(v):lower() == str:lower() then return v end
      end
     end
    end
    table.insert(funcs, ToEnum)
	Close.MouseButton1Click:Connect(CloseUI)
	local InputTypes = {Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2,Enum.UserInputType.MouseButton3}
	game:GetService("UserInputService").InputBegan:Connect(function(inp)
		if inp.KeyCode == ToEnum(Settings.HideBind) and not macroCreate then
			CloseUI()
		end
		if inp.KeyCode == macroStopBind then
		 local s, e = pcall(writefile, "BrickAdmin/Macros/"..macroName, game:GetService("VirtualUser"):StopRecording():gsub('KeUp', 'KeyUp'):gsub('wait(', 'task.wait'))
		 if s then print("Successfully saved macro as " .. macroName..'!') else warn("Failed to save macro!\nMessage: "..e) end
		 macroCreate = false
		 macroStopBind = nil
		 CloseUI()
		end
		if SelectingBind and inp.UserInputType == Enum.UserInputType.Keyboard then
		 Settings.HideBind = tostring(inp.KeyCode)
		 HideBindC.Text = 'Changed to ' .. tostring(inp.KeyCode):split(".")[3]
		 SelectingBind = false
		 DisplayThing.Text = tostring(inp.KeyCode):split(".")[3] .. ' to hide.'
		 task.wait(1)
		 HideBindC.Text = 'Change hide bind'
		end
	end)
	HideBindC.MouseButton1Click:Connect(function()
		if HideBindC.Text == 'Change hide bind' then
		 HideBindC.Text = 'Press the new hide bind.'
		 SelectingBind = true
		end
	   end)
	   
	lp.CharacterAdded:Connect(function(c)
		Char = c
		task.spawn(function() Humanoid = c:WaitForChild('Humanoid') Root = c:WaitForChild('HumanoidRootPart') Humanoid.WalkSpeed = Speed Humanoid:WaitForChild'Animator'.AnimationPlayed:Connect(function(anim) if Toggles['animbuff'].Toggled then anim:AdjustSpeed(Toggles['animbuff'].Buff) end end) end)
	end)
	Humanoid.Died:Connect(function()
		Speed = Humanoid.WalkSpeed
	end)
	Players.PlayerRemoving:Connect(function(plr)
	 if plr.UserId == lp.UserId then
	  writefile("BrickAdmin/config.json", HTTPs:JSONEncode(Settings))
	 end
	end)
	local old;
	old = hookmetamethod(game, "__index", newcclosure(function(Self, Prop)
		if Self == Humanoid and Prop == 'WalkSpeed' and not checkcaller() then
			return 16
		elseif Self == Humanoid and Prop == 'JumpPower' and not checkcaller() then
			return 50
		elseif Self == Humanoid and Prop == 'HipHeight' and not checkcaller() then
			return 0
		end
		return old(Self, Prop)
	end))
    Humanoid:WaitForChild'Animator'.AnimationPlayed:Connect(function(anim) if Toggles['animbuff'].Toggled then anim:AdjustSpeed(Toggles['animbuff'].Buff) end end)
end
SVHU_fake_script()