if game:GetService("CoreGui"):FindFirstChild("BrickAdminGUI") then
game:GetService("CoreGui"):FindFirstChild("BrickAdminGUI"):Destroy()
end
local startuptime = tick()

--[[Functions]]
local function GetService(a)
return game:GetService(a)
end
local function findPlayer(arg1)
    local cPlayers = game:GetService("Players")
    arg1 = arg1:lower()

    if arg1 == "random" then
        local players = cPlayers:GetPlayers()
        return players[math.random(1, #players)]
    elseif arg1 == "me" then
        return cPlayers.LocalPlayer
    end
    for _, plr in ipairs(cPlayers:GetPlayers()) do
        local nameLower = plr.Name:lower()
        local displayNameLower = plr.DisplayName:lower()

        if nameLower:sub(1, #arg1) == arg1 or displayNameLower:sub(1, #arg1) == arg1 then
            return plr
        end
    end

    return nil
end

--[[Services]]
local ReplicatedStorage = GetService("ReplicatedStorage")
local players = GetService("Players")
local TextChatService = GetService("TextChatService")
local RunService = GetService("RunService")
local MarketplaceService = GetService("MarketplaceService")
local Workspace = GetService("Workspace")

if ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
clientEvent = ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent
end
local msgrec = TextChatService.MessageReceived
if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
chatMethod = 2
elseif TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
chatMethod = 1
end

local function chat(msg, channel)
if chatMethod == 1 then
  if not channel then
  channel = "All"
  end
  if channel == "RBXGeneral" then
  channel = "All"
  end
  ReplicatedStorage:FindFirstChild("DefaultChatSystemEvents").SayMessageRequest:FireServer(msg, channel)
  elseif chatMethod == 2 then
  if not channel then
  channel = "RBXGeneral"
  end
  if channel == "All" then
  channel = "RBXGeneral"
  end
    TextChatService.TextChannels:FindFirstChild(channel):SendAsync(msg)
  end
end

if isfile("BrickAdmin/Settings/News") then
news = readfile("BrickAdmin/Settings/News")
else
writefile("BrickAdmin/Settings/News", tostring(true))
news = "true"
end
if isfile("BrickAdmin/Settings/Ext") then
IES = readfile("BrickAdmin/Settings/Ext")
else
writefile("BrickAdmin/Settings/Ext",tostring(true))
IES = "true"
end
if isfile("BrickAdmin/Settings/Plr") then
plrnameshows = readfile("BrickAdmin/Settings/Plr")
else
writefile("BrickAdmin/Settings/Plr",tostring(true))
plrnameshows = "true"
end
if isfile("BrickAdmin/Settings/SRF") then
SRF = readfile("BrickAdmin/Settings/SRF")
else
writefile("BrickAdmin/Settings/SRF",tostring(true))
SRF = "true"
end
if isfile("BrickAdmin/Settings/AV") then
AV = readfile("BrickAdmin/Settings/AV")
else
writefile("BrickAdmin/Settings/AV",tostring(true))
AV = "true"
end
if isfile("BrickAdmin/Settings/RP") then
RP = readfile("BrickAdmin/Settings/RP")
else
writefile("BrickAdmin/Settings/RP",tostring(true))
RP = "true"
end
if isfile("BrickAdmin/Settings/Antikick") then
AK = readfile("BrickAdmin/Settings/AK")
else
writefile("BrickAdmin/Settings/AK",tostring(true))
AK = "true"
end
if isfile("BrickAdmin/Favorites") then
  favorites = readfile("BrickAdmin/Favorites")
else
  favorites = "No favorited commands."
  writefile("BrickAdmin/Favorites", favorites)
end

--[[Variables]]
local date = os.date("*t")
local dat = date.day.."/"..date.month.."/"..date.year.." "..date.hour..":"..date.min
local player = players.LocalPlayer
local character = player["Character"]
local humanoid = character:FindFirstChild("Humanoid")
local rootpart = character:FindFirstChild("HumanoidRootPart")
GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
players = GetService("Players")
player = players.LocalPlayer
character = player["Character"]
humanoid = character:FindFirstChild("Humanoid")
rootpart = character:FindFirstChild("HumanoidRootPart")
  end)
local chatlog = ""
local isFloat = false
local isSit = false
local isTp = false
local isSpin = false
local isSpam = false
local lastPlr = nil

local function spinCharacter(speed)
  
    while isSpin do
        local deltaTime = task.wait(1/60) -- 60 FPS
        
        local currentRotation = rootpart.Orientation
        local newYRotation = currentRotation.Y + (speed * deltaTime)
        rootpart.CFrame = CFrame.new(rootpart.Position) * CFrame.Angles(0, math.rad(newYRotation), 0)
    end
end

local rl = {
  "Is your name Google? Because you've got everything I've been searching for",
  "Are you a magician? Whenever I look at you, everyone else disappears",
  "Do you have a name, or can I call you mine?",
  "Are you a parking ticket? Because you've got 'FINE' written all over you",
  "Can I follow you home? Cause my parents always told me to follow my dreams",
  "If you were a vegetable, you'd be a 'cute-cumber.'",
  "Do you have a map? I keep getting lost in your eyes",
  "If you were a fruit, you'd be a 'fine-apple.'",
  "Do you have a name, or can I call you mine?",
}
--[[Number Variables]]
local extensions = 0
local i = 1
local xz = 1
local oldGravity = Workspace.Gravity

local function antiVoid(state)
GetService("RunService").Heartbeat:Connect(function()
task.wait(2)
if state == "true" or state == true then
Workspace.FallenPartsDestroyHeight = "nan"
if rootpart.CFrame.Y < -500 then
repeat rootpart.CFrame += Vector3.new(0, 100, 0) until rootpart.CFrame.Y > 5
end
    elseif state == "false" or state == false then
      Workspace.FallenPartsDestroyHeight = -500
    end
    end)
end
--[[File stuff]]
if isfolder("BrickAdmin/Extensions") then
local files = listfiles("BrickAdmin/Extensions")

if files ~= nil and files ~= "" then
    for _, file in ipairs(files) do
       if isfile(file) then
        local content = readfile(file)
        if content ~= nil then
                extensions+=1
        end
    end
end
end
end
local setclipboard = setclipboard or toclipboard
if not isfolder("BrickAdmin") then
makefolder("BrickAdmin")
makefolder("BrickAdmin/Extensions")
makefolder("BrickAdmin/Chatlogs")
makefolder("BrickAdmin/Scripts")
makefolder("BrickAdmin/Settings")
makefolder("BrickAdmin/Runs")
makefolder("BrickAdmin/ExtensionErrors")
end
if not isfolder("BrickAdmin/Runs") then
makefolder("BrickAdmin/Runs")
end
if not isfolder("BrickAdmin/Settings") then
makefolder("BrickAdmin/Settings")
end
if not isfolder("BrickAdmin/Extensions") then
makefolder("BrickAdmin/Extensions")
end
if not isfolder("BrickAdmin/Chatlogs") then
makefolder("BrickAdmin/Chatlogs")
end
if not isfolder("BrickAdmin/Scripts") then
makefolder("BrickAdmin/Scripts")
end
if not isfolder("BrickAdmin/ExtensionErrors") then
makefolder("BrickAdmin/ExtensionErrors")
end
if not isfile("BrickAdmin/Prefix") then
prefix = ";"
writefile("BrickAdmin/Prefix", ";")
else
prefix = readfile("BrickAdmin/Prefix"):sub(1, 1)
end

local function isTextObj(obj)
if obj:IsA("TextBox") or obj:IsA("TextLabel") or obj:IsA("TextButton") then
return true
else
return false
end
end
local function canBeVisible(obj)
if not obj:IsA("UIListLayout") and not obj:IsA("UICorner") and not obj:IsA("UIGradient") then
return true
else
return false
end
end

local BrickAdminGUI = Instance.new("ScreenGui")
local MainUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CurrentExecutor = Instance.new("TextLabel")
local Username = Instance.new("TextLabel")
local TabsFrame = Instance.new("ScrollingFrame")
local HomeButton = Instance.new("ImageButton")
local TabsLayout = Instance.new("UIListLayout")
local ConsoleButton = Instance.new("ImageButton")
local SHButton = Instance.new("ImageButton")
local ChatButton = Instance.new("ImageButton")
local SettingsButton = Instance.new("ImageButton")
local ExtensionsButton = Instance.new("ImageButton")
local InfoFrame = Instance.new("ScrollingFrame")
local Extensions = Instance.new("TextLabel")
local News = Instance.new("TextLabel")
local NewsText = Instance.new("TextLabel")
local InfoLayout = Instance.new("UIListLayout")
local TitleThing = Instance.new("TextLabel")
local SHTab = Instance.new("Folder")
local SHFrame = Instance.new("ScrollingFrame")
local ScriptsLayout = Instance.new("UIListLayout")
local SaveScript = Instance.new("ImageButton")
local ScriptNameBox = Instance.new("TextBox")
local ScriptCodeBox = Instance.new("TextBox")
local AddScript = Instance.new("ImageButton")
local ConsoleTab = Instance.new("Folder")
local MessagesFrame = Instance.new("ScrollingFrame")
local MessagesLayout = Instance.new("UIListLayout")
local textBox = Instance.new("TextBox")
local ChatTab = Instance.new("Folder")
local DownloadCL = Instance.new("TextLabel")
local DownloadLogs = Instance.new("ImageButton")
local SendMsgToChat = Instance.new("TextBox")
local SettingsTab = Instance.new("Folder")
local SettingsFrame = Instance.new("ScrollingFrame")
local Setting1 = Instance.new("TextButton")
local SettingsLayout = Instance.new("UIListLayout")
local Setting2 = Instance.new("TextButton")
local Setting3 = Instance.new("TextButton")
local Setting4 = Instance.new("TextButton")
local Setting5 = Instance.new("TextButton")
local Setting6 = Instance.new("TextButton")
local Setting7 = Instance.new("TextButton")
local ExtensionsTab = Instance.new("Folder")
local ExtFrame = Instance.new("ScrollingFrame")
local ExtensionsLayout = Instance.new("UIListLayout")
local ExtensionsList = Instance.new("TextLabel")

local function visChildren(child)
    for _, pp in ipairs(MainUI:GetDescendants()) do
        if not (pp:IsA("UICorner") or pp:IsA("UIListLayout") or pp:IsA("Folder") or pp.Parent == TabsFrame or pp == TabsFrame or pp == Username or pp == CurrentExecutor or pp == TitleThing) then
            pp.Visible = false
        end
    end

    for _, pp in ipairs(child:GetDescendants()) do
        if not (pp:IsA("UICorner") or pp:IsA("UIListLayout") or pp:IsA("Folder")) then
            pp.Visible = true
        end
    end
end
local function makemsg(text, parent, time)
  messageLabel = Instance.new("TextButton")
	messageLabel.Size = UDim2.new(0, 105, 0, 35)
	messageLabel.BackgroundTransparency = 1
	messageLabel.Text = text
	messageLabel.TextColor3 = Color3.fromRGB(255, 85, 85)

	messageLabel.TextScaled = true
	messageLabel.Font = Enum.Font.GothamBlack
	messageLabel.TextTransparency = 0
	messageLabel.TextWrapped = true
  if not parent then
	messageLabel.LayoutOrder = #MessagesFrame:GetChildren()
  messageLabel.Parent = MessagesFrame
  else
	messageLabel.Parent = parent
  messageLabel.LayoutOrder = #parent:GetChildren()
  end
	messageLabel.Name = "messageLabel"
	messageLabel.MouseButton1Click:Connect(function()
	setclipboard(tostring(text))
	end)
	if time then
	task.wait(time)
	messageLabel:Destroy()
	end
end
if RP == "true" then
hookfunction(print, newcclosure(function(r)
makemsg(r)
    end))
end
local function createScript(sn, data)
    local scriptname = Instance.new("TextLabel")
    local Execute = Instance.new("TextButton")
    local Delete = Instance.new("TextButton")
    scriptname.Name = "scriptname"..i
    scriptname.Parent = SHFrame
    scriptname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scriptname.BackgroundTransparency = 1.000
    scriptname.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scriptname.BorderSizePixel = 0
    scriptname.Position = UDim2.new(-0.145161286, 0, 0, 0)
    scriptname.Size = UDim2.new(0, 123, 0, 50)
    scriptname.Font = Enum.Font.GothamBlack
    scriptname.Text = sn
    scriptname.TextColor3 = Color3.fromRGB(85, 170, 255)
    scriptname.TextScaled = true
    scriptname.TextSize = 14.000
    scriptname.TextWrapped = true

    Execute.Name = "Execute"..i
    Execute.Parent = scriptname
    Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Execute.BackgroundTransparency = 1.000
    Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Execute.BorderSizePixel = 0
    Execute.Position = UDim2.new(0, 0, 0.680000007, 0)
    Execute.Size = UDim2.new(0, 51, 0, 44)
    Execute.Font = Enum.Font.GothamBlack
    Execute.Text = "Execute"
    Execute.TextColor3 = Color3.fromRGB(85, 255, 85)
    Execute.TextScaled = true
    Execute.TextSize = 14.000
    Execute.TextWrapped = true

    Delete.Name = "Delete"..i
    Delete.Parent = scriptname
    Delete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Delete.BackgroundTransparency = 1.000
    Delete.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Delete.BorderSizePixel = 0
    Delete.Position = UDim2.new(0.536585331, 0, 0.680000007, 0)
    Delete.Size = UDim2.new(0, 47, 0, 44)
    Delete.Font = Enum.Font.GothamBlack
    Delete.Text = "Delete"
    Delete.TextColor3 = Color3.fromRGB(255, 85, 85)
    Delete.TextScaled = true
    Delete.TextSize = 14.000
    Delete.TextWrapped = true
    Execute.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        loadstring(data)()
        end)
        if not success then
        print(result)
        end
    end)

    Delete.MouseButton1Click:Connect(function()
        scriptname:Destroy()
        delfile(sn)
    end)

    i = i + 1
end
if isfile("BrickAdmin/Prefix") then
prefix = readfile("BrickAdmin/Prefix")
else
  makemsg("Type in the textbox the prefix you want to use.", MessagesFrame)
end

BrickAdminGUI.Name = "BrickAdminGUI"
BrickAdminGUI.Parent = game:GetService("CoreGui")
BrickAdminGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainUI.Name = "MainUI"
MainUI.Parent = BrickAdminGUI
MainUI.BackgroundColor3 = Color3.fromRGB(69, 69, 69)
MainUI.BackgroundTransparency = 0.250
MainUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(0.372222245, 0, 0.170504987, 0)
MainUI.Size = UDim2.new(0, 276, 0, 198)
MainUI.Draggable = true
MainUI.Active = true

UICorner.Parent = MainUI

CurrentExecutor.Name = "CurrentExecutor"
CurrentExecutor.Parent = MainUI
CurrentExecutor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentExecutor.BackgroundTransparency = 1.000
CurrentExecutor.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentExecutor.BorderSizePixel = 0
CurrentExecutor.Position = UDim2.new(0.202898532, 0, 0.808080792, 0)
CurrentExecutor.Size = UDim2.new(0, 200, 0, 50)
CurrentExecutor.Font = Enum.Font.GothamBlack
CurrentExecutor.Text = identifyexecutor()
CurrentExecutor.TextColor3 = Color3.fromRGB(255, 85, 85)
CurrentExecutor.TextSize = 18.000

Username.Name = "Username"
Username.Parent = MainUI
Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Username.BackgroundTransparency = 1.000
Username.BorderColor3 = Color3.fromRGB(0, 0, 0)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.202898532, 0, 0, 0)
Username.Size = UDim2.new(0, 200, 0, 50)
Username.Font = Enum.Font.GothamBlack
Username.Text = player.Name
Username.TextColor3 = Color3.fromRGB(85, 85, 255)
Username.TextSize = 18.000

if plrnameshows == "false" then
Username.Visible = false
end

TabsFrame.Name = "TabsFrame"
TabsFrame.Parent = MainUI
TabsFrame.Active = true
TabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabsFrame.BackgroundTransparency = 1.000
TabsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabsFrame.BorderSizePixel = 0
TabsFrame.Size = UDim2.new(0, 63, 0, 198)
TabsFrame.CanvasSize = UDim2.new(0, 0, 1.29999995, 0)
TabsFrame.ScrollBarThickness = 0

HomeButton.Name = "HomeButton"
HomeButton.Parent = TabsFrame
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.BackgroundTransparency = 1.000
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.BorderSizePixel = 0
HomeButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
HomeButton.Size = UDim2.new(0, 35, 0, 35)
HomeButton.Image = "rbxassetid://14110397923"

TabsLayout.Name = "TabsLayout"
TabsLayout.Parent = TabsFrame
TabsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsLayout.Padding = UDim.new(0, 5)

ConsoleButton.Name = "ConsoleButton"
ConsoleButton.Parent = TabsFrame
ConsoleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleButton.BackgroundTransparency = 1.000
ConsoleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleButton.BorderSizePixel = 0
ConsoleButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
ConsoleButton.Size = UDim2.new(0, 35, 0, 35)
ConsoleButton.Image = "rbxassetid://14110366051"

SHButton.Name = "SHButton"
SHButton.Parent = TabsFrame
SHButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SHButton.BackgroundTransparency = 1.000
SHButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SHButton.BorderSizePixel = 0
SHButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
SHButton.Size = UDim2.new(0, 35, 0, 35)
SHButton.Image = "rbxassetid://14110380767"

ChatButton.Name = "ChatButton"
ChatButton.Parent = TabsFrame
ChatButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatButton.BackgroundTransparency = 1.000
ChatButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatButton.BorderSizePixel = 0
ChatButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
ChatButton.Size = UDim2.new(0, 35, 0, 35)
ChatButton.Image = "rbxassetid://14111101229"

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = TabsFrame
SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsButton.BackgroundTransparency = 1.000
SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.BorderSizePixel = 0
SettingsButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
SettingsButton.Size = UDim2.new(0, 35, 0, 35)
SettingsButton.Image = "rbxassetid://14111098899"

ExtensionsButton.Name = "ExtensionsButton"
ExtensionsButton.Parent = TabsFrame
ExtensionsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtensionsButton.BackgroundTransparency = 1.000
ExtensionsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExtensionsButton.BorderSizePixel = 0
ExtensionsButton.Position = UDim2.new(-0.0476190485, 0, 0, 0)
ExtensionsButton.Size = UDim2.new(0, 35, 0, 35)
ExtensionsButton.Image = "http://www.roblox.com/asset/?id=8898417863"

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = MainUI
InfoFrame.Active = true
InfoFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoFrame.BackgroundTransparency = 1.000
InfoFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfoFrame.BorderSizePixel = 0
InfoFrame.Position = UDim2.new(0.239130422, 0, 0.186868683, 0)
InfoFrame.Size = UDim2.new(0, 160, 0, 122)
InfoFrame.CanvasPosition = Vector2.new(0, 0)
InfoFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
InfoFrame.ScrollBarThickness = 7
InfoFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

Extensions.Name = "Extensions"
Extensions.Parent = InfoFrame
Extensions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Extensions.BackgroundTransparency = 1.000
Extensions.BorderColor3 = Color3.fromRGB(0, 0, 0)
Extensions.BorderSizePixel = 0
Extensions.Position = UDim2.new(0.0701086968, 0, 0, 0)
Extensions.Size = UDim2.new(0, 136, 0, 50)
Extensions.Font = Enum.Font.GothamBlack
if extensions == 0 then
Extensions.Text = "Installed Extensions: none"
else
Extensions.Text = "Installed Extensions: "..extensions
end
Extensions.TextColor3 = Color3.fromRGB(85, 85, 255)
Extensions.TextScaled = true
Extensions.TextSize = 1.000
Extensions.TextWrapped = true

if IES == "false" then
Extensions.Visible = false
end

News.Name = "News"
News.Parent = InfoFrame
News.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
News.BackgroundTransparency = 1.000
News.BorderColor3 = Color3.fromRGB(0, 0, 0)
News.BorderSizePixel = 0
News.Position = UDim2.new(-0.125, 0, 0.409836054, 0)
News.Size = UDim2.new(0, 200, 0, 23)
News.Font = Enum.Font.GothamBlack
News.Text = "--News--"
News.TextColor3 = Color3.fromRGB(255, 85, 85)
News.TextSize = 18.000

NewsText.Name = "NewsText"
NewsText.Parent = InfoFrame
NewsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NewsText.BackgroundTransparency = 1.000
NewsText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NewsText.BorderSizePixel = 0
NewsText.Position = UDim2.new(0.0281249993, 0, 0.462295294, 0)
NewsText.Size = UDim2.new(0, 151, 0, 75)
NewsText.Font = Enum.Font.GothamBlack
NewsText.Text = "19/7/2023: New UI, More executors support, Rewrote some code, More bug fixes, Less crashing."
NewsText.TextColor3 = Color3.fromRGB(255, 85, 85)
NewsText.TextScaled = true
NewsText.TextSize = 18.000
NewsText.TextWrapped = true

if news == "false" then
NewsText.Visible = false
News.Visible = false
end
InfoLayout.Name = "InfoLayout"
InfoLayout.Parent = InfoFrame
InfoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
InfoLayout.SortOrder = Enum.SortOrder.LayoutOrder

TitleThing.Name = "TitleThing"
TitleThing.Parent = MainUI
TitleThing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleThing.BackgroundTransparency = 1.000
TitleThing.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleThing.BorderSizePixel = 0
TitleThing.Position = UDim2.new(0.579710126, 0, 0.353535354, 0)
TitleThing.Rotation = 90.000
TitleThing.Size = UDim2.new(0, 184, 0, 50)
TitleThing.Font = Enum.Font.GothamBlack
TitleThing.Text = "{ Brick Admin }"
TitleThing.TextColor3 = Color3.fromRGB(170, 85, 127)
TitleThing.TextScaled = true
TitleThing.TextSize = 14.000
TitleThing.TextWrapped = true

SHTab.Name = "SHTab"
SHTab.Parent = MainUI

SHFrame.Name = "SHFrame"
SHFrame.Parent = SHTab
SHFrame.Active = true
SHFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SHFrame.BackgroundTransparency = 1.000
SHFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SHFrame.BorderSizePixel = 0
SHFrame.Position = UDim2.new(0.282608688, 0, 0.202020198, 0)
SHFrame.Size = UDim2.new(0, 155, 0, 101)
SHFrame.Visible = false
SHFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

ScriptsLayout.Name = "ScriptsLayout"
ScriptsLayout.Parent = SHFrame
ScriptsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ScriptsLayout.SortOrder = Enum.SortOrder.LayoutOrder

SaveScript.Name = "SaveScript"
SaveScript.Parent = SHTab
SaveScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveScript.BackgroundTransparency = 1.000
SaveScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveScript.BorderSizePixel = 0
SaveScript.Position = UDim2.new(0.5, 0, 0.74747473, 0)
SaveScript.Size = UDim2.new(0, 35, 0, 35)
SaveScript.Visible = false
SaveScript.Image = "rbxassetid://11419719540"

ScriptNameBox.Name = "ScriptNameBox"
ScriptNameBox.Parent = SHTab
ScriptNameBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptNameBox.BackgroundTransparency = 1.000
ScriptNameBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptNameBox.BorderSizePixel = 0
ScriptNameBox.Position = UDim2.new(0.318840593, 0, 0.202020198, 0)
ScriptNameBox.Size = UDim2.new(0, 138, 0, 35)
ScriptNameBox.Visible = false
ScriptNameBox.Font = Enum.Font.GothamBlack
ScriptNameBox.PlaceholderText = "Script name"
ScriptNameBox.Text = ""
ScriptNameBox.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptNameBox.TextScaled = true
ScriptNameBox.TextSize = 14.000
ScriptNameBox.TextWrapped = true

ScriptCodeBox.Name = "ScriptCodeBox"
ScriptCodeBox.Parent = SHTab
ScriptCodeBox.BackgroundColor3 = Color3.fromRGB(79, 82, 86)
ScriptCodeBox.BackgroundTransparency = 0.770
ScriptCodeBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptCodeBox.BorderSizePixel = 4
ScriptCodeBox.Position = UDim2.new(0.311594218, 0, 0.378787875, 0)
ScriptCodeBox.Size = UDim2.new(0, 138, 0, 73)
ScriptCodeBox.Visible = false
ScriptCodeBox.Font = Enum.Font.GothamBlack
ScriptCodeBox.PlaceholderText = "--[[ Code ]]"
ScriptCodeBox.Text = ""
ScriptCodeBox.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptCodeBox.TextSize = 18.000
ScriptCodeBox.TextWrapped = true

AddScript.Name = "AddScript"
AddScript.Parent = SHTab
AddScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddScript.BackgroundTransparency = 1.000
AddScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
AddScript.BorderSizePixel = 0
AddScript.Position = UDim2.new(0.5, 0, 0.661616147, 0)
AddScript.Size = UDim2.new(0, 35, 0, 35)
AddScript.Visible = false
AddScript.Image = "rbxassetid://11422150241"

ConsoleTab.Name = "ConsoleTab"
ConsoleTab.Parent = MainUI

MessagesFrame.Name = "MessagesFrame"
MessagesFrame.Parent = ConsoleTab
MessagesFrame.Active = true
MessagesFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MessagesFrame.BackgroundTransparency = 1.000
MessagesFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MessagesFrame.BorderSizePixel = 0
MessagesFrame.Position = UDim2.new(0.271739125, 0, 0.202020198, 0)
MessagesFrame.Size = UDim2.new(0, 161, 0, 120)
MessagesFrame.Visible = false
MessagesFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

MessagesLayout.Name = "MessagesLayout"
MessagesLayout.Parent = MessagesFrame
MessagesLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
MessagesLayout.SortOrder = Enum.SortOrder.LayoutOrder

textBox.Name = "textBox"
textBox.Parent = ConsoleTab
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundTransparency = 1.000
textBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
textBox.BorderSizePixel = 0
textBox.Position = UDim2.new(0.202898547, 0, 0.636363626, 0)
textBox.Size = UDim2.new(0, 200, 0, 44)
textBox.Visible = false
textBox.Font = Enum.Font.GothamBlack
textBox.PlaceholderText = "Type something.."
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(66, 156, 227)
textBox.TextSize = 14.000
textBox.ZIndex = 100

ChatTab.Name = "ChatTab"
ChatTab.Parent = MainUI

DownloadCL.Name = "DownloadCL"
DownloadCL.Parent = ChatTab
DownloadCL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DownloadCL.BackgroundTransparency = 1.000
DownloadCL.BorderColor3 = Color3.fromRGB(0, 0, 0)
DownloadCL.BorderSizePixel = 0
DownloadCL.Position = UDim2.new(0.282608688, 0, 0.202020198, 0)
DownloadCL.Size = UDim2.new(0, 156, 0, 26)
DownloadCL.Visible = false
DownloadCL.Font = Enum.Font.GothamBlack
DownloadCL.Text = "Download Chatlogs"
DownloadCL.TextColor3 = Color3.fromRGB(85, 255, 127)
DownloadCL.TextScaled = true
DownloadCL.TextSize = 14.000
DownloadCL.TextWrapped = true

DownloadLogs.Name = "DownloadLogs"
DownloadLogs.Parent = ChatTab
DownloadLogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DownloadLogs.BackgroundTransparency = 1.000
DownloadLogs.BorderColor3 = Color3.fromRGB(0, 0, 0)
DownloadLogs.BorderSizePixel = 0
DownloadLogs.Position = UDim2.new(0.474637687, 0, 0.333333343, 0)
DownloadLogs.Size = UDim2.new(0, 42, 0, 42)
DownloadLogs.Visible = false
DownloadLogs.Image = "http://www.roblox.com/asset/?id=14111103905"

SendMsgToChat.Name = "SendMsgToChat"
SendMsgToChat.Parent = ChatTab
SendMsgToChat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SendMsgToChat.BackgroundTransparency = 1.000
SendMsgToChat.BorderColor3 = Color3.fromRGB(0, 0, 0)
SendMsgToChat.BorderSizePixel = 0
SendMsgToChat.Position = UDim2.new(0.282608688, 0, 0.555555582, 0)
SendMsgToChat.Size = UDim2.new(0, 156, 0, 50)
SendMsgToChat.Visible = false
SendMsgToChat.Font = Enum.Font.GothamBlack
SendMsgToChat.PlaceholderText = "Send something.."
SendMsgToChat.Text = ""
SendMsgToChat.TextColor3 = Color3.fromRGB(255, 85, 127)
SendMsgToChat.TextSize = 14.000
SendMsgToChat.TextWrapped = true
SendMsgToChat.ClearTextOnFocus = false

SettingsTab.Name = "SettingsTab"
SettingsTab.Parent = MainUI

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = SettingsTab
SettingsFrame.Active = true
SettingsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsFrame.BackgroundTransparency = 1.000
SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsFrame.BorderSizePixel = 0
SettingsFrame.Position = UDim2.new(0.271739125, 0, 0.202020198, 0)
SettingsFrame.Size = UDim2.new(0, 157, 0, 120)
SettingsFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

Setting1.Name = "Setting1"
Setting1.Parent = SettingsFrame
Setting1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting1.BackgroundTransparency = 1.000
Setting1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting1.BorderSizePixel = 0
Setting1.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting1.Size = UDim2.new(0, 110, 0, 50)
Setting1.Visible = false
Setting1.Font = Enum.Font.GothamBlack
Setting1.Text = "News show in home: "..tostring(news)
Setting1.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting1.TextScaled = true
Setting1.TextSize = 14.000
Setting1.TextWrapped = true

SettingsLayout.Name = "SettingsLayout"
SettingsLayout.Parent = SettingsFrame
SettingsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SettingsLayout.SortOrder = Enum.SortOrder.LayoutOrder

Setting2.Name = "Setting2"
Setting2.Parent = SettingsFrame
Setting2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting2.BackgroundTransparency = 1.000
Setting2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting2.BorderSizePixel = 0
Setting2.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting2.Size = UDim2.new(0, 110, 0, 50)
Setting2.Visible = false
Setting2.Font = Enum.Font.GothamBlack
Setting2.Text = "Installed Extensions show in home: "..tostring(IES)
Setting2.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting2.TextScaled = true
Setting2.TextSize = 14.000
Setting2.TextWrapped = true

Setting3.Name = "Setting3"
Setting3.Parent = SettingsFrame
Setting3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting3.BackgroundTransparency = 1.000
Setting3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting3.BorderSizePixel = 0
Setting3.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting3.Size = UDim2.new(0, 110, 0, 50)
Setting3.Visible = false
Setting3.Font = Enum.Font.GothamBlack
Setting3.Text = "Player name shows: "..tostring(plrnameshows)
Setting3.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting3.TextScaled = true
Setting3.TextSize = 14.000
Setting3.TextWrapped = true

Setting4.Name = "Setting4"
Setting4.Parent = SettingsFrame
Setting4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting4.BackgroundTransparency = 1.000
Setting4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting4.BorderSizePixel = 0
Setting4.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting4.Size = UDim2.new(0, 110, 0, 50)
Setting4.Visible = false
Setting4.Font = Enum.Font.GothamBlack
Setting4.Text = "Save Run File: "..tostring(SRF)
Setting4.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting4.TextScaled = true
Setting4.TextSize = 14.000
Setting4.TextWrapped = true

Setting5.Name = "Setting5"
Setting5.Parent = SettingsFrame
Setting5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting5.BackgroundTransparency = 1.000
Setting5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting5.BorderSizePixel = 0
Setting5.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting5.Size = UDim2.new(0, 110, 0, 50)
Setting5.Visible = false
Setting5.Font = Enum.Font.GothamBlack
Setting5.Text = "Antivoid: "..tostring(AV)
Setting5.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting5.TextScaled = true
Setting5.TextSize = 14.000
Setting5.TextWrapped = true

Setting6.Name = "Setting6"
Setting6.Parent = SettingsFrame
Setting6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting6.BackgroundTransparency = 1.000
Setting6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting6.BorderSizePixel = 0
Setting6.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting6.Size = UDim2.new(0, 110, 0, 50)
Setting6.Visible = false
Setting6.Font = Enum.Font.GothamBlack
Setting6.Text = "Make print() show messages in main tab: "..tostring(RP)
Setting6.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting6.TextScaled = true
Setting6.TextSize = 14.000
Setting6.TextWrapped = true

Setting7.Name = "Setting7"
Setting7.Parent = SettingsFrame
Setting7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Setting7.BackgroundTransparency = 1.000
Setting7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Setting7.BorderSizePixel = 0
Setting7.Position = UDim2.new(-2.52211379e-07, 0, 0, 0)
Setting7.Size = UDim2.new(0, 110, 0, 50)
Setting7.Visible = false
Setting7.Font = Enum.Font.GothamBlack
Setting7.Text = "Antikick: "..tostring(AK)
Setting7.TextColor3 = Color3.fromRGB(85, 170, 255)
Setting7.TextScaled = true
Setting7.TextSize = 14.000
Setting7.TextWrapped = true

ExtensionsTab.Name = "ExtensionsTab"
ExtensionsTab.Parent = MainUI

ExtFrame.Name = "ExtFrame"
ExtFrame.Parent = ExtensionsTab
ExtFrame.Active = true
ExtFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtFrame.BackgroundTransparency = 1.000
ExtFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExtFrame.BorderSizePixel = 0
ExtFrame.Position = UDim2.new(0.300724536, 0, 0.202020198, 0)
ExtFrame.Size = UDim2.new(0, 146, 0, 120)
ExtFrame.Visible = false
ExtFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

ExtensionsLayout.Name = "ExtensionsLayout"
ExtensionsLayout.Parent = ExtFrame
ExtensionsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ExtensionsLayout.SortOrder = Enum.SortOrder.LayoutOrder

ExtensionsList.Name = "ExtensionsList"
ExtensionsList.Parent = ExtFrame
ExtensionsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtensionsList.BackgroundTransparency = 1.000
ExtensionsList.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExtensionsList.BorderSizePixel = 0
ExtensionsList.Position = UDim2.new(0.0376712345, 0, 0, 0)
ExtensionsList.Size = UDim2.new(0, 127, 0, 24)
ExtensionsList.Visible = false
ExtensionsList.Font = Enum.Font.GothamBlack
ExtensionsList.Text = "Installed Extensions: "
ExtensionsList.TextColor3 = Color3.fromRGB(255, 85, 85)
ExtensionsList.TextScaled = true
ExtensionsList.TextSize = 14.000
ExtensionsList.TextWrapped = true


ConsoleButton.MouseButton1Click:Connect(function()
visChildren(ConsoleTab)
end)
ChatButton.MouseButton1Click:Connect(function()
visChildren(ChatTab)
end)
SettingsButton.MouseButton1Click:Connect(function()
visChildren(SettingsTab)
end)
ExtensionsButton.MouseButton1Click:Connect(function()
visChildren(ExtensionsTab)
end)
SHButton.MouseButton1Click:Connect(function()
visChildren(SHTab)
ScriptCodeBox.Visible = false
ScriptNameBox.Visible = false
SaveScript.Visible = false
end)
HomeButton.MouseButton1Click:Connect(function()
visChildren(InfoFrame)
InfoFrame.Visible = true
end)
AddScript.MouseButton1Click:Connect(function()
for _, txt in ipairs(SHFrame:GetDescendants()) do
if txt:IsA("TextLabel") or txt:IsA("TextButton") then
txt.Visible = false
end
end
ScriptCodeBox.Visible = true
ScriptNameBox.Visible = true
SaveScript.Visible = true
SHFrame.Visible = false
AddScript.Visible = false
end)
SaveScript.MouseButton1Click:Connect(function()
if ScriptCodeBox.Text and ScriptNameBox.Text ~= "" then
local path = "BrickAdmin/Scripts/"..ScriptNameBox.Text
createScript("BrickAdmin/Scripts/"..ScriptNameBox.Text, ScriptCodeBox.Text)
writefile(path, ScriptCodeBox.Text)
end
visChildren(SHTab)
ScriptCodeBox.Visible = false
ScriptNameBox.Visible = false
SaveScript.Visible = false
end)
if isfolder("BrickAdmin/Scripts") then
local files = listfiles("BrickAdmin/Scripts")

if files ~= nil then
    for _, file in ipairs(files) do
    createScript(file:gsub("BrickAdmin/Scripts\\", "Scripts/"), readfile(file))
        end
    end
end

SendMsgToChat.FocusLost:Connect(function()
if chatMethod == 1 then
rp.DefaultChatSystemEvents.SayMessageRequest:FireServer(SendMsgToChat.Text, "All")
elseif chatMethod == 2 then
TextChatService.TextChannels.RBXGeneral:SendAsync(SendMsgToChat.Text)
end
SendMsgToChat.Text = ""
end)

local function getGameInfo()
local success, result = pcall(function()
        return "Game: "..MarketplaceService:GetProductInfo(game.PlaceId).Name.."\nDescription:  {{\n"..MarketplaceService:GetProductInfo(game.PlaceId).Description.."\n}}"
    end)

    if success then
        return result
    else
        warn("Failed to retrieve game name:", result)
        return "Unknown"
    end
end
if chatMethod == 1 then
chatMethodString = "Default Chat"
elseif chatMethod == 2 then
chatMethodString = "TextChatService Chat"
end
local runInfo = "[[Running Info]]\nExecutor: "..identifyexecutor().."\nGame ID: "..game.PlaceId.."\nGame JobID: "..game.JobId.."\n"..getGameInfo().."\nGame uses "..chatMethodString.."\n"..dat.."\n"
for _, file in ipairs(listfiles("BrickAdmin/Runs")) do
i+=1
end
local path = "BrickAdmin/Runs/"..MarketplaceService:GetProductInfo(game.PlaceId).Name.."#"..i
if SRF == "true" then
print(runInfo)
writefile(path..".txt", runInfo)
end
local extensions = 0
if isfolder("BrickAdmin/Extensions") then
local files = listfiles("BrickAdmin/Extensions")

if files ~= nil and files ~= "" then
    for _, file in ipairs(files) do
        if isfile(file) then
        local content = readfile(file)
        if content ~= nil then
                sc, result = pcall(function()
                loadstring(content)()
                extensions+=1
                ExtensionsList.Text = ExtensionsList.Text..tostring(file:gsub("BrickAdmin/Extensions\\", "Extensions/")).." "
          end)
          if not sc then
          local filename = file:gsub("BrickAdmin/Extensions\\", "")
          local errorspa = "BrickAdmin/ExtensionErrors/"..filename
          writefile(errorspa, tostring(result))
          warn("Brick Admin Extension "..filename.." Failed to load, Saved Error message in BrickAdmin/ExtensionErrors.")
        end
        end
    end
end
end
end
makemsg("Brick Admin loaded in { " .. string.format("%.3f", tick() - startuptime) .. "s } with { " .. extensions .. " } installed extensions.", MessagesFrame)
if prefix ~= nil then
makemsg("You are using the prefix ["..prefix.."]")
else
  makemsg("Prefix is NIL.")
end

Setting1.MouseButton1Click:Connect(function()
if Setting1.Text:find("true") then
writefile("BrickAdmin/Settings/News", tostring(false))
Setting1.Text = Setting1.Text:gsub("true", "false")
elseif Setting1.Text:find("false") then
writefile("BrickAdmin/Settings/News", tostring(true))
Setting1.Text = Setting1.Text:gsub("false", "true")
end
end)
Setting2.MouseButton1Click:Connect(function()
if Setting2.Text:find("true") then
writefile("BrickAdmin/Settings/Ext", tostring(false))
Setting2.Text = Setting2.Text:gsub("true", "false")
elseif Setting2.Text:find("false") then
writefile("BrickAdmin/Settings/Ext", tostring(true))
Setting2.Text = Setting2.Text:gsub("false", "true")
end
end)
Setting3.MouseButton1Click:Connect(function()
if Setting3.Text:find("true") then
writefile("BrickAdmin/Settings/Plr", tostring(false))
Setting3.Text = Setting3.Text:gsub("true", "false")
elseif Setting3.Text:find("false") then
writefile("BrickAdmin/Settings/Plr", tostring(true))
Setting3.Text = Setting3.Text:gsub("false", "true")
end
end)
Setting4.MouseButton1Click:Connect(function()
if Setting4.Text:find("true") then
writefile("BrickAdmin/Settings/SRF", tostring(false))
Setting4.Text = Setting4.Text:gsub("true", "false")
elseif Setting4.Text:find("false") then
writefile("BrickAdmin/Settings/SRF", tostring(true))
Setting4.Text = Setting4.Text:gsub("false", "true")
end
end)
Setting5.MouseButton1Click:Connect(function()
if Setting5.Text:find("true") then
writefile("BrickAdmin/Settings/AV", tostring(false))
Setting5.Text = Setting5.Text:gsub("true", "false")
AV = "false"
elseif Setting5.Text:find("false") then
writefile("BrickAdmin/Settings/AV", tostring(true))
Setting5.Text = Setting5.Text:gsub("false", "true")
AV = "true"
end
antiVoid(AV)
end)
Setting6.MouseButton1Click:Connect(function()
if Setting6.Text:find("true") then
writefile("BrickAdmin/Settings/RP", tostring(false))
RP = "false"
Setting6.Text = Setting6.Text:gsub("true", "false")
elseif Setting6.Text:find("false") then
writefile("BrickAdmin/Settings/RP", tostring(true))
Setting6.Text = Setting6.Text:gsub("false", "true")
RP = "true"
end
end)
Setting7.MouseButton1Click:Connect(function()
if Setting7.Text:find("true") then
writefile("BrickAdmin/Settings/Antikick", tostring(false))
Setting7.Text = Setting7.Text:gsub("true", "false")
getgenv().BlockKicks = false
elseif Setting7.Text:find("false") then
writefile("BrickAdmin/Settings/Antikick", tostring(true))
Setting7.Text = Setting7.Text:gsub("false", "true")
getgenv().BlockKicks = true
end
end)
local function logChat()
if chatMethod == 1 then
clientEvent:Connect(function(msg)
        chatlog = chatlog .. "Message #"..xz.."\n"..msg.FromSpeaker .. ": " .. msg.Message .. "\n"
        xz+=1
end)

elseif chatMethod == 2 then

msgrec:Connect(function(msg)
        chatlog = chatlog .. "Message #"..xz.."\n"..msg.TextSource.Name .. ": " .. msg.Text .. "\n"
        xz+=1
end)
end
end
logChat()
DownloadLogs.MouseButton1Click:Connect(function()
if not isfolder("BrickAdmin/Chatlogs") then makefolder("BrickAdmin/Chatlogs") else
for _, file in ipairs(listfiles("BrickAdmin/Chatlogs")) do
i+=1
end
local base = "Base"
local cl = "BrickAdmin/Chatlogs/"..base.."×"..i..".txt"
chatlog = "Total of "..xz.." Messages\n"..chatlog
writefile(cl, chatlog)
end
end)
textBox.FocusLost:Connect(function()
local text = textBox.Text
textBox.Text = ""
if text ~= "" then
makemsg(text, MessagesFrame)
end
if not prefix and text ~= " " or not text == "" then
prefix = text
writefile("BrickAdmin/Prefix", prefix)
    elseif not prefix and text == ("" or " ") then
      makemsg("You cant set your prefix to a space or nothing.", MessagesFrame)
    end
if text == prefix.."destroy" then
BrickAdminGUI:Destroy()
    elseif text == prefix.."clear" then
      task.wait()
      local cleared = -1
      for _, gggg in ipairs(MessagesFrame:GetDescendants()) do
        if gggg:IsA("TextButton") then
          gggg:Destroy()
          cleared+=1
        end
      end
      makemsg("Cleared {"..cleared.."} messages.", MessagesFrame, 3)
    elseif text:sub(1, 8 + #prefix - 1):lower() == prefix.."findplr" then
     makemsg(tostring(findPlayer(text:sub(10 + #prefix - 1))), MessagesFrame)
    elseif text:sub(1, 5 + #prefix - 1):lower() == prefix.."void" then
      if text:sub(7 + #prefix - 1) == "" or text:sub(7 + #prefix - 1) == nil then
        time = 3
      end
     local time = tonumber(text:sub(7 + #prefix - 1))
     if AV == "true" then
     AV = "false"
     avd = true
     antiVoid(AV)
     end
     GetService("Workspace").FallenPartsDestroyHeight = -math.huge
     currentSpot = player.Character:WaitForChild("HumanoidRootPart").CFrame
     player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, -150, 0)
     task.wait(time)
     player.Character:WaitForChild("HumanoidRootPart").CFrame = currentSpot
     if avd then
     AV = "true"
     avd = nil
     antiVoid(AV)
    end
      elseif text:sub(1, 9 + #prefix - 1):lower() == prefix.."safevoid" then
      if text:sub(11 + #prefix - 1) == "" or text:sub(11 + #prefix - 1) == nil then
        time = 3
      end
     local time = tonumber(text:sub(11 + #prefix - 1))
     if AV == "true" then
     AV = "false"
     avd = true
     antiVoid(AV)
     end
     GetService("Workspace").FallenPartsDestroyHeight = -math.huge
     currentSpot = player.Character:WaitForChild("HumanoidRootPart").CFrame
     player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, -150, 0)
     local part = Instance.new("Part")
      part.Parent = Workspace
      part.Size = Vector3.new(10, 10, 10)
      part.CFrame = rootpart.CFrame - Vector3.new(0, 15, 0)
      part.Anchored = true
     task.wait(time)
     player.Character:WaitForChild("HumanoidRootPart").CFrame = currentSpot
     if avd then
     AV = "true"
     avd = nil
     antiVoid(AV)
    end
      part:Destroy()
  elseif text:sub(1, 7 + #prefix - 1):lower() == prefix.."prefix" then
     if text:sub(9) ~= "" or text:sub(9) ~= " " then
        local prevprf = prefix
        prefix = text:sub(9, 9)
        writefile("BrickAdmin/Prefix", prefix)
        makemsg("Changed prefix from {"..prevprf.."} to {"..prefix.."}")
      end
      elseif text:sub(1, 6 + #prefix - 1):lower() == prefix.."re" then
      currentSpot = player.Character:WaitForChild("HumanoidRootPart").CFrame
      if player.Character:FindFirstChild("Humanoid") then
      player.Character.Humanoid.Health = 0
      player.CharacterAdded:Connect(function()
      player.Character:WaitForChild("HumanoidRootPart").CFrame = currentSpot
      end)
    end
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."tpto" then
    local lgg = text:sub(7 + #prefix - 1)
    local plr = findPlayer(lgg)
    if lgg ~= "" and plr ~= nil then
      rootpart.CFrame = plr["Character"]:WaitForChild("HumanoidRootPart").CFrame
      end
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."walkto" then
    local lgg = text:sub(9 + #prefix - 1)
    local plr = findPlayer(lgg)
    if lgg ~= "" and plr ~= nil and plr["Character"]["HumanoidRootPart"] then
      humanoid.WalkToPoint = Vector3.new(plr["Character"]["HumanoidRootPart"].CFrame.X,plr["Character"]["HumanoidRootPart"].CFrame.Y,plr["Character"]["HumanoidRootPart"].CFrame.Z)
      end
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."looptp" then
    isTp = not isTp
    local lgg = text:sub(9 + #prefix - 1)
    local plr = findPlayer(lgg)
    if lgg ~= "" and plr ~= nil then
      while isTp and task.wait() do
      rootpart.CFrame = plr["Character"]:WaitForChild("HumanoidRootPart").CFrame
      end
      end
    elseif text == prefix.."rj" then
      GetService("TeleportService"):Teleport(game.PlaceId, player)
    elseif text:sub(1, 8 + #prefix - 1) == prefix.."headsit" then
      isSit = not isSit
      Workspace.Gravity = oldGravity
      local pl = text:sub(10 + #prefix - 1)
      local pl = findPlayer(pl)
      while isSit and task.wait() do
        if pl ~= nil and pl["Character"]:FindFirstChild("Head") then
          rootpart.CFrame = pl["Character"]:FindFirstChild("Head").CFrame + Vector3.new(0, 2, 0)
          oldGravity = Workspace.Gravity
          Workspace.Gravity = 0
          humanoid.Sit = true
      end
      end
    elseif text:sub(1, 6 + #prefix - 1) == prefix.."float" then
      isFloat = not isFloat
      if text:sub(8 + #prefix - 1) ~= "" and isFloat then
        humanoid.HipHeight = tonumber(text:sub(8 + #prefix - 1))
      elseif not isFloat then
        humanoid.HipHeight = 0
      end 
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."rizzup" then
      if text:sub(9 + #prefix -1) ~= "" then
        local pl1 = text:sub(9 + #prefix -1)
        local pl = findPlayer(pl1)
        if pl ~= nil then
        makemsg("Hey "..pl.DisplayName..", "..rl[math.random(1, #rl)])
        end
    end
    elseif text == prefix.."day" then
      GetService("Lightning").ClockTime = 12
      elseif text == prefix.."night" then
      GetService("Lightning").ClockTime = 24
    elseif text == prefix.."WhiteLight" then
      GetService("Lightning").Ambient = Color3.fromRGB(255, 255, 255)
    elseif text == prefix.."DarkLight" then
      GetService("Lightning").Ambient = Color3.fromRGB(56, 56, 56)
    elseif text == prefix.."copyall" then
      copyAll = not copyAll
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."copy" then
      pla = findPlayer(text:sub(7 + #prefix - 1))
      if pla ~= nil then
        isCopy = not isCopy
        copyingPlr = pla
      end
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."howbad" then
      local pl = findPlayer(text:sub(9 + #prefix))
      local perc = math.random(1, 100)
      makemsg(pl.." is "..perc.."% bad.")
    elseif text:sub(1, 8 + #prefix - 1) == prefix.."hownice" then
      local pl = findPlayer(text:sub(10 + #prefix))
      local perc = math.random(1, 100)
      makemsg(pl.." is "..perc.."% nice.")
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."howskid" then
      local pl = findPlayer(text:sub(10 + #prefix))
      local perc = math.random(1, 100)
      makemsg(pl.." is "..perc.."% skid.")
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."testiq" then
      local pl = findPlayer(text:sub(9 + #prefix))
      local iq = math.random(1, 300)
      makemsg(pl.." has "..iq)
    elseif text:sub(1, 6 + #prefix - 1) == prefix.."whois" then
      local pla = findPlayer(text:sub(8 + #prefix - 1))
      if pla ~= nil then
        local data = string.format("Username: "..pla.Name..".\nDisplay Name: "..pla.DisplayName..".\nAccount Age: "..pla.AccountAge.." days.\nID: "..pla.Userid..".\n")
        print(data)
      end
    elseif text == prefix.."version" then
      print("Brick Admin REWRITE v1.0.1")
      print("Roblox Version "..version())
    elseif text:sub(1, 8 + #prefix - 1) == prefix.."gravity" then
      local num = tonumber(text:sub(10 + #prefix - 1))
      Workspace.Gravity = num
    elseif text:sub(1, 6 + #prefix - 1) == prefix.."speed" then
      local speed = tonumber(text:sub(8 + #prefix - 1))
      print("This may kick you due to some game's anticheat so i would recommend turning on antikick.")
      task.wait(3)
      humanoid.WalkSpeed = speed
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."jump" then
      local jo = tonumber(text:sub(7 + #prefix - 1))
      print("This may kick you due to some game's anticheat so i would recommend turning on antikick.")
      task.wait(3)
      humanoid.JumpPower = jp
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."mute" then
      local pla = findPlayer(text:sub(7 + #prefix - 1))
      if pla ~= nil then
        if chatMethod == 2 then
          TextChatService["TextChannels"]:FindFirstChildWhichIsA("TextChannel"):SendAsync("/mute "..pla.Name)
        elseif chatMethod == 1 then
          ReplicatedStorage["DefaultChatSystemChatEvents"].SayMessageRequest:FireServer("/mute "..pla.Name, "All")
      end
    end
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."unmute" then
      local pla = findPlayer(text:sub(9 + #prefix - 1))
      if pla ~= nil then
        if chatMethod == 2 then
          TextChatService["TextChannels"]:FindFirstChildWhichIsA("TextChannel"):SendAsync("/unmute "..pla.Name)
        elseif chatMethod == 1 then
          ReplicatedStorage["DefaultChatSystemChatEvents"].SayMessageRequest:FireServer("/unmute "..pla.Name, "All")
      end
    end
      elseif text == prefix.."logs" then
      isLog = not isLog
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."copycf" then
      if text:sub(9 + #prefix - 1) == nil or "" then
        setclipboard(tostring(rootpart.CFrame))
      else
        setclipboard(tostring(findPlayer(text:sub(9 + #prefix - 1))["Character"]["HumanoidRootPart"].CFrame))
      end
    elseif text:sub(1, 8 + #prefix - 1) == prefix.."copypos" then
      if text:sub(10 + #prefix - 1) == nil or "" then
        setclipboard(tostring(rootpart.Position))
      else
        setclipboard(tostring(findPlayer(text:sub(10 + #prefix - 1))["Character"]["HumanoidRootPart"].Position))
      end
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."time" then
      local time = tonumber(text:sub(7 + #prefix -1))
      GetService("Lightning").ClockTime = time
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."spin" then
      isSpin = true
      spinCharacter(360 * tonumber(text:sub(7 + #prefix - 1)))
    elseif text == prefix.."unspin" then
      isSpin = false
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."view" then
      local lgg = text:sub(7 + #prefix - 1)
    local plr = findPlayer(lgg)
    if lgg ~= "" and plr ~= nil and plr["Character"]["HumanoidRootPart"] then
        workspace.Camera.CameraSubject = plr["Character"]["Humanoid"]
  end
    elseif text:sub(1, 5 + #prefix - 1) == prefix.."spam" then
      local msg = text:sub(7 + #prefix - 1)
      isSpam = not isSpam
      while task.wait() and isSpam and msg ~= "" or nil do
        chat(msg)
      end
    elseif text:sub(1, 7 + #prefix - 1) == prefix.."follow" then
      local pla = findPlayer(text:sub(9 + #prefix -1))
      isFollow = not isFollow
      while task.wait(.1) and isFollow do
        if pla == nil then return end
        humanoid.WalkToPoint = pla.Character.HumanoidRootPart.Position
      end
    elseif text:sub(1, 10 + #prefix - 1) == prefix.."favorite " then
    if favorites == "No commands favorited." then
    favorites = ""
    end
        favorites = favorites.."\n"..text:sub(11 + #prefix - 1)
        writefile("BrickAdmin/Favorites", tostring(favorites))
  
    elseif text == prefix.."favorites" then
      print(favorites)
    elseif text:sub(1, 12 + #prefix - 1) == prefix.."unfavorite " then
    if favorites == "No commands favorited." then
    favorites = ""
    end
      local f = text:sub(13 + #prefix - 1)
      if favorites:find(f) then
        favorites = favorites:gsub(f, "")
        writefile("BrickAdmin/Favorites", favorites)
      end
     elseif text == prefix.."cmds" then
     print("spin <int>, favorite <cmd>, unfavorite <cmd>, favorites, follow <plr>, tpto <plr>, walkto <plr>, version, spam <msg>, looptp <plr>, logs, unspin, mute <plr>, unmute <plr>, jump <jumppower>, speed <int>, gravity <int>, howbad, howskid, hownice, testiq <plr>, day, night, whois <plr>, WhiteLight, DarkLight, rj, re, prefix <string>, void <time>, clear, findplr <plr>, destroy, float <int>, rizzup <plr>, safevoid <int>")
  end
end)
antiVoid(AV)
--[[Credits to https://scriptblox.com/script/anti-kick-(-prevents-local-scripts-from-kicking-you.-)_253 for the antikick bc mine kept breaking controls <3]]
players.PlayerAdded:Connect(function(plr)
            if lastPlr ~= plr and isLog then
            print("PLAYER ADDED: \nName: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nAccount Age: "..plr.AccountAge.." Days\nUser ID: "..plr.UserId)
            lastPlr = plr
            end
            lastPlr = nil
          end)
players.PlayerRemoving:Connect(function(plr)
            if lastPlr ~= plr and isLog then
            print("PLAYER REMOVED: \nName: "..plr.Name.."\nAccount Age: "..plr.AccountAge.." Days \nUser ID: "..plr.UserId)
            lastPlr = plr
            end
            lastPlr = nil
          end)
local old
old = hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local args = {...}
        local method = tostring(getnamecallmethod())
        if string.lower(method) == "kick" and AK == "true" then
            print("[ANTI-KICK] game tried to kick you, reason: "..args[1])
      return task.wait(9e9)
        end
        return old(self, ...)
    end
)