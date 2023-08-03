-- Synapse X in game executor reworked by Cremi for scriptblox.com

pcall(function() game.CoreGui["Synapse X"]:Destroy() end)

local SynapseXreal = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local bar = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local Min = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local security = Instance.new("TextLabel")
local EditorFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments_ = Instance.new("TextLabel")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local Numbers_ = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local list = Instance.new("Frame")
local execute = Instance.new("TextButton")
local clear = Instance.new("TextButton")
local options = Instance.new("TextButton")
local scripthub = Instance.new("TextButton")
local Attach = Instance.new("TextButton")
local title_2 = Instance.new("ImageLabel")
local scripthub_2 = Instance.new("Frame")
local optionspage = Instance.new("Frame")
local bar_2 = Instance.new("Frame")
local select = Instance.new("Frame")
local dex = Instance.new("TextButton")
local esp = Instance.new("TextButton")
local spy = Instance.new("TextButton")
local dumper = Instance.new("TextButton")
local backdoor = Instance.new("TextButton")
local desc = Instance.new("Frame")
local descri = Instance.new("TextLabel")
local title_3 = Instance.new("TextLabel")
local execute_2 = Instance.new("TextButton")
local close = Instance.new("TextButton")
local title_4 = Instance.new("ImageLabel")
local title_5 = Instance.new("TextLabel")
local title_6 = Instance.new("ImageLabel")
local synminbutt = Instance.new("ImageButton")
local synapsex3 = Instance.new("TextButton")
local Tabs = Instance.new("Folder")
local NewTab = Instance.new("TextButton")

local scriptselected = "none"
local injected = false

--Properties:

SynapseXreal.Name = "Synapse X"
SynapseXreal.Parent = game.CoreGui
SynapseXreal.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = SynapseXreal
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.0543109924, 0, 0.103222892, 0)
MainFrame.Size = UDim2.new(0, 689, 0, 320)
MainFrame.Visible = true

bar.Name = "bar"
bar.Parent = MainFrame
bar.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
bar.BackgroundTransparency = 0.800
bar.BorderSizePixel = 0
bar.Position = UDim2.new(-0, 0, -0.00296382909, 0)
bar.Size = UDim2.new(0, 689, 0, 25)

synminbutt.Name = "synminbutt"
synminbutt.Parent = SynapseXreal
synminbutt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
synminbutt.BackgroundTransparency = 1.000
synminbutt.Position = UDim2.new(0, 0, 0, 0)
synminbutt.Size = UDim2.new(0, 24, 0, 28)
synminbutt.Visible = false
synminbutt.ZIndex = 14
synminbutt.Image = "http://www.roblox.com/asset/?id=7641125882"
synminbutt.ImageRectSize = Vector2.new(138, 167)
synminbutt.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    synminbutt.Visible = false
end)

Close.Name = "Close"
Close.Parent = bar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(27, 42, 53)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.965521046, 0, 0.07, 0)
Close.Size = UDim2.new(0, 21, 0, 25)
Close.Font = Enum.Font.Arial
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
Close.MouseButton1Click:Connect(function()
    SynapseXreal:Destroy()
end)

Mini.Name = "Mini"
Mini.Parent = bar
Mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mini.BackgroundTransparency = 1.000
Mini.BorderColor3 = Color3.fromRGB(27, 42, 53)
Mini.BorderSizePixel = 0
Mini.Position = UDim2.new(0.905521046, 0, 0.01, 0)
Mini.Size = UDim2.new(0, 21, 0, 25)
Mini.Font = Enum.Font.Arial
Mini.Text = "_"
Mini.TextColor3 = Color3.fromRGB(255, 255, 255)
Mini.TextSize = 14.000
Mini.MouseButton1Click:Connect(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Synapse X";
        Text = "Synapse X minimized.";
        Duration = 2;
    })
    synminbutt.Visible = true
    MainFrame.Visible = false
end)

Min.Name = "Min"
Min.Parent = bar
Min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Min.BackgroundTransparency = 1.000
Min.BorderColor3 = Color3.fromRGB(27, 42, 53)
Min.BorderSizePixel = 0
Min.Position = UDim2.new(0.935521046, 0, 0.07, 0)
Min.Size = UDim2.new(0, 21, 0, 25)
Min.Font = Enum.Font.Arial
Min.Text = "M"
Min.TextColor3 = Color3.fromRGB(255, 255, 255)
Min.TextSize = 14.000
Min.MouseButton1Click:Connect(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Synapse X";
        Text = "Synapse X hide. Press F6 to back.";
        Duration = 2;
    })
    MainFrame.Visible = false
    synminbutt.Visible = false
end)

ImageLabel.Parent = MainFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0252733715, 0, 0.015625, 39)
ImageLabel.Size = UDim2.new(0, 541, 0, 232)

Tabs.Name = "Tabs"
Tabs.Parent = ImageLabel

NewTab.Name = "NewTab"
NewTab.Parent = Tabs
NewTab.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
NewTab.BorderSizePixel = 0
NewTab.Position = UDim2.new(0, 0, -0.0659999996, 0)
NewTab.Size = UDim2.new(0, 14, 0, 14)
NewTab.Font = Enum.Font.SourceSans
NewTab.Text = "+"
NewTab.TextColor3 = Color3.fromRGB(255, 255, 255)
NewTab.TextSize = 14.000

security.Name = "security"
security.Parent = ImageLabel
security.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
security.Size = UDim2.new(0, 552, 0, 258)
security.Visible = false
security.Font = Enum.Font.SourceSans
security.TextColor3 = Color3.fromRGB(0, 0, 0)
security.TextSize = 14.000

EditorFrame.Name = "EditorFrame"
EditorFrame.Parent = ImageLabel
EditorFrame.Active = true
EditorFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
EditorFrame.BackgroundTransparency = 1.000
EditorFrame.BorderColor3 = Color3.fromRGB(61, 61, 61)
EditorFrame.Size = UDim2.new(1, 0, 1, 0)
EditorFrame.ZIndex = 3
EditorFrame.BottomImage = "rbxassetid://148970562"
EditorFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
EditorFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
EditorFrame.MidImage = "rbxassetid://148970562"
EditorFrame.ScrollBarThickness = 5
EditorFrame.TopImage = "rbxassetid://148970562"
EditorFrame.BorderSizePixel = 0

Source.Name = "Source"
Source.Parent = EditorFrame
Source.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Source.BackgroundTransparency = 1.000
Source.Position = UDim2.new(0, 30, 0, 0)
Source.BorderSizePixel = 0
Source.Size = UDim2.new(0.945652187, 0, 1, 0)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.ShowNativeInput = false
Source.PlaceholderColor3 = Color3.fromRGB(204, 204, 2-4)
Source.Text = ""
Source.TextColor3 = Color3.fromRGB(204, 204, 204)
Source.TextSize = 15.000
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments_.Name = "Comments_"
Comments_.Parent = Source
Comments_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Comments_.BackgroundTransparency = 1.000
Comments_.Size = UDim2.new(1, 0, 1, 0)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.Code
Comments_.Text = ""
Comments_.TextColor3 = Color3.fromRGB(59, 200, 59)
Comments_.TextSize = 15.000
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = Source
Globals_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Globals_.BackgroundTransparency = 1.000
Globals_.Size = UDim2.new(1, 0, 1, 0)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.Code
Globals_.Text = ""
Globals_.TextColor3 = Color3.fromRGB(132, 214, 247)
Globals_.TextSize = 15.000
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = Source
Keywords_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keywords_.BackgroundTransparency = 1.000
Keywords_.Size = UDim2.new(1, 0, 1, 0)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.Code
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.fromRGB(248, 109, 124)
Keywords_.TextSize = 15.000
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = Source
RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoteHighlight_.BackgroundTransparency = 1.000
RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.Code
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.fromRGB(0, 144, 255)
RemoteHighlight_.TextSize = 15.000
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = Source
Strings_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Strings_.BackgroundTransparency = 1.000
Strings_.Size = UDim2.new(1, 0, 1, 0)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.Code
Strings_.Text = ""
Strings_.TextColor3 = Color3.fromRGB(173, 241, 149)
Strings_.TextSize = 15.000
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = Source
Tokens_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.BackgroundTransparency = 1.000
Tokens_.Size = UDim2.new(1, 0, 1, 0)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.Code
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.TextSize = 15.000
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

Numbers_.Name = "Numbers_"
Numbers_.Parent = Source
Numbers_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_.BackgroundTransparency = 1.000
Numbers_.Size = UDim2.new(1, 0, 1, 0)
Numbers_.ZIndex = 4
Numbers_.Font = Enum.Font.Code
Numbers_.Text = ""
Numbers_.TextColor3 = Color3.fromRGB(255, 198, 0)
Numbers_.TextSize = 15.000
Numbers_.TextXAlignment = Enum.TextXAlignment.Left
Numbers_.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = EditorFrame
Lines.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lines.BackgroundTransparency = 1.000
Lines.Size = UDim2.new(0, 30, 1, 0)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1"
Lines.TextColor3 = Color3.fromRGB(255, 255, 255)
Lines.TextSize = 15.000
Lines.TextYAlignment = Enum.TextYAlignment.Top

title.Name = "title"
title.Parent = MainFrame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.330062926, 0, 0.00625000056, 0)
title.Size = UDim2.new(0, 200, 0, 22)
title.Font = Enum.Font.SourceSans
title.Text = "Synapse X - vRBX (Modded by CremiWorld)"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16.000

list.Name = "list"
list.Parent = MainFrame
list.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
list.BorderSizePixel = 0
list.Position = UDim2.new(0.820970535, 0, 0.100000001, 0)
list.Size = UDim2.new(0, 114, 0, 246)

execute.Name = "execute"
execute.Parent = MainFrame
execute.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
execute.BackgroundTransparency = 0.800
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.0095389355, 0, 0.887499988, 0)
execute.Size = UDim2.new(0, 92, 0, 30)
execute.Font = Enum.Font.Arial
execute.Text = "Execute"
execute.TextColor3 = Color3.fromRGB(255, 255, 255)
execute.TextSize = 14.000
execute.MouseButton1Click:Connect(function()
    if injected == true then
        loadstring(Source.Text)()
    end
    if injected == false then
        title.Text = "Synapse X - (Not injected! Press attach)"
    end
end)

clear.Name = "clear"
clear.Parent = MainFrame
clear.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
clear.BackgroundTransparency = 0.800
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.154146105, 0, 0.887499988, 0)
clear.Size = UDim2.new(0, 84, 0, 30)
clear.Font = Enum.Font.Arial
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextSize = 14.000
clear.MouseButton1Click:Connect(function()
    Source.Text = ""
end)

options.Name = "options"
options.Parent = MainFrame
options.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
options.BackgroundTransparency = 0.800
options.BorderSizePixel = 0
options.Position = UDim2.new(0.285157200, 0, 0.887499988, 0)
options.Size = UDim2.new(0, 84, 0, 30)
options.Font = Enum.Font.Arial
options.Text = "Options"
options.TextColor3 = Color3.fromRGB(255, 255, 255)
options.TextSize = 14.000
options.MouseButton1Click:Connect(function()
    if optionspage.Visible == true then
        optionspage.Visible = false
    elseif optionspage.Visible == false then
        optionspage.Visible = true
    end
end)

scripthub.Name = "scripthub"
scripthub.Parent = MainFrame
scripthub.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
scripthub.BackgroundTransparency = 0.800
scripthub.BorderSizePixel = 0
scripthub.Position = UDim2.new(0.871768773, 0, 0.887499988, 0)
scripthub.Size = UDim2.new(0, 79, 0, 30)
scripthub.Font = Enum.Font.Arial
scripthub.Text = "Script Hub"
scripthub.TextColor3 = Color3.fromRGB(255, 255, 255)
scripthub.TextSize = 14.000
scripthub.MouseButton1Click:Connect(function()
    if scripthub_2.Visible == true then
        scripthub_2.Visible = false
    elseif scripthub_2.Visible == false then
        scripthub_2.Visible = true
    end
end)

Attach.Name = "Attach"
Attach.Parent = MainFrame
Attach.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Attach.BackgroundTransparency = 0.800
Attach.BorderSizePixel = 0
Attach.Position = UDim2.new(0.741144657, 0, 0.887499988, 0)
Attach.Size = UDim2.new(0, 84, 0, 30)
Attach.Font = Enum.Font.Arial
Attach.Text = "Attach"
Attach.TextColor3 = Color3.fromRGB(255, 255, 255)
Attach.TextSize = 14.000
Attach.MouseButton1Click:Connect(function()
    if injected == true then
        title.Text = "Synapse X - (Already injected!)"
        wait(1)
        title.Text = "Synapse X - vRBX (Modded by CremiWorld)"
    end
    if injected == false then
        title.Text = "Synapse X - (Checking...)"
        wait(0.1)
        title.Text = "Synapse X - (Injecting...)"
        wait(1.5)
        title.Text = "Synapse X - (Checking Whitelist...)"
        wait(0.8)
        title.Text = "Synapse X - (Scanning...)"
        wait(0.3)
        title.Text = "Synapse X - (Ready!)"
        wait(0.5)
        title.Text = "Synapse X - vRBX (Modded by CremiWorld)"
        injected = true
    end
end)

title_2.Name = "title"
title_2.Parent = MainFrame
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.Position = UDim2.new(0.00870821718, 0, 0, 0)
title_2.Size = UDim2.new(0, 18, 0, 24)
title_2.ZIndex = 14
title_2.Image = "http://www.roblox.com/asset/?id=7641125882"
title_2.ImageRectSize = Vector2.new(138, 167)

scripthub_2.Name = "scripthub"
scripthub_2.Parent = SynapseXreal
scripthub_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
scripthub_2.BorderSizePixel = 0
scripthub_2.Position = UDim2.new(0.433135211, 0, 0.502979755, 0)
scripthub_2.Size = UDim2.new(0, 290, 0, 305)
scripthub_2.Visible = false
scripthub_2.ZIndex = 100

optionspage.Name = "optionspage"
optionspage.Parent = SynapseXreal
optionspage.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
optionspage.BorderSizePixel = 0
optionspage.Position = UDim2.new(0.433135211, 0, 0.502979755, 0)
optionspage.Size = UDim2.new(0, 290, 0, 305)
optionspage.Visible = false
optionspage.ZIndex = 100

bar_2.Name = "bar"
bar_2.Parent = scripthub_2
bar_2.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
bar_2.BackgroundTransparency = 0.800
bar_2.BorderSizePixel = 0
bar_2.Position = UDim2.new(0, 0, -0.0029638072, 0)
bar_2.Size = UDim2.new(0, 290, 0, 25)

select.Name = "select"
select.Parent = scripthub_2
select.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
select.BorderSizePixel = 0
select.Position = UDim2.new(0.0299979374, 0, 0.104918033, 0)
select.Size = UDim2.new(0, 82, 0, 264)
select.ZIndex = 110

dex.Name = "dex"
dex.Parent = select
dex.BackgroundColor3 = Color3.fromRGB(0, 32, 61)
dex.BackgroundTransparency = 1.000
dex.BorderColor3 = Color3.fromRGB(0, 0, 49)
dex.BorderSizePixel = 0
dex.Position = UDim2.new(0.0121960752, 0, -1.49011612e-08, 0)
dex.Size = UDim2.new(0, 80, 0, 18)
dex.Font = Enum.Font.SourceSans
dex.Text = " Dark Dex"
dex.TextColor3 = Color3.fromRGB(255, 255, 255)
dex.TextSize = 14.000
dex.TextXAlignment = Enum.TextXAlignment.Left
dex.ZIndex = 110
dex.MouseButton1Click:Connect(function()
    scriptselected = "dex"
end)

esp.Name = "esp"
esp.Parent = select
esp.BackgroundColor3 = Color3.fromRGB(0, 32, 61)
esp.BackgroundTransparency = 1.000
esp.BorderColor3 = Color3.fromRGB(0, 0, 49)
esp.BorderSizePixel = 0
esp.Position = UDim2.new(0.0121960752, 0, 0.0681818053, 0)
esp.Size = UDim2.new(0, 80, 0, 18)
esp.Font = Enum.Font.SourceSans
esp.Text = " Unnamed ESP"
esp.TextColor3 = Color3.fromRGB(255, 255, 255)
esp.TextSize = 14.000
esp.TextXAlignment = Enum.TextXAlignment.Left
esp.ZIndex = 110
esp.MouseButton1Click:Connect(function()
    scriptselected = "esp"
end)

spy.Name = "spy"
spy.Parent = select
spy.BackgroundColor3 = Color3.fromRGB(0, 32, 61)
spy.BackgroundTransparency = 1.000
spy.BorderColor3 = Color3.fromRGB(0, 0, 49)
spy.BorderSizePixel = 0
spy.Position = UDim2.new(0.0121960752, 0, 0.136363626, 0)
spy.Size = UDim2.new(0, 80, 0, 18)
spy.Font = Enum.Font.SourceSans
spy.Text = " Remote Spy"
spy.TextColor3 = Color3.fromRGB(255, 255, 255)
spy.TextSize = 14.000
spy.TextXAlignment = Enum.TextXAlignment.Left
spy.ZIndex = 110
spy.MouseButton1Click:Connect(function()
    scriptselected = "spy"
end)

dumper.Name = "dumper"
dumper.Parent = select
dumper.BackgroundColor3 = Color3.fromRGB(0, 32, 61)
dumper.BackgroundTransparency = 1.000
dumper.BorderColor3 = Color3.fromRGB(0, 0, 49)
dumper.BorderSizePixel = 0
dumper.Position = UDim2.new(0.0121960752, 0, 0.204545438, 0)
dumper.Size = UDim2.new(0, 80, 0, 18)
dumper.Font = Enum.Font.SourceSans
dumper.Text = " SaveInstance"
dumper.TextColor3 = Color3.fromRGB(255, 255, 255)
dumper.TextSize = 14.000
dumper.TextXAlignment = Enum.TextXAlignment.Left
dumper.ZIndex = 110
dumper.MouseButton1Click:Connect(function()
    scriptselected = "dumper"
end)

backdoor.Name = "backdoor"
backdoor.Parent = select
backdoor.BackgroundColor3 = Color3.fromRGB(0, 32, 61)
backdoor.BackgroundTransparency = 1.000
backdoor.BorderColor3 = Color3.fromRGB(0, 0, 49)
backdoor.BorderSizePixel = 0
backdoor.Position = UDim2.new(0.0121960752, 0, 0.274545438, 0)
backdoor.Size = UDim2.new(0, 80, 0, 18)
backdoor.Font = Enum.Font.SourceSans
backdoor.Text = " backdoor.exe"
backdoor.TextColor3 = Color3.fromRGB(255, 255, 255)
backdoor.TextSize = 14.000
backdoor.TextXAlignment = Enum.TextXAlignment.Left
backdoor.ZIndex = 110
backdoor.MouseButton1Click:Connect(function()
    scriptselected = "backdoor"
end)

desc.Name = "desc"
desc.Parent = scripthub_2
desc.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
desc.BorderSizePixel = 0
desc.Position = UDim2.new(0.340342641, 0, 0.613114715, 0)
desc.Size = UDim2.new(0, 184, 0, 69)
desc.ZIndex = 110

descri.Name = "descri"
descri.Parent = desc
descri.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
descri.BackgroundTransparency = 1.000
descri.BorderSizePixel = 0
descri.Position = UDim2.new(0.0112334546, 0, 0, 0)
descri.Size = UDim2.new(0, 181, 0, 69)
descri.Font = Enum.Font.SourceSans
descri.Text = ""
descri.TextColor3 = Color3.fromRGB(255, 255, 255)
descri.TextSize = 15.000
descri.TextWrapped = true
descri.TextXAlignment = Enum.TextXAlignment.Left
descri.TextYAlignment = Enum.TextYAlignment.Top
descri.ZIndex = 125

title_3.Name = "title"
title_3.Parent = scripthub_2
title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_3.BackgroundTransparency = 1.000
title_3.Position = UDim2.new(0.161097407, 0, -0.000307376496, 0)
title_3.Size = UDim2.new(0, 200, 0, 22)
title_3.Font = Enum.Font.SourceSans
title_3.Text = "Synapse X - Script Hub"
title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
title_3.TextSize = 16.000
title_3.ZIndex = 110

execute_2.Name = "execute"
execute_2.Parent = scripthub_2
execute_2.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
execute_2.BackgroundTransparency = 0.800
execute_2.BorderSizePixel = 0
execute_2.Position = UDim2.new(0.34057343, 0, 0.871106505, 0)
execute_2.Size = UDim2.new(0, 92, 0, 30)
execute_2.Font = Enum.Font.Arial
execute_2.Text = "Execute"
execute_2.TextColor3 = Color3.fromRGB(255, 255, 255)
execute_2.TextSize = 14.000
execute_2.ZIndex = 110
execute_2.MouseButton1Click:Connect(function()
    if injected == true then
        if scriptselected == "dex" then
            loadstring(game:HttpGet("https://pastebin.com/raw/J8AX35Fg"))()
        end
        if scriptselected == "spy" then
            loadstring(game:HttpGet('https://pastebin.com/raw/JZaJe9Sg'))()
        end
        if scriptselected == "dumper" then
            saveinstance()
        end
        if scriptselected == "esp" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
        end
        if scriptselected == "backdoor" then
        	loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua"))()
        end
        if scriptselected == "none" then
        end
    end
    if injected == false then
        execute_2.Text = "Not Attached!"
        wait(1)
        execute_2.Text = "Execute"
    end
end)

close.Name = "close"
close.Parent = scripthub_2
close.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
close.BackgroundTransparency = 0.800
close.BorderSizePixel = 0
close.Position = UDim2.new(0.685180664, 0, 0.871106505, 0)
close.Size = UDim2.new(0, 84, 0, 30)
close.Font = Enum.Font.Arial
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 14.000
close.ZIndex = 110
close.MouseButton1Click:Connect(function()
    scriptselected = "none"
    scripthub_2.Visible = false
end)

title_4.Name = "title"
title_4.Parent = scripthub_2
title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_4.BackgroundTransparency = 1.000
title_4.Position = UDim2.new(0.00870821718, 0, 0, 0)
title_4.Size = UDim2.new(0, 18, 0, 24)
title_4.ZIndex = 110
title_4.Image = "http://www.roblox.com/asset/?id=7641125882"
title_4.ImageRectSize = Vector2.new(138, 167)

title_5.Name = "title"
title_5.Parent = optionspage
title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_5.BackgroundTransparency = 1.000
title_5.Position = UDim2.new(0.161097407, 0, -0.000307376496, 0)
title_5.Size = UDim2.new(0, 200, 0, 22)
title_5.Font = Enum.Font.SourceSans
title_5.Text = "Synapse X - Options Menu"
title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
title_5.TextSize = 16.000
title_5.ZIndex = 110

title_6.Name = "title"
title_6.Parent = optionspage
title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_6.BackgroundTransparency = 1.000
title_6.Position = UDim2.new(0.00870821718, 0, 0, 0)
title_6.Size = UDim2.new(0, 18, 0, 24)
title_6.ZIndex = 110
title_6.Image = "http://www.roblox.com/asset/?id=7641125882"
title_6.ImageRectSize = Vector2.new(138, 167)

synapsex3.Name = "synapsex3"
synapsex3.Parent = optionspage
synapsex3.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
synapsex3.BackgroundTransparency = 0.800
synapsex3.BorderSizePixel = 0
synapsex3.Position = UDim2.new(0.30757343, 0, 0.391106505, 0)
synapsex3.Size = UDim2.new(0, 123, 0, 30)
synapsex3.Font = Enum.Font.Arial
synapsex3.Text = "Synapse X v3"
synapsex3.TextColor3 = Color3.fromRGB(255, 255, 255)
synapsex3.TextSize = 14.000
synapsex3.ZIndex = 110
synapsex3.MouseButton1Click:Connect(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Synapse X";
        Text = "Synapse X v3 coming soon.";
        Duration = 1;
    })
    synapsex3.Text = "Coming soon."
    wait(1)
    synapsex3.Text = "Synapse X v3"
end)

-- Scripts:

game:GetService("UserInputService").InputBegan:Connect(function (input)
    if MainFrame.Visible == false and synminbutt.Visible == false then
        if (input.KeyCode == Enum.KeyCode.F6) then
            MainFrame.Visible = not MainFrame.Visible
        end
    end
end)

local function SYHNK_fake_script() -- ImageLabel.LocalScript 
    local script = Instance.new('LocalScript', ImageLabel)
    local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
    local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}
    local Source = script.Parent.EditorFrame.Source
    local scrollframe = script.Parent.EditorFrame
    local Lines = Source.Parent.Lines
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
    local numbers = function(string)
        local A = ""
        string:gsub(".", function(c)
            if tonumber(c) ~= nil then
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
    local highlight_source = function(type)
        if type == "Text" then
            Source.Text = Source.Text:gsub("\13", "")
            Source.Text = Source.Text:gsub("\t", "      ")
            local s = Source.Text
            Source.Keywords_.Text = Highlight(s, lua_keywords)
            Source.Globals_.Text = Highlight(s, global_env)
            Source.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
            Source.Tokens_.Text = hTokens(s)
            Source.Numbers_.Text = numbers(s)
            Source.Strings_.Text = strings(s)
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
    Source.Changed:Connect(highlight_source)
    Source:GetPropertyChangedSignal("Text"):Connect(function()
        local count = 1

        Source.Text:gsub("\n", function()
			count = count + 1
		end)
        scrollframe.CanvasSize = UDim2.new(0, 1500, count/16.6, 0)
        Source.Size = UDim2.new(0, 598, 0, 249 + (count > 16 and 16*(count-16) or 0))
    end)
end
coroutine.wrap(SYHNK_fake_script)()
local function AMNA_fake_script() -- MainFrame.Dragging 
    local script = Instance.new('LocalScript', MainFrame)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(AMNA_fake_script)()
local function VEUJFP_fake_script() -- scripthub_2.Dragging 
    local script = Instance.new('LocalScript', scripthub_2)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(VEUJFP_fake_script)()
local function AKJCSK_fake_script() -- optionspage.Dragging 
    local script = Instance.new('LocalScript', optionspage)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(AKJCSK_fake_script)()
local function VJHASD_fake_script() -- synminbutt.Dragging 
    local script = Instance.new('LocalScript', synminbutt)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(VJHASD_fake_script)()
local function QQFYV_fake_script() -- tabs.Tabs 
    local script = Instance.new("LocalScript", Tabs)

    local currentTab

    local function getTabs()
		local tabs = {}
		for _, v in pairs(script.Parent:GetChildren()) do
			if v.Name:match("Tab_%d+") then
				tabs[#tabs + 1] = v
			end
		end
		return tabs
	end

    local function showTab(tab)
        currentTab = tab
        if not tab then
            script.Parent.Parent.EditorFrame.Source.Text = ""
            return
        end
        tab.ScriptTitle.Size = UDim2.new(0,55,0,19)
        tab.ScriptTitle.Position = UDim2.new(tab.ScriptTitle.Position.X.Scale, 0, -0.074, 0)
		tab.RemoveTab.Size = UDim2.new(0, 19, 0, 19)
		tab.RemoveTab.Position = UDim2.new(tab.RemoveTab.Position.X.Scale, 0, -0.074, 0)
    
        script.Parent.Parent.EditorFrame.Source.Text = tostring(tab.Script.Value)
        for i, v in pairs(getTabs()) do
            if v ~= currentTab then
                v.ScriptTitle.Size = UDim2.new(0, 45, 0, 17)
                v.ScriptTitle.Position = UDim2.new(v.ScriptTitle.Position.X.Scale, 0, -0.066, 0)
				v.RemoveTab.Size = UDim2.new(0, 24, 0, 17)
				v.RemoveTab.Position = UDim2.new(v.RemoveTab.Position.X.Scale, 0, -0.066, 0)
            end
        end
    end
    local function removeTab(tab)
        local tabs = getTabs()
		local idx = 0
		for i = 1, #tabs do
			if tabs[i] == tab then
				idx = i
				tabs[i]:Destroy()
				table.remove(tabs, i)
			end
		end
	
		local lastTab do
			if #tabs > 0 then
				lastTab = tabs[#tabs]
			end
		end
	
		for i, v in pairs(tabs) do
			v.ScriptTitle.Position = tabs[i - 1] and UDim2.new(tabs[i - 1].ScriptTitle.Position.X.Scale + 0.103, 0, -0.074, 0) or UDim2.new(0, 0, -0.074, 0)
			v.RemoveTab.Position = UDim2.new(v.ScriptTitle.Position.X.Scale + 0.067, 0, -0.074, 0)
		end
	
		script.Parent.NewTab.Position = lastTab and lastTab.RemoveTab.Position + UDim2.new(0.046, 0, 0.008, 0) or UDim2.new(0, 0, -0.066, 0)
		showTab(currentTab ~= tab and currentTab or tabs[idx] or tabs[idx - 1])
    end

    local function newTab()
		local tabs = getTabs()
		local tab = Instance.new("Folder", script.Parent)
		local titlescript = Instance.new("TextButton", tab)
		local remove = Instance.new("TextButton", tab)
		local tabScript = Instance.new("StringValue", tab)
		local lastTab do
			if #tabs > 0 then
				lastTab = tabs[#tabs]
			end
		end
	
		tab.Name = ("Tab_%d"):format(#tabs + 1)
	
		titlescript.Name = "ScriptTitle"
		titlescript.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
		titlescript.BorderSizePixel = 0
		titlescript.Position = lastTab and UDim2.new(lastTab.ScriptTitle.Position.X.Scale + 0.103, 0, -0.074, 0) or UDim2.new(0, 0, -0.074, 0)
		titlescript.Size = UDim2.new(0, 44,0, 19)
		titlescript.Font = Enum.Font.SourceSans
		titlescript.TextColor3 = Color3.fromRGB(255, 255, 255)
		titlescript.TextSize = 15
		titlescript.Text = ("Script %d"):format(#tabs + 1)
	
		remove.Name = "RemoveTab"
		remove.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
		remove.BorderSizePixel = 0
		remove.Position = UDim2.new(titlescript.Position.X.Scale + 0.067, 0, -0.074, 0)
		remove.Size = UDim2.new(0, 24, 0, 19)
		remove.Font = Enum.Font.SourceSans
		remove.TextColor3 = Color3.fromRGB(255, 255, 255)
		remove.TextSize = 14
		remove.Text = "x"
	
		tabScript.Name = "Script"
	
		script.Parent.NewTab.Position = remove.Position + UDim2.new(0.046, 0, 0.008, 0)
		
		showTab(tab)
	
		titlescript.MouseButton1Click:Connect(function()
			showTab(tab)
		end)
		remove.MouseButton1Click:Connect(function()
			removeTab(tab)
		end)
		
		return tab
	end

    currenTab = newTab()

    showTab(currentTab)

    script.Parent.NewTab.MouseButton1Click:Connect(function()
		newTab()
	end)
	
	script.Parent.Parent.EditorFrame.Source:GetPropertyChangedSignal("Text"):Connect(function()
		currentTab.Script.Value = script.Parent.Parent.EditorFrame.Source.Text
	end)
end
coroutine.wrap(QQFYV_fake_script)()
while true do
    wait(0.01)
    if scripthub_2.Visible == true then
        if scriptselected == "none" then
            descri.Text = ""
        end
        if scriptselected == "dex" then
            descri.Text = "A version of the popular Dex explorer with patches specifically for Synapse X."
        end
        if scriptselected == "esp" then
            descri.Text = "ESP Made by ic3w0lf using the Drawing API."
        end
        if scriptselected == "spy" then
            descri.Text = "Allows you to view RemoteEvents and RemoteFunctions called."
        end
        if scriptselected == "dumper" then
            descri.Text = "Dumps the place as a .rbxl file in your workspace folder."
        end
        if scriptselected == "backdoor" then
        	descri.Text = "backdoor.exe for scan place to FE access (Only place ban possible)."
        end
    end
end