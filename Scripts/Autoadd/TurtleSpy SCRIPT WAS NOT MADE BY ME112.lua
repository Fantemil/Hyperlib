-- TurtleSpy V1.5.3, credits to Intrer#0421

local colorSettings =
{
    ["Main"] = {
        ["HeaderColor"] = Color3.fromRGB(0, 168, 255),
        ["HeaderShadingColor"] = Color3.fromRGB(0, 151, 230),
        ["HeaderTextColor"] = Color3.fromRGB(47, 54, 64),
        ["MainBackgroundColor"] = Color3.fromRGB(47, 54, 64),
        ["InfoScrollingFrameBgColor"] = Color3.fromRGB(47, 54, 64),
        ["ScrollBarImageColor"] = Color3.fromRGB(127, 143, 166)
    },
    ["RemoteButtons"] = {
        ["BorderColor"] = Color3.fromRGB(113, 128, 147),
        ["BackgroundColor"] = Color3.fromRGB(53, 59, 72),
        ["TextColor"] = Color3.fromRGB(220, 221, 225),
        ["NumberTextColor"] = Color3.fromRGB(203, 204, 207)
    },
    ["MainButtons"] = { 
        ["BorderColor"] = Color3.fromRGB(113, 128, 147),
        ["BackgroundColor"] = Color3.fromRGB(53, 59, 72),
        ["TextColor"] = Color3.fromRGB(220, 221, 225)
    },
    ['Code'] = {
        ['BackgroundColor'] = Color3.fromRGB(35, 40, 48),
        ['TextColor'] = Color3.fromRGB(220, 221, 225),
        ['CreditsColor'] = Color3.fromRGB(108, 108, 108)
    },
}

local settings = {
["Keybind"] = "P"
}

if PROTOSMASHER_LOADED then
    getgenv().isfile = newcclosure(function(File)
        local Suc, Er = pcall(readfile, File)
        if not Suc then
            return false
        end
        return true
    end)
end

local HttpService = game:GetService("HttpService")
-- read settings for keybind
if not isfile("TurtleSpySettings.json") then
    writefile("TurtleSpySettings.json", HttpService:JSONEncode(settings))
else
    if HttpService:JSONDecode(readfile("TurtleSpySettings.json"))["Main"] then
        writefile("TurtleSpySettings.json", HttpService:JSONEncode(settings))
    else
        settings = HttpService:JSONDecode(readfile("TurtleSpySettings.json"))
    end
end

-- Compatibility for protosmasher: credits to sdjsdj (v3rm username) for converting to proto

function isSynapse()
    if PROTOSMASHER_LOADED then
        return false
    else
    return true
    end
end
function Parent(GUI)
    if syn and syn.protect_gui then
        syn.protect_gui(GUI)
        GUI.Parent = game:GetService("CoreGui")
    elseif PROTOSMASHER_LOADED then
        GUI.Parent = get_hidden_gui()
    else
        GUI.Parent = game:GetService("CoreGui")
    end
end

local client = game.Players.LocalPlayer
local function toUnicode(string)
    local codepoints = "utf8.char("
    
    for _i, v in utf8.codes(string) do
        codepoints = codepoints .. v .. ', '
    end
    
    return codepoints:sub(1, -3) .. ')'
end
local function GetFullPathOfAnInstance(instance)
    local name = instance.Name
    local head = (#name > 0 and '.' .. name) or "['']"
    
    if not instance.Parent and instance ~= game then
        return head .. " --[[ PARENTED TO NIL OR DESTROYED ]]"
    end
    
    if instance == game then
        return "game"
    elseif instance == workspace then
        return "workspace"
    else
        local _success, result = pcall(game.GetService, game, instance.ClassName)
        
        if result then
            head = ':GetService("' .. instance.ClassName .. '")'
        elseif instance == client then
            head = '.LocalPlayer' 
        else
            local nonAlphaNum = name:gsub('[%w_]', '')
            local noPunct = nonAlphaNum:gsub('[%s%p]', '')
            
            if tonumber(name:sub(1, 1)) or (#nonAlphaNum ~= 0 and #noPunct == 0) then
                head = '["' .. name:gsub('"', '\\"'):gsub('\\', '\\\\') .. '"]'
            elseif #nonAlphaNum ~= 0 and #noPunct > 0 then
                head = '[' .. toUnicode(name) .. ']'
            end
        end
    end
    
    return GetFullPathOfAnInstance(instance.Parent) .. head
end
-- Main Script

-- references to game functions (to prevent using namecall inside of a namecall hook)
local isA = game.IsA
local clone = game.Clone

local TextService = game:GetService("TextService")
local getTextSize = TextService.GetTextSize
game.StarterGui.ResetPlayerGuiOnSpawn = false
local mouse = game.Players.LocalPlayer:GetMouse()

-- delete the previous instances of turtlespy
if game.CoreGui:FindFirstChild("TurtleSpyGUI") then
    game.CoreGui.TurtleSpyGUI:Destroy()
end

--Important tables and GUI offsets
local buttonOffset = -25
local scrollSizeOffset = 287
local functionImage = "http://www.roblox.com/asset/?id=413369623"
local eventImage = "http://www.roblox.com/asset/?id=413369506"
local remotes = {}
local remoteArgs = {}
local remoteButtons = {}
local remoteScripts = {}
local IgnoreList = {}
local BlockList = {}
local IgnoreList = {}
local connections = {}
local unstacked = {}

-- (mostly) generated code by Gui to lua
local TurtleSpyGUI = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local Header = Instance.new("Frame")
local HeaderShading = Instance.new("Frame")
local HeaderTextLabel = Instance.new("TextLabel")
local RemoteScrollFrame = Instance.new("ScrollingFrame")
local RemoteButton = Instance.new("TextButton")
local Number = Instance.new("TextLabel")
local RemoteName = Instance.new("TextLabel")
local RemoteIcon = Instance.new("ImageLabel")
local InfoFrame = Instance.new("Frame")
local InfoFrameHeader = Instance.new("Frame")
local InfoTitleShading = Instance.new("Frame")
local CodeFrame = Instance.new("ScrollingFrame")
local Code = Instance.new("TextLabel")
local CodeComment = Instance.new("TextLabel")
local InfoHeaderText = Instance.new("TextLabel")
local InfoButtonsScroll = Instance.new("ScrollingFrame")
local CopyCode = Instance.new("TextButton")
local RunCode = Instance.new("TextButton")
local CopyScriptPath = Instance.new("TextButton")
local CopyDecompiled = Instance.new("TextButton")
local IgnoreRemote = Instance.new("TextButton")
local BlockRemote = Instance.new("TextButton")
local WhileLoop = Instance.new("TextButton")
local CopyReturn = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local FrameDivider = Instance.new("Frame")
local CloseInfoFrame = Instance.new("TextButton")
local OpenInfoFrame = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local DoNotStack = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton")

-- Remote browser
local BrowserHeader = Instance.new("Frame")
local BrowserHeaderFrame = Instance.new("Frame")
local BrowserHeaderText = Instance.new("TextLabel")
local CloseInfoFrame2 = Instance.new("TextButton")
local RemoteBrowserFrame = Instance.new("ScrollingFrame")
local RemoteButton2 = Instance.new("TextButton")
local RemoteName2 = Instance.new("TextLabel")
local RemoteIcon2 = Instance.new("ImageLabel")

TurtleSpyGUI.Name = "TurtleSpyGUI"

Parent(TurtleSpyGUI)

mainFrame.Name = "mainFrame"
mainFrame.Parent = TurtleSpyGUI
mainFrame.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
mainFrame.BorderColor3 = Color3.fromRGB(53, 59, 72)
mainFrame.Position = UDim2.new(0.100000001, 0, 0.239999995, 0)
mainFrame.Size = UDim2.new(0, 207, 0, 35)
mainFrame.ZIndex = 8
mainFrame.Active = true
mainFrame.Draggable = true

-- Remote browser properties

BrowserHeader.Name = "BrowserHeader"
BrowserHeader.Parent = TurtleSpyGUI
BrowserHeader.BackgroundColor3 = colorSettings["Main"]["HeaderShadingColor"]
BrowserHeader.BorderColor3 = colorSettings["Main"]["HeaderShadingColor"]
BrowserHeader.Position = UDim2.new(0.712152421, 0, 0.339464903, 0)
BrowserHeader.Size = UDim2.new(0, 207, 0, 33)
BrowserHeader.ZIndex = 20
BrowserHeader.Active = true
BrowserHeader.Draggable = true
BrowserHeader.Visible = false

BrowserHeaderFrame.Name = "BrowserHeaderFrame"
BrowserHeaderFrame.Parent = BrowserHeader
BrowserHeaderFrame.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
BrowserHeaderFrame.BorderColor3 = colorSettings["Main"]["HeaderColor"]
BrowserHeaderFrame.Position = UDim2.new(0, 0, -0.0202544238, 0)
BrowserHeaderFrame.Size = UDim2.new(0, 207, 0, 26)
BrowserHeaderFrame.ZIndex = 21

BrowserHeaderText.Name = "InfoHeaderText"
BrowserHeaderText.Parent = BrowserHeaderFrame
BrowserHeaderText.BackgroundTransparency = 1.000
BrowserHeaderText.Position = UDim2.new(0, 0, -0.00206991332, 0)
BrowserHeaderText.Size = UDim2.new(0, 206, 0, 33)
BrowserHeaderText.ZIndex = 22
BrowserHeaderText.Font = Enum.Font.SourceSans
BrowserHeaderText.Text = "Remote Browser"
BrowserHeaderText.TextColor3 = colorSettings["Main"]["HeaderTextColor"]
BrowserHeaderText.TextSize = 17.000

CloseInfoFrame2.Name = "CloseInfoFrame"
CloseInfoFrame2.Parent = BrowserHeaderFrame
CloseInfoFrame2.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
CloseInfoFrame2.BorderColor3 = colorSettings["Main"]["HeaderColor"]
CloseInfoFrame2.Position = UDim2.new(0, 185, 0, 2)
CloseInfoFrame2.Size = UDim2.new(0, 22, 0, 22)
CloseInfoFrame2.ZIndex = 38
CloseInfoFrame2.Font = Enum.Font.SourceSansLight
CloseInfoFrame2.Text = "X"
CloseInfoFrame2.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseInfoFrame2.TextSize = 20.000
CloseInfoFrame2.MouseButton1Click:Connect(function()
    BrowserHeader.Visible = not BrowserHeader.Visible
end)

RemoteBrowserFrame.Name = "RemoteBrowserFrame"
RemoteBrowserFrame.Parent = BrowserHeader
RemoteBrowserFrame.Active = true
RemoteBrowserFrame.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
RemoteBrowserFrame.BorderColor3 = Color3.fromRGB(47, 54, 64)
RemoteBrowserFrame.Position = UDim2.new(-0.004540205, 0, 1.03504682, 0)
RemoteBrowserFrame.Size = UDim2.new(0, 207, 0, 286)
RemoteBrowserFrame.ZIndex = 19
RemoteBrowserFrame.CanvasSize = UDim2.new(0, 0, 0, 287)
RemoteBrowserFrame.ScrollBarThickness = 8
RemoteBrowserFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
RemoteBrowserFrame.ScrollBarImageColor3 = colorSettings["Main"]["ScrollBarImageColor"]

RemoteButton2.Name = "RemoteButton"
RemoteButton2.Parent = RemoteBrowserFrame
RemoteButton2.BackgroundColor3 = colorSettings["RemoteButtons"]["BackgroundColor"]
RemoteButton2.BorderColor3 = colorSettings["RemoteButtons"]["BorderColor"]
RemoteButton2.Position = UDim2.new(0, 17, 0, 10)
RemoteButton2.Size = UDim2.new(0, 182, 0, 26)
RemoteButton2.ZIndex = 20
RemoteButton2.Selected = true
RemoteButton2.Font = Enum.Font.SourceSans
RemoteButton2.Text = ""
RemoteButton2.TextSize = 18.000
RemoteButton2.TextStrokeTransparency = 123.000
RemoteButton2.TextWrapped = true
RemoteButton2.TextXAlignment = Enum.TextXAlignment.Left
RemoteButton2.Visible = false

RemoteName2.Name = "RemoteName2"
RemoteName2.Parent = RemoteButton2
RemoteName2.BackgroundTransparency = 1.000
RemoteName2.Position = UDim2.new(0, 5, 0, 0)
RemoteName2.Size = UDim2.new(0, 155, 0, 26)
RemoteName2.ZIndex = 21
RemoteName2.Font = Enum.Font.SourceSans
RemoteName2.Text = "RemoteEventaasdadad"
RemoteName2.TextColor3 = colorSettings["RemoteButtons"]["TextColor"]
RemoteName2.TextSize = 16.000
RemoteName2.TextXAlignment = Enum.TextXAlignment.Left
RemoteName2.TextTruncate = 1


RemoteIcon2.Name = "RemoteIcon2"
RemoteIcon2.Parent = RemoteButton2
RemoteIcon2.BackgroundTransparency = 1.000
RemoteIcon2.Position = UDim2.new(0.840260386, 0, 0.0225472748, 0)
RemoteIcon2.Size = UDim2.new(0, 24, 0, 24)
RemoteIcon2.ZIndex = 21
RemoteIcon2.Image = functionImage

local browsedRemotes = {}
local browsedConnections = {}
local browsedButtonOffset = 10
local browserCanvasSize = 286

ImageButton.Parent = Header
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0, 8, 0, 8)
ImageButton.Size = UDim2.new(0, 18, 0, 18)
ImageButton.ZIndex = 9
ImageButton.Image = "rbxassetid://169476802"
ImageButton.ImageColor3 = Color3.fromRGB(53, 53, 53)
ImageButton.MouseButton1Click:Connect(function()
    BrowserHeader.Visible = not BrowserHeader.Visible
    for i, v in pairs(game:GetDescendants()) do
        if isA(v, "RemoteEvent") or isA(v, "RemoteFunction") then
            local bButton = clone(RemoteButton2)
            bButton.Parent = RemoteBrowserFrame
            bButton.Visible = true
            bButton.Position = UDim2.new(0, 17, 0, browsedButtonOffset)
            local fireFunction = ""
            if isA(v, "RemoteEvent") then
                fireFunction = ":FireServer()"
                bButton.RemoteIcon2.Image = eventImage
            else
                fireFunction = ":InvokeServer()"
            end
            bButton.RemoteName2.Text = v.Name
            local connection = bButton.MouseButton1Click:Connect(function()
                setclipboard(GetFullPathOfAnInstance(v)..fireFunction)
            end)
            table.insert(browsedConnections, connection)
            browsedButtonOffset = browsedButtonOffset + 35

            if #browsedConnections > 8 then
                browserCanvasSize = browserCanvasSize + 35
                RemoteBrowserFrame.CanvasSize = UDim2.new(0, 0, 0, browserCanvasSize)
            end
        end
    end
end)

mouse.KeyDown:Connect(function(key)
    if key:lower() == settings["Keybind"]:lower() then
        TurtleSpyGUI.Enabled = not TurtleSpyGUI.Enabled
    end
end)

Header.Name = "Header"
Header.Parent = mainFrame
Header.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
Header.BorderColor3 = colorSettings["Main"]["HeaderColor"]
Header.Size = UDim2.new(0, 207, 0, 26)
Header.ZIndex = 9

HeaderShading.Name = "HeaderShading"
HeaderShading.Parent = Header
HeaderShading.BackgroundColor3 = colorSettings["Main"]["HeaderShadingColor"]
HeaderShading.BorderColor3 = colorSettings["Main"]["HeaderShadingColor"]
HeaderShading.Position = UDim2.new(1.46719131e-07, 0, 0.285714358, 0)
HeaderShading.Size = UDim2.new(0, 207, 0, 27)
HeaderShading.ZIndex = 8

HeaderTextLabel.Name = "HeaderTextLabel"
HeaderTextLabel.Parent = HeaderShading
HeaderTextLabel.BackgroundTransparency = 1.000
HeaderTextLabel.Position = UDim2.new(-0.00507604145, 0, -0.202857122, 0)
HeaderTextLabel.Size = UDim2.new(0, 215, 0, 29)
HeaderTextLabel.ZIndex = 10
HeaderTextLabel.Font = Enum.Font.SourceSans
HeaderTextLabel.Text = "Turtle Spy"
HeaderTextLabel.TextColor3 = colorSettings["Main"]["HeaderTextColor"]
HeaderTextLabel.TextSize = 17.000

RemoteScrollFrame.Name = "RemoteScrollFrame"
RemoteScrollFrame.Parent = mainFrame
RemoteScrollFrame.Active = true
RemoteScrollFrame.BackgroundColor3 = Color3.fromRGB(47, 54, 64)
RemoteScrollFrame.BorderColor3 = Color3.fromRGB(47, 54, 64)
RemoteScrollFrame.Position = UDim2.new(0, 0, 1.02292562, 0)
RemoteScrollFrame.Size = UDim2.new(0, 207, 0, 286)
RemoteScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 287)
RemoteScrollFrame.ScrollBarThickness = 8
RemoteScrollFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
RemoteScrollFrame.ScrollBarImageColor3 = colorSettings["Main"]["ScrollBarImageColor"]

RemoteButton.Name = "RemoteButton"
RemoteButton.Parent = RemoteScrollFrame
RemoteButton.BackgroundColor3 = colorSettings["RemoteButtons"]["BackgroundColor"]
RemoteButton.BorderColor3 = colorSettings["RemoteButtons"]["BorderColor"]
RemoteButton.Position = UDim2.new(0, 17, 0, 10)
RemoteButton.Size = UDim2.new(0, 182, 0, 26)
RemoteButton.Selected = true
RemoteButton.Font = Enum.Font.SourceSans
RemoteButton.Text = ""
RemoteButton.TextColor3 = Color3.fromRGB(220, 221, 225)
RemoteButton.TextSize = 18.000
RemoteButton.TextStrokeTransparency = 123.000
RemoteButton.TextWrapped = true
RemoteButton.TextXAlignment = Enum.TextXAlignment.Left
RemoteButton.Visible = false

Number.Name = "Number"
Number.Parent = RemoteButton
Number.BackgroundTransparency = 1.000
Number.Position = UDim2.new(0, 5, 0, 0)
Number.Size = UDim2.new(0, 300, 0, 26)
Number.ZIndex = 2
Number.Font = Enum.Font.SourceSans
Number.Text = "1"
Number.TextColor3 = colorSettings["RemoteButtons"]["NumberTextColor"]
Number.TextSize = 16.000
Number.TextWrapped = true
Number.TextXAlignment = Enum.TextXAlignment.Left

RemoteName.Name = "RemoteName"
RemoteName.Parent = RemoteButton
RemoteName.BackgroundTransparency = 1.000
RemoteName.Position = UDim2.new(0, 20, 0, 0)
RemoteName.Size = UDim2.new(0, 134, 0, 26)
RemoteName.Font = Enum.Font.SourceSans
RemoteName.Text = "RemoteEvent"
RemoteName.TextColor3 = colorSettings["RemoteButtons"]["TextColor"]
RemoteName.TextSize = 16.000
RemoteName.TextXAlignment = Enum.TextXAlignment.Left
RemoteName.TextTruncate = 1

RemoteIcon.Name = "RemoteIcon"
RemoteIcon.Parent = RemoteButton
RemoteIcon.BackgroundTransparency = 1.000
RemoteIcon.Position = UDim2.new(0.840260386, 0, 0.0225472748, 0)
RemoteIcon.Size = UDim2.new(0, 24, 0, 24)
RemoteIcon.Image = "http://www.roblox.com/asset/?id=413369506"

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = mainFrame
InfoFrame.BackgroundColor3 = colorSettings["Main"]["MainBackgroundColor"]
InfoFrame.BorderColor3 = colorSettings["Main"]["MainBackgroundColor"]
InfoFrame.Position = UDim2.new(0.368141592, 0, -5.58035717e-05, 0)
InfoFrame.Size = UDim2.new(0, 357, 0, 322)
InfoFrame.Visible = false
InfoFrame.ZIndex = 6

InfoFrameHeader.Name = "InfoFrameHeader"
InfoFrameHeader.Parent = InfoFrame
InfoFrameHeader.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
InfoFrameHeader.BorderColor3 = colorSettings["Main"]["HeaderColor"]
InfoFrameHeader.Size = UDim2.new(0, 357, 0, 26)
InfoFrameHeader.ZIndex = 14

InfoTitleShading.Name = "InfoTitleShading"
InfoTitleShading.Parent = InfoFrame
InfoTitleShading.BackgroundColor3 = colorSettings["Main"]["HeaderShadingColor"]
InfoTitleShading.BorderColor3 = colorSettings["Main"]["HeaderShadingColor"]
InfoTitleShading.Position = UDim2.new(-0.00280881394, 0, 0, 0)
InfoTitleShading.Size = UDim2.new(0, 358, 0, 34)
InfoTitleShading.ZIndex = 13

CodeFrame.Name = "CodeFrame"
CodeFrame.Parent = InfoFrame
CodeFrame.Active = true
CodeFrame.BackgroundColor3 = colorSettings["Code"]["BackgroundColor"]
CodeFrame.BorderColor3 = colorSettings["Code"]["BackgroundColor"]
CodeFrame.Position = UDim2.new(0.0391303748, 0, 0.141156405, 0)
CodeFrame.Size = UDim2.new(0, 329, 0, 63)
CodeFrame.ZIndex = 16
CodeFrame.CanvasSize = UDim2.new(0, 670, 2, 0)
CodeFrame.ScrollBarThickness = 8
CodeFrame.ScrollingDirection = 1
CodeFrame.ScrollBarImageColor3 = colorSettings["Main"]["ScrollBarImageColor"]

Code.Name = "Code"
Code.Parent = CodeFrame
Code.BackgroundTransparency = 1.000
Code.Position = UDim2.new(0.00888902973, 0, 0.0394801199, 0)
Code.Size = UDim2.new(0, 100000, 0, 25)
Code.ZIndex = 18
Code.Font = Enum.Font.SourceSans
Code.Text = "Thanks for using Turtle Spy! :D"
Code.TextColor3 = colorSettings["Code"]["TextColor"]
Code.TextSize = 14.000
Code.TextWrapped = true
Code.TextXAlignment = Enum.TextXAlignment.Left

CodeComment.Name = "CodeComment"
CodeComment.Parent = CodeFrame
CodeComment.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CodeComment.BackgroundTransparency = 1.000
CodeComment.Position = UDim2.new(0.0119285434, 0, -0.001968503, 0)
CodeComment.Size = UDim2.new(0, 1000, 0, 25)
CodeComment.ZIndex = 18
CodeComment.Font = Enum.Font.SourceSans
CodeComment.Text = "-- Script generated by TurtleSpy, made by Intrer#0421"
CodeComment.TextColor3 = colorSettings["Code"]["CreditsColor"]
CodeComment.TextSize = 14.000
CodeComment.TextXAlignment = Enum.TextXAlignment.Left

InfoHeaderText.Name = "InfoHeaderText"
InfoHeaderText.Parent = InfoFrame
InfoHeaderText.BackgroundTransparency = 1.000
InfoHeaderText.Position = UDim2.new(0.0391303934, 0, -0.00206972216, 0)
InfoHeaderText.Size = UDim2.new(0, 342, 0, 35)
InfoHeaderText.ZIndex = 18
InfoHeaderText.Font = Enum.Font.SourceSans
InfoHeaderText.Text = "Info: RemoteFunction"
InfoHeaderText.TextColor3 = colorSettings["Main"]["HeaderTextColor"]
InfoHeaderText.TextSize = 17.000

InfoButtonsScroll.Name = "InfoButtonsScroll"
InfoButtonsScroll.Parent = InfoFrame
InfoButtonsScroll.Active = true
InfoButtonsScroll.BackgroundColor3 = colorSettings["Main"]["MainBackgroundColor"]
InfoButtonsScroll.BorderColor3 = colorSettings["Main"]["MainBackgroundColor"]
InfoButtonsScroll.Position = UDim2.new(0.0391303748, 0, 0.355857909, 0)
InfoButtonsScroll.Size = UDim2.new(0, 329, 0, 199)
InfoButtonsScroll.ZIndex = 11
InfoButtonsScroll.CanvasSize = UDim2.new(0, 0, 1, 0)
InfoButtonsScroll.ScrollBarThickness = 8
InfoButtonsScroll.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
InfoButtonsScroll.ScrollBarImageColor3 = colorSettings["Main"]["ScrollBarImageColor"]

CopyCode.Name = "CopyCode"
CopyCode.Parent = InfoButtonsScroll
CopyCode.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
CopyCode.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
CopyCode.Position = UDim2.new(0.0645, 0, 0, 10)
CopyCode.Size = UDim2.new(0, 294, 0, 26)
CopyCode.ZIndex = 15
CopyCode.Font = Enum.Font.SourceSans
CopyCode.Text = "Copy code"
CopyCode.TextColor3 = Color3.fromRGB(250, 251, 255)
CopyCode.TextSize = 16.000

RunCode.Name = "RunCode"
RunCode.Parent = InfoButtonsScroll
RunCode.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
RunCode.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
RunCode.Position = UDim2.new(0.0645, 0, 0, 45)
RunCode.Size = UDim2.new(0, 294, 0, 26)
RunCode.ZIndex = 15
RunCode.Font = Enum.Font.SourceSans
RunCode.Text = "Execute"
RunCode.TextColor3 = Color3.fromRGB(250, 251, 255)
RunCode.TextSize = 16.000

CopyScriptPath.Name = "CopyScriptPath"
CopyScriptPath.Parent = InfoButtonsScroll
CopyScriptPath.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
CopyScriptPath.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
CopyScriptPath.Position = UDim2.new(0.0645, 0, 0, 80)
CopyScriptPath.Size = UDim2.new(0, 294, 0, 26)
CopyScriptPath.ZIndex = 15
CopyScriptPath.Font = Enum.Font.SourceSans
CopyScriptPath.Text = "Copy script path"
CopyScriptPath.TextColor3 = Color3.fromRGB(250, 251, 255)
CopyScriptPath.TextSize = 16.000

CopyDecompiled.Name = "CopyDecompiled"
CopyDecompiled.Parent = InfoButtonsScroll
CopyDecompiled.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
CopyDecompiled.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
CopyDecompiled.Position = UDim2.new(0.0645, 0, 0, 115)
CopyDecompiled.Size = UDim2.new(0, 294, 0, 26)
CopyDecompiled.ZIndex = 15
CopyDecompiled.Font = Enum.Font.SourceSans
CopyDecompiled.Text = "Copy decompiled script"
CopyDecompiled.TextColor3 = Color3.fromRGB(250, 251, 255)
CopyDecompiled.TextSize = 16.000

IgnoreRemote.Name = "IgnoreRemote"
IgnoreRemote.Parent = InfoButtonsScroll
IgnoreRemote.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
IgnoreRemote.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
IgnoreRemote.Position = UDim2.new(0.0645, 0, 0, 185)
IgnoreRemote.Size = UDim2.new(0, 294, 0, 26)
IgnoreRemote.ZIndex = 15
IgnoreRemote.Font = Enum.Font.SourceSans
IgnoreRemote.Text = "Ignore remote"
IgnoreRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
IgnoreRemote.TextSize = 16.000

BlockRemote.Name = "Block Remote"
BlockRemote.Parent = InfoButtonsScroll
BlockRemote.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
BlockRemote.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
BlockRemote.Position = UDim2.new(0.0645, 0, 0, 220)
BlockRemote.Size = UDim2.new(0, 294, 0, 26)
BlockRemote.ZIndex = 15
BlockRemote.Font = Enum.Font.SourceSans
BlockRemote.Text = "Block remote from firing"
BlockRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
BlockRemote.TextSize = 16.000

WhileLoop.Name = "WhileLoop"
WhileLoop.Parent = InfoButtonsScroll
WhileLoop.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
WhileLoop.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
WhileLoop.Position = UDim2.new(0.0645, 0, 0, 290)
WhileLoop.Size = UDim2.new(0, 294, 0, 26)
WhileLoop.ZIndex = 15
WhileLoop.Font = Enum.Font.SourceSans
WhileLoop.Text = "Generate while loop script"
WhileLoop.TextColor3 = Color3.fromRGB(250, 251, 255)
WhileLoop.TextSize = 16.000

Clear.Name = "Clear"
Clear.Parent = InfoButtonsScroll
Clear.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
Clear.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
Clear.Position = UDim2.new(0.0645, 0, 0, 255)
Clear.Size = UDim2.new(0, 294, 0, 26)
Clear.ZIndex = 15
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear logs"
Clear.TextColor3 = Color3.fromRGB(250, 251, 255)
Clear.TextSize = 16.000

CopyReturn.Name = "CopyReturn"
CopyReturn.Parent = InfoButtonsScroll
CopyReturn.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
CopyReturn.BorderColor3 = colorSettings["MainButtons"]["BorderColor"]
CopyReturn.Position = UDim2.new(0.0645, 0, 0, 325)
CopyReturn.Size = UDim2.new(0, 294, 0, 26)
CopyReturn.ZIndex = 15
CopyReturn.Font = Enum.Font.SourceSans
CopyReturn.Text = "Execute and copy return value"
CopyReturn.TextColor3 = Color3.fromRGB(250, 251, 255)
CopyReturn.TextSize = 16.000

DoNotStack.Name = "CopyReturn"
DoNotStack.Parent = InfoButtonsScroll
DoNotStack.BackgroundColor3 = colorSettings["MainButtons"]["BackgroundColor"]
DoNotStack.BorderColor3 =  colorSettings["MainButtons"]["BorderColor"]
DoNotStack.Position = UDim2.new(0.0645, 0, 0, 150)
DoNotStack.Size = UDim2.new(0, 294, 0, 26)
DoNotStack.ZIndex = 15
DoNotStack.Font = Enum.Font.SourceSans
DoNotStack.Text = "Unstack remote when fired with new args"
DoNotStack.TextColor3 = Color3.fromRGB(250, 251, 255)
DoNotStack.TextSize = 16.000

FrameDivider.Name = "FrameDivider"
FrameDivider.Parent = InfoFrame
FrameDivider.BackgroundColor3 = Color3.fromRGB(53, 59, 72)
FrameDivider.BorderColor3 = Color3.fromRGB(53, 59, 72)
FrameDivider.Position = UDim2.new(0, 3, 0, 0)
FrameDivider.Size = UDim2.new(0, 4, 0, 322)
FrameDivider.ZIndex = 7

local InfoFrameOpen = false
CloseInfoFrame.Name = "CloseInfoFrame"
CloseInfoFrame.Parent = InfoFrame
CloseInfoFrame.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
CloseInfoFrame.BorderColor3 = colorSettings["Main"]["HeaderColor"]
CloseInfoFrame.Position = UDim2.new(0, 333, 0, 2)
CloseInfoFrame.Size = UDim2.new(0, 22, 0, 22)
CloseInfoFrame.ZIndex = 18
CloseInfoFrame.Font = Enum.Font.SourceSansLight
CloseInfoFrame.Text = "X"
CloseInfoFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseInfoFrame.TextSize = 20.000
CloseInfoFrame.MouseButton1Click:Connect(function()
    InfoFrame.Visible = false
    InfoFrameOpen = false
    mainFrame.Size = UDim2.new(0, 207, 0, 35)
end)

OpenInfoFrame.Name = "OpenInfoFrame"
OpenInfoFrame.Parent = mainFrame
OpenInfoFrame.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
OpenInfoFrame.BorderColor3 = colorSettings["Main"]["HeaderColor"]
OpenInfoFrame.Position = UDim2.new(0, 185, 0, 2)
OpenInfoFrame.Size = UDim2.new(0, 22, 0, 22)
OpenInfoFrame.ZIndex = 18
OpenInfoFrame.Font = Enum.Font.SourceSans
OpenInfoFrame.Text = ">"
OpenInfoFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenInfoFrame.TextSize = 16.000
OpenInfoFrame.MouseButton1Click:Connect(function()
	if not InfoFrame.Visible then
		mainFrame.Size = UDim2.new(0, 565, 0, 35)
		OpenInfoFrame.Text = "<"
	elseif RemoteScrollFrame.Visible then
		mainFrame.Size = UDim2.new(0, 207, 0, 35)
		OpenInfoFrame.Text = ">"
	end
	InfoFrame.Visible = not InfoFrame.Visible
	InfoFrameOpen = not InfoFrameOpen
end)

Minimize.Name = "Minimize"
Minimize.Parent = mainFrame
Minimize.BackgroundColor3 = colorSettings["Main"]["HeaderColor"]
Minimize.BorderColor3 = colorSettings["Main"]["HeaderColor"]
Minimize.Position = UDim2.new(0, 164, 0, 2)
Minimize.Size = UDim2.new(0, 22, 0, 22)
Minimize.ZIndex = 18
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "_"
Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimize.TextSize = 16.000
Minimize.MouseButton1Click:Connect(function()
	-- Close
	if RemoteScrollFrame.Visible then
		mainFrame.Size = UDim2.new(0, 207, 0, 35)
		OpenInfoFrame.Text = "<"
		InfoFrame.Visible = false
	else
		--Open
		if InfoFrameOpen then
		    mainFrame.Size = UDim2.new(0, 565, 0, 35)
		    OpenInfoFrame.Text = "<"
			InfoFrame.Visible = true
		else
			mainFrame.Size = UDim2.new(0, 207, 0, 35)
			OpenInfoFrame.Text = ">"
			InfoFrame.Visible = false
		end
	end
	RemoteScrollFrame.Visible = not RemoteScrollFrame.Visible
end)

local function FindRemote(remote, args)
    local currentId = (get_thread_context or syn.get_thread_identity)()
    ;(set_thread_context or syn.set_thread_identity)(7)
    local i
    if table.find(unstacked, remote) then
    local numOfRemotes = 0
        for b, v in pairs(remotes) do
            if v == remote then
                numOfRemotes = numOfRemotes + 1
                for i2, v2 in pairs(remoteArgs) do
                    if table.unpack(remoteArgs[b]) == table.unpack(args) then
                        i = b
                    end
                end
            end
        end
    else
        i = table.find(remotes, remote)
    end
    ;(set_thread_context or syn.set_thread_identity)(currentId)
    return i
end

-- creates a simple color and text change effect
local function ButtonEffect(textlabel, text)
    if not text then
        text = "Copied!"
    end
    local orgText = textlabel.Text
    local orgColor = textlabel.TextColor3
    textlabel.Text = text
    textlabel.TextColor3 = Color3.fromRGB(76, 209, 55)
    wait(0.8)
    textlabel.Text = orgText
    textlabel.TextColor3 = orgColor
end

-- important values for later
local lookingAt
local lookingAtArgs
local lookingAtButton

CopyCode.MouseButton1Click:Connect(function()
    if not lookingAt then return end
    -- copy the code's text to clipboard if the user is lookin at a remote
    setclipboard(CodeComment.Text.. "\n\n"..Code.Text)
    ButtonEffect(CopyCode)
end)

RunCode.MouseButton1Click:Connect(function()
    -- find the index of the remote the user is looking at
    if lookingAt then
    if isA(lookingAt, "RemoteFunction") then
        -- fire remote with its args
        lookingAt:InvokeServer(unpack(lookingAtArgs))
    elseif isA(lookingAt, "RemoteEvent") then
        lookingAt:FireServer(unpack(lookingAtArgs))
    end
    end
end)
CopyScriptPath.MouseButton1Click:Connect(function()
    -- get remote index
    local remote = FindRemote(lookingAt, lookingAtArgs)
    if remote and lookingAt then
        -- copy the script name at that index
        setclipboard(GetFullPathOfAnInstance(remoteScripts[remote]))
        ButtonEffect(CopyScriptPath)
    end
end)
-- bool to make decompilations queue instead of running simultaneously
local decompiling
CopyDecompiled.MouseButton1Click:Connect(function()
    local remote = FindRemote(lookingAt, lookingAtArgs)
    if not isSynapse() then
        CopyDecompiled.Text = "This exploit doesn't support decompilation!"
        CopyDecompiled.TextColor3 = Color3.fromRGB(232, 65, 24)
        wait(1.6)
        CopyDecompiled.Text = "Copy decompiled script"
        CopyDecompiled.TextColor3 = Color3.fromRGB(250, 251, 255)
        return
    end
    if not decompiling and remote and lookingAt then
        decompiling = true

        -- button effect
        spawn(function()
            while true do
                if decompiling == false then return end
                CopyDecompiled.Text = "Decompiling."
                wait(0.8)
                if decompiling == false then return end
                CopyDecompiled.Text = "Decompiling.."
                wait(0.8)
                if decompiling == false then return end
                CopyDecompiled.Text = "Decompiling..."
                wait(0.8)
            end
        end)

        -- Decompile the remotescript of the remote
        local success = { pcall(function()setclipboard(decompile(remoteScripts[remote]))end) }
        decompiling = false
        if success[1] then
            CopyDecompiled.Text = "Copied decompilation!"
            CopyDecompiled.TextColor3 = Color3.fromRGB(76, 209, 55)
        else
            warn(success[2], success[3])
            CopyDecompiled.Text = "Decompilation error! Check F9 to see the error."
            CopyDecompiled.TextColor3 = Color3.fromRGB(232, 65, 24)
        end
        wait(1.6)
        CopyDecompiled.Text = "Copy decompiled script"
        CopyDecompiled.TextColor3 = Color3.fromRGB(250, 251, 255)
    end
end)

BlockRemote.MouseButton1Click:Connect(function()
    -- find the remote the user is looking at and check whether it's blocked or not
    local bRemote = table.find(BlockList, lookingAt)

    if lookingAt and not bRemote then
        -- remote isn't blocked, add it to the blocklist
        table.insert(BlockList, lookingAt)
        BlockRemote.Text = "Unblock remote"
        BlockRemote.TextColor3 = Color3.fromRGB(251, 197, 49)
        local remote = table.find(remotes, lookingAt)
        if remote then
            remoteButtons[remote].Parent.RemoteName.TextColor3 = Color3.fromRGB(225, 177, 44)
        end
    elseif lookingAt and bRemote then
        -- remote is
        table.remove(BlockList, bRemote)
        BlockRemote.Text = "Block remote from firing"
        BlockRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
        local remote = table.find(remotes, lookingAt)
        if remote then
            remoteButtons[remote].Parent.RemoteName.TextColor3 = Color3.fromRGB(245, 246, 250)
        end
    end
end)

IgnoreRemote.MouseButton1Click:Connect(function()
    -- check if remote is blocked
    local iRemote = table.find(IgnoreList, lookingAt)
    if lookingAt and not iRemote then
        table.insert(IgnoreList, lookingAt)
        IgnoreRemote.Text = "Stop ignoring remote"
        IgnoreRemote.TextColor3 = Color3.fromRGB(127, 143, 166)
        local remote = table.find(remotes, lookingAt)
        local unstacked = table.find(unstacked, lookingAt)
        if remote then
            remoteButtons[remote].Parent.RemoteName.TextColor3 = Color3.fromRGB(127, 143, 166)
        end
    elseif lookingAt and iRemote then
        table.remove(IgnoreList, iRemote)
        IgnoreRemote.Text = "Ignore remote"
        IgnoreRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
        local remote = table.find(remotes, lookingAt)
        if remote then
            remoteButtons[remote].Parent.RemoteName.TextColor3 = Color3.fromRGB(245, 246, 250)
        end
    end
end)

WhileLoop.MouseButton1Click:Connect(function()
    if not lookingAt then return end
    setclipboard("while wait() do\n   "..Code.Text.."\nend")
    ButtonEffect(WhileLoop)
end)

Clear.MouseButton1Click:Connect(function()
    for i, v in pairs(RemoteScrollFrame:GetChildren()) do
        if i > 1 then 
        v:Destroy()
        end
    end
    for i, v in pairs(connections) do
        v:Disconnect()
    end
    -- reset everything
    buttonOffset = -25
    scrollSizeOffset = 0
    remotes = {}
    remoteArgs = {}
    remoteButtons = {}
    remoteScripts = {}
    IgnoreList = {}
    BlockList = {}
    IgnoreList = {}
    RemoteScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 287)
    unstacked = {}
    connections = {}

    ButtonEffect(Clear, "Cleared!")
end)

DoNotStack.MouseButton1Click:Connect(function()
    if lookingAt then
        local isUnstacked = table.find(unstacked, lookingAt)
        if isUnstacked then
            table.remove(unstacked, isUnstacked)
            DoNotStack.Text = "Unstack remote when fired with new args"
            DoNotStack.TextColor3 = Color3.fromRGB(245, 246, 250)
        else
            table.insert(unstacked, lookingAt)
            DoNotStack.Text = "Stack remote"
            DoNotStack.TextColor3 = Color3.fromRGB(251, 197, 49)
        end
    end
end)

local function len(t)
    local n = 0

    for _ in pairs(t) do
        n = n + 1
    end
    return n
end

-- converts tables to a string, good for formatting arguments
local function convertTableToString(args)
    local string = ""
    local index = 1
    for i,v in pairs(args) do
        if type(i) == "string" then
            string = string .. '["' .. tostring(i) .. '"] = '
        elseif type(i) == "userdata" and typeof(i) ~= "Instance" then
            string = string .. "[" .. typeof(i) .. ".new(" .. tostring(i) .. ")] = "
        elseif type(i) == "userdata" then
            string = string .. "[" .. GetFullPathOfAnInstance(i) .. "] = "
        end
        if v == nil then
            string = string ..  "nil"
        elseif typeof(v) == "Instance"  then
            string = string .. GetFullPathOfAnInstance(v)
        elseif type(v) == "number" or type(v) == "function" then
            string = string .. tostring(v)
        elseif type(v) == "userdata" then
            string = string .. typeof(v)..".new("..tostring(v)..")"
        elseif type(v) == "string" then
            string = string .. [["]]..v..[["]]
        elseif type(v) == "table" then
            string = string .. "{"
            string = string .. convertTableToString(v)
            string = string .. "}"
        elseif type(v) == 'boolean' then
            if v then
                string = string..'true'
            else
                string = string..'false'
            end
        end
        if len(args) > 1 and index < len(args) then
            string =  string .. ","
        end
        index = index + 1
    end
return string
end
CopyReturn.MouseButton1Click:Connect(function()
    local remote = FindRemote(lookingAt, lookingAtArgs)
    if lookingAt and remote then
    if isA(lookingAt, "RemoteFunction") then
        -- execute the remote and copy the return value, pretty easy stuff
        local result = remotes[remote]:InvokeServer(unpack(remoteArgs[remote]))
        setclipboard(convertTableToString(table.pack(result)))
        ButtonEffect(CopyReturn)
    end
    end
end)

-- detect when a child is added to the remotescrollframe and add a mousebutton1click signal (doing this in the addToList function causes problems since it's in a roblox thread)
RemoteScrollFrame.ChildAdded:Connect(function(child)
    -- get all essential info that will be useful later when the user presses the button
    local remote = remotes[#remotes]
    local args = remoteArgs[#remotes]
    local event = true
    local fireFunction = ":FireServer("
    if isA(remote, "RemoteFunction") then
        event = false
        fireFunction = ":InvokeServer("
    end
    local connection = child.MouseButton1Click:Connect(function()
        
        InfoHeaderText.Text = "Info: "..remote.Name
        if event then 
            InfoButtonsScroll.CanvasSize = UDim2.new(0, 0, 1, 0)
        else
            -- make space for the execute and copy return button since it's a remote function
            InfoButtonsScroll.CanvasSize = UDim2.new(0, 0, 1.1, 0)
        end
        mainFrame.Size = UDim2.new(0, 565, 0, 35)
        OpenInfoFrame.Text = ">"
        InfoFrame.Visible = true
        Code.Text = GetFullPathOfAnInstance(remote)..fireFunction..convertTableToString(args)..")"
        -- gets text size and updates code box's size accordingly
        local textsize = TextService:GetTextSize(Code.Text, Code.TextSize, Code.Font, Vector2.new(math.huge, math.huge))
        CodeFrame.CanvasSize = UDim2.new(0, textsize.X + 11, 2, 0)
        lookingAt = remote
        lookingAtArgs = args
        lookingAtButton = child.Number

        -- is the remote ignored/blocked? in that case, change those buttons
        local blocked = table.find(BlockList, remote)
        if blocked then
            BlockRemote.Text = "Unblock remote"
            BlockRemote.TextColor3 = Color3.fromRGB(251, 197, 49)
        else
            BlockRemote.Text = "Block remote from firing"
            BlockRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
        end
        local iRemote = table.find(IgnoreList, lookingAt)
        if iRemote then
            IgnoreRemote.Text = "Stop ignoring remote"
            IgnoreRemote.TextColor3 = Color3.fromRGB(127, 143, 166)
        else
            IgnoreRemote.Text = "Ignore remote"
            IgnoreRemote.TextColor3 = Color3.fromRGB(250, 251, 255)
        end
        InfoFrameOpen = true
    end)
    -- insert them into a connections table in order to be able to disconnect all of them
    table.insert(connections, connection)
end)


-- Main function: add a remote to the list (event: is it a RemoteEvent?, remote: the remote fired, ...: the args)
function addToList(event, remote, ...)
    -- set thread context since this is running in a game thread
    local currentId = (get_thread_context or syn.get_thread_identity)()
    ;(set_thread_context or syn.set_thread_identity)(7)
    if not remote then return end

    -- important variables
    local name = remote.Name
    local args = {...}

    -- call the FindRemote function to find this specific remote with these args
    local i = FindRemote(remote, args)

    -- if the remote hasn't been found
    if not i then
        -- add remote to remotes table (important)
        table.insert(remotes, remote)

        local rButton = clone(RemoteButton)
        -- add all useful info about the remote to tables
        remoteButtons[#remotes] = rButton.Number
        remoteArgs[#remotes] = args
        remoteScripts[#remotes] = (isSynapse() and getcallingscript() or rawget(getfenv(0), "script"))

        -- clone a little baby of the remotebutton
        rButton.Parent = RemoteScrollFrame
        rButton.Visible = true
        local numberTextsize = getTextSize(TextService, rButton.Number.Text, rButton.Number.TextSize, rButton.Number.Font, Vector2.new(math.huge, math.huge))
        rButton.RemoteName.Position = UDim2.new(0,numberTextsize.X + 10, 0, 0)
        if name then
            rButton.RemoteName.Text = name
        end
        if not event then
            rButton.RemoteIcon.Image = "http://www.roblox.com/asset/?id=413369623"
        end
        buttonOffset = buttonOffset + 35
        rButton.Position = UDim2.new(0.0912411734, 0, 0, buttonOffset)
        if #remotes > 8 then
            scrollSizeOffset = scrollSizeOffset + 35
            RemoteScrollFrame.CanvasSize = UDim2.new(0, 0, 0, scrollSizeOffset)
        end
    else
        -- the remote has been found, increment the remote's button's number text
        remoteButtons[i].Text = tostring(tonumber(remoteButtons[i].Text) + 1)
        -- get the size in pixels of the number text and change the name's position accordingly
        local numberTextsize = getTextSize(TextService, remoteButtons[i].Text, remoteButtons[i].TextSize, remoteButtons[i].Font, Vector2.new(math.huge, math.huge))
        remoteButtons[i].Parent.RemoteName.Position = UDim2.new(0,numberTextsize.X + 10, 0, 0)
        remoteButtons[i].Parent.RemoteName.Size = UDim2.new(0, 149 -numberTextsize.X, 0, 26)

        -- update the arguments
        remoteArgs[i] = args

        -- update the codebox if the player is looking at it
        if lookingAt and lookingAt == remote and lookingAtButton == remoteButtons[i] and InfoFrame.Visible then
            local fireFunction = ":FireServer("
            if isA(remote, "RemoteFunction") then
                fireFunction = ":InvokeServer("
            end
            Code.Text = GetFullPathOfAnInstance(remote)..fireFunction..convertTableToString(remoteArgs[i])..")"
            local textsize = getTextSize(TextService, Code.Text, Code.TextSize, Code.Font, Vector2.new(math.huge, math.huge))
            CodeFrame.CanvasSize = UDim2.new(0, textsize.X + 11, 2, 0)
        end
    end
    ;(set_thread_context or syn.set_thread_identity)(currentId)
end

local OldEvent
OldEvent = hookfunction(Instance.new("RemoteEvent").FireServer, function(Self, ...)
    if not checkcaller() and table.find(BlockList, Self) then
        return
    elseif table.find(IgnoreList, Self) then
        --if ignored then don't call the addToList
        return OldEvent(Self, ...)
    end
    addToList(true, Self, ...)
end)

local OldFunction
OldFunction = hookfunction(Instance.new("RemoteFunction").InvokeServer, function(Self, ...)
    if not checkcaller() and table.find(BlockList, Self) then
        return
    elseif table.find(IgnoreList, Self) then
        --if ignored then don't call the addToList
        return OldFunction(Self, ...)
    end
    addToList(false, Self, ...)
end)

-- game namecall hook (makes the script detect the remotes, basically)
local OldNamecall
OldNamecall = hookmetamethod(game,"__namecall",function(...)
    local args = {...}
    local Self = args[1]
    local method = (getnamecallmethod or get_namecall_method)()
    if method == "FireServer" and isA(Self, "RemoteEvent")  then
        -- if the remote is blocked and the remote is being fired by the game then block it
        if not checkcaller() and table.find(BlockList, Self) then
            return
        elseif table.find(IgnoreList, Self) then
            --if ignored then don't call the addToList
            return OldNamecall(...)
        end
        addToList(true, ...)
    elseif method == "InvokeServer" and isA(Self, 'RemoteFunction') then
        if not checkcaller() and table.find(BlockList, Self) then
            return
        elseif table.find(IgnoreList, Self) then
            return OldNamecall(...)
        end
        addToList(false, ...)
    end

    return OldNamecall(...)
end)