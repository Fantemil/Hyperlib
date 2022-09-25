local LoadUrl = function(str)
 return loadstring(game:HttpGet(str, true))()
end
if not IY_LOADED then
 LoadUrl("https://cdn.jsdelivr.net/gh/EdgeIY/infiniteyield@master/source")
 wait(0.75)
end

local IS_Settings = {
 ["Version"] = "1.3.6",
 ["Invite"] = "dv96SXYmxz",
 ["Plugins"] = LoadUrl("https://cdn.jsdelivr.net/gh/Infinite-Store/Infinite-Store@main/sources.luau"),
 ["NsfwPlugins"] = LoadUrl(
  "https://cdn.jsdelivr.net/gh/Infinite-Store/Infinite-Store@main/plugins/nsfwplugins/sources.luau"
 ),
}

local ann = "NEW DISCORD, JOIN PLEASE https://discord.gg/VwCGhNu9Rb"
local _UserSettings = {
 ["StartMinimized"] = false,
 ["SafeMode"] = false,
 ["NoNotifications"] = false,
 ["SkipIntro"] = false,
 ["Announcement"] = "",
}

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local format, gsub = string.format, string.gsub

local DefaultSettings = HttpService:JSONEncode(_UserSettings)
local SaveFileName = "infinite-store.json"
local NoSaving = false
local write_cooldown = false
local writefileCooldown
writefileCooldown = function(name, data)
 spawn(function()
  if not write_cooldown then
   write_cooldown = true
   writefile(name, data)
  else
   repeat
    wait()
   until write_cooldown == false
   writefileCooldown(name, data)
  end
  wait(3)
  write_cooldown = false
 end)
end
local canWrite = function()
 if writefile then
  return true
 end
end
local LoadSettings
LoadSettings = function()
 if canWrite() then
  if pcall(function()
   readfile(SaveFileName)
  end) then
   if readfile(SaveFileName) ~= nil then
    local success, response = pcall(function()
     local json = HttpService:JSONDecode(readfile(SaveFileName))
     if json.StartMinimized ~= nil then
      _UserSettings.StartMinimized = json.StartMinimized
     else
      _UserSettings.StartMinimized = false
     end
     if json.SafeMode ~= nil then
      _UserSettings.SafeMode = json.SafeMode
     else
      _UserSettings.SafeMode = false
     end
     if json.NoNotifications ~= nil then
      _UserSettings.NoNotifications = json.NoNotifications
     else
      _UserSettings.NoNotifications = false
     end
     if json.SkipIntro ~= nil then
      _UserSettings.SkipIntro = json.SkipIntro
     else
      _UserSettings.SkipIntro = false
     end
     if json.Announcement ~= nil then
      _UserSettings.Announcement = json.Announcement
     else
      _UserSettings.Announcement = ""
     end
    end)
    if not success then
     warn("Save Json Error:", response)
     warn("Overwriting Save File")
     writefileCooldown(SaveFileName, DefaultSettings)
     wait()
     LoadSettings()
    end
   else
    writefileCooldown(SaveFileName, DefaultSettings)
    wait()
    LoadSettings()
   end
  else
   writefileCooldown(SaveFileName, DefaultSettings)
   wait()
   if pcall(function()
    readfile(SaveFileName)
   end) then
    LoadSettings()
   else
    NoSaving = true
    _UserSettings.StartMinimized = false
    _UserSettings.SafeMode = false
    _UserSettings.NoNotifications = false
    _UserSettings.SkipIntro = false
    _UserSettings.Announcement = ""
   end
  end
 else
  _UserSettings.StartMinimized = false
  _UserSettings.SafeMode = false
  _UserSettings.NoNotifications = false
  _UserSettings.SkipIntro = false
  _UserSettings.Announcement = ""
 end
end
LoadSettings()
local UpdateSettings = function()
 if not NoSaving and canWrite() then
  local update = {
   ["StartMinimized"] = _UserSettings.StartMinimized,
   ["SafeMode"] = _UserSettings.SafeMode,
   ["NoNotifications"] = _UserSettings.NoNotifications,
   ["SkipIntro"] = _UserSettings.SkipIntro,
   ["Announcement"] = _UserSettings.Announcement,
  }
  writefileCooldown(SaveFileName, HttpService:JSONEncode(update))
 end
end

if IS_LOADED then
 --[[
 if _UserSettings.NoNotifications == false then
  notify(
   "Infinite Store",
   "Infinite Store is already executed, a button can be found to open it in IY Settings",
   5
  )
 end
 error("Infinite Store is already running!", 0)
]]
 return
end
pcall(function()
 getgenv().IS_LOADED = true
end)

local newRandomString = function()
 local length = math.random(10, 20)
 local array = {}
 for i = 1, length do
  array[i] = string.char(math.random(32, 126))
 end
 return table.concat(array)
end

if ann ~= "" and _UserSettings.Announcement ~= ann then
 local AnnGUI = Instance.new("Frame")
 local background = Instance.new("Frame")
 local TextBox = Instance.new("TextLabel")
 local shadow = Instance.new("Frame")
 local PopupText = Instance.new("TextLabel")
 local Exit = Instance.new("TextButton")
 local ExitImage = Instance.new("ImageLabel")
 AnnGUI.Name = newRandomString()
 AnnGUI.Parent = PARENT
 AnnGUI.Active = true
 AnnGUI.BackgroundTransparency = 1
 AnnGUI.Position = UDim2.new(0.5, -180, 0, -500)
 AnnGUI.Size = UDim2.new(0, 360, 0, 20)
 AnnGUI.ZIndex = 10
 background.Name = "background"
 background.Parent = AnnGUI
 background.Active = true
 background.BackgroundColor3 = currentShade1 or Color3.fromRGB(36, 36, 37)
 background.BorderSizePixel = 0
 background.Position = UDim2.new(0, 0, 0, 20)
 background.Size = UDim2.new(0, 360, 0, 150)
 background.ZIndex = 10
 TextBox.Parent = background
 TextBox.BackgroundTransparency = 1
 TextBox.Position = UDim2.new(0, 5, 0, 5)
 TextBox.Size = UDim2.new(0, 350, 0, 140)
 TextBox.Font = Enum.Font.SourceSans
 TextBox.TextSize = 18
 TextBox.TextWrapped = true
 TextBox.Text = ann
 TextBox.TextColor3 = currentText1 or Color3.new(1, 1, 1)
 TextBox.TextXAlignment = Enum.TextXAlignment.Left
 TextBox.TextYAlignment = Enum.TextYAlignment.Top
 TextBox.ZIndex = 10
 shadow.Name = "shadow"
 shadow.Parent = AnnGUI
 shadow.BackgroundColor3 = currentShade2 or Color3.fromRGB(46, 46, 47)
 shadow.BorderSizePixel = 0
 shadow.Size = UDim2.new(0, 360, 0, 20)
 shadow.ZIndex = 10
 PopupText.Name = "PopupText"
 PopupText.Parent = shadow
 PopupText.BackgroundTransparency = 1
 PopupText.Size = UDim2.new(1, 0, 0.95, 0)
 PopupText.ZIndex = 10
 PopupText.Font = Enum.Font.SourceSans
 PopupText.TextSize = 14
 PopupText.Text = "Infinite Store Announcement"
 PopupText.TextColor3 = currentText1 or Color3.new(1, 1, 1)
 PopupText.TextWrapped = true
 Exit.Name = "Exit"
 Exit.Parent = shadow
 Exit.BackgroundTransparency = 1
 Exit.Position = UDim2.new(1, -20, 0, 0)
 Exit.Size = UDim2.new(0, 20, 0, 20)
 Exit.Text = ""
 Exit.ZIndex = 10
 ExitImage.Parent = Exit
 ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
 ExitImage.BackgroundTransparency = 1
 ExitImage.Position = UDim2.new(0, 5, 0, 5)
 ExitImage.Size = UDim2.new(0, 10, 0, 10)
 ExitImage.Image = "rbxassetid://5054663650"
 ExitImage.ZIndex = 10
 spawn(function()
  wait(0.3)
  AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 10), "InOut", "Quart", 0.5, true, nil)
  Exit.MouseButton1Click:Connect(function()
   AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
   wait(0.6)
   AnnGUI:Destroy()
  end)
 end)
 _UserSettings.Announcement = ann
 UpdateSettings()
end

local InfStoreBtn = makeSettingsButton("Infinite Store", "rbxassetid://2161586955")
InfStoreBtn.Position = UDim2.new(0, 5, 0, 235)
InfStoreBtn.Size = UDim2.new(1, -10, 0, 25)
InfStoreBtn.Name = "InfStore"
InfStoreBtn.Parent = SettingsHolder
SettingsHolder.CanvasSize = UDim2.new(0, 0, 0, 265)

local ServerParent = nil
if not is_sirhurt_closure and (syn and syn.protect_gui) then
 local Main = Instance.new("ScreenGui")
 Main.Name = newRandomString()
 syn.protect_gui(Main)
 Main.Parent = CoreGui
 ServerParent = Main
elseif get_hidden_gui or gethui then
 local hiddenUI = get_hidden_gui or gethui
 local Main = Instance.new("ScreenGui")
 Main.Name = newRandomString()
 Main.Parent = hiddenUI()
 ServerParent = Main
elseif CoreGui:FindFirstChild("RobloxGui") then
 ServerParent = CoreGui.RobloxGui
else
 local Main = Instance.new("ScreenGui")
 Main.Name = newRandomString()
 Main.Parent = CoreGui
 ServerParent = Main
end

if getgenv then
 getgenv().InfiniteStore = ServerParent
else
 _G.InfiniteStore = ServerParent
end

ServerParent.ResetOnSpawn = false
ServerParent.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local dragGUI = function(gui)
 task.spawn(function()
  local dragging
  local dragInput
  local dragStart = Vector3.new(0, 0, 0)
  local startPos
  local update = function(input)
   local delta = input.Position - dragStart
   local Position =
    UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
   TweenService:Create(gui, TweenInfo.new(0.20), { Position = Position }):Play()
  end
  gui.InputBegan:Connect(function(input)
   if
    input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch
   then
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
   if
    input.UserInputType == Enum.UserInputType.MouseMovement
    or input.UserInputType == Enum.UserInputType.Touch
   then
    dragInput = input
   end
  end)
  UserInputService.InputChanged:Connect(function(input)
   if input == dragInput and dragging then
    update(input)
   end
  end)
 end)
end

local autoCanvas = function(scrollframe, layout)
 if not scrollframe:IsA("ScrollingFrame") then
  return error("Invalid argument #1 to 'autoCanvas' (expected ScrollingFrame)", 0)
 end
 if not (layout:IsA("UIListLayout") or layout:IsA("UIGridLayout") or layout:IsA("UIPageLayout")) then
  return error("Invalid argument #2 to 'autoCanvas' (expected a UILayout)", 0)
 end
 scrollframe.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
 layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
  scrollframe.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
 end)
end

local mainFrame = Instance.new("Frame")
dragGUI(mainFrame)

if _UserSettings.StartMinimized == true then
 mainFrame.Visible = false
 if _UserSettings.NoNotifications == false then
  notify(
   "Infinite Store",
   "Start Minimized is turned on, Infinite Store can be opened inside of Infinite Yield's Settings"
  )
 end
else
 mainFrame.Visible = true
 if _UserSettings.NoNotifications == false then
  notify("Infinite Store", "Start Minimized is turned off, this can be disabled in settings")
 end
end

local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local ListHolder = Instance.new("Frame")
local Home = Instance.new("Frame")
local Welcome = Instance.new("TextLabel")
local cart = Instance.new("ImageLabel")
local text = Instance.new("ImageLabel")
local Epik = Instance.new("Frame")
local Round = Instance.new("ImageLabel")
local Photo = Instance.new("ImageLabel")
local Name = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Devs = Instance.new("Frame")
local Round_2 = Instance.new("ImageLabel")
local Photo_2 = Instance.new("ImageLabel")
local Name_2 = Instance.new("TextLabel")
local Credit_2 = Instance.new("TextLabel")
local Photo2 = Instance.new("ImageLabel")
local Name2 = Instance.new("TextLabel")
local Photo3 = Instance.new("ImageLabel")
local Name3 = Instance.new("TextLabel")
local List = Instance.new("Frame")
local List1 = Instance.new("TextLabel")
local List2 = Instance.new("TextLabel")
local List3 = Instance.new("TextLabel")
local List4 = Instance.new("TextLabel")
local Plugins = Instance.new("Frame")
local TopBarExample = Instance.new("Frame")
local _4Install = Instance.new("TextLabel")
local _3Created = Instance.new("TextLabel")
local _2Author = Instance.new("TextLabel")
local _1Name = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local List_2 = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Template = Instance.new("Frame")
local PluginName = Instance.new("TextLabel")
local InfoBtn = Instance.new("ImageButton")
local Author = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local Created = Instance.new("TextLabel")
local Install = Instance.new("TextButton")
local SearchBar = Instance.new("Frame")
local Search = Instance.new("TextBox")
local Icon = Instance.new("ImageLabel")
local Settings = Instance.new("Frame")
local List_3 = Instance.new("ScrollingFrame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local Template_2 = Instance.new("Frame")
local Description = Instance.new("TextLabel")
local SettingName = Instance.new("TextLabel")
local CheckBox = Instance.new("Frame")
local Btn = Instance.new("ImageButton")
local Checked = Instance.new("Frame")
local SideBar = Instance.new("Frame")
local Holder = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Home_2 = Instance.new("TextButton")
local cs = Instance.new("BoolValue")
local Plugins_2 = Instance.new("TextButton")
local cs_2 = Instance.new("BoolValue")
local Settings_2 = Instance.new("TextButton")
local cs_3 = Instance.new("BoolValue")
local DiscordInvite = Instance.new("TextLabel")
local PluginInfo = Instance.new("Frame")
local PluginInfo_2 = Instance.new("Frame")
local InfoLabel = Instance.new("TextLabel")
local PluginName_2 = Instance.new("TextLabel")
local List_4 = Instance.new("ScrollingFrame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local Command = Instance.new("TextLabel")
mainFrame.Name = "mainFrame"
mainFrame.Parent = ServerParent
mainFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
mainFrame.BackgroundTransparency = 1.000
mainFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
mainFrame.Size = UDim2.new(0, 500, 0, 320)
mainFrame.ZIndex = 10
TopBar.Name = "TopBar"
TopBar.Parent = mainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 20)
TopBar.ZIndex = 10
Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.149999946, 0, 0, 0)
Title.Size = UDim2.new(0.850000083, 0, 0.949999988, 0)
Title.ZIndex = 10
Title.Font = Enum.Font.SourceSans
Title.Text = "Infinite Store"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1, -20, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.ZIndex = 10
Close.Font = Enum.Font.SourceSans
Close.Text = ""
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
ImageLabel.Parent = Close
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Size = UDim2.new(0, 10, 0, 10)
ImageLabel.ZIndex = 10
ImageLabel.Image = "rbxassetid://5054663650"
ListHolder.Name = "ListHolder"
ListHolder.Parent = mainFrame
ListHolder.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
ListHolder.BorderSizePixel = 0
ListHolder.ClipsDescendants = true
ListHolder.Position = UDim2.new(0, 0, 0, 20)
ListHolder.Size = UDim2.new(1, 0, 0, 300)
ListHolder.ZIndex = 10
Home.Name = "Home"
Home.Parent = ListHolder
Home.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Home.BorderSizePixel = 0
Home.ClipsDescendants = true
Home.Position = UDim2.new(0, 75, 0, 0)
Home.Size = UDim2.new(0.850000024, 0, 0, 300)
Home.ZIndex = 15
Welcome.Name = "Welcome"
Welcome.Parent = Home
Welcome.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Welcome.BackgroundTransparency = 1.000
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0.230750099, 0, 0.123333335, 0)
Welcome.Size = UDim2.new(0.534000397, 0, 0.203333333, 0)
Welcome.ZIndex = 51
Welcome.Font = Enum.Font.Gotham
Welcome.Text = "Welcome To"
Welcome.TextColor3 = Color3.fromRGB(206, 206, 206)
Welcome.TextSize = 30.000
Welcome.TextTransparency = 1.000
Welcome.TextWrapped = true
cart.Name = "cart"
cart.Parent = Home
cart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cart.BackgroundTransparency = 1.000
cart.Position = UDim2.new(-0.244705886, 0, -0.0500000007, 0)
cart.Size = UDim2.new(0, 208, 0, 208)
cart.ZIndex = 26
cart.Image = "http://www.roblox.com/asset/?id=7244695078"
text.Name = "text"
text.Parent = Home
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundTransparency = 1.000
text.Position = UDim2.new(0.244705886, 0, -0.50999999, 0)
text.Size = UDim2.new(0, 208, 0, 208)
text.ZIndex = 27
text.Image = "http://www.roblox.com/asset/?id=6403436082"
Epik.Name = "Epik"
Epik.Parent = Home
Epik.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Epik.BackgroundTransparency = 1.000
Epik.Position = UDim2.new(0.0260000005, 0, 1.09000003, 0)
Epik.Size = UDim2.new(0, 104, 0, 141)
Epik.ZIndex = 100
Round.Name = "Round"
Round.Parent = Epik
Round.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Round.BackgroundTransparency = 1.000
Round.Size = UDim2.new(1.00000024, 0, 1.00000012, 0)
Round.ZIndex = 101
Round.Image = "rbxassetid://605740338"
Round.ImageColor3 = Color3.fromRGB(46, 46, 47)
Round.ScaleType = Enum.ScaleType.Slice
Round.SliceCenter = Rect.new(24, 24, 216, 216)
Photo.Name = "Photo"
Photo.Parent = Round
Photo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Photo.BackgroundTransparency = 1.000
Photo.Size = UDim2.new(1, 0, 0.737588704, 0)
Photo.ZIndex = 102
Photo.Image = "http://www.roblox.com/asset/?id=7657546445"
Name.Name = "Name"
Name.Parent = Round
Name.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Name.BackgroundTransparency = 1.000
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0, 0, 0.737588584, 0)
Name.Size = UDim2.new(1, 0, 0.262410909, 0)
Name.ZIndex = 100
Name.Font = Enum.Font.Gotham
Name.Text = "REDACTED"
Name.TextColor3 = Color3.fromRGB(206, 206, 206)
Name.TextSize = 25.000
Name.TextWrapped = true
Credit.Name = "Credit"
Credit.Parent = Round
Credit.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Credit.BackgroundTransparency = 1.000
Credit.BorderSizePixel = 0
Credit.Position = UDim2.new(0, 0, -0.14184396, 0)
Credit.Size = UDim2.new(1, 0, 0.141843975, 0)
Credit.ZIndex = 100
Credit.Font = Enum.Font.Gotham
Credit.Text = "Founded By"
Credit.TextColor3 = Color3.fromRGB(206, 206, 206)
Credit.TextSize = 15.000
Credit.TextWrapped = true
Devs.Name = "Devs"
Devs.Parent = Home
Devs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Devs.BackgroundTransparency = 1.000
Devs.Position = UDim2.new(0.296000004, 0, 1.09000003, 0)
Devs.Size = UDim2.new(0, 286, 0, 141)
Devs.ZIndex = 100
Round_2.Name = "Round"
Round_2.Parent = Devs
Round_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Round_2.BackgroundTransparency = 1.000
Round_2.Size = UDim2.new(1.00000024, 0, 1.00000012, 0)
Round_2.ZIndex = 101
Round_2.Image = "rbxassetid://605740338"
Round_2.ImageColor3 = Color3.fromRGB(46, 46, 47)
Round_2.ScaleType = Enum.ScaleType.Slice
Round_2.SliceCenter = Rect.new(24, 24, 216, 216)
Photo_2.Name = "Photo"
Photo_2.Parent = Round_2
Photo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Photo_2.BackgroundTransparency = 1.000
Photo_2.Position = UDim2.new(0, 0, 0.0443883538, 0)
Photo_2.Size = UDim2.new(0.331353962, 0, 0.672107756, 0)
Photo_2.ZIndex = 102
Photo_2.Image = "http://www.roblox.com/asset/?id=7657547318"
Name_2.Name = "Name"
Name_2.Parent = Round_2
Name_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Name_2.BackgroundTransparency = 1.000
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0, 0, 0.716495931, 0)
Name_2.Size = UDim2.new(0.331353962, 0, 0.239114851, 0)
Name_2.ZIndex = 100
Name_2.Font = Enum.Font.Gotham
Name_2.Text = "Kaizer"
Name_2.TextColor3 = Color3.fromRGB(206, 206, 206)
Name_2.TextSize = 25.000
Name_2.TextWrapped = true
Credit_2.Name = "Credit"
Credit_2.Parent = Round_2
Credit_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Credit_2.BackgroundTransparency = 1.000
Credit_2.BorderSizePixel = 0
Credit_2.Position = UDim2.new(0, 0, -0.14184396, 0)
Credit_2.Size = UDim2.new(1, 0, 0.141843975, 0)
Credit_2.ZIndex = 100
Credit_2.Font = Enum.Font.Gotham
Credit_2.Text = "Developed By"
Credit_2.TextColor3 = Color3.fromRGB(206, 206, 206)
Credit_2.TextSize = 15.000
Credit_2.TextWrapped = true
Photo2.Name = "Photo2"
Photo2.Parent = Round_2
Photo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Photo2.BackgroundTransparency = 1.000
Photo2.Position = UDim2.new(0.331353813, 0, 0.0443883538, 0)
Photo2.Size = UDim2.new(0.331353962, 0, 0.672107756, 0)
Photo2.ZIndex = 102
Photo2.Image = "http://www.roblox.com/asset/?id=7657548002"
Name2.Name = "Name2"
Name2.Parent = Round_2
Name2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Name2.BackgroundTransparency = 1.000
Name2.BorderSizePixel = 0
Name2.Position = UDim2.new(0.331353813, 0, 0.716495931, 0)
Name2.Size = UDim2.new(0.331353962, 0, 0.239114851, 0)
Name2.ZIndex = 100
Name2.Font = Enum.Font.Gotham
Name2.Text = "Michael"
Name2.TextColor3 = Color3.fromRGB(206, 206, 206)
Name2.TextSize = 25.000
Name2.TextWrapped = true
Photo3.Name = "Photo3"
Photo3.Parent = Round_2
Photo3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Photo3.BackgroundTransparency = 1.000
Photo3.Position = UDim2.new(0.662352085, 0, 0.0443883538, 0)
Photo3.Size = UDim2.new(0.331353962, 0, 0.672107756, 0)
Photo3.ZIndex = 102
Photo3.Image = "http://www.roblox.com/asset/?id=7672670653"
Name3.Name = "Name3"
Name3.Parent = Round_2
Name3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Name3.BackgroundTransparency = 1.000
Name3.BorderSizePixel = 0
Name3.Position = UDim2.new(0.662352085, 0, 0.716495931, 0)
Name3.Size = UDim2.new(0.331353962, 0, 0.239114851, 0)
Name3.ZIndex = 100
Name3.Font = Enum.Font.Gotham
Name3.Text = "Toon"
Name3.TextColor3 = Color3.fromRGB(206, 206, 206)
Name3.TextSize = 25.000
Name3.TextWrapped = true
List.Name = "List"
List.Parent = Home
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.Position = UDim2.new(0.41894114, 0, 0.0566666685, 0)
List.Size = UDim2.new(0, 429, 0, 181)
List.ZIndex = 100
List1.Name = "List1"
List1.Parent = List
List1.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
List1.BackgroundTransparency = 1.000
List1.BorderSizePixel = 0
List1.Position = UDim2.new(0.051282052, 0, -0.000728037208, 0)
List1.Size = UDim2.new(1, 0, 0.148745388, 0)
List1.ZIndex = 100
List1.Font = Enum.Font.Gotham
List1.RichText = true
List1.Text = "• <b>Sick Plugins</b> For Infinite Yield"
List1.TextColor3 = Color3.fromRGB(206, 206, 206)
List1.TextSize = 15.000
List1.TextTransparency = 1.000
List1.TextWrapped = true
List1.TextXAlignment = Enum.TextXAlignment.Left
List2.Name = "List2"
List2.Parent = List
List2.BackgroundColor3 = Color3.fromRGB(42, 0, 0)
List2.BackgroundTransparency = 1.000
List2.BorderSizePixel = 0
List2.Position = UDim2.new(0.051282052, 0, 0.145765275, 0)
List2.Size = UDim2.new(1, 0, 0.148745388, 0)
List2.ZIndex = 100
List2.Font = Enum.Font.Gotham
List2.RichText = true
List2.Text = "• Absolutely <b>0</b> Bugs"
List2.TextColor3 = Color3.fromRGB(206, 206, 206)
List2.TextSize = 15.000
List2.TextTransparency = 1.000
List2.TextWrapped = true
List2.TextXAlignment = Enum.TextXAlignment.Left
List3.Name = "List3"
List3.Parent = List
List3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
List3.BackgroundTransparency = 1.000
List3.BorderColor3 = Color3.fromRGB(1, 12, 53)
List3.BorderSizePixel = 0
List3.Position = UDim2.new(0.051282052, 0, 0.292258769, 0)
List3.Size = UDim2.new(1, 0, 0.148745388, 0)
List3.ZIndex = 100
List3.Font = Enum.Font.Gotham
List3.RichText = true
List3.Text = "• Very *<b>In</b>*active Discord Server"
List3.TextColor3 = Color3.fromRGB(206, 206, 206)
List3.TextSize = 15.000
List3.TextTransparency = 1.000
List3.TextWrapped = true
List3.TextXAlignment = Enum.TextXAlignment.Left
List4.Name = "List4"
List4.Parent = List
List4.BackgroundColor3 = Color3.fromRGB(7, 42, 38)
List4.BackgroundTransparency = 1.000
List4.BorderSizePixel = 0
List4.Position = UDim2.new(0.0510000661, 0, 0.439073265, 0)
List4.Size = UDim2.new(1, 0, 0.148745388, 0)
List4.ZIndex = 100
List4.Font = Enum.Font.Gotham
List4.RichText = true
List4.Text = "• <b>Sexy</b> Interfaces"
List4.TextColor3 = Color3.fromRGB(206, 206, 206)
List4.TextSize = 15.000
List4.TextTransparency = 1.000
List4.TextWrapped = true
List4.TextXAlignment = Enum.TextXAlignment.Left
Plugins.Name = "Plugins"
Plugins.Parent = ListHolder
Plugins.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Plugins.BorderSizePixel = 0
Plugins.ClipsDescendants = true
Plugins.Position = UDim2.new(0, -350, 0, 0)
Plugins.Size = UDim2.new(0.850000024, 0, 0, 300)
Plugins.Visible = false
Plugins.ZIndex = 10
TopBarExample.Name = "TopBarExample"
TopBarExample.Parent = Plugins
TopBarExample.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
TopBarExample.BorderSizePixel = 0
TopBarExample.ClipsDescendants = true
TopBarExample.Position = UDim2.new(0, 0, 0.115000002, 0)
TopBarExample.Size = UDim2.new(0, 425, 0, 15)
TopBarExample.ZIndex = 10
_4Install.Name = "4Install"
_4Install.Parent = TopBarExample
_4Install.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
_4Install.BorderSizePixel = 0
_4Install.Position = UDim2.new(0.251926512, 0, 0, 0)
_4Install.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
_4Install.ZIndex = 10
_4Install.Font = Enum.Font.SourceSansBold
_4Install.Text = "Install Button"
_4Install.TextColor3 = Color3.fromRGB(255, 255, 255)
_4Install.TextSize = 14.000
_4Install.TextWrapped = true
_3Created.Name = "3Created"
_3Created.Parent = TopBarExample
_3Created.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
_3Created.BorderSizePixel = 0
_3Created.Position = UDim2.new(0.503853023, 0, 0, 0)
_3Created.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
_3Created.ZIndex = 10
_3Created.Font = Enum.Font.SourceSansBold
_3Created.Text = "Date Created"
_3Created.TextColor3 = Color3.fromRGB(255, 255, 255)
_3Created.TextSize = 14.000
_3Created.TextWrapped = true
_2Author.Name = "2Author"
_2Author.Parent = TopBarExample
_2Author.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
_2Author.BorderSizePixel = 0
_2Author.Position = UDim2.new(0.251926512, 0, 0, 0)
_2Author.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
_2Author.ZIndex = 10
_2Author.Font = Enum.Font.SourceSansBold
_2Author.Text = "Creator Name"
_2Author.TextColor3 = Color3.fromRGB(255, 255, 255)
_2Author.TextSize = 14.000
_2Author.TextWrapped = true
_1Name.Name = "1Name"
_1Name.Parent = TopBarExample
_1Name.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
_1Name.BorderSizePixel = 0
_1Name.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
_1Name.ZIndex = 10
_1Name.Font = Enum.Font.SourceSansBold
_1Name.Text = "Plugin Name"
_1Name.TextColor3 = Color3.fromRGB(255, 255, 255)
_1Name.TextSize = 14.000
_1Name.TextWrapped = true
UIListLayout.Parent = TopBarExample
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Padding = UDim.new(0, 3)
List_2.Name = "List"
List_2.Parent = Plugins
List_2.Active = true
List_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List_2.BackgroundTransparency = 1.000
List_2.BorderSizePixel = 0
List_2.Position = UDim2.new(0.00434390781, 0, 0.183333337, 0)
List_2.Size = UDim2.new(0, 423, 0, 244)
List_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
List_2.CanvasSize = UDim2.new(0, 0, 0, 500)
List_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
UIGridLayout.Parent = List_2
UIGridLayout.CellSize = UDim2.new(0, 422, 0, 25)
Template.Name = "Template"
Template.Parent = UIGridLayout
Template.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Template.BorderSizePixel = 0
Template.ClipsDescendants = true
Template.Position = UDim2.new(-0.00913591869, 0, 0, 0)
Template.Size = UDim2.new(1.0067606, 0, -1.65573776, 429)
Template.ZIndex = 10
PluginName.Name = "PluginName"
PluginName.Parent = Template
PluginName.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
PluginName.BorderSizePixel = 0
PluginName.Position = UDim2.new(-0.062650606, 0, 0, 0)
PluginName.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
PluginName.ZIndex = 10
PluginName.Font = Enum.Font.SourceSansBold
PluginName.Text = "Name"
PluginName.TextColor3 = Color3.fromRGB(255, 255, 255)
PluginName.TextSize = 14.000
PluginName.TextWrapped = true
InfoBtn.Name = "InfoBtn"
InfoBtn.Parent = PluginName
InfoBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoBtn.BackgroundTransparency = 1.000
InfoBtn.Position = UDim2.new(0, 0, 0.216666743, 0)
InfoBtn.Size = UDim2.new(0, 17, 0, 17)
InfoBtn.ZIndex = 40
InfoBtn.Image = "rbxassetid://3523243755"
InfoBtn.ImageColor3 = Color3.fromRGB(98, 98, 98)
Author.Name = "Author"
Author.Parent = Template
Author.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Author.BorderSizePixel = 0
Author.Position = UDim2.new(0.251926512, 0, 0, 0)
Author.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
Author.ZIndex = 10
Author.Font = Enum.Font.SourceSansBold
Author.Text = "Author"
Author.TextColor3 = Color3.fromRGB(255, 255, 255)
Author.TextSize = 14.000
Author.TextWrapped = true
UIListLayout_2.Parent = Template
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 3)
Created.Name = "Created"
Created.Parent = Template
Created.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Created.BorderSizePixel = 0
Created.Position = UDim2.new(0.503853023, 0, 0, 0)
Created.Size = UDim2.new(0.244588628, 0, 0.999999642, 0)
Created.ZIndex = 10
Created.Font = Enum.Font.SourceSansBold
Created.Text = "0/00/0000"
Created.TextColor3 = Color3.fromRGB(255, 255, 255)
Created.TextSize = 14.000
Created.TextWrapped = true
Install.Name = "Install"
Install.Parent = Template
Install.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Install.BorderSizePixel = 0
Install.Position = UDim2.new(0.755779684, 0, 0, 0)
Install.Size = UDim2.new(0.244220376, 0, 1, 0)
Install.Font = Enum.Font.SourceSansBold
Install.Text = "Install"
Install.TextColor3 = Color3.fromRGB(255, 255, 255)
Install.TextSize = 14.000
SearchBar.Name = "SearchBar"
SearchBar.Parent = Plugins
SearchBar.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
SearchBar.BorderSizePixel = 0
SearchBar.ClipsDescendants = true
SearchBar.Position = UDim2.new(0.0160000008, 0, 0.0179999992, 0)
SearchBar.Size = UDim2.new(0, 425, 0, 23)
SearchBar.ZIndex = 10
Search.Name = "Search"
Search.Parent = SearchBar
Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Search.BackgroundTransparency = 1.000
Search.Position = UDim2.new(0.0776470602, 0, 0, 0)
Search.Size = UDim2.new(0, 385, 0, 23)
Search.Font = Enum.Font.SourceSans
Search.PlaceholderColor3 = Color3.fromRGB(148, 148, 148)
Search.PlaceholderText = "Search"
Search.Text = ""
Search.TextColor3 = Color3.fromRGB(255, 255, 255)
Search.TextSize = 16.000
Search.TextXAlignment = Enum.TextXAlignment.Left
Icon.Name = "Icon"
Icon.Parent = SearchBar
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.00999999978, 0, 0, 0)
Icon.Size = UDim2.new(0, 23, 0, 23)
Icon.Image = "http://www.roblox.com/asset/?id=6031154871"
Icon.ImageColor3 = Color3.fromRGB(206, 206, 206)
Settings.Name = "Settings"
Settings.Parent = ListHolder
Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Settings.BorderSizePixel = 0
Settings.ClipsDescendants = true
Settings.Position = UDim2.new(0, -350, 0, 0)
Settings.Size = UDim2.new(0.850000024, 0, 0, 300)
Settings.Visible = false
Settings.ZIndex = 10
List_3.Name = "List"
List_3.Parent = Settings
List_3.Active = true
List_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List_3.BackgroundTransparency = 1.000
List_3.BorderSizePixel = 0
List_3.Position = UDim2.new(0.00434397999, 0, 0.0272000115, 0)
List_3.Size = UDim2.new(0, 423, 0, 290)
List_3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
List_3.CanvasSize = UDim2.new(0, 0, 0, 500)
List_3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
UIGridLayout_2.Parent = List_3
UIGridLayout_2.CellSize = UDim2.new(0, 410, 0, 45)
Template_2.Name = "Template"
Template_2.Parent = UIGridLayout_2
Template_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Template_2.BorderSizePixel = 0
Template_2.ClipsDescendants = true
Template_2.Position = UDim2.new(0, 0, 1.02407981e-07, 0)
Template_2.Size = UDim2.new(0.964902639, 0, -1.35570467, 429)
Template_2.ZIndex = 10
Description.Name = "Description"
Description.Parent = Template_2
Description.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Description.BackgroundTransparency = 1.000
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.0170730967, 0, 0.466666669, 0)
Description.Size = UDim2.new(0.849155784, 0, 0.533333421, 0)
Description.ZIndex = 10
Description.Font = Enum.Font.SourceSans
Description.Text = "Description"
Description.TextColor3 = Color3.fromRGB(191, 191, 191)
Description.TextSize = 15.000
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Left
SettingName.Name = "SettingName"
SettingName.Parent = Template_2
SettingName.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
SettingName.BackgroundTransparency = 1.000
SettingName.BorderSizePixel = 0
SettingName.Position = UDim2.new(0.0170730967, 0, 0, 0)
SettingName.Size = UDim2.new(0.849155784, 0, 0.640888214, 0)
SettingName.ZIndex = 10
SettingName.Font = Enum.Font.SourceSans
SettingName.Text = "Setting Name"
SettingName.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingName.TextSize = 22.000
SettingName.TextWrapped = true
SettingName.TextXAlignment = Enum.TextXAlignment.Left
CheckBox.Name = "CheckBox"
CheckBox.Parent = Template_2
CheckBox.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
CheckBox.BorderSizePixel = 0
CheckBox.Position = UDim2.new(0.903853655, 0, 0.177777782, 0)
CheckBox.Size = UDim2.new(0, 28, 0, 28)
CheckBox.ZIndex = 25
Btn.Name = "Btn"
Btn.Parent = CheckBox
Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Btn.BackgroundTransparency = 1.000
Btn.Size = UDim2.new(1, 0, 1, 0)
Btn.ZIndex = 100
Btn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
Btn.ImageTransparency = 1.000
Checked.Name = "Checked"
Checked.Parent = CheckBox
Checked.BackgroundColor3 = Color3.fromRGB(177, 177, 177)
Checked.BorderSizePixel = 0
Checked.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
Checked.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
Checked.ZIndex = 50
SideBar.Name = "SideBar"
SideBar.Parent = mainFrame
SideBar.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
SideBar.BorderSizePixel = 0
SideBar.Position = UDim2.new(0, 0, 0.0625, 0)
SideBar.Size = UDim2.new(0.150000006, 0, 0.875, 20)
SideBar.ZIndex = 10
Holder.Name = "Holder"
Holder.Parent = SideBar
Holder.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Holder.BackgroundTransparency = 1.000
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 0, 0.0566666685, 0)
Holder.Size = UDim2.new(1, 0, 0.943333328, 0)
Holder.ZIndex = 10
UIListLayout_3.Parent = Holder
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 4)
Home_2.Name = "Home"
Home_2.Parent = Holder
Home_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home_2.BackgroundTransparency = 1.000
Home_2.Size = UDim2.new(1.02699995, -8, 0, 20)
Home_2.Font = Enum.Font.SourceSansBold
Home_2.Text = "Home"
Home_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Home_2.TextSize = 20.000
Home_2.TextXAlignment = Enum.TextXAlignment.Left
cs.Name = "cs"
cs.Parent = Home_2
cs.Value = true
Plugins_2.Name = "Plugins"
Plugins_2.Parent = Holder
Plugins_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Plugins_2.BackgroundTransparency = 1.000
Plugins_2.Size = UDim2.new(1.02699995, -8, 0, 20)
Plugins_2.Font = Enum.Font.SourceSansBold
Plugins_2.Text = "Plugins"
Plugins_2.TextColor3 = Color3.fromRGB(156, 156, 156)
Plugins_2.TextSize = 20.000
Plugins_2.TextXAlignment = Enum.TextXAlignment.Left
cs_2.Name = "cs"
cs_2.Parent = Plugins_2
Settings_2.Name = "Settings"
Settings_2.Parent = Holder
Settings_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings_2.BackgroundTransparency = 1.000
Settings_2.Size = UDim2.new(1.02699995, -8, 0, 20)
Settings_2.Font = Enum.Font.SourceSansBold
Settings_2.Text = "Settings"
Settings_2.TextColor3 = Color3.fromRGB(156, 156, 156)
Settings_2.TextSize = 20.000
Settings_2.TextXAlignment = Enum.TextXAlignment.Left
cs_3.Name = "cs"
cs_3.Parent = Settings_2
DiscordInvite.Name = "DiscordInvite"
DiscordInvite.Parent = SideBar
DiscordInvite.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
DiscordInvite.BackgroundTransparency = 1.000
DiscordInvite.BorderSizePixel = 0
DiscordInvite.Position = UDim2.new(-0.0270000007, 0, 0.964999974, 0)
DiscordInvite.Size = UDim2.new(1.05128217, 0, 0.0294661485, 0)
DiscordInvite.ZIndex = 100
DiscordInvite.Font = Enum.Font.Gotham
DiscordInvite.Text = ".gg/infinitestore"
DiscordInvite.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordInvite.TextSize = 9.000
DiscordInvite.TextWrapped = true
PluginInfo.Name = "PluginInfo"
PluginInfo.Parent = mainFrame
PluginInfo.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
PluginInfo.BorderSizePixel = 0
PluginInfo.Position = UDim2.new(0.589999974, 0, 0.063000001, 0)
PluginInfo.Size = UDim2.new(0.384000003, 0, 0.846875012, 20)
PluginInfo_2.Name = "PluginInfo"
PluginInfo_2.Parent = PluginInfo
PluginInfo_2.BackgroundColor3 = Color3.fromRGB(27, 27, 30)
PluginInfo_2.BorderSizePixel = 0
PluginInfo_2.Position = UDim2.new(0.316333145, 0, -0.00279209623, 0)
PluginInfo_2.Size = UDim2.new(0.683666527, 0, 0.0749570429, 20)
PluginInfo_2.ZIndex = 2
InfoLabel.Name = "InfoLabel"
InfoLabel.Parent = PluginInfo_2
InfoLabel.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
InfoLabel.BackgroundTransparency = 1.000
InfoLabel.BorderSizePixel = 0
InfoLabel.Position = UDim2.new(0.0781938657, 0, 0.521674156, 0)
InfoLabel.Size = UDim2.new(0.921806693, 0, 0.478325754, 0)
InfoLabel.ZIndex = 10
InfoLabel.Font = Enum.Font.SourceSansBold
InfoLabel.Text = "Commands"
InfoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
InfoLabel.TextSize = 17.000
InfoLabel.TextWrapped = true
PluginName_2.Name = "PluginName"
PluginName_2.Parent = PluginInfo_2
PluginName_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
PluginName_2.BackgroundTransparency = 1.000
PluginName_2.BorderSizePixel = 0
PluginName_2.Position = UDim2.new(0.0781938657, 0, 0.0194319878, 0)
PluginName_2.Size = UDim2.new(0.921806693, 0, 0.502242088, 0)
PluginName_2.ZIndex = 10
PluginName_2.Font = Enum.Font.SourceSansBold
PluginName_2.Text = "Name"
PluginName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PluginName_2.TextSize = 17.000
PluginName_2.TextWrapped = true
List_4.Name = "List"
List_4.Parent = PluginInfo
List_4.Active = true
List_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List_4.BackgroundTransparency = 1.000
List_4.BorderSizePixel = 0
List_4.Position = UDim2.new(0.369791657, 0, 0.140893474, 0)
List_4.Size = UDim2.new(0, 121, 0, 249)
List_4.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
List_4.CanvasPosition = Vector2.new(0, 18.0722885)
List_4.CanvasSize = UDim2.new(0, 0, 0, 500)
List_4.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
UIGridLayout_3.Parent = List_4
UIGridLayout_3.CellSize = UDim2.new(0, 120, 0, 15)
Command.Name = "Command"
Command.Parent = UIGridLayout_3
Command.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Command.BackgroundTransparency = 1.000
Command.BorderSizePixel = 0
Command.Size = UDim2.new(0.999999523, 0, 0.400000036, 0)
Command.ZIndex = 10
Command.Font = Enum.Font.SourceSans
Command.Text = ";cmd"
Command.TextColor3 = Color3.fromRGB(255, 255, 255)
Command.TextSize = 14.000
Command.TextWrapped = true
Command.TextXAlignment = Enum.TextXAlignment.Left
InfStoreBtn.MouseButton1Click:Connect(function()
 mainFrame.Visible = true
 mainFrame:TweenPosition(UDim2.new(0.5, -250, 0.5, -150), "InOut", "Quart", 0.5, true, nil)
end)
mainFrame.TopBar.Close.MouseButton1Click:Connect(function()
 mainFrame:TweenPosition(UDim2.new(0.5, -250, 0, -500), "InOut", "Quart", 0.5, true, nil)
end)
mainFrame.TopBar.Title.Text = ("Infinite Store v" .. IS_Settings["Version"])
DiscordInvite.Text = (".gg/" .. IS_Settings["Invite"])
autoCanvas(List_2, UIGridLayout)
autoCanvas(List_3, UIGridLayout_3)
autoCanvas(mainFrame.PluginInfo.List, mainFrame.PluginInfo.List.UIGridLayout)

local pageDesiredLocation = UDim2.new(0, 75, 0, 0)
local pageHiddenLocation = UDim2.new(0, 510, 0, 0)
local pageHiddenLocation2 = UDim2.new(0, -350, 0, 0)
local openColor = Color3.fromRGB(255, 255, 255)
local closedColor = Color3.fromRGB(156, 156, 156)
local installDebounce = false
local checkboxDeb = false
local checkBoxHandler = function(bool, obj)
 if checkboxDeb == false then
  checkboxDeb = true
  if bool == true then
   local tweenGoals = { BackgroundTransparency = 0 }
   local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
   local tween = TweenService:Create(obj.Checked, tweenInfo, tweenGoals)
   tween:Play()
  else
   local tweenGoals = { BackgroundTransparency = 1 }
   local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
   local tween = TweenService:Create(obj.Checked, tweenInfo, tweenGoals)
   tween:Play()
  end
  checkboxDeb = false
 end
end

if _UserSettings.SkipIntro == true then
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0.231, 0, 0, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Welcome, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(0.245, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.cart, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(0.245, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.text, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(0.026, 0, 0.5, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Epik, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(0.296, 0, 0.5, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Devs, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(-0.07, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.text, tweenInfo, tweenGoals)
 tween:Play()
 local tween = TweenService:Create(mainFrame.ListHolder.Home.cart, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(-0.07, 0, 0, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Welcome, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, -0.001, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List1, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.146, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List2, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.292, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List3, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.439, 0) }
 local tweenInfo = TweenInfo.new(0.01, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List4, tweenInfo, tweenGoals)
 tween:Play()
else
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0.231, 0, 0, 0) }
 local tweenInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Welcome, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.6)
 local tweenGoals = { Position = UDim2.new(0.245, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.cart, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(0.245, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.text, tweenInfo, tweenGoals)
 tween:Play()
 wait(1.1)
 local tweenGoals = { Position = UDim2.new(0.026, 0, 0.5, 0) }
 local tweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Epik, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.69420)
 local tweenGoals = { Position = UDim2.new(0.296, 0, 0.5, 0) }
 local tweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Devs, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.9)
 local tweenGoals = { Position = UDim2.new(-0.07, 0, -0.05, 0) }
 local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.text, tweenInfo, tweenGoals)
 tween:Play()
 local tween = TweenService:Create(mainFrame.ListHolder.Home.cart, tweenInfo, tweenGoals)
 tween:Play()
 local tweenGoals = { Position = UDim2.new(-0.07, 0, 0, 0) }
 local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.Welcome, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.8)
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, -0.001, 0) }
 local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List1, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.4)
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.146, 0) }
 local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List2, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.4)
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.292, 0) }
 local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List3, tweenInfo, tweenGoals)
 tween:Play()
 wait(0.4)
 local tweenGoals = { TextTransparency = 0, Position = UDim2.new(0, 0, 0.439, 0) }
 local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
 local tween = TweenService:Create(mainFrame.ListHolder.Home.List.List4, tweenInfo, tweenGoals)
 tween:Play()
end

local pluginInfoToggle = function(bool)
 if bool == true then
  local tweenGoals = { Position = UDim2.new(0.858, 0, 0.063, 0) }
  local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
  local tween = TweenService:Create(mainFrame.PluginInfo, tweenInfo, tweenGoals)
  tween:Play()
 else
  local tweenGoals = { Position = UDim2.new(0.59, 0, 0.063, 0) }
  local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
  local tween = TweenService:Create(mainFrame.PluginInfo, tweenInfo, tweenGoals)
  tween:Play()
 end
end

local tweenColor = function(instance, rgb, property, t1me)
 local tweenGoals = { ImageColor3 = rgb }
 local tweenInfo = TweenInfo.new(t1me, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
 local tween = TweenService:Create(instance, tweenInfo, tweenGoals)
 tween:Play()
end

local tweenColor2 = function(instance, rgb, t1me)
 local tweenGoals = { TextColor3 = rgb }
 local tweenInfo = TweenInfo.new(t1me, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
 local tween = TweenService:Create(instance, tweenInfo, tweenGoals)
 tween:Play()
end

local tweenColor3 = function(instance, rgb, t1me)
 local tweenGoals = { BackgroundColor3 = rgb }
 local tweenInfo = TweenInfo.new(t1me, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
 local tween = TweenService:Create(instance, tweenInfo, tweenGoals)
 tween:Play()
end

local settingsList = mainFrame.ListHolder.Settings.List

local cleanPluginCheck = function()
 if _UserSettings.SafeMode == true then
  for i, v in pairs(IS_Settings["NsfwPlugins"]) do
   mainFrame.ListHolder.Plugins.List[format("%s %s %s", v.Name, v.Creator, v.CreationDate)].Visible = false
  end
 end
end

local ObjectHolder = mainFrame:WaitForChild("ListHolder"):WaitForChild("Plugins"):WaitForChild("List")
local searchBox =
 mainFrame:WaitForChild("ListHolder"):WaitForChild("Plugins"):WaitForChild("SearchBar"):WaitForChild("Search")
local Objects = { ["Frame"] = true }
local Type = 1
local FilterSearch = function(Text)
 for i, v in pairs(ObjectHolder:GetChildren()) do
  if Objects[v.ClassName] then
   if string.match(string.lower(v.Name), tostring(Text)) then
    if Type == 1 then
     v.Visible = true
    end
    v.LayoutOrder = 1
   else
    if Type == 1 then
     v.Visible = false
    end
    v.LayoutOrder = 0
   end
  end
 end
end
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
 local CurrentText = tostring(searchBox.Text)
 ObjectHolder.CanvasPosition = Vector2.new(0, 0, 0, 0)
 if CurrentText == "" then
  for i, v in pairs(ObjectHolder:GetChildren()) do
   if Objects[v.ClassName] then
    v.Visible = true
   end
  end
 else
  FilterSearch(string.lower(CurrentText))
 end
 cleanPluginCheck()
end)

local tweeningDebounce = false

for i, v in pairs(mainFrame.SideBar.Holder:GetChildren()) do
 if v:IsA("TextButton") then
  v.MouseEnter:Connect(function()
   tweenColor2(v, openColor, 0.2)
  end)
  v.MouseLeave:Connect(function()
   if v.cs.Value == false then
    tweenColor2(v, closedColor, 0.2)
   end
  end)
  v.MouseButton1Click:Connect(function()
   if tweeningDebounce == false and not mainFrame.SideBar.Holder[v.Name].cs.Value == true then
    tweeningDebounce = true
    for i2, v2 in pairs(mainFrame.SideBar.Holder:GetDescendants()) do
     if v2:IsA("TextButton") then
      tweenColor2(v2, closedColor, 0.2)
      local tweenGoals = { Position = pageHiddenLocation }
      local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
      local tween555 = TweenService:Create(mainFrame.ListHolder[v2.Name], tweenInfo, tweenGoals)
      tween555:Play()
     end
     if v2.Name == "cs" then
      v2.Value = false
     end
    end
    v.cs.Value = true
    local tweenGoals = { Position = pageDesiredLocation }
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
    local tween = TweenService:Create(mainFrame.ListHolder[v.Name], tweenInfo, tweenGoals)
    mainFrame.ListHolder[v.Name].Visible = true
    mainFrame.ListHolder[v.Name].Position = pageHiddenLocation2
    tween:Play()
    tweenColor2(v, openColor, 0.2)
   end
   wait(1)
   tweeningDebounce = false
  end)
 end
end

local plginCount = 0
local LoadPluginsFromTable = function(ptbl)
 for index, plgin in pairs(ptbl) do
  plginCount = plginCount + 1
  local pluginFrameClone = mainFrame.ListHolder.Plugins.List.UIGridLayout.Template:Clone()
  pluginFrameClone.Name = format("%s %s %s", plgin.Name, plgin.Creator, plgin.CreationDate)
  pluginFrameClone.Author.Text = plgin.Creator
  pluginFrameClone.PluginName.Text = plgin.Name
  pluginFrameClone.Created.Text = plgin.CreationDate
  if isfile(plgin.Name .. ".iy") then
   pluginFrameClone.Install.Text = "Uninstall"
   for i, v in pairs(pluginFrameClone:GetChildren()) do
    tweenColor3(pluginFrameClone, Color3.fromRGB(3, 31, 6), 0.2)
    if v:IsA("TextLabel") or v:IsA("TextButton") then
     tweenColor3(v, Color3.fromRGB(23, 52, 30), 0.2)
    end
   end
  end
  pluginFrameClone.Install.MouseButton1Click:Connect(function()
   if installDebounce == false then
    installDebounce = true
    local pluginData = 'return loadstring(game:HttpGetAsync(("'
     .. tostring(plgin.GithubLink)
     .. '"), true))()'
    if isfile(plgin.Name .. ".iy") == true then
     pluginFrameClone.Install.Text = "Uninstalling"
     deletePlugin(plgin.Name)
     delfile(plgin.Name .. ".iy")
     pluginFrameClone.Install.Text = "Success"
     wait(0.5)
     pluginFrameClone.Install.Text = "Install"
     for i, v in pairs(pluginFrameClone:GetChildren()) do
      tweenColor3(pluginFrameClone, Color3.fromRGB(22, 22, 22), 0.2)
      if v:IsA("TextLabel") or v:IsA("TextButton") then
       tweenColor3(v, Color3.fromRGB(42, 42, 42), 0.2)
      end
     end
    else
     pluginFrameClone.Install.Text = "Installing"
     spawn(function()
      writefile(plgin.Name .. ".iy", pluginData)
      wait()
      addPlugin(plgin.Name)
     end)
     pluginFrameClone.Install.Text = "Success"
     wait(0.5)
     pluginFrameClone.Install.Text = "Uninstall"
     for i, v in pairs(pluginFrameClone:GetChildren()) do
      tweenColor3(pluginFrameClone, Color3.fromRGB(3, 31, 6), 0.2)
      if v:IsA("TextLabel") or v:IsA("TextButton") then
       tweenColor3(v, Color3.fromRGB(23, 52, 30), 0.2)
      end
     end
    end
    installDebounce = false
   end
  end)
  pluginFrameClone.PluginName.InfoBtn.MouseButton1Click:Connect(function()
   if pluginFrameClone.PluginName.InfoBtn.ImageColor3 ~= Color3.fromRGB(255, 255, 255) then
    spawn(function()
     if plgin["Description"] ~= nil then
      if _UserSettings["NoNotifications"] == false then
       notify(
        'Infinite Store - "' .. tostring(plgin["Name"]) .. '" Description',
        tostring(plgin["Description"])
       )
      end
     end
    end)
    mainFrame.PluginInfo.PluginInfo.PluginName.Text = plgin.Name
    for i, v in pairs(mainFrame.ListHolder.Plugins:GetDescendants()) do
     if v.Name == "InfoBtn" and v.Parent.Parent.Parent.Name ~= "UIGridLayout" then
      tweenColor(v, Color3.fromRGB(98, 98, 98), v.ImageColor3, 0.2)
     end
    end
    tweenColor(
     pluginFrameClone.PluginName.InfoBtn,
     Color3.fromRGB(255, 255, 255),
     pluginFrameClone.PluginName.InfoBtn.ImageColor3,
     0.2
    )
    mainFrame.PluginInfo.List.CanvasPosition = Vector2.new(0, 0)
    for i, v in pairs(mainFrame.PluginInfo.List:GetChildren()) do
     if v:IsA("TextLabel") then
      v:Destroy()
     end
    end
    for _, v in next, plgin["Commands"] do
     local CommandLabel = mainFrame.PluginInfo.List.UIGridLayout.Command:Clone()
     CommandLabel.Name = tostring(v)
     CommandLabel.Text = ";" .. tostring(v)
     CommandLabel.Parent = mainFrame.PluginInfo.List
     CommandLabel.Visible = true
    end
    pluginInfoToggle(true)
   else
    pluginInfoToggle(false)
    tweenColor(
     pluginFrameClone.PluginName.InfoBtn,
     Color3.fromRGB(98, 98, 98),
     pluginFrameClone.PluginName.InfoBtn.ImageColor3,
     0.5
    )
   end
  end)
  pluginFrameClone.Parent = mainFrame.ListHolder.Plugins.List
 end
end
LoadPluginsFromTable(IS_Settings["Plugins"])
LoadPluginsFromTable(IS_Settings["NsfwPlugins"])

local guiSettings = {
 ["Start Minimized"] = {
  ["Name"] = "Start Minimized",
  ["Description"] = "Infinite Store will be hidden when executed.",
  ["Function"] = function()
   if _UserSettings.StartMinimized == true then
    checkBoxHandler(false, settingsList["StartMinimized"].CheckBox)
    _UserSettings.StartMinimized = false
   else
    checkBoxHandler(true, settingsList["StartMinimized"].CheckBox)
    _UserSettings.StartMinimized = true
   end
   UpdateSettings()
  end,
 },
 ["Safe Mode"] = {
  ["Name"] = "Safe Mode",
  ["Description"] = "Hide NSFW plugins.",
  ["Function"] = function()
   if _UserSettings.SafeMode == true then
    checkBoxHandler(false, settingsList["SafeMode"].CheckBox)
    _UserSettings.SafeMode = false
    for index, plgin in pairs(IS_Settings["NsfwPlugins"]) do
     mainFrame.ListHolder.Plugins.List[tostring(
      plgin.Name .. " " .. plgin.Creator .. " " .. plgin.CreationDate
     )].Visible =
      true
    end
   else
    checkBoxHandler(true, settingsList["SafeMode"].CheckBox)
    _UserSettings.SafeMode = true
    for index, plgin in pairs(IS_Settings["NsfwPlugins"]) do
     mainFrame.ListHolder.Plugins.List[tostring(
      plgin.Name .. " " .. plgin.Creator .. " " .. plgin.CreationDate
     )].Visible =
      false
    end
   end
   UpdateSettings()
  end,
 },
 ["No Notifications"] = {
  ["Name"] = "No Notifications",
  ["Description"] = "Infinite Store will not give you Infinite Yield notifications.",
  ["Function"] = function()
   if _UserSettings.NoNotifications == true then
    checkBoxHandler(false, settingsList["NoNotifications"].CheckBox)
    _UserSettings.NoNotifications = false
   else
    checkBoxHandler(true, settingsList["NoNotifications"].CheckBox)
    _UserSettings.NoNotifications = true
   end
   UpdateSettings()
  end,
 },
 ["Skip Intro"] = {
  ["Name"] = "Skip Intro",
  ["Description"] = "Skip the Infinite Store loading animation.",
  ["Function"] = function()
   if _UserSettings.SkipIntro == true then
    checkBoxHandler(false, settingsList["SkipIntro"].CheckBox)
    _UserSettings.SkipIntro = false
   else
    checkBoxHandler(true, settingsList["SkipIntro"].CheckBox)
    _UserSettings.SkipIntro = true
   end
   UpdateSettings()
  end,
 },
}
for index, setting in pairs(guiSettings) do
 local tempClone = settingsList.UIGridLayout.Template:Clone()
 tempClone.Name = tostring(gsub(setting["Name"], " ", ""))
 tempClone.SettingName.Text = tostring(setting["Name"])
 tempClone.Description.Text = tostring(setting["Description"])
 tempClone.CheckBox.Btn.MouseButton1Click:Connect(function()
  spawn(function()
   setting.Function()
  end)
 end)
 tempClone.Parent = settingsList
end
for index, val in pairs(_UserSettings) do
 if index ~= "Announcement" then
  settingsList[tostring(gsub(index, " ", ""))].CheckBox.Checked.Transparency = val and 0 or 1
 end
end
cleanPluginCheck()