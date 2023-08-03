if VHub_LOADED and not _G.VHub_DEBUG == true then
	game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notice!";
	Text = "VHub Is Already Loaded!";
	Icon = "rbxthumb://type=Asset&id=8036184560&w=150&h=150"})
Duration = 16;
	return
end

repeat wait() until game:IsLoaded()

pcall(function() getgenv().VHub_LOADED = true end)

loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20Page%20Authenticator'),true))()

game.Players.PlayerAdded:connect(function(player)

if player.Name == "itsyaboivincentt" then
		game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "Owner Joined!";
		Text = "Vhub System: Vincent Aka VHub Owner Joined This Server!";
		Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
	Duration = 16;
     	game:GetService("Players").itsyaboivincentt.DisplayName = "[â­] itsyaboivincentt" 
end

if player.Name == "ChilliChicken3" then
		game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "Owner Joined!";
		Text = "Vhub System: Look At It Aka VHub Dev Joined This Server!";
		Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
	Duration = 16;
     	game:GetService("Players").ChilliChicken3.DisplayName = "[â­] iChilliChicken3"
end
if player.Name == "Number12_KOKC" then
		game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "Owner Joined!";
		Text = "Vhub System: Quan Aka VHub Dev Joined This Server!";
		Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
	Duration = 16;
     	game:GetService("Players").itsyaboivincentt.DisplayName = "[â­] Quan"
end
end)
-- Gui to Lua
-- Version: 3.2

-- Instances:

local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local DesignFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
--local X = Instance.new("TextButton") --retards ðŸ—¿
local VHubImageLabel = Instance.new("ImageLabel")
local Version = Instance.new("TextLabel")
local ScriptsNames = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local EXPLOIT1 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local EXPLOIT2 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local EXPLOIT3 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local EXPLOIT4 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local EXPLOIT5 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local EXPLOIT6 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local EXPLOIT7 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local EXPLOIT8 = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local EXPLOIT9 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local PreviousPage = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local NextPage = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local PageDescription = Instance.new("TextLabel")
local SectionsFrame = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local Home = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local Scripts = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local RequiredItems = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local GUIS = Instance.new("TextButton")
local UICorner_26 = Instance.new("UICorner")
local Animations = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local Commands = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local OtherHubs = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local APIExecutor = Instance.new("TextButton")
local UICorner_30 = Instance.new("UICorner")
local VHubIcon = Instance.new("ImageLabel")
local AnnouncementText = Instance.new("TextLabel")
local ButtonsFrame = Instance.new("Frame")
local Continue = Instance.new("TextButton")
local DiscordLink = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local VersionNum = Instance.new("TextLabel")
local VersionUpdates = Instance.new("TextLabel")
local OwnerTitle = Instance.new("TextLabel")
local itsyaboivincentt5315 = Instance.new("TextLabel")
local And = Instance.new("TextLabel")
local Others = Instance.new("TextLabel")

--Properties:

MainFrame.Name = "MainPage"
MainFrame.Parent = game:GetService("CoreGui").VHubCoreScreen.DragScreen.DragFrame
MainFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
MainFrame.Position = UDim2.new(0, 0, 0, 0)
MainFrame.Size = UDim2.new(0, 387, 0, 239)

UICorner.Parent = MainFrame

DesignFrame.Name = "DesignFrame"
DesignFrame.Parent = MainFrame
DesignFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DesignFrame.Size = UDim2.new(0, 387, 0, 30)

UICorner_2.Parent = DesignFrame

--[[
X.Name = "X"
X.Parent = DesignFrame
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.Position = UDim2.new(0.930303454, 0, 0.100000001, 0)
X.Size = UDim2.new(0, 26, 0, 23)
X.Font = Enum.Font.FredokaOne
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true
X.MouseButton1Down:connect(function()
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Error";
	Text = "Something Went Wrong.";
	Icon = "rbxthumb://type=Asset&id=8036184560&w=150&h=150"})
Duration = 16;
end)
]] --smh

VHubImageLabel.Name = "VHubImageLabel"
VHubImageLabel.Parent = DesignFrame
VHubImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VHubImageLabel.BackgroundTransparency = 1.000
VHubImageLabel.Size = UDim2.new(0, 34, 0, 33)
VHubImageLabel.Image = "rbxassetid://9408318893"

Version.Name = "Version"
Version.Parent = DesignFrame
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1
Version.Position = UDim2.new(0.0778552794, 0, 0.100000009, 0)
Version.Size = UDim2.new(0, 300, 0, 25)
Version.Font = Enum.Font.GothamSemibold
Version.Text = "VHub | Main Page"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextSize = 14.000
Version.TextWrapped = true
Version.TextXAlignment = Enum.TextXAlignment.Left

VHubIcon.Name = "VHubIcon"
VHubIcon.Parent = MainFrame
VHubIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VHubIcon.BackgroundTransparency = 1.000
VHubIcon.Position = UDim2.new(0.0206718352, 0, 0.138075307, 0)
VHubIcon.Size = UDim2.new(0, 50, 0, 50)
VHubIcon.Image = "rbxassetid://9408318893"

AnnouncementText.Name = "Announcement Text"
AnnouncementText.Parent = MainFrame
AnnouncementText.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AnnouncementText.BackgroundTransparency = 0
AnnouncementText.Position = UDim2.new(0.015, 0, 0.347, 0)
AnnouncementText.Size = UDim2.new(0, 220, 0, 110)
AnnouncementText.Font = Enum.Font.Gotham
AnnouncementText.Text = "New GUI Made By Quan! Soon. Anyways If You're Having Trouble Using VHub Or VHub Have Some Bugs, Join Our Discord Server To Report It!"
AnnouncementText.TextColor3 = Color3.fromRGB(255, 255, 255)
AnnouncementText.TextSize = 10
AnnouncementText.TextWrapped = true

UICorner_12.Parent = AnnouncementText

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = MainFrame
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ButtonsFrame.Position = UDim2.new(0.015, 0, 0.830, 0)
ButtonsFrame.Size = UDim2.new(0, 220, 0, 30)

UICorner_15.Parent = ButtonsFrame

Continue.Name = "Continue"
Continue.Parent = ButtonsFrame
Continue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Continue.Position = UDim2.new(0.53, 0, 0.160, 0)
Continue.Size = UDim2.new(0, 94, 0, 21)
Continue.Font = Enum.Font.Gotham
Continue.Text = "Launch"
Continue.TextColor3 = Color3.fromRGB(0, 0, 0)
Continue.TextScaled = true
Continue.TextSize = 14.000
Continue.TextWrapped = true
Continue.MouseButton1Down:connect(function()
MainFrame:Destroy()
game:GetService("CoreGui").VHubCoreScreen.DragScreen.DragFrame.Visible = false
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20Intro'),true))()
wait(4)

game:GetService("CoreGui").VHubCoreScreen.DragScreen.DragFrame.Visible = true
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20Home%20Page'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20FPS%20GUI'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20API%20Executor'),true))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Obfuscatetestloluwu/VHub-Source/main/VHub%20Settings'),true))()

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Credits";
	Text = "Made By: itsyaboivincentt, look at it, Quan";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
wait(5)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Disclaimer!";
	Text = "The Scripts Aren't Made By Us, Credits To Them.";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Version:";
	Text = "Current Version Is 1.21!";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Update Log";
	Text = "To View Update Log, Join Our Discord Server!";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Join!";
	Text = "Join Discord: discord.gg/3NN5zTW7h2";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
wait(20)

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Note!";
	Text = "Some Of The Scripts Are Buggy.";
	Icon = "rbxthumb://type=Asset&id=9408318893&w=150&h=150"})
Duration = 16;
end)

UICorner_10.Parent = Continue

DiscordLink.Name = "Discord Link"
DiscordLink.Parent = ButtonsFrame
DiscordLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordLink.Position = UDim2.new(0.03, 0, 0.160, 0)
DiscordLink.Size = UDim2.new(0, 94, 0, 21)
DiscordLink.Font = Enum.Font.Gotham
DiscordLink.Text = "Copy Discord Link"
DiscordLink.TextColor3 = Color3.fromRGB(0, 0, 0)
DiscordLink.TextScaled = true
DiscordLink.TextSize = 14.000
DiscordLink.TextWrapped = true
DiscordLink.MouseButton1Down:connect(function()
DiscordLink.Text = "Copied To Clipboard!"
setclipboard("discord.gg/3NN5zTW7h2")
end)

UICorner_11.Parent = DiscordLink

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.150, 0, 0.138, 0)
Credits.Size = UDim2.new(0.300, 0, 0.20, 0)
Credits.Font = Enum.Font.GothamSemibold
Credits.Text = "Announcement:"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

SectionsFrame.Name = "UpdatesFrame"
SectionsFrame.Parent = MainFrame
SectionsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SectionsFrame.Position = UDim2.new(0.600, 0, 0.140, 0)
SectionsFrame.Size = UDim2.new(0, 150, 0, 200)

UICorner_22.Parent = SectionsFrame

VersionNum.Name = "VersionNum"
VersionNum.Parent = SectionsFrame
VersionNum.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VersionNum.BackgroundTransparency = 0
VersionNum.Position = UDim2.new(0.0649999976, 0, 0.0199999996, 0)
VersionNum.Size = UDim2.new(0, 130, 0, 18)
VersionNum.Font = Enum.Font.GothamSemibold
VersionNum.Text = "Version: 1.21"
VersionNum.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionNum.TextScaled = true
VersionNum.TextSize = 14.000
VersionNum.TextWrapped = true

UICorner_13.Parent = VersionNum

VersionUpdates.Name = "VersionUpdates"
VersionUpdates.Parent = SectionsFrame
VersionUpdates.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VersionUpdates.BackgroundTransparency = 0
VersionUpdates.Position = UDim2.new(0.0649999976, 0, 0.15, 0)
VersionUpdates.Size = UDim2.new(0, 130, 0, 160)
VersionUpdates.Font = Enum.Font.Gotham
VersionUpdates.Text = "-Added Nameless Animations                                    -Added Prison Life Aimbot"
VersionUpdates.TextColor3 = Color3.fromRGB(200, 200, 200)
VersionUpdates.TextScaled = false
VersionUpdates.TextSize = 11.000
VersionUpdates.TextWrapped = true
VersionUpdates.TextXAlignment = Enum.TextXAlignment.Left
VersionUpdates.TextYAlignment = Enum.TextYAlignment.Top

OwnerTitle.Name = "OwnerTitle"
OwnerTitle.Parent = SectionsFrame
OwnerTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
OwnerTitle.BackgroundTransparency = 1
OwnerTitle.Position = UDim2.new(0.0649999976, 0, 0.680, 0)
OwnerTitle.Size = UDim2.new(0, 130, 0, 18)
OwnerTitle.Font = Enum.Font.GothamSemibold
OwnerTitle.Text = "Owned And Developed By:"
OwnerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
OwnerTitle.TextScaled = true
OwnerTitle.TextSize = 14.000
OwnerTitle.TextWrapped = true

itsyaboivincentt5315.Name = "itsyaboivincentt5315"
itsyaboivincentt5315.Parent = SectionsFrame
itsyaboivincentt5315.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
itsyaboivincentt5315.BackgroundTransparency = 1
itsyaboivincentt5315.Position = UDim2.new(0.0649999976, 0, 0.730, 0)
itsyaboivincentt5315.Size = UDim2.new(0, 130, 0, 18)
itsyaboivincentt5315.Font = Enum.Font.Gotham
itsyaboivincentt5315.Text = "itsyaboivincentt#5315"
itsyaboivincentt5315.TextColor3 = Color3.fromRGB(200, 200, 200)
itsyaboivincentt5315.TextScaled = false
itsyaboivincentt5315.TextSize = 10.000
itsyaboivincentt5315.TextWrapped = true

And.Name = "And"
And.Parent = SectionsFrame
And.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
And.BackgroundTransparency = 1
And.Position = UDim2.new(0.0649999976, 0, 0.780, 0)
And.Size = UDim2.new(0, 130, 0, 18)
And.Font = Enum.Font.Gotham
And.Text = "And"
And.TextColor3 = Color3.fromRGB(255, 255, 255)
And.TextScaled = false
And.TextSize = 10.000
And.TextWrapped = true

Others.Name = "Other Devs"
Others.Parent = SectionsFrame
Others.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Others.BackgroundTransparency = 1
Others.Position = UDim2.new(0.0649999976, 0, 0.830, 0)
Others.Size = UDim2.new(0, 130, 0, 18)
Others.Font = Enum.Font.Gotham
Others.Text = "look at it#7626, Quan#0002"
Others.TextColor3 = Color3.fromRGB(200, 200, 200)
Others.TextScaled = false
Others.TextSize = 9.5
Others.TextWrapped = true