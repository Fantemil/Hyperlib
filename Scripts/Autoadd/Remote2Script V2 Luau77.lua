local RemoteSpy = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Ribbon = Instance.new("ImageLabel")
local Hide = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Remotes = Instance.new("ScrollingFrame")
local Source = Instance.new("ScrollingFrame")
local ButtonsFrame = Instance.new("ScrollingFrame")
local ToClipboard = Instance.new("TextButton")
local Decompile = Instance.new("TextButton")
local GetReturn = Instance.new("TextButton")
local ClearList = Instance.new("TextButton")
local CryptStrings = Instance.new("TextButton")
local EnableSpy = Instance.new("TextButton")
local Total = Instance.new("TextLabel")
local Settings = Instance.new("TextButton")
local SetRemotes = Instance.new("ScrollingFrame")
local Storage = Instance.new("Frame")
local RBTN = Instance.new("TextButton")
local Icon = Instance.new("ImageLabel")
local RemoteName = Instance.new("TextLabel")
local ID = Instance.new("TextLabel")
local SBTN = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local RemoteName_2 = Instance.new("TextLabel")
local Discord = Instance.new("TextLabel")
local ScriptLine = Instance.new("Frame")
local Line = Instance.new("TextLabel")
local SourceText = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Comments = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Enabled = Instance.new("TextLabel")
local FullScreen = Instance.new("TextButton")
local SetRemotesTab = Instance.new("Frame")
local FilterF = Instance.new("TextButton")
local FilterE = Instance.new("TextButton")
local Search = Instance.new("TextBox")
local lvl6Frame = Instance.new("Frame")
local lvl6Output = Instance.new("ScrollingFrame")
local lvl6Source = Instance.new("ScrollingFrame")
local Source_ = Instance.new("TextBox")
local Comments_ = Instance.new("TextLabel")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local SourceText_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local ClearScript = Instance.new("TextButton")
local ExecuteScript = Instance.new("TextButton")
local Resize = Instance.new("TextButton")
local lvl6 = Instance.new("TextButton")
local ClearOutput = Instance.new("TextButton")
local Label = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local Mute = Instance.new("TextButton")
local Icon_3 = Instance.new("ImageLabel")
local RemoteButtons = Instance.new("ScrollingFrame")
local FireRemote = Instance.new("TextButton")
local FireDelay = Instance.new("TextBox")
local LoopFire = Instance.new("TextButton")
local FireAmount = Instance.new("TextBox")
local Break = Instance.new("TextButton")
local WhileLoopFire = Instance.new("TextButton")
local remotes_fired = 0
local last_bg_pos
local LoadSource = Instance.new("TextButton")
local Refresh = Instance.new("TextButton")
local encrypt_string = false
local spy_enabled = true

local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}

-- Sounds

local logSound = Instance.new("Sound")
local topPress = Instance.new("Sound")
local errorSound = Instance.new("Sound")
local openSound = Instance.new("Sound")
local disableSound = Instance.new("Sound")

local sounds = {logSound, topPress, errorSound, openSound, disableSound}

-- Properties

RemoteSpy.Name = "RemoteSpy"
RemoteSpy.Parent = game.CoreGui

logSound.SoundId = "rbxassetid://917942453"

errorSound.SoundId = "rbxassetid://582374365"

topPress.SoundId = "rbxassetid://558993260"

openSound.SoundId = "rbxassetid://472556995"

disableSound.SoundId = "rbxassetid://550209561"

BG.Name = "BG"
BG.Parent = RemoteSpy
BG.Active = true
BG.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
BG.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
BG.Draggable = true
BG.Position = UDim2.new(0.5, -700, 0.5, -400)
BG.Size = UDim2.new(1, -300, 1, -200)
BG.ClipsDescendants = true

Ribbon.Name = "Ribbon"
Ribbon.Parent = BG
Ribbon.BackgroundColor3 = Color3.new(0.760784, 0.0117647, 0.317647)
Ribbon.BorderSizePixel = 0
Ribbon.Size = UDim2.new(1, 0, 0, 20)
Ribbon.ZIndex = 2

Hide.Name = "Hide"
Hide.Parent = Ribbon
Hide.BackgroundColor3 = Color3.new(1, 0, 0)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(1, -40, 0, 0)
Hide.Size = UDim2.new(0, 40, 0, 20)
Hide.ZIndex = 3
Hide.Font = Enum.Font.SourceSansBold
Hide.FontSize = Enum.FontSize.Size14
Hide.Text = "_"
Hide.TextColor3 = Color3.new(1, 1, 1)
Hide.TextSize = 14

Title.Name = "Title"
Title.Parent = Ribbon
Title.BackgroundColor3 = Color3.new(1, 0.0117647, 0.423529)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, -100, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.ZIndex = 3
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Remote2Script v2 R3.4"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

Remotes.Name = "Remotes"
Remotes.Parent = BG
Remotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Remotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Remotes.Position = UDim2.new(0, 10, 0, 80)
Remotes.CanvasSize = UDim2.new(0, 0, 40, 0)
Remotes.Size = UDim2.new(0, 250, 1, -90)
Remotes.ZIndex = 2
Remotes.BottomImage = "rbxassetid://148970562"
Remotes.MidImage = "rbxassetid://148970562"
Remotes.ScrollBarThickness = 5
Remotes.TopImage = "rbxassetid://148970562"

Source.Name = "Source"
Source.Parent = BG
Source.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Source.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Source.Position = UDim2.new(0, 270, 0, 80)
Source.Size = UDim2.new(1, -280, 1, -140)
Source.ZIndex = 2
Source.BottomImage = "rbxassetid://148970562"
Source.CanvasSize = UDim2.new(3, 0, 160, 0)
Source.MidImage = "rbxassetid://148970562"
Source.ScrollBarThickness = 5
Source.TopImage = "rbxassetid://148970562"

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = BG
ButtonsFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ButtonsFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
ButtonsFrame.Position = UDim2.new(0, 10, 0, 30)
ButtonsFrame.Size = UDim2.new(1, -20, 0, 40)
ButtonsFrame.ZIndex = 2
ButtonsFrame.ClipsDescendants = true
ButtonsFrame.CanvasSize = UDim2.new(2, 0, 0, 0)
ButtonsFrame.ScrollBarThickness = 5
ButtonsFrame.BottomImage = "rbxassetid://148970562"
ButtonsFrame.TopImage = "rbxassetid://148970562"
ButtonsFrame.MidImage = "rbxassetid://148970562"

ToClipboard.Name = "ToClipboard"
ToClipboard.Parent = ButtonsFrame
ToClipboard.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ToClipboard.BorderColor3 = Color3.new(0.117647, 0.392157, 0.117647)
ToClipboard.Position = UDim2.new(0, 10, 0.5, -10)
ToClipboard.Size = UDim2.new(0, 100, 0, 20)
ToClipboard.ZIndex = 3
ToClipboard.Font = Enum.Font.SourceSansBold
ToClipboard.FontSize = Enum.FontSize.Size14
ToClipboard.Text = "COPY"
ToClipboard.TextColor3 = Color3.new(0.235294, 0.784314, 0.235294)
ToClipboard.TextSize = 14

Decompile.Name = "Decompile"
Decompile.Parent = ButtonsFrame
Decompile.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Decompile.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
Decompile.Position = UDim2.new(0, 120, 0.5, -10)
Decompile.Size = UDim2.new(0, 100, 0, 20)
Decompile.ZIndex = 3
Decompile.Font = Enum.Font.SourceSansBold
Decompile.FontSize = Enum.FontSize.Size14
Decompile.Text = "DECOMPILE"
Decompile.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Decompile.TextSize = 14

GetReturn.Name = "GetReturn"
GetReturn.Parent = ButtonsFrame
GetReturn.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
GetReturn.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
GetReturn.Position = UDim2.new(0, 230, 0.5, -10)
GetReturn.Size = UDim2.new(0, 100, 0, 20)
GetReturn.ZIndex = 3
GetReturn.Font = Enum.Font.SourceSansBold
GetReturn.FontSize = Enum.FontSize.Size14
GetReturn.Text = "GET RETURN"
GetReturn.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
GetReturn.TextSize = 14

ClearList.Name = "ClearList"
ClearList.Parent = ButtonsFrame
ClearList.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ClearList.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
ClearList.Position = UDim2.new(0, 340, 0.5, -10)
ClearList.Size = UDim2.new(0, 100, 0, 20)
ClearList.ZIndex = 3
ClearList.Font = Enum.Font.SourceSansBold
ClearList.FontSize = Enum.FontSize.Size14
ClearList.Text = "CLEAR LOGS"
ClearList.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ClearList.TextSize = 14

CryptStrings.Name = "CryptStrings"
CryptStrings.Parent = ButtonsFrame
CryptStrings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
CryptStrings.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
CryptStrings.Position = UDim2.new(0, 450, 0.5, -10)
CryptStrings.Size = UDim2.new(0, 100, 0, 20)
CryptStrings.ZIndex = 3
CryptStrings.Font = Enum.Font.SourceSansBold
CryptStrings.FontSize = Enum.FontSize.Size14
CryptStrings.Text = "CRYPT STRINGS"
CryptStrings.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
CryptStrings.TextSize = 14

EnableSpy.Name = "EnableSpy"
EnableSpy.Parent = ButtonsFrame
EnableSpy.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
EnableSpy.BorderColor3 = Color3.fromRGB(30, 100, 30)
EnableSpy.Position = UDim2.new(0, 560, 0.5, -10)
EnableSpy.Size = UDim2.new(0, 100, 0, 20)
EnableSpy.ZIndex = 3
EnableSpy.Font = Enum.Font.SourceSansBold
EnableSpy.FontSize = Enum.FontSize.Size14
EnableSpy.Text = "REMOTESPY"
EnableSpy.TextColor3 = Color3.fromRGB(60, 200, 60)
EnableSpy.TextSize = 14

Total.Name = "Total"
Total.Parent = ButtonsFrame
Total.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Total.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
Total.Position = UDim2.new(0, 780, 0.5, -10)
Total.Size = UDim2.new(0, 50, 0, 20)
Total.ZIndex = 3
Total.Font = Enum.Font.SourceSansBold
Total.FontSize = Enum.FontSize.Size14
Total.Text = "0"
Total.TextColor3 = Color3.new(1, 1, 1)
Total.TextSize = 14
Total.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = ButtonsFrame
Settings.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Settings.BorderColor3 = Color3.new(0.117647, 0.392157, 0.392157)
Settings.Position = UDim2.new(0, 670, 0.5, -10)
Settings.Size = UDim2.new(0, 100, 0, 20)
Settings.ZIndex = 3
Settings.Font = Enum.Font.SourceSansBold
Settings.FontSize = Enum.FontSize.Size14
Settings.Text = "REMOTES"
Settings.TextColor3 = Color3.new(0.235294, 0.784314, 0.784314)
Settings.TextSize = 14

SetRemotes.Name = "SetRemotes"
SetRemotes.Parent = BG
SetRemotes.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetRemotes.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SetRemotes.Position = UDim2.new(0, 270, 0, 80)
SetRemotes.Size = UDim2.new(1, -280, 1, -140)
SetRemotes.Visible = false
SetRemotes.ZIndex = 2
SetRemotes.BottomImage = "rbxassetid://148970562"
SetRemotes.CanvasSize = UDim2.new(0, 0, 25, 0)
SetRemotes.MidImage = "rbxassetid://148970562"
SetRemotes.ScrollBarThickness = 5
SetRemotes.TopImage = "rbxassetid://148970562"

Storage.Name = "Storage"
Storage.Parent = RemoteSpy
Storage.BackgroundColor3 = Color3.new(1, 1, 1)
Storage.Size = UDim2.new(0, 100, 0, 100)
Storage.Visible = false

RBTN.Name = "RBTN"
RBTN.Parent = Storage
RBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
RBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
RBTN.Position = UDim2.new(0, 10, 0, 10)
RBTN.Size = UDim2.new(1, -20, 0, 20)
RBTN.ZIndex = 3
RBTN.Font = Enum.Font.SourceSansBold
RBTN.FontSize = Enum.FontSize.Size14
RBTN.Text = ""
RBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
RBTN.TextSize = 14
RBTN.TextXAlignment = Enum.TextXAlignment.Left

Icon.Name = "Icon"
Icon.Parent = RBTN
Icon.BackgroundColor3 = Color3.new(1, 1, 1)
Icon.BackgroundTransparency = 1
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.ZIndex = 4
Icon.Image = "rbxassetid://413369506"

print(Icon:GetFullName())

RemoteName.Name = "RemoteName"
RemoteName.Parent = RBTN
RemoteName.BackgroundColor3 = Color3.new(0.713726, 0.00392157, 0.298039)
RemoteName.BorderSizePixel = 0
RemoteName.Position = UDim2.new(0, 30, 0, 0)
RemoteName.Size = UDim2.new(0, 140, 0, 20)
RemoteName.ZIndex = 4
RemoteName.Font = Enum.Font.SourceSansBold
RemoteName.FontSize = Enum.FontSize.Size14
RemoteName.Text = "10"
RemoteName.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
RemoteName.TextSize = 14

ID.Name = "ID"
ID.Parent = RBTN
ID.BackgroundColor3 = Color3.new(0.458824, 0.00392157, 0.192157)
ID.BorderSizePixel = 0
ID.Position = UDim2.new(1, -50, 0, 0)
ID.Size = UDim2.new(0, 50, 0, 20)
ID.ZIndex = 4
ID.Font = Enum.Font.SourceSansBold
ID.FontSize = Enum.FontSize.Size14
ID.Text = "10"
ID.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
ID.TextSize = 14

SBTN.Name = "SBTN"
SBTN.Parent = Storage
SBTN.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SBTN.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SBTN.Position = UDim2.new(0, 10, 0, 10)
SBTN.Size = UDim2.new(1, -20, 0, 20)
SBTN.ZIndex = 3
SBTN.Font = Enum.Font.SourceSansBold
SBTN.FontSize = Enum.FontSize.Size14
SBTN.Text = ""
SBTN.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
SBTN.TextSize = 11
SBTN.TextXAlignment = Enum.TextXAlignment.Left

Icon_2.Name = "Icon"
Icon_2.Parent = SBTN
Icon_2.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_2.BackgroundTransparency = 1
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.ZIndex = 4
Icon_2.Image = "rbxassetid://413369506"

print(Icon_2:GetFullName())

RemoteName_2.Name = "RemoteName"
RemoteName_2.Parent = SBTN
RemoteName_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RemoteName_2.BorderSizePixel = 1
RemoteName_2.BorderColor3 = Color3.fromRGB(62, 62, 62)
RemoteName_2.Position = UDim2.new(0, 30, 0, 0)
RemoteName_2.Size = UDim2.new(0, 140, 0, 20)
RemoteName_2.ZIndex = 4
RemoteName_2.Font = Enum.Font.SourceSansBold
RemoteName_2.FontSize = Enum.FontSize.Size14
RemoteName_2.Text = "SayMessageRequest"
RemoteName_2.TextColor3 = Color3.fromRGB(200, 200, 200)
RemoteName_2.TextSize = 11


ScriptLine.Name = "ScriptLine"
ScriptLine.Parent = Storage
ScriptLine.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptLine.BackgroundTransparency = 1
ScriptLine.Size = UDim2.new(1, 0, 0, 17)
ScriptLine.ZIndex = 2

Line.Name = "Line"
Line.Parent = ScriptLine
Line.BackgroundColor3 = Color3.new(0.329412, 0, 0)
Line.BackgroundTransparency = 1
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 40, 1, 0)
Line.ZIndex = 3
Line.Font = Enum.Font.SourceSansBold
Line.FontSize = Enum.FontSize.Size18
Line.Text = ""
Line.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Line.TextSize = 17

SourceText.Name = "SourceText"
SourceText.Parent = ScriptLine
SourceText.BackgroundColor3 = Color3.new(1, 1, 1)
SourceText.BackgroundTransparency = 1
SourceText.Position = UDim2.new(0, 40, 0, 0)
SourceText.Size = UDim2.new(1, -40, 1, 0)
SourceText.ZIndex = 3
SourceText.Font = Enum.Font.Code
SourceText.FontSize = Enum.FontSize.Size18
SourceText.Text = ""
SourceText.TextColor3 = Color3.new(1, 1, 1)
SourceText.TextSize = 17
SourceText.TextXAlignment = Enum.TextXAlignment.Left

Tokens.Name = "Tokens"
Tokens.Parent = ScriptLine
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Position = UDim2.new(0, 40, 0, 0)
Tokens.Size = UDim2.new(1, -40, 1, 0)
Tokens.ZIndex = 3
Tokens.Font = Enum.Font.Code
Tokens.FontSize = Enum.FontSize.Size18
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Tokens.TextSize = 17
Tokens.TextXAlignment = Enum.TextXAlignment.Left

Strings.Name = "Strings"
Strings.Parent = ScriptLine
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Position = UDim2.new(0, 40, 0, 0)
Strings.Size = UDim2.new(1, -40, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.FontSize = Enum.FontSize.Size18
Strings.Text = ""
Strings.TextColor3 = Color3.new(1, 0.615686, 0)
Strings.TextSize = 17
Strings.TextXAlignment = Enum.TextXAlignment.Left

Comments.Name = "Comments"
Comments.Parent = ScriptLine
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Position = UDim2.new(0, 40, 0, 0)
Comments.Size = UDim2.new(1, -40, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.FontSize = Enum.FontSize.Size18
Comments.Text = ""
Comments.TextColor3 = Color3.fromRGB(60, 200, 60)
Comments.TextSize = 17
Comments.TextXAlignment = Enum.TextXAlignment.Left

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = ScriptLine
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Position = UDim2.new(0, 40, 0, 0)
RemoteHighlight.Size = UDim2.new(1, -40, 1, 0)
RemoteHighlight.ZIndex = 3
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.FontSize = Enum.FontSize.Size18
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.fromRGB(0, 145, 255)
RemoteHighlight.TextSize = 17
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left

Keywords.Name = "Keywords"
Keywords.Parent = ScriptLine
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Position = UDim2.new(0, 40, 0, 0)
Keywords.Size = UDim2.new(1, -40, 1, 0)
Keywords.ZIndex = 3
Keywords.Font = Enum.Font.Code
Keywords.FontSize = Enum.FontSize.Size18
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.231373, 1, 0)
Keywords.TextSize = 17
Keywords.TextXAlignment = Enum.TextXAlignment.Left

Globals.Name = "Globals"
Globals.Parent = ScriptLine
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Position = UDim2.new(0, 40, 0, 0)
Globals.Size = UDim2.new(1, -40, 1, 0)
Globals.ZIndex = 3
Globals.Font = Enum.Font.Code
Globals.FontSize = Enum.FontSize.Size18
Globals.Text = ""
Globals.TextColor3 = Color3.new(1, 0, 0)
Globals.TextSize = 17
Globals.TextXAlignment = Enum.TextXAlignment.Left

Enabled.Name = "Enabled"
Enabled.Parent = SBTN
Enabled.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Enabled.BorderSizePixel = 1
Enabled.BorderColor3 = Color3.fromRGB(30, 100, 30)
Enabled.Position = UDim2.new(0, 210, 0, 0)
Enabled.Size = UDim2.new(1, -210, 1, 0)
Enabled.ZIndex = 4
Enabled.Font = Enum.Font.SourceSansBold
Enabled.FontSize = Enum.FontSize.Size14
Enabled.Text = "Enabled"
Enabled.TextColor3 = Color3.fromRGB(60, 200, 60)
Enabled.TextSize = 14

FullScreen.Name = "FullScreen"
FullScreen.Parent = Ribbon
FullScreen.BackgroundColor3 = Color3.new(1, 0, 0)
FullScreen.BorderSizePixel = 0
FullScreen.Position = UDim2.new(1, -90, 0, 0)
FullScreen.Size = UDim2.new(0, 40, 0, 20)
FullScreen.ZIndex = 3
FullScreen.Font = Enum.Font.SourceSansBold
FullScreen.FontSize = Enum.FontSize.Size14
FullScreen.Text = "[~]"
FullScreen.TextColor3 = Color3.new(1, 1, 1)
FullScreen.TextSize = 14

SetRemotesTab.Name = "SetRemotesTab"
SetRemotesTab.Parent = BG
SetRemotesTab.Visible = false
SetRemotesTab.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SetRemotesTab.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
SetRemotesTab.ClipsDescendants = true
SetRemotesTab.Position = UDim2.new(0, 270, 1, -50)
SetRemotesTab.Size = UDim2.new(1, -280, 0, 40)
SetRemotesTab.ZIndex = 2

FilterF.Name = "FilterF"
FilterF.Parent = SetRemotesTab
FilterF.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FilterF.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
FilterF.Position = UDim2.new(0, 120, 0.5, -10)
FilterF.Size = UDim2.new(0, 120, 0, 20)
FilterF.ZIndex = 3
FilterF.Font = Enum.Font.SourceSansBold
FilterF.FontSize = Enum.FontSize.Size14
FilterF.Text = "FILTER FUNCTIONS"
FilterF.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
FilterF.TextSize = 14

FilterE.Name = "FilterE"
FilterE.Parent = SetRemotesTab
FilterE.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FilterE.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
FilterE.Position = UDim2.new(0, 10, 0.5, -10)
FilterE.Size = UDim2.new(0, 100, 0, 20)
FilterE.ZIndex = 3
FilterE.Font = Enum.Font.SourceSansBold
FilterE.FontSize = Enum.FontSize.Size14
FilterE.Text = "FILTER EVENTS"
FilterE.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
FilterE.TextSize = 14

Search.Name = "Search"
Search.Parent = SetRemotesTab
Search.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Search.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Search.Position = UDim2.new(0, 360, 0.5, -10)
Search.Selectable = true
Search.Size = UDim2.new(1, -370, 0, 20)
Search.ZIndex = 3
Search.Font = Enum.Font.SourceSansBold
Search.FontSize = Enum.FontSize.Size14
Search.Text = "[SEARCH]"
Search.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Search.TextSize = 14

lvl6Output.Name = "lvl6Output"
lvl6Output.Parent = lvl6Frame
lvl6Output.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
lvl6Output.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
lvl6Output.Position = UDim2.new(0, 0, 1, -110)
lvl6Output.Size = UDim2.new(1, 0, 0, 110)
lvl6Output.ZIndex = 3
lvl6Output.CanvasSize = UDim2.new(3, 0, 15, 0)
lvl6Output.BottomImage = "rbxassetid://148970562"
lvl6Output.MidImage = "rbxassetid://148970562"
lvl6Output.ScrollBarThickness = 5
lvl6Output.TopImage = "rbxassetid://148970562"

lvl6Source.Name = "lvl6Source"
lvl6Source.Parent = lvl6Frame
lvl6Source.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
lvl6Source.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
lvl6Source.Position = UDim2.new(0, 0, 0, 30)
lvl6Source.Size = UDim2.new(1, 0, 1, -160)
lvl6Source.ZIndex = 3
lvl6Source.BottomImage = "rbxassetid://148970562"
lvl6Source.CanvasSize = UDim2.new(0, 0, 20, 0)
lvl6Source.MidImage = "rbxassetid://148970562"
lvl6Source.ScrollBarThickness = 5
lvl6Source.TopImage = "rbxassetid://148970562"

Source_.Name = "Source_"
Source_.Parent = lvl6Source
Source_.BackgroundColor3 = Color3.new(1, 1, 1)
Source_.BackgroundTransparency = 1
Source_.Size = UDim2.new(1, 0, 1, 0)
Source_.Position = UDim2.new(0, 30, 0, 0)
Source_.ZIndex = 4
Source_.ClearTextOnFocus = false
Source_.MultiLine = true
Source_.Font = Enum.Font.Code
Source_.FontSize = Enum.FontSize.Size18
Source_.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Source_.TextSize = 17
Source_.Text = "print(\"Welcome to R2S script editor!\")"
Source_.TextXAlignment = Enum.TextXAlignment.Left
Source_.TextYAlignment = Enum.TextYAlignment.Top

Comments_.Name = "Comments_"
Comments_.Parent = Source_
Comments_.BackgroundColor3 = Color3.new(1, 1, 1)
Comments_.BackgroundTransparency = 1
Comments_.Size = UDim2.new(1, 0, 1, 0)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.Code
Comments_.FontSize = Enum.FontSize.Size18
Comments_.Text = ""
Comments_.TextColor3 = Color3.new(0.235294, 0.784314, 0.235294)
Comments_.TextSize = 17
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = Source_
Globals_.BackgroundColor3 = Color3.new(1, 1, 1)
Globals_.BackgroundTransparency = 1
Globals_.Size = UDim2.new(1, 0, 1, 0)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.Code
Globals_.FontSize = Enum.FontSize.Size18
Globals_.Text = ""
Globals_.TextColor3 = Color3.new(1, 0, 0)
Globals_.TextSize = 17
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = Source_
Keywords_.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords_.BackgroundTransparency = 1
Keywords_.Size = UDim2.new(1, 0, 1, 0)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.Code
Keywords_.FontSize = Enum.FontSize.Size18
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.new(0.231373, 1, 0)
Keywords_.TextSize = 17
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = Source_
RemoteHighlight_.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight_.BackgroundTransparency = 1
RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.Code
RemoteHighlight_.FontSize = Enum.FontSize.Size18
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.new(0, 0.568627, 1)
RemoteHighlight_.TextSize = 17
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = Source_
Strings_.BackgroundColor3 = Color3.new(1, 1, 1)
Strings_.BackgroundTransparency = 1
Strings_.Size = UDim2.new(1, 0, 1, 0)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.Code
Strings_.FontSize = Enum.FontSize.Size18
Strings_.Text = ""
Strings_.TextColor3 = Color3.new(1, 0.615686, 0)
Strings_.TextSize = 17
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = Source_
Tokens_.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens_.BackgroundTransparency = 1
Tokens_.Size = UDim2.new(1, 0, 1, 0)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.Code
Tokens_.FontSize = Enum.FontSize.Size18
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Tokens_.TextSize = 17
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

ExecuteScript.Name = "ExecuteScript"
ExecuteScript.Parent = lvl6Frame
ExecuteScript.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ExecuteScript.BorderColor3 = Color3.new(0.117647, 0.392157, 0.117647)
ExecuteScript.Size = UDim2.new(1, -700, 0, 20)
ExecuteScript.ZIndex = 3
ExecuteScript.Font = Enum.Font.SourceSansBold
ExecuteScript.FontSize = Enum.FontSize.Size14
ExecuteScript.Text = "EXECUTE"
ExecuteScript.TextColor3 = Color3.new(0.235294, 0.784314, 0.235294)
ExecuteScript.TextSize = 14

lvl6.Name = "lvl6"
lvl6.Parent = ButtonsFrame
lvl6.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
lvl6.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
lvl6.Position = UDim2.new(0, 840, 0.5, -10)
lvl6.Size = UDim2.new(0, 100, 0, 20)
lvl6.ZIndex = 3
lvl6.Font = Enum.Font.SourceSansBold
lvl6.FontSize = Enum.FontSize.Size14
lvl6.Text = "LVL6 "
lvl6.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
lvl6.TextSize = 14

lvl6Frame.Name = "lvl6Frame"
lvl6Frame.Parent = BG
lvl6Frame.BackgroundColor3 = Color3.new(1, 1, 1)
lvl6Frame.BackgroundTransparency = 1
lvl6Frame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
lvl6Frame.Position = UDim2.new(0, 270, 0, 80)
lvl6Frame.Size = UDim2.new(1, -280, 1, -90)
lvl6Frame.ZIndex = 2
lvl6Frame.Visible = false

Resize.Name = "Resize"
Resize.Parent = lvl6Frame
Resize.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Resize.BorderSizePixel = 0
Resize.Draggable = true
Resize.Position = UDim2.new(0.5, -50, 1, -130)
Resize.Size = UDim2.new(0, 100, 0, 10)
Resize.ZIndex = 3
Resize.Font = Enum.Font.SourceSans
Resize.FontSize = Enum.FontSize.Size14
Resize.Text = ""
Resize.TextSize = 14

ClearScript.Name = "ClearScript"
ClearScript.Parent = lvl6Frame
ClearScript.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ClearScript.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
ClearScript.Position = UDim2.new(1, -280, 0, 0)
ClearScript.Size = UDim2.new(0, 280, 0, 20)
ClearScript.ZIndex = 3
ClearScript.Font = Enum.Font.SourceSansBold
ClearScript.FontSize = Enum.FontSize.Size14
ClearScript.Text = "CLEAR"
ClearScript.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
ClearScript.TextSize = 14

ClearOutput.Name = "ClearOutput"
ClearOutput.Parent = lvl6Frame
ClearOutput.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
ClearOutput.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
ClearOutput.Position = UDim2.new(1, -680, 0, 0)
ClearOutput.Size = UDim2.new(0, 390, 0, 20)
ClearOutput.ZIndex = 3
ClearOutput.Font = Enum.Font.SourceSansBold
ClearOutput.FontSize = Enum.FontSize.Size14
ClearOutput.Text = "CLEAR OUTPUT"
ClearOutput.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
ClearOutput.TextSize = 14

Label.Name = "Label"
Label.Parent = Storage
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(1, 0, 0, 17)
Label.ZIndex = 4
Label.Font = Enum.Font.Code
Label.FontSize = Enum.FontSize.Size14
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

Lines.Name = "Lines"
Lines.Parent = lvl6Source
Lines.BackgroundColor3 = Color3.new(1, 1, 1)
Lines.BackgroundTransparency = 1
Lines.Size = UDim2.new(0, 30, 1, 0)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.FontSize = Enum.FontSize.Size18
Lines.Text = "1"
Lines.TextColor3 = Color3.new(1, 1, 1)
Lines.TextSize = 17
Lines.TextYAlignment = Enum.TextYAlignment.Top

LoadSource.Name = "LoadSource"
LoadSource.Parent = ButtonsFrame
LoadSource.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
LoadSource.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
LoadSource.Position = UDim2.new(0, 950, 0.5, -10)
LoadSource.Size = UDim2.new(0, 100, 0, 20)
LoadSource.ZIndex = 3
LoadSource.Font = Enum.Font.SourceSansBold
LoadSource.FontSize = Enum.FontSize.Size14
LoadSource.Text = "LOAD"
LoadSource.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
LoadSource.TextSize = 14

Mute.Name = "Mute"
Mute.Parent = ButtonsFrame
Mute.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Mute.BorderColor3 = Color3.fromRGB(30, 100, 30)
Mute.Position = UDim2.new(0, 1060, 0.5, -10)
Mute.Size = UDim2.new(0, 100, 0, 20)
Mute.ZIndex = 3
Mute.Font = Enum.Font.SourceSansBold
Mute.FontSize = Enum.FontSize.Size14
Mute.Text = ""
Mute.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Mute.TextSize = 14

Icon_3 .Name = "Icon"
Icon_3 .Parent = Mute
Icon_3 .BackgroundColor3 = Color3.new(1, 1, 1)
Icon_3 .BackgroundTransparency = 1
Icon_3 .Position = UDim2.new(0.5, -10, 0, 0)
Icon_3 .Size = UDim2.new(0, 20, 1, 0)
Icon_3 .ZIndex = 4
Icon_3 .Image = "rbxassetid://302250236"
Icon_3 .ImageColor3 = Color3.fromRGB(60, 200, 60)

Refresh.Name = "Refresh"
Refresh.Parent = SetRemotesTab
Refresh.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Refresh.BorderColor3 = Color3.new(0.380392, 0.380392, 0.380392)
Refresh.Position = UDim2.new(0, 250, 0.5, -10)
Refresh.Size = UDim2.new(0, 100, 0, 20)
Refresh.ZIndex = 3
Refresh.Font = Enum.Font.SourceSansBold
Refresh.FontSize = Enum.FontSize.Size14
Refresh.Text = "REFRESH"
Refresh.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Refresh.TextSize = 14

RemoteButtons.Name = "RemoteButtons"
RemoteButtons.Parent = BG
RemoteButtons.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
RemoteButtons.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
RemoteButtons.Position = UDim2.new(0, 270, 1, -50)
RemoteButtons.Size = UDim2.new(1, -280, 0, 40)
RemoteButtons.ZIndex = 2
RemoteButtons.BottomImage = "rbxassetid://148970562"
RemoteButtons.CanvasSize = UDim2.new(2, 0, 0, 0)
RemoteButtons.MidImage = "rbxassetid://148970562"
RemoteButtons.ScrollBarThickness = 5
RemoteButtons.TopImage = "rbxassetid://148970562"

FireRemote.Name = "FireRemote"
FireRemote.Parent = RemoteButtons
FireRemote.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FireRemote.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
FireRemote.Position = UDim2.new(0, 10, 0.5, -10)
FireRemote.Size = UDim2.new(0, 100, 0, 20)
FireRemote.ZIndex = 3
FireRemote.Font = Enum.Font.SourceSansBold
FireRemote.FontSize = Enum.FontSize.Size14
FireRemote.Text = "FIRE REMOTE"
FireRemote.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FireRemote.TextSize = 14

FireDelay.Name = "FireDelay"
FireDelay.Parent = RemoteButtons
FireDelay.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FireDelay.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
FireDelay.Position = UDim2.new(0, 290, 0.5, -10)
FireDelay.Size = UDim2.new(0, 50, 0, 20)
FireDelay.ZIndex = 3
FireDelay.Font = Enum.Font.SourceSansBold
FireDelay.FontSize = Enum.FontSize.Size14
FireDelay.Text = "0"
FireDelay.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FireDelay.TextSize = 14

LoopFire.Name = "LoopFire"
LoopFire.Parent = RemoteButtons
LoopFire.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
LoopFire.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
LoopFire.Position = UDim2.new(0, 120, 0.5, -10)
LoopFire.Size = UDim2.new(0, 100, 0, 20)
LoopFire.ZIndex = 3
LoopFire.Font = Enum.Font.SourceSansBold
LoopFire.FontSize = Enum.FontSize.Size14
LoopFire.Text = "FOR-LOOP FIRE"
LoopFire.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
LoopFire.TextSize = 14

FireAmount.Name = "FireAmount"
FireAmount.Parent = RemoteButtons
FireAmount.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
FireAmount.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
FireAmount.Position = UDim2.new(0, 230, 0.5, -10)
FireAmount.Size = UDim2.new(0, 50, 0, 20)
FireAmount.ZIndex = 3
FireAmount.Font = Enum.Font.SourceSansBold
FireAmount.FontSize = Enum.FontSize.Size14
FireAmount.Text = "0"
FireAmount.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
FireAmount.TextSize = 14

Break.Name = "Break"
Break.Parent = RemoteButtons
Break.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Break.BorderColor3 = Color3.new(0.392157, 0.117647, 0.117647)
Break.Position = UDim2.new(0, 350, 0.5, -10)
Break.Size = UDim2.new(0, 100, 0, 20)
Break.ZIndex = 3
Break.Font = Enum.Font.SourceSansBold
Break.FontSize = Enum.FontSize.Size14
Break.Text = "BREAK"
Break.TextColor3 = Color3.new(0.784314, 0.235294, 0.235294)
Break.TextSize = 14

WhileLoopFire.Name = "WhileLoopFire"
WhileLoopFire.Parent = RemoteButtons
WhileLoopFire.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
WhileLoopFire.BorderColor3 = Color3.new(0.384314, 0.384314, 0.384314)
WhileLoopFire.Position = UDim2.new(0, 460, 0.5, -10)
WhileLoopFire.Size = UDim2.new(0, 100, 0, 20)
WhileLoopFire.ZIndex = 3
WhileLoopFire.Font = Enum.Font.SourceSansBold
WhileLoopFire.FontSize = Enum.FontSize.Size14
WhileLoopFire.Text = "INF-LOOP FIRE"
WhileLoopFire.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
WhileLoopFire.TextSize = 14

Discord.Name = "Discord"
Discord.Parent = Ribbon
Discord.BackgroundColor3 = Color3.new(1, 0.0117647, 0.423529)
Discord.BorderSizePixel = 0
Discord.Size = UDim2.new(0, 200, 0, 20)
Discord.ZIndex = 3
Discord.Font = Enum.Font.SourceSansBold
Discord.FontSize = Enum.FontSize.Size14
Discord.Text = ""
Discord.TextColor3 = Color3.new(1, 1, 1)
Discord.TextSize = 14

-- FrontEnd-Backend // UI Functions

local playSound = function(sound, int)
	spawn(function()
		local s = sound:Clone()
		s.Parent = RemoteSpy
		s:Play()
		s.PlaybackSpeed = int
	end)
end

local HasSpecial = function(string)
    return (string:match("%c") or string:match("%s") or string:match("%p")) ~= nil
end

local GetPath = function(Instance)
	local Obj = Instance
	local string = {}
	local temp = {}
	local error = false
	
	while Obj ~= game do
		if Obj == nil then
			error = true
			break
		end
		table.insert(temp, Obj.Parent == game and Obj.ClassName or tostring(Obj))
		Obj = Obj.Parent
	end
	
	table.insert(string, "game:GetService(\"" .. temp[#temp] .. "\")")
	
	for i = #temp - 1, 1, -1 do
		table.insert(string, HasSpecial(temp[i]) and "[\"" .. temp[i] .. "\"]" or "." .. temp[i])
	end

	return (error and "nil -- Path contained an invalid instance" or table.concat(string, ""))
end

local GetType = function(Instance)
	local Types = 
	{
		EnumItem = function()
			return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
		end,
		Instance = function()
			return GetPath(Instance)
		end,
		CFrame = function()
			return "CFrame.new(" .. tostring(Instance) .. ")"
		end,
		Vector3 = function()
			return "Vector3.new(" .. tostring(Instance) .. ")"
		end,
		BrickColor = function()
			return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
		end,
		Color3 = function()
			return "Color3.new(" .. tostring(Instance) .. ")"
		end,
		string = function()
			local S = tostring(Instance)
			return "\"" .. (encrypt_string and S:gsub(".", function(c) return "\\" .. c:byte() end) or S) .. "\""
		end,
		Ray = function()
			return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
		end
	}

	return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
end

local size_frame = function(frame, UDim)
	frame:TweenSize(UDim, "Out", "Quint", 0.3)
end

local pos_frame = function(frame, UDim)
	frame:TweenPosition(UDim, "Out", "Quint", 0.3)
end

local size_pos_frame = function(frame, UDim, UDim2)
	frame:TweenSizeAndPosition(UDim, UDim2, "Out", "Quint", 0.3)
end

local resize_onchange = function(type)
	if type == "Position" then
		Resize.Position = UDim2.new(0.5, -50, 1, Resize.Position.Y.Offset)
		lvl6Source.Size = UDim2.new(1, 0, 1, Resize.Position.Y.Offset - 30)
		lvl6Output.Position = UDim2.new(0, 0, 1, Resize.Position.Y.Offset + 20)
		lvl6Output.Size = UDim2.new(1, 0, 0, 110 + (-130 - Resize.Position.Y.Offset))
		if Resize.Position.Y.Offset <= -420 then
			Resize.Position = UDim2.new(0.5, -50, 1, -420)
		elseif Resize.Position.Y.Offset >= -40 then
			Resize.Position = UDim2.new(0.5, -50, 1, -40)
		end
	end
end

local clear_lvl6 = function()
	playSound(topPress, 1)
	Source_.Text = ""
end

local onchange_lvl6source = function(type)
	if type == "Text" then
		Source_.Comments_.Text = Comments(Source_.Text)
	end
end

local hide = function()
	playSound(openSound, 0.9)
	size_frame(BG, UDim2.new(0, 300, 0, 20))
	pos_frame(Title, UDim2.new(0, 0, 0, 0))
	pos_frame(Remotes, UDim2.new(0, 10, 0, 100))
	pos_frame(Source, UDim2.new(0, 270, 0, 100))
	BG.Draggable = true
	SetRemotes.Visible = false
	SetRemotesTab.Visible = false
	lvl6Frame.Visible = false
	Source.Visible = true
	
	return "[]"
end

local show = function()
	playSound(openSound, 1)
	size_frame(BG, UDim2.new(1, -300, 1, -200))
	pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
	pos_frame(Title, UDim2.new(0.5, -100, 0, 0))
	pos_frame(Remotes, UDim2.new(0, 10, 0, 80))
	pos_frame(Source, UDim2.new(0, 270, 0, 80))
	BG.Draggable = false
	
	return "_"
end

local onclick_lvl6 = function()
	print("hi")
	playSound(topPress, 1)
	lvl6Frame.Visible = true
	RemoteButtons.Visible = false
	SetRemotes.Visible = false
	SetRemotesTab.Visible = false
	Source.Visible = false
end

local onclick_hide = function()
	Hide.Text = Hide.Text == "_" and hide() or show()
end

local onclick_settings = function()
	playSound(topPress, 1)
	Source.Visible = not Source.Visible
	SetRemotes.Visible = not Source.Visible
	SetRemotesTab.Visible = not Source.Visible
	RemoteButtons.Visible = Source.Visible
	lvl6Frame.Visible = false
end

local onclick_remotespy = function()
	playSound(topPress, 1)
	spy_enabled = not spy_enabled
	EnableSpy.TextColor3 = EnableSpy.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	EnableSpy.BorderColor3 = EnableSpy.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
end

local onclick_mute = function()
	playSound(topPress, 1)
	Mute.BorderColor3 = Mute.BorderColor3 == Color3.fromRGB(30, 100, 30) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
	Mute.Icon.ImageColor3 = Mute.Icon.ImageColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	for i, v in pairs(sounds) do
		v.Volume = Mute.Icon.ImageColor3 == Color3.fromRGB(60, 200, 60) and 0.5 or 0
	end
end

local onclick_cryptstring = function()
	playSound(topPress, 1)
	encrypt_string = not encrypt_string
	CryptStrings.TextColor3 = CryptStrings.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	CryptStrings.BorderColor3 = CryptStrings.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
end

local clear_logs = function()
	playSound(topPress, 1)
	Remotes:ClearAllChildren()
	remotes_fired = 0
	Total.Text = "0"
end

local filter_events = function()
	local n = 0
	for i, v in pairs(SetRemotes:GetChildren()) do
		v.Visible = not (FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369623")
		if v.Visible == true then
			n = n + 1
			v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
		else
			v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
		end
	end
end

local filter_functions = function()
	local n = 0
	for i, v in pairs(SetRemotes:GetChildren()) do
		v.Visible = not (FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and v.Icon.Image == "rbxassetid://413369506")
		if v.Visible == true then
			n = n + 1
			v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
		else
			v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
		end
	end
end

local onclick_fevents = function()
	playSound(topPress, 1)
	FilterE.TextColor3 = FilterE.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	FilterE.BorderColor3 = FilterE.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
	filter_events()
end

local onclick_ffunctions = function()
	playSound(topPress, 1)
	FilterF.TextColor3 = FilterF.TextColor3 == Color3.fromRGB(60, 200, 60) and Color3.fromRGB(200, 60, 60) or Color3.fromRGB(60, 200, 60)
	FilterF.BorderColor3 = FilterF.TextColor3 == Color3.fromRGB(200, 60, 60) and Color3.fromRGB(100, 30, 30) or Color3.fromRGB(30, 100, 30)
	filter_functions()
end

local Highlight = function(string, keywords)
    local K = {}
    local S = string
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    for i, v in pairs(keywords) do
        K[v] = true
    end
    S = S:gsub(".", function(c)
        if Token[c] ~= nil then
            return "\32"
        else
            return c
        end
    end)
    S = S:gsub("%S+", function(c)
        if K[c] ~= nil then
            return c
        else
            return (" "):rep(#c)
        end
    end)
  
    return S
end

local hTokens = function(string)
    local Token =
    {
        ["="] = true,
        ["."] = true,
        [","] = true,
        ["("] = true,
        [")"] = true,
        ["["] = true,
        ["]"] = true,
        ["{"] = true,
        ["}"] = true,
        [":"] = true,
        ["*"] = true,
        ["/"] = true,
        ["+"] = true,
        ["-"] = true,
        ["%"] = true,
		[";"] = true,
		["~"] = true
    }
    local A = ""
    string:gsub(".", function(c)
        if Token[c] ~= nil then
            A = A .. c
        elseif c == "\n" then
            A = A .. "\n"
		elseif c == "\t" then
			A = A .. "\t"
        else
            A = A .. "\32"
        end
    end)
  
    return A
end


local strings = function(string)
    local highlight = ""
    local quote = false
    string:gsub(".", function(c)
        if quote == false and c == "\"" then
            quote = true
        elseif quote == true and c == "\"" then
            quote = false
        end
        if quote == false and c == "\"" then
            highlight = highlight .. "\""
        elseif c == "\n" then
            highlight = highlight .. "\n"
		elseif c == "\t" then
		    highlight = highlight .. "\t"
        elseif quote == true then
            highlight = highlight .. c
        elseif quote == false then
            highlight = highlight .. "\32"
        end
    end)
  
    return highlight
end

local comments = function(string)
    local ret = ""
    string:gsub("[^\r\n]+", function(c)
        local comm = false
        local i = 0
        c:gsub(".", function(n)
            i = i + 1
            if c:sub(i, i + 1) == "--" then
                comm = true
            end
            if comm == true then
                ret = ret .. n
            else
                ret = ret .. "\32"
            end
        end)
        ret = ret
    end)
    
    return ret
end

local copy_source = function()
	playSound(topPress, 1)
	local script = ""
	local copy
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	if Clipboard ~= nil then
		copy = Clipboard.set
	elseif Synapse ~= nil then
		copy = function(str)
			Synapse:Copy(str)
		end
	elseif setclipboard ~= nil then	
		copy = setclipboard
	end
	copy(script)
end

local onclick_fullscreen = function()
	playSound(openSound, BG.Size == UDim2.new(1, 0, 1, 40) and 0.9 or 1)
	BG.Draggable = BG.Size == UDim2.new(1, 0, 1, 40)
	if (BG.Size == UDim2.new(1, -300, 1, -200)) then
		last_bg_pos = BG.Position
		size_pos_frame(BG, UDim2.new(1, 0, 1, 40), UDim2.new(0, 0, 0, -40))
	else
		BG.Draggable = true
		size_pos_frame(BG, UDim2.new(1, -300, 1, -200), last_bg_pos)
	end
end

local filter_remotes = function(type)
	local n = 0
	if type == "Text" then
		for i, v in pairs(SetRemotes:GetChildren()) do
			if v.Name:lower():match(Search.Text:lower()) and string ~= "" then
				v.Visible = true
				n = n + 1
			else
				v.Visible = false
			end
			if v.Visible == true then
				v.Position = UDim2.new(0, 10, 0, -20 + n * 30)
			else
				v.Position = UDim2.new(0, 10, 0, -20 + i * 30)
			end
		end
	end
end

local fix = function(string)
	if string == "/e fix" then
		show()
		wait(0.3)
		pos_frame(BG, UDim2.new(0.1, 0, 0.1, 0))
	end
end

local highlight_source = function(type)
	if type == "Text" then
		Source_.Text = Source_.Text:gsub("\13", "")
		Source_.Text = Source_.Text:gsub("\t", "      ")
		local s = Source_.Text
		Source_.Keywords_.Text = Highlight(s, lua_keywords)
		Source_.Globals_.Text = Highlight(s, global_env)
		Source_.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
		Source_.Strings_.Text = strings(s)
		Source_.Tokens_.Text = hTokens(s)
		local lin = 1
		s:gsub("\n", function()
			lin = lin + 1
		end)
		Lines.Text = ""
		for i = 1, lin do
			Lines.Text = Lines.Text .. i .. "\n"
		end
	end
end

highlight_source("Text")

local format_warn_time = function()
	local d = os.date("*t")
	local tick = tostring(tick())
	return d.hour .. ":" .. (d.min < 10 and "0" .. d.min or d.min) .. ":" .. (d.sec < 10 and "0" .. d.sec or d.sec) .. "." .. tick:sub(-3)
end

local log_output = function(string, type, color)
	local out = Label:Clone()
	out.Text = (type == true and string:gsub("\t", "      ") or format_warn_time() .. " - " .. string:gsub("\t", "      "))
	out.TextColor3 = (color == nil and Color3.new(1, 1, 1) or color)
	out.Parent = lvl6Output
	out.Position = UDim2.new(0, 0, 0, -17 + #lvl6Output:GetChildren() * 17)
end

local load_source = function()
	playSound(topPress, 1)
	local script = ""
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	Source_.Text = (script == "" and (function() playSound(errorSound, 1) log_output("You haven't logged any remotes yet...", true) return "" end)() or script)
	lvl6Frame.Visible = true
	Source.Visible = false
	RemoteButtons.Visible = false
	SetRemotes.Visible = false
	SetRemotesTab.Visible = false
end

local output_format = function(...)
	local string = ""
	for i, v in pairs{...} do
		string = string .. tostring(v) .. "     "
	end
	
	return string
end

local execute_lvl6 = function()
	playSound(topPress, 1)
	local env = 
	{
		print = function(...)
			output_format(...):gsub("[^\r\n]+", function(line)
				log_output(line, false, Color3.new(1, 1, 1))
			end)
		end,
		warn = function(...)
			output_format(...):gsub("[^\r\n]+", function(line)
				log_output(line, false, Color3.fromRGB(255, 155, 0))
			end)
		end
	}
	local func = loadstring(Source_.Text)
	assert(not (type(func) == "nil" or type(func) == "string"), "Syntax error . . . Check script!")
	spawn(setfenv(func, setmetatable(env, {__index = getfenv()})))
end

local clear_output = function()
	playSound(topPress, 1)
	lvl6Output:ClearAllChildren()
end

local context_error = function(error, trace)
	playSound(errorSound, 1)
	error:gsub("[^\r\n]+", function(line)
		log_output(line, false, Color3.new(1, 0, 0))
	end)
	trace:gsub("[^\r\n]+", function(line)
		log_output(line, false, Color3.fromRGB(0, 100, 255))
	end)
end

-- FrontEnd-Connections // UI Events

LoadSource.MouseButton1Down:Connect(load_source)
ClearOutput.MouseButton1Down:Connect(clear_output)
ExecuteScript.MouseButton1Down:Connect(execute_lvl6)
ClearScript.MouseButton1Down:Connect(clear_lvl6)
Source_.Changed:Connect(highlight_source)
Hide.MouseButton1Down:Connect(onclick_hide)
lvl6Source.Changed:Connect(onchange_lvl6source)
Resize.Changed:Connect(resize_onchange)
lvl6.MouseButton1Down:Connect(onclick_lvl6)
Settings.MouseButton1Down:Connect(onclick_settings)
ClearList.MouseButton1Down:Connect(clear_logs)
EnableSpy.MouseButton1Down:Connect(onclick_remotespy)
ToClipboard.MouseButton1Down:Connect(copy_source)
CryptStrings.MouseButton1Down:Connect(onclick_cryptstring)
FullScreen.MouseButton1Down:Connect(onclick_fullscreen)
FilterE.MouseButton1Down:Connect(onclick_fevents)
FilterF.MouseButton1Down:Connect(onclick_ffunctions)
Search.Changed:Connect(filter_remotes)
Mute.MouseButton1Down:Connect(onclick_mute)
game:GetService("Players").LocalPlayer.Chatted:Connect(fix)
game:GetService("ScriptContext").Error:Connect(context_error)

-- Recursive Remotefill // UI-Backend

Table_TS = function(T)
    local M = {}
    for i, v in pairs(T) do
        local I = "\n\t" .. (type(i) == "number" and "[" .. i .. "] = " or "[\"" .. i .. "\"] = ")
        table.insert(M, I .. (type(v) == "table" and Table_TS(v) or GetType(v)))
    end
    
    return "\n{" .. table.concat(M, ", ") .. "\n}"
end

function fill(base)
	for i, v in pairs(base:GetChildren()) do
		if v.ClassName:match("Remote") and v.Name ~= "CharacterSoundEvent" then
			local B = SBTN:Clone()
			
			B.Parent = SetRemotes
			B.Icon.Image = (v.ClassName == "RemoteEvent" and "rbxassetid://413369506" or "rbxassetid://413369623")
			B.RemoteName.Text = v.Name
			B.Name = v.Name
			B.Position = UDim2.new(0, 10, 0, -20 + #SetRemotes:GetChildren() * 30)
			B.MouseButton1Down:Connect(function()
				B.Enabled.Text = B.Enabled.Text == "Enabled" and "Disabled" or "Enabled"
				B.Enabled.TextColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(60, 200, 60) or Color3.fromRGB(200, 60, 60)
				B.Enabled.BorderColor3 = B.Enabled.Text == "Enabled" and Color3.fromRGB(30, 100, 30) or Color3.fromRGB(100, 30, 30)
				playSound(disableSound, B.Enabled.Text == "Enabled" and 1 or 0.9)
				for i, v in pairs(Remotes:GetChildren()) do
					if (v.RemoteName.Text == B.RemoteName.Text) then
						v.Icon.ImageColor3 = B.Enabled.Text == "Disabled" and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
					end
				end
			end)
		end
		fill(v)
	end
end

fill(game)

-- Backend // Remotespy Backend

local game_meta = getrawmetatable(game)
local game_namecall = game_meta.__namecall
local namecall_dump = {}
local current_rmt = nil
local g_caller = nil
local f_return = nil
local Step = game:GetService("RunService").Stepped
local breakloop = false
local looprunning = false

local mwr = function() end

if setreadonly ~= nil then
	mwr = function()
		setreadonly(game_meta, false)
	end
elseif make_writeable ~= nil then	
	mwr = function()
		make_writeable(game_meta)
	end
end

mwr()

local namecall_script = function(object, method, ...)
	local script = "-- Script generated by R2Sv2\n-- R2Sv2 developed by Luckyxero\n-- Remote Path: " .. GetPath(object) .. "\n\32\n"
	local args = {}
	for i, v in pairs{...} do
		script = script .. "local A_" .. i .. " = " .. (type(v) == "table" and Table_TS(v) or GetType(v)) .. "\n"
		table.insert(args, "A_" .. i)
	end
	script = script .. "local Event = " .. GetPath(object) .. "\n\n"
	script = script .. "Event:" .. method .. "(" .. table.concat(args, ", ") .. ")"
	
	return script
end


local dump_script = function(script)
	Source:ClearAllChildren()
	local lines = 0
	script:gsub("[^\r\n]+", function(c)
		lines = lines + 1
		local tabs = 0
		c:gsub("%\t", function() tabs = tabs + 1 end)
		local line = ScriptLine:Clone()
		line.Parent = Source
		line.SourceText.Text = c 
		line.Line.Text = lines
		line.RemoteHighlight.Text = Highlight(c, {"FireServer", "InvokeServer", "invokeServer", "fireServer"})
		line.Position = UDim2.new(0, tabs * (17 * 2), 0, -17 + #Source:GetChildren() * 17)
		line.Globals.Text = Highlight(c, global_env)
		line.Line.Position = UDim2.new(0, 0 - tabs * (17 * 2), 0, 0)
		line.Strings.Text = strings(c)
		line.Keywords.Text = Highlight(c, lua_keywords)
		line.Tokens.Text = hTokens(c)
		line.Comments.Text = comments(c)
	end)
end

local log_remote = function(table)
	if SetRemotes[table.object.Name].Enabled.Text == "Disabled" then return end
	playSound(logSound, 5)
	local B = RBTN:Clone()
	g_caller = table.caller
	remotes_fired = remotes_fired + 1
	Total.Text = remotes_fired

	B.Parent = Remotes
	B.Position = UDim2.new(0, 10, 0, -20 + #Remotes:GetChildren() * 30)
	B.Icon.Image = table.method == "FireServer" and "rbxassetid://413369506" or "rbxassetid://413369623"
	B.RemoteName.Text = table.object.Name
	B.ID.Text = tostring(remotes_fired)
	B.MouseButton1Down:Connect(function()
		current_rmt = table.object
		playSound(topPress, 1)
		lvl6Frame.Visible = false
		SetRemotes.Visible = false
		RemoteButtons.Visible = true
		SetRemotesTab.Visible = false
		Source.Visible = true
		dump_script(table.script)
		g_caller = table.caller
		f_return = table.freturn == nil and table.object.Name .. " is not RemoteFunction" or table.freturn
	end)
	B.MouseButton2Down:Connect(function()
		local bool = B.Icon.ImageColor3 == Color3.new(1, 1, 1)
		playSound(disableSound, bool and 0.9 or 1)
		for i, v in pairs(Remotes:GetChildren()) do
			if (v.RemoteName.Text == B.RemoteName.Text) then
				v.Icon.ImageColor3 = bool and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
			end
		end
		SetRemotes[B.RemoteName.Text].Enabled.Text = not bool and "Enabled" or "Disabled"
		SetRemotes[B.RemoteName.Text].Enabled.TextColor3 = not bool and Color3.fromRGB(60, 200, 60) or Color3.fromRGB(200, 60, 60)
		SetRemotes[B.RemoteName.Text].Enabled.BorderColor3 = not bool and Color3.fromRGB(30, 100, 30) or Color3.fromRGB(100, 30, 30)
	end)
end

local get_namecall_dump = function(script, object, ...)
	local Ret = nil
	if object.ClassName == "RemoteFunction" then
		local freturn = {pcall(object.InvokeServer, object, ...)}
		freturn = {select(2, unpack(freturn))}
		
		if #freturn == 0 then
			Ret = object.Name .. " is a void type RemoteFunction."
		else
			Ret = "local " .. object.Name .. "_return = " .. Table_TS(freturn)
		end
	end
	namecall_dump[#namecall_dump + 1] = 
	{	
		script = namecall_script(object, object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer", ...),
		caller = script,
		object = object,
		method = object.ClassName == "RemoteEvent" and "FireServer" or "InvokeServer",
		freturn = Ret
	}
end

GetReturn.MouseButton1Down:Connect(function() 
	dump_script(f_return)
	if (f_return:match("is not Remote")) then playSound(errorSound, 1) end
end)

Decompile.MouseButton1Down:Connect(function()
	playSound(topPress, 1)
	local source = decompile(g_caller)
		
	dump_script(type(source) == "boolean" and (function() playSound(errorSound, 1) Source.Visible = false SetRemotes.Visible = false SetRemotesTab.Visible = false lvl6Frame.Visible = true log_output("Failed to decompile...", true) return "" end)() or source)
end)

Step:Connect(function()
	while #namecall_dump > 0 do
		log_remote(table.remove(namecall_dump, 1))
	end
end)

local on_namecall = function(object, ...)
	local method = isluau() and getnamecallmethod() or table.remove(args, #args)
	local args = {...}
	if object.Name ~= "CharacterSoundEvent" and method:match("Server") and spy_enabled == true then get_namecall_dump(getfenv(2).script, object, unpack(args)) end

	return game_namecall(object, ...)
end

local onclick_refresh = function()
	playSound(topPress, 1)
	SetRemotes:ClearAllChildren()
	wait(0.2)
	fill(game)
end

local infloop = function()
	playSound(topPress, 1)
	local script = ""
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	local source = loadstring(script)
	local delay = tonumber(FireDelay.Text)
	while wait(delay) do
		source()
		if (breakloop == true) then breakloop = false break end
	end
end

local forloop = function()
	playSound(topPress, 1)
	local script = ""
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	local source = loadstring(script)
	local delay = tonumber(FireDelay.Text)
	local amount = tonumber(FireAmount.Text)
	for i = 1, amount do
		source()
		wait(delay)
		if (breakloop == true) then breakloop = false break end 
		FireAmount.Text = tostring(amount - i)
	end
end

local fireremote = function()
	playSound(topPress, 1)
	local script = ""
	for i, v in pairs(Source:GetChildren()) do
		script = script .. v.SourceText.Text .. "\n"
	end
	loadstring(script)()
end

local enable_break = function() breakloop = true end

-- Backend Event Connections

FireRemote.MouseButton1Down:Connect(fireremote)
LoopFire.MouseButton1Down:Connect(forloop)
WhileLoopFire.MouseButton1Down:Connect(infloop)
Refresh.MouseButton1Down:Connect(onclick_refresh)
Break.MouseButton1Down:Connect(enable_break)
game_meta.__namecall = on_namecall