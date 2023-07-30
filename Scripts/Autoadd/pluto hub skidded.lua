for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Pluto" then
        v:Destroy()
    end
end

local Pluto = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameCorner = Instance.new("UICorner")
local SideFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local PlutoName = Instance.new("TextLabel")
local SideFrameDeco = Instance.new("Frame")
local SelectTab = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local HomeButton = Instance.new("TextButton")
local HomeSelect = Instance.new("Frame")
local MainButton = Instance.new("TextButton")
local MainSelect = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local ToggleSelect = Instance.new("Frame")
local TargetButton = Instance.new("TextButton")
local TargetSelect = Instance.new("Frame")
local AutobuyButton = Instance.new("TextButton")
local AutobuySelect = Instance.new("Frame")
local TeleportsButton = Instance.new("TextButton")
local TeleportsSelect = Instance.new("Frame")
local ExtraButton = Instance.new("TextButton")
local ExtraSelect = Instance.new("Frame")
local CreditsButton = Instance.new("TextButton")
local CreditsSelect = Instance.new("Frame")
local Dropshadow = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Transition = Instance.new("Frame")
local Home = Instance.new("Frame")
local HomeTitle = Instance.new("TextLabel")
local LocalProfile = Instance.new("ImageLabel")
local LocalProfileCorner = Instance.new("UICorner")
local LocalDisplayName = Instance.new("TextLabel")
local LocalUsername = Instance.new("TextLabel")
local DiscordButton = Instance.new("TextButton")
local DiscordUICorner = Instance.new("UICorner")
local RankFrame = Instance.new("Frame")
local RankLabel = Instance.new("TextLabel")
local RankText = Instance.new("TextLabel")
local RankUICorner = Instance.new("UICorner")
local PlutoUsersFrame = Instance.new("Frame")
local PlutoUsersLabel = Instance.new("TextLabel")
local PlutoUsersText = Instance.new("TextLabel")
local PlutoUsersUICorner = Instance.new("UICorner")
local VersionFrame = Instance.new("Frame")
local VersionLabel = Instance.new("TextLabel")
local VersionText = Instance.new("TextLabel")
local VersionFrameCorner = Instance.new("UICorner")
local WelcomeFrame = Instance.new("Frame")
local WelcomeLabel = Instance.new("TextLabel")
local WelcomeText = Instance.new("TextLabel")
local WelcomeUICorner = Instance.new("UICorner")
local SettingsButton = Instance.new("ImageButton")
local SettingsButtonGradient = Instance.new("UIGradient")
local Main = Instance.new("Frame")
local MainTitle = Instance.new("TextLabel")
local MainSearchBoxFrame = Instance.new("Frame")
local MainSearchBoxFrameCorner = Instance.new("UICorner")
local MainSearchBoxImage = Instance.new("ImageButton")
local MainSearchBox = Instance.new("TextBox")
local MainScrollingFrame = Instance.new("ScrollingFrame")
local MainList = Instance.new("UIListLayout")
local Toggle = Instance.new("Frame")
local ToggleTitle = Instance.new("TextLabel")
local ToggleSearchBoxFrame = Instance.new("Frame")
local ToggleSearchBoxFrameCorner = Instance.new("UICorner")
local ToggleSearchBoxImage = Instance.new("ImageButton")
local ToggleSearchBox = Instance.new("TextBox")
local ToggleScrollingFrame = Instance.new("ScrollingFrame")
local ToggleList = Instance.new("UIListLayout")
local Target = Instance.new("Frame")
local TargetTitle = Instance.new("TextLabel")
local TargetInfoFrame = Instance.new("ImageLabel")
local TargetInfoFrameCorner = Instance.new("UICorner")
local TargetProfile = Instance.new("ImageLabel")
local TargetProfileCorner = Instance.new("UICorner")
local TargetUsername = Instance.new("TextBox")
local TargetCash = Instance.new("TextLabel")
local TargetCashCorner = Instance.new("UICorner")
local TargetRank = Instance.new("TextLabel")
local TargetRankCorner = Instance.new("UICorner")
local TargetScrollingFrame = Instance.new("ScrollingFrame")
local TargetList = Instance.new("UIListLayout")
local Autobuy = Instance.new("Frame")
local AutobuyTitle = Instance.new("TextLabel")
local AutobuySearchBoxFrame = Instance.new("Frame")
local AutobuySearchBoxFrameCorner = Instance.new("UICorner")
local AutobuySearchBoxImage = Instance.new("ImageButton")
local AutobuySearchBox = Instance.new("TextBox")
local AutobuyScrollingFrame = Instance.new("ScrollingFrame")
local AutobuyList = Instance.new("UIListLayout")
local Teleports = Instance.new("Frame")
local TeleportsTitle = Instance.new("TextLabel")
local TeleportsSearchBoxFrame = Instance.new("Frame")
local TeleportsSearchBoxFrameCorner = Instance.new("UICorner")
local TeleportsSearchBoxImage = Instance.new("ImageButton")
local TeleportsSearchBox = Instance.new("TextBox")
local TeleportsScrollingFrame = Instance.new("ScrollingFrame")
local TeleportsList = Instance.new("UIListLayout")
local Extra = Instance.new("Frame")
local ExtraTitle = Instance.new("TextLabel")
local ExtraSearchBoxFrame = Instance.new("Frame")
local ExtraSearchBoxFrameCorner = Instance.new("UICorner")
local ExtraSearchBoxImage = Instance.new("ImageButton")
local ExtraSearchBox = Instance.new("TextBox")
local ExtraScrollingFrame = Instance.new("ScrollingFrame")
local ExtraList = Instance.new("UIListLayout")
local Credits = Instance.new("Frame")
local CreditsTitle = Instance.new("TextLabel")
local CreditsScrollingFrame = Instance.new("ScrollingFrame")
local CreditsList = Instance.new("UIListLayout")
local Settings = Instance.new("Frame")
local SettingsTitle = Instance.new("TextLabel")
local SettingsStuffHolder = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local SelfKickButton = Instance.new("TextButton")
local SelfKickButtonUICorner = Instance.new("UICorner")
local SelfKickButtonIcon = Instance.new("ImageLabel")
local SelfKickButtonIconGradient = Instance.new("UIGradient")
local SelfKickButtonGradient = Instance.new("UIGradient")
local EditThemesButton = Instance.new("TextButton")
local EditThemesButtonUICorner = Instance.new("UICorner")
local EditThemesButtonIcon = Instance.new("ImageLabel")
local EditThemesButtonIconGradient = Instance.new("UIGradient")
local EditThemesButtonGradient = Instance.new("UIGradient")
local ThemeChangerFrame = Instance.new("Frame")
local ThemeChangerFrameUICorner = Instance.new("UICorner")
local ThemeChangerDropshadow = Instance.new("ImageLabel")
local ThemeChangerTitle = Instance.new("TextLabel")
local ThemesMainHolder = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local DefaultButton = Instance.new("TextButton")
local DefaultButtonUICorner = Instance.new("UICorner")
local DefaultButtonGradient = Instance.new("UIGradient")
local BabyBlueButton = Instance.new("TextButton")
local BabyBlueButtonUICorner = Instance.new("UICorner")
local BabyBlueButtonGradient = Instance.new("UIGradient")
local HotPinkButton = Instance.new("TextButton")
local HotPinkButtonUICorner = Instance.new("UICorner")
local HotPinkButtonGradient = Instance.new("UIGradient")
local PurpleButton = Instance.new("TextButton")
local PurpleButtonUICorner = Instance.new("UICorner")
local PurpleButtonGradient = Instance.new("UIGradient")
local RedButton = Instance.new("TextButton")
local RedButtonUICorner = Instance.new("UICorner")
local RedButtonGradient = Instance.new("UIGradient")
local YellowButton = Instance.new("TextButton")
local YellowButtonUICorner = Instance.new("UICorner")
local YellowButtonGradient = Instance.new("UIGradient")
local CloseThemeChanger = Instance.new("TextButton")
local CloseThemeChangerUICorner = Instance.new("UICorner")
local NotificationsButton = Instance.new("TextButton")
local NotificationsButtonUICorner = Instance.new("UICorner")
local NotificationsButtonIcon = Instance.new("ImageLabel")
local NotificationsButtonIconGradient = Instance.new("UIGradient")
local NotificationsButtonGradient = Instance.new("UIGradient")
local SpecialScriptButton = Instance.new("TextButton")
local SpecialScriptButtonUICorner = Instance.new("UICorner")
local SpecialScriptButtonIcon = Instance.new("ImageLabel")
local SpecialScriptButtonIconGradient = Instance.new("UIGradient")
local SpecialScriptButtonGradient = Instance.new("UIGradient")
local AboutPlutoButton = Instance.new("TextButton")
local AboutPlutoButtonUICorner = Instance.new("UICorner")
local AboutPlutoButtonIcon = Instance.new("ImageLabel")
local AboutPlutoButtonIconGradient = Instance.new("UIGradient")
local AboutPlutoButtonGradient = Instance.new("UIGradient")
local ExitPlutoButton = Instance.new("TextButton")
local ExitPlutoButtonUICorner = Instance.new("UICorner")
local ExitButtonIcon = Instance.new("ImageLabel")
local ExitButtonIconGradient = Instance.new("UIGradient")
local ExitPlutoButtonGradient = Instance.new("UIGradient")
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/Scrvpter/Pluto/Lua/Features/Notification.Lua", true))()
getgenv().isflingingyeah = false

Pluto.Name = "Pluto"
Pluto.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = Pluto
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 350)

MainFrameCorner.Name = "MainFrameCorner"
MainFrameCorner.Parent = MainFrame

SideFrame.Name = "SideFrame"
SideFrame.Parent = MainFrame
SideFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SideFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SideFrame.BorderSizePixel = 0
SideFrame.Position = UDim2.new(0.099999994, 0, 0.5, 0)
SideFrame.Size = UDim2.new(0, 120, 0, 350)

UICorner.Parent = SideFrame

PlutoName.Name = "PlutoName"
PlutoName.Parent = SideFrame
PlutoName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlutoName.BackgroundTransparency = 1.000
PlutoName.Size = UDim2.new(0, 65, 0, 29)
PlutoName.Font = Enum.Font.GothamBlack
PlutoName.RichText = true
PlutoName.Text = "PLU<font color=\"rgb(99,99,99)\">TO</font>"
PlutoName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlutoName.TextSize = 14.000

SideFrameDeco.Name = "SideFrameDeco"
SideFrameDeco.Parent = SideFrame
SideFrameDeco.AnchorPoint = Vector2.new(0.5, 0.5)
SideFrameDeco.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SideFrameDeco.BorderSizePixel = 0
SideFrameDeco.Position = UDim2.new(0.966666639, 0, 0.5, 0)
SideFrameDeco.Size = UDim2.new(0, 8, 0, 350)

SelectTab.Name = "SelectTab"
SelectTab.Parent = SideFrame
SelectTab.AnchorPoint = Vector2.new(0.5, 0.5)
SelectTab.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SelectTab.BorderSizePixel = 0
SelectTab.Position = UDim2.new(0.5, 0, 0.524285734, 0)
SelectTab.Size = UDim2.new(0, 120, 0, 309)

UIListLayout.Parent = SelectTab
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

HomeButton.Name = "HomeButton"
HomeButton.Parent = SelectTab
HomeButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HomeButton.BackgroundTransparency = 1.000
HomeButton.BorderSizePixel = 0
HomeButton.Position = UDim2.new(0.233333334, 0, 0, 0)
HomeButton.Size = UDim2.new(0, 100, 0, 30)
HomeButton.AutoButtonColor = false
HomeButton.Font = Enum.Font.GothamBlack
HomeButton.Text = "Home"
HomeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.TextSize = 14.000
HomeButton.TextXAlignment = Enum.TextXAlignment.Left

HomeSelect.Name = "HomeSelect"
HomeSelect.Parent = HomeButton
HomeSelect.AnchorPoint = Vector2.new(0.5, 0.5)
HomeSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
HomeSelect.Size = UDim2.new(0, 2, 0, 2)

MainButton.Name = "MainButton"
MainButton.Parent = SelectTab
MainButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainButton.BackgroundTransparency = 1.000
MainButton.BorderSizePixel = 0
MainButton.Position = UDim2.new(0.233333334, 0, 0, 0)
MainButton.Size = UDim2.new(0, 100, 0, 30)
MainButton.AutoButtonColor = false
MainButton.Font = Enum.Font.GothamBlack
MainButton.Text = "Main"
MainButton.TextColor3 = Color3.fromRGB(99, 99, 99)
MainButton.TextSize = 14.000
MainButton.TextXAlignment = Enum.TextXAlignment.Left

MainSelect.Name = "MainSelect"
MainSelect.Parent = MainButton
MainSelect.AnchorPoint = Vector2.new(0.5, 0.5)
MainSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainSelect.BackgroundTransparency = 1.000
MainSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
MainSelect.Size = UDim2.new(0, 2, 0, 2)

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = SelectTab
ToggleButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.233333334, 0, 0, 0)
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.AutoButtonColor = false
ToggleButton.Font = Enum.Font.GothamBlack
ToggleButton.Text = "Toggle"
ToggleButton.TextColor3 = Color3.fromRGB(99, 99, 99)
ToggleButton.TextSize = 14.000
ToggleButton.TextXAlignment = Enum.TextXAlignment.Left

ToggleSelect.Name = "ToggleSelect"
ToggleSelect.Parent = ToggleButton
ToggleSelect.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleSelect.BackgroundTransparency = 1.000
ToggleSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
ToggleSelect.Size = UDim2.new(0, 2, 0, 2)

TargetButton.Name = "TargetButton"
TargetButton.Parent = SelectTab
TargetButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TargetButton.BackgroundTransparency = 1.000
TargetButton.BorderSizePixel = 0
TargetButton.Position = UDim2.new(0.233333334, 0, 0, 0)
TargetButton.Size = UDim2.new(0, 100, 0, 30)
TargetButton.AutoButtonColor = false
TargetButton.Font = Enum.Font.GothamBlack
TargetButton.Text = "Target"
TargetButton.TextColor3 = Color3.fromRGB(99, 99, 99)
TargetButton.TextSize = 14.000
TargetButton.TextXAlignment = Enum.TextXAlignment.Left

TargetSelect.Name = "TargetSelect"
TargetSelect.Parent = TargetButton
TargetSelect.AnchorPoint = Vector2.new(0.5, 0.5)
TargetSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetSelect.BackgroundTransparency = 1.000
TargetSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
TargetSelect.Size = UDim2.new(0, 2, 0, 2)

AutobuyButton.Name = "AutobuyButton"
AutobuyButton.Parent = SelectTab
AutobuyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AutobuyButton.BackgroundTransparency = 1.000
AutobuyButton.BorderSizePixel = 0
AutobuyButton.Position = UDim2.new(0.233333334, 0, 0, 0)
AutobuyButton.Size = UDim2.new(0, 100, 0, 30)
AutobuyButton.AutoButtonColor = false
AutobuyButton.Font = Enum.Font.GothamBlack
AutobuyButton.Text = "Autobuy"
AutobuyButton.TextColor3 = Color3.fromRGB(99, 99, 99)
AutobuyButton.TextSize = 14.000
AutobuyButton.TextXAlignment = Enum.TextXAlignment.Left

AutobuySelect.Name = "AutobuySelect"
AutobuySelect.Parent = AutobuyButton
AutobuySelect.AnchorPoint = Vector2.new(0.5, 0.5)
AutobuySelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutobuySelect.BackgroundTransparency = 1.000
AutobuySelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
AutobuySelect.Size = UDim2.new(0, 2, 0, 2)

TeleportsButton.Name = "TeleportsButton"
TeleportsButton.Parent = SelectTab
TeleportsButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TeleportsButton.BackgroundTransparency = 1.000
TeleportsButton.BorderSizePixel = 0
TeleportsButton.Position = UDim2.new(0.233333334, 0, 0, 0)
TeleportsButton.Size = UDim2.new(0, 100, 0, 30)
TeleportsButton.AutoButtonColor = false
TeleportsButton.Font = Enum.Font.GothamBlack
TeleportsButton.Text = "Teleports"
TeleportsButton.TextColor3 = Color3.fromRGB(99, 99, 99)
TeleportsButton.TextSize = 14.000
TeleportsButton.TextXAlignment = Enum.TextXAlignment.Left

TeleportsSelect.Name = "TeleportsSelect"
TeleportsSelect.Parent = TeleportsButton
TeleportsSelect.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportsSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportsSelect.BackgroundTransparency = 1.000
TeleportsSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
TeleportsSelect.Size = UDim2.new(0, 2, 0, 2)

ExtraButton.Name = "ExtraButton"
ExtraButton.Parent = SelectTab
ExtraButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ExtraButton.BackgroundTransparency = 1.000
ExtraButton.BorderSizePixel = 0
ExtraButton.Position = UDim2.new(0.233333334, 0, 0, 0)
ExtraButton.Size = UDim2.new(0, 100, 0, 30)
ExtraButton.AutoButtonColor = false
ExtraButton.Font = Enum.Font.GothamBlack
ExtraButton.Text = "Extra"
ExtraButton.TextColor3 = Color3.fromRGB(99, 99, 99)
ExtraButton.TextSize = 14.000
ExtraButton.TextXAlignment = Enum.TextXAlignment.Left

ExtraSelect.Name = "ExtraSelect"
ExtraSelect.Parent = ExtraButton
ExtraSelect.AnchorPoint = Vector2.new(0.5, 0.5)
ExtraSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtraSelect.BackgroundTransparency = 1.000
ExtraSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
ExtraSelect.Size = UDim2.new(0, 2, 0, 2)

CreditsButton.Name = "CreditsButton"
CreditsButton.Parent = SelectTab
CreditsButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CreditsButton.BackgroundTransparency = 1.000
CreditsButton.BorderSizePixel = 0
CreditsButton.Position = UDim2.new(0.233333334, 0, 0, 0)
CreditsButton.Size = UDim2.new(0, 100, 0, 30)
CreditsButton.AutoButtonColor = false
CreditsButton.Font = Enum.Font.GothamBlack
CreditsButton.Text = "Credits"
CreditsButton.TextColor3 = Color3.fromRGB(99, 99, 99)
CreditsButton.TextSize = 14.000
CreditsButton.TextXAlignment = Enum.TextXAlignment.Left

CreditsSelect.Name = "CreditsSelect"
CreditsSelect.Parent = CreditsButton
CreditsSelect.AnchorPoint = Vector2.new(0.5, 0.5)
CreditsSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsSelect.BackgroundTransparency = 1.000
CreditsSelect.Position = UDim2.new(-0.100000001, 0, 0.5, 0)
CreditsSelect.Size = UDim2.new(0, 2, 0, 2)

Dropshadow.Name = "Dropshadow"
Dropshadow.Parent = MainFrame
Dropshadow.AnchorPoint = Vector2.new(0.5, 0.5)
Dropshadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropshadow.BackgroundTransparency = 1.000
Dropshadow.BorderSizePixel = 0
Dropshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Dropshadow.Size = UDim2.new(1, 60, 1, 60)
Dropshadow.ZIndex = 0
Dropshadow.Image = "rbxassetid://6105530152"
Dropshadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Dropshadow.ImageTransparency = 0.200

Tabs.Name = "Tabs"
Tabs.Parent = MainFrame
Tabs.AnchorPoint = Vector2.new(0.5, 0.5)
Tabs.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Tabs.BackgroundTransparency = 1.000
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0.600000024, 0, 0.5, 0)
Tabs.Size = UDim2.new(0, 480, 0, 350)

Transition.Name = "Tabs"
Transition.Parent = Tabs
Transition.AnchorPoint = Vector2.new(0.5, 0.5)
Transition.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Transition.BackgroundTransparency = 1.000
Transition.BorderSizePixel = 0
Transition.Position = UDim2.new(0.5, 0, 0.5, 0)
Transition.Size = UDim2.new(0, 470, 0, 350)
Transition.ZIndex = 100

Home.Name = "Home"
Home.Parent = Tabs
Home.AnchorPoint = Vector2.new(0.5, 0.5)
Home.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Home.BackgroundTransparency = 1.000
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.5, 0, 0.5, 0)
Home.Size = UDim2.new(0, 480, 0, 350)

HomeTitle.Name = "HomeTitle"
HomeTitle.Parent = Home
HomeTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeTitle.BackgroundTransparency = 1.000
HomeTitle.BorderSizePixel = 0
HomeTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
HomeTitle.Size = UDim2.new(0, 60, 0, 20)
HomeTitle.Font = Enum.Font.Gotham
HomeTitle.Text = "Home"
HomeTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeTitle.TextSize = 14.000
HomeTitle.TextXAlignment = Enum.TextXAlignment.Left
HomeTitle.TextYAlignment = Enum.TextYAlignment.Bottom

LocalProfile.Name = "LocalProfile"
LocalProfile.Parent = Home
LocalProfile.AnchorPoint = Vector2.new(0.5, 0.5)
LocalProfile.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LocalProfile.Position = UDim2.new(0.123622909, 0, 0.265595227, 0)
LocalProfile.Size = UDim2.new(0, 100, 0, 100)
LocalProfile.Image = "rbxthumb://type=AvatarHeadShot&id=1&w=420&h=420"

LocalProfileCorner.CornerRadius = UDim.new(1, 0)
LocalProfileCorner.Name = "LocalProfileCorner"
LocalProfileCorner.Parent = LocalProfile

LocalDisplayName.Name = "LocalDisplayName"
LocalDisplayName.Parent = LocalProfile
LocalDisplayName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LocalDisplayName.BackgroundTransparency = 1.000
LocalDisplayName.Position = UDim2.new(1.05999994, 0, 0.300000012, 0)
LocalDisplayName.Size = UDim2.new(0, 202, 0, 16)
LocalDisplayName.Font = Enum.Font.GothamBlack
LocalDisplayName.Text = "Roblox"
LocalDisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
LocalDisplayName.TextSize = 18.000
LocalDisplayName.TextXAlignment = Enum.TextXAlignment.Left

LocalUsername.Name = "LocalUsername"
LocalUsername.Parent = LocalProfile
LocalUsername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LocalUsername.BackgroundTransparency = 1.000
LocalUsername.Position = UDim2.new(1.05999994, 0, 0.469999999, 0)
LocalUsername.Size = UDim2.new(0, 196, 0, 16)
LocalUsername.Font = Enum.Font.GothamBlack
LocalUsername.Text = "@Roblox"
LocalUsername.TextColor3 = Color3.fromRGB(81, 81, 81)
LocalUsername.TextSize = 14.000
LocalUsername.TextXAlignment = Enum.TextXAlignment.Left

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = Home
DiscordButton.AnchorPoint = Vector2.new(0.5, 0.5)
DiscordButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0.495954394, 0, 0.905833244, 0)
DiscordButton.Size = UDim2.new(0, 460, 0, 40)
DiscordButton.AutoButtonColor = false
DiscordButton.Font = Enum.Font.Gotham
DiscordButton.Text = "Join Discord Server"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 14.000

DiscordUICorner.CornerRadius = UDim.new(0, 5)
DiscordUICorner.Name = "DiscordUICorner"
DiscordUICorner.Parent = DiscordButton

RankFrame.Name = "RankFrame"
RankFrame.Parent = Home
RankFrame.AnchorPoint = Vector2.new(0.5, 0.5)
RankFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RankFrame.BorderSizePixel = 0
RankFrame.Position = UDim2.new(0.168449908, 0, 0.514285743, 0)
RankFrame.Size = UDim2.new(0, 143, 0, 50)

RankLabel.Name = "RankLabel"
RankLabel.Parent = RankFrame
RankLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RankLabel.BackgroundTransparency = 1.000
RankLabel.Position = UDim2.new(0.0487012975, 0, 0, 0)
RankLabel.Size = UDim2.new(0, 120, 0, 20)
RankLabel.Font = Enum.Font.Gotham
RankLabel.Text = "Rank"
RankLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
RankLabel.TextSize = 14.000
RankLabel.TextXAlignment = Enum.TextXAlignment.Left
RankLabel.TextYAlignment = Enum.TextYAlignment.Bottom

RankText.Name = "RankText"
RankText.Parent = RankFrame
RankText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RankText.BackgroundTransparency = 1.000
RankText.BorderSizePixel = 0
RankText.Position = UDim2.new(0.0489997081, 0, 0.400000006, 0)
RankText.Size = UDim2.new(0, 129, 0, 29)
RankText.Font = Enum.Font.GothamBlack
RankText.Text = "Default"
RankText.TextColor3 = Color3.fromRGB(99, 99, 99)
RankText.TextSize = 14.000
RankText.TextWrapped = true
RankText.TextXAlignment = Enum.TextXAlignment.Left

RankUICorner.CornerRadius = UDim.new(0, 5)
RankUICorner.Name = "RankUICorner"
RankUICorner.Parent = RankFrame

PlutoUsersFrame.Name = "PlutoUsersFrame"
PlutoUsersFrame.Parent = Home
PlutoUsersFrame.AnchorPoint = Vector2.new(0.5, 0.5)
PlutoUsersFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
PlutoUsersFrame.BorderSizePixel = 0
PlutoUsersFrame.Position = UDim2.new(0.497616589, 0, 0.514285743, 0)
PlutoUsersFrame.Size = UDim2.new(0, 143, 0, 50)

PlutoUsersLabel.Name = "PlutoUsersLabel"
PlutoUsersLabel.Parent = PlutoUsersFrame
PlutoUsersLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlutoUsersLabel.BackgroundTransparency = 1.000
PlutoUsersLabel.Position = UDim2.new(0.0487012975, 0, 0, 0)
PlutoUsersLabel.Size = UDim2.new(0, 120, 0, 20)
PlutoUsersLabel.Font = Enum.Font.Gotham
PlutoUsersLabel.Text = "Pluto Users"
PlutoUsersLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PlutoUsersLabel.TextSize = 14.000
PlutoUsersLabel.TextXAlignment = Enum.TextXAlignment.Left
PlutoUsersLabel.TextYAlignment = Enum.TextYAlignment.Bottom

PlutoUsersText.Name = "PlutoUsersText"
PlutoUsersText.Parent = PlutoUsersFrame
PlutoUsersText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlutoUsersText.BackgroundTransparency = 1.000
PlutoUsersText.BorderSizePixel = 0
PlutoUsersText.Position = UDim2.new(0.0489997081, 0, 0.400000006, 0)
PlutoUsersText.Size = UDim2.new(0, 129, 0, 29)
PlutoUsersText.Font = Enum.Font.GothamBlack
PlutoUsersText.Text = "0"
PlutoUsersText.TextColor3 = Color3.fromRGB(99, 99, 99)
PlutoUsersText.TextSize = 14.000
PlutoUsersText.TextWrapped = true
PlutoUsersText.TextXAlignment = Enum.TextXAlignment.Left

PlutoUsersUICorner.CornerRadius = UDim.new(0, 5)
PlutoUsersUICorner.Name = "PlutoUsersUICorner"
PlutoUsersUICorner.Parent = PlutoUsersFrame

VersionFrame.Name = "VersionFrame"
VersionFrame.Parent = Home
VersionFrame.AnchorPoint = Vector2.new(0.5, 0.5)
VersionFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
VersionFrame.BorderSizePixel = 0
VersionFrame.Position = UDim2.new(0.830949903, 0, 0.514285743, 0)
VersionFrame.Size = UDim2.new(0, 143, 0, 50)

VersionLabel.Name = "VersionLabel"
VersionLabel.Parent = VersionFrame
VersionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.BackgroundTransparency = 1.000
VersionLabel.Position = UDim2.new(0.0487012975, 0, 0, 0)
VersionLabel.Size = UDim2.new(0, 120, 0, 20)
VersionLabel.Font = Enum.Font.Gotham
VersionLabel.Text = "Version"
VersionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.TextSize = 14.000
VersionLabel.TextXAlignment = Enum.TextXAlignment.Left
VersionLabel.TextYAlignment = Enum.TextYAlignment.Bottom

VersionText.Name = "VersionText"
VersionText.Parent = VersionFrame
VersionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionText.BackgroundTransparency = 1.000
VersionText.BorderSizePixel = 0
VersionText.Position = UDim2.new(0.0489997081, 0, 0.400000006, 0)
VersionText.Size = UDim2.new(0, 129, 0, 29)
VersionText.Font = Enum.Font.GothamBlack
VersionText.Text = "V1.2.3"
VersionText.TextColor3 = Color3.fromRGB(99, 99, 99)
VersionText.TextSize = 14.000
VersionText.TextWrapped = true
VersionText.TextXAlignment = Enum.TextXAlignment.Left

VersionFrameCorner.CornerRadius = UDim.new(0, 5)
VersionFrameCorner.Name = "VersionFrameCorner"
VersionFrameCorner.Parent = VersionFrame

WelcomeFrame.Name = "WelcomeFrame"
WelcomeFrame.Parent = Home
WelcomeFrame.AnchorPoint = Vector2.new(0.5, 0.5)
WelcomeFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
WelcomeFrame.BorderSizePixel = 0
WelcomeFrame.Position = UDim2.new(0.49969992, 0, 0.71714288, 0)
WelcomeFrame.Size = UDim2.new(0, 461, 0, 64)

WelcomeLabel.Name = "WelcomeLabel"
WelcomeLabel.Parent = WelcomeFrame
WelcomeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WelcomeLabel.BackgroundTransparency = 1.000
WelcomeLabel.Position = UDim2.new(0.0139941387, 0, 0, 0)
WelcomeLabel.Size = UDim2.new(0, 120, 0, 20)
WelcomeLabel.Font = Enum.Font.Gotham
WelcomeLabel.Text = "Welcome"
WelcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeLabel.TextSize = 14.000
WelcomeLabel.TextXAlignment = Enum.TextXAlignment.Left
WelcomeLabel.TextYAlignment = Enum.TextYAlignment.Bottom

WelcomeText.Name = "WelcomeText"
WelcomeText.Parent = WelcomeFrame
WelcomeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.BackgroundTransparency = 1.000
WelcomeText.BorderSizePixel = 0
WelcomeText.Position = UDim2.new(0.015199475, 0, 0.400000095, 0)
WelcomeText.Size = UDim2.new(0, 446, 0, 29)
WelcomeText.Font = Enum.Font.GothamBlack
WelcomeText.Text = "Thank you for choosing Pluto."
WelcomeText.TextColor3 = Color3.fromRGB(99, 99, 99)
WelcomeText.TextSize = 14.000
WelcomeText.TextWrapped = true
WelcomeText.TextXAlignment = Enum.TextXAlignment.Left
WelcomeText.TextYAlignment = Enum.TextYAlignment.Top

WelcomeUICorner.CornerRadius = UDim.new(0, 5)
WelcomeUICorner.Name = "WelcomeUICorner"
WelcomeUICorner.Parent = WelcomeFrame

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Home
SettingsButton.BackgroundTransparency = 1.000
SettingsButton.Position = UDim2.new(0.913158238, 0, 0.0472390056, 0)
SettingsButton.Size = UDim2.new(0, 25, 0, 25)
SettingsButton.ZIndex = 2
SettingsButton.Image = "rbxassetid://3926307971"
SettingsButton.ImageRectOffset = Vector2.new(324, 124)
SettingsButton.ImageRectSize = Vector2.new(36, 36)

SettingsButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
SettingsButtonGradient.Rotation = 45
SettingsButtonGradient.Name = "SettingsButtonGradient"
SettingsButtonGradient.Parent = SettingsButton

Main.Name = "Main"
Main.Parent = Tabs
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 480, 0, 350)
Main.Visible = false

MainTitle.Name = "MainTitle"
MainTitle.Parent = Main
MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.BackgroundTransparency = 1.000
MainTitle.BorderSizePixel = 0
MainTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
MainTitle.Size = UDim2.new(0, 60, 0, 20)
MainTitle.Font = Enum.Font.Gotham
MainTitle.Text = "Main"
MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.TextSize = 14.000
MainTitle.TextXAlignment = Enum.TextXAlignment.Left
MainTitle.TextYAlignment = Enum.TextYAlignment.Bottom

MainSearchBoxFrame.Name = "MainSearchBoxFrame"
MainSearchBoxFrame.Parent = Main
MainSearchBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainSearchBoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainSearchBoxFrame.BorderSizePixel = 0
MainSearchBoxFrame.Position = UDim2.new(0.474583298, 0, 0.0770000368, 0)
MainSearchBoxFrame.Size = UDim2.new(0, 315, 0, 32)

MainSearchBoxFrameCorner.Name = "MainSearchBoxFrameCorner"
MainSearchBoxFrameCorner.Parent = MainSearchBoxFrame

MainSearchBoxImage.Name = "MainSearchBoxImage"
MainSearchBoxImage.Parent = MainSearchBoxFrame
MainSearchBoxImage.AnchorPoint = Vector2.new(0.5, 0.5)
MainSearchBoxImage.BackgroundTransparency = 1.000
MainSearchBoxImage.Position = UDim2.new(0.0610000007, 0, 0.5, 0)
MainSearchBoxImage.Size = UDim2.new(0, 25, 0, 25)
MainSearchBoxImage.ZIndex = 2
MainSearchBoxImage.Image = "rbxassetid://3926305904"
MainSearchBoxImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
MainSearchBoxImage.ImageRectOffset = Vector2.new(964, 324)
MainSearchBoxImage.ImageRectSize = Vector2.new(36, 36)

MainSearchBox.Name = "MainSearchBox"
MainSearchBox.Parent = MainSearchBoxFrame
MainSearchBox.AnchorPoint = Vector2.new(0.5, 0.5)
MainSearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainSearchBox.BackgroundTransparency = 1.000
MainSearchBox.BorderSizePixel = 0
MainSearchBox.Position = UDim2.new(0.536507964, 0, 0.49609375, 0)
MainSearchBox.Size = UDim2.new(0, 275, 0, 24)
MainSearchBox.Font = Enum.Font.GothamBlack
MainSearchBox.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
MainSearchBox.PlaceholderText = "Search.."
MainSearchBox.Text = ""
MainSearchBox.TextColor3 = Color3.fromRGB(99, 99, 99)
MainSearchBox.TextSize = 13.000
MainSearchBox.TextXAlignment = Enum.TextXAlignment.Left

MainScrollingFrame.Name = "MainScrollingFrame"
MainScrollingFrame.Parent = Main
MainScrollingFrame.Active = true
MainScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainScrollingFrame.BackgroundTransparency = 1.000
MainScrollingFrame.BorderSizePixel = 0
MainScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.587142885, 0)
MainScrollingFrame.Size = UDim2.new(0, 463, 0, 289)
MainScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
MainScrollingFrame.ScrollBarThickness = 3
MainScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

MainList.Name = "MainList"
MainList.Parent = MainScrollingFrame
MainList.HorizontalAlignment = Enum.HorizontalAlignment.Center
MainList.SortOrder = Enum.SortOrder.LayoutOrder
MainList.Padding = UDim.new(0, 10)

Toggle.Name = "Toggle"
Toggle.Parent = Tabs
Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
Toggle.Size = UDim2.new(0, 480, 0, 350)
Toggle.Visible = false

ToggleTitle.Name = "ToggleTitle"
ToggleTitle.Parent = Toggle
ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleTitle.BackgroundTransparency = 1.000
ToggleTitle.BorderSizePixel = 0
ToggleTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
ToggleTitle.Size = UDim2.new(0, 60, 0, 20)
ToggleTitle.Font = Enum.Font.Gotham
ToggleTitle.Text = "Toggle"
ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleTitle.TextSize = 14.000
ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
ToggleTitle.TextYAlignment = Enum.TextYAlignment.Bottom

ToggleSearchBoxFrame.Name = "ToggleSearchBoxFrame"
ToggleSearchBoxFrame.Parent = Toggle
ToggleSearchBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleSearchBoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ToggleSearchBoxFrame.BorderSizePixel = 0
ToggleSearchBoxFrame.Position = UDim2.new(0.474583298, 0, 0.0770000368, 0)
ToggleSearchBoxFrame.Size = UDim2.new(0, 315, 0, 32)

ToggleSearchBoxFrameCorner.Name = "ToggleSearchBoxFrameCorner"
ToggleSearchBoxFrameCorner.Parent = ToggleSearchBoxFrame

ToggleSearchBoxImage.Name = "ToggleSearchBoxImage"
ToggleSearchBoxImage.Parent = ToggleSearchBoxFrame
ToggleSearchBoxImage.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleSearchBoxImage.BackgroundTransparency = 1.000
ToggleSearchBoxImage.Position = UDim2.new(0.0610000007, 0, 0.5, 0)
ToggleSearchBoxImage.Size = UDim2.new(0, 25, 0, 25)
ToggleSearchBoxImage.ZIndex = 2
ToggleSearchBoxImage.Image = "rbxassetid://3926305904"
ToggleSearchBoxImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
ToggleSearchBoxImage.ImageRectOffset = Vector2.new(964, 324)
ToggleSearchBoxImage.ImageRectSize = Vector2.new(36, 36)

ToggleSearchBox.Name = "ToggleSearchBox"
ToggleSearchBox.Parent = ToggleSearchBoxFrame
ToggleSearchBox.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleSearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleSearchBox.BackgroundTransparency = 1.000
ToggleSearchBox.BorderSizePixel = 0
ToggleSearchBox.Position = UDim2.new(0.536507964, 0, 0.49609375, 0)
ToggleSearchBox.Size = UDim2.new(0, 275, 0, 24)
ToggleSearchBox.Font = Enum.Font.GothamBlack
ToggleSearchBox.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
ToggleSearchBox.PlaceholderText = "Search.."
ToggleSearchBox.Text = ""
ToggleSearchBox.TextColor3 = Color3.fromRGB(99, 99, 99)
ToggleSearchBox.TextSize = 13.000
ToggleSearchBox.TextXAlignment = Enum.TextXAlignment.Left

ToggleScrollingFrame.Name = "ToggleScrollingFrame"
ToggleScrollingFrame.Parent = Toggle
ToggleScrollingFrame.Active = true
ToggleScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleScrollingFrame.BackgroundTransparency = 1.000
ToggleScrollingFrame.BorderSizePixel = 0
ToggleScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.587142885, 0)
ToggleScrollingFrame.Size = UDim2.new(0, 463, 0, 289)
ToggleScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ToggleScrollingFrame.ScrollBarThickness = 3
ToggleScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

ToggleList.Name = "ToggleList"
ToggleList.Parent = ToggleScrollingFrame
ToggleList.HorizontalAlignment = Enum.HorizontalAlignment.Center
ToggleList.SortOrder = Enum.SortOrder.LayoutOrder
ToggleList.Padding = UDim.new(0, 10)

Target.Name = "Target"
Target.Parent = Tabs
Target.AnchorPoint = Vector2.new(0.5, 0.5)
Target.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Target.BackgroundTransparency = 1.000
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0.5, 0, 0.5, 0)
Target.Size = UDim2.new(0, 480, 0, 350)
Target.Visible = false

TargetTitle.Name = "TargetTitle"
TargetTitle.Parent = Target
TargetTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetTitle.BackgroundTransparency = 1.000
TargetTitle.BorderSizePixel = 0
TargetTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
TargetTitle.Size = UDim2.new(0, 60, 0, 20)
TargetTitle.Font = Enum.Font.Gotham
TargetTitle.Text = "Target"
TargetTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetTitle.TextSize = 14.000
TargetTitle.TextXAlignment = Enum.TextXAlignment.Left
TargetTitle.TextYAlignment = Enum.TextYAlignment.Bottom

TargetInfoFrame.Name = "TargetInfoFrame"
TargetInfoFrame.Parent = Target
TargetInfoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TargetInfoFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetInfoFrame.BorderSizePixel = 0
TargetInfoFrame.Position = UDim2.new(0.488541663, 0, 0.254285723, 0)
TargetInfoFrame.Size = UDim2.new(0, 451, 0, 120)
TargetInfoFrame.Image = "rbxassetid://10862691884"
TargetInfoFrame.ScaleType = Enum.ScaleType.Crop

TargetInfoFrameCorner.Name = "TargetInfoFrameCorner"
TargetInfoFrameCorner.Parent = TargetInfoFrame

TargetProfile.Name = "TargetProfile"
TargetProfile.Parent = TargetInfoFrame
TargetProfile.AnchorPoint = Vector2.new(0.5, 0.5)
TargetProfile.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetProfile.Position = UDim2.new(0.134709373, 0, 0.498928577, 0)
TargetProfile.Size = UDim2.new(0, 100, 0, 100)
TargetProfile.Image = "rbxthumb://type=AvatarHeadShot&id=1&w=420&h=420"

TargetProfileCorner.CornerRadius = UDim.new(1, 0)
TargetProfileCorner.Name = "TargetProfileCorner"
TargetProfileCorner.Parent = TargetProfile

TargetUsername.Name = "TargetUsername"
TargetUsername.Parent = TargetProfile
TargetUsername.AnchorPoint = Vector2.new(0.5, 0.5)
TargetUsername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetUsername.BackgroundTransparency = 1.000
TargetUsername.BorderSizePixel = 0
TargetUsername.Position = UDim2.new(2.70000005, 0, 0.5, 0)
TargetUsername.Size = UDim2.new(0, 326, 0, 30)
TargetUsername.Font = Enum.Font.GothamBlack
TargetUsername.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TargetUsername.PlaceholderText = "Target Username"
TargetUsername.Text = ""
TargetUsername.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetUsername.TextSize = 23.000
TargetUsername.TextXAlignment = Enum.TextXAlignment.Left

TargetCash.Name = "TargetCash"
TargetCash.Parent = Target
TargetCash.AnchorPoint = Vector2.new(0.5, 0.5)
TargetCash.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetCash.BorderSizePixel = 0
TargetCash.Position = UDim2.new(0.247916669, 0, 0.53285712, 0)
TargetCash.Size = UDim2.new(0, 220, 0, 35)
TargetCash.Font = Enum.Font.Gotham
TargetCash.Text = "   Cash :"
TargetCash.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetCash.TextSize = 14.000
TargetCash.TextXAlignment = Enum.TextXAlignment.Left

TargetCashCorner.Name = "TargetCashCorner"
TargetCashCorner.Parent = TargetCash

TargetRank.Name = "TargetRank"
TargetRank.Parent = Target
TargetRank.AnchorPoint = Vector2.new(0.5, 0.5)
TargetRank.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TargetRank.BorderSizePixel = 0
TargetRank.Position = UDim2.new(0.729166687, 0, 0.53285712, 0)
TargetRank.Size = UDim2.new(0, 220, 0, 35)
TargetRank.Font = Enum.Font.Gotham
TargetRank.Text = "   Rank : Default"
TargetRank.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetRank.TextSize = 14.000
TargetRank.TextXAlignment = Enum.TextXAlignment.Left

TargetRankCorner.Name = "TargetRankCorner"
TargetRankCorner.Parent = TargetRank

TargetScrollingFrame.Name = "TargetScrollingFrame"
TargetScrollingFrame.Parent = Target
TargetScrollingFrame.Active = true
TargetScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TargetScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetScrollingFrame.BackgroundTransparency = 1.000
TargetScrollingFrame.BorderSizePixel = 0
TargetScrollingFrame.Position = UDim2.new(0.488541663, 0, 0.78285712, 0)
TargetScrollingFrame.Size = UDim2.new(0, 451, 0, 120)
TargetScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
TargetScrollingFrame.ScrollBarThickness = 3
TargetScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

TargetList.Name = "TargetList"
TargetList.Parent = TargetScrollingFrame
TargetList.HorizontalAlignment = Enum.HorizontalAlignment.Center
TargetList.SortOrder = Enum.SortOrder.LayoutOrder
TargetList.Padding = UDim.new(0, 10)

Autobuy.Name = "Autobuy"
Autobuy.Parent = Tabs
Autobuy.AnchorPoint = Vector2.new(0.5, 0.5)
Autobuy.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Autobuy.BackgroundTransparency = 1.000
Autobuy.BorderSizePixel = 0
Autobuy.Position = UDim2.new(0.5, 0, 0.5, 0)
Autobuy.Size = UDim2.new(0, 480, 0, 350)
Autobuy.Visible = false

AutobuyTitle.Name = "AutobuyTitle"
AutobuyTitle.Parent = Autobuy
AutobuyTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutobuyTitle.BackgroundTransparency = 1.000
AutobuyTitle.BorderSizePixel = 0
AutobuyTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
AutobuyTitle.Size = UDim2.new(0, 60, 0, 20)
AutobuyTitle.Font = Enum.Font.Gotham
AutobuyTitle.Text = "Autobuy"
AutobuyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AutobuyTitle.TextSize = 14.000
AutobuyTitle.TextXAlignment = Enum.TextXAlignment.Left
AutobuyTitle.TextYAlignment = Enum.TextYAlignment.Bottom

AutobuySearchBoxFrame.Name = "AutobuySearchBoxFrame"
AutobuySearchBoxFrame.Parent = Autobuy
AutobuySearchBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
AutobuySearchBoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
AutobuySearchBoxFrame.BorderSizePixel = 0
AutobuySearchBoxFrame.Position = UDim2.new(0.474583298, 0, 0.0770000368, 0)
AutobuySearchBoxFrame.Size = UDim2.new(0, 315, 0, 32)

AutobuySearchBoxFrameCorner.Name = "AutobuySearchBoxFrameCorner"
AutobuySearchBoxFrameCorner.Parent = AutobuySearchBoxFrame

AutobuySearchBoxImage.Name = "AutobuySearchBoxImage"
AutobuySearchBoxImage.Parent = AutobuySearchBoxFrame
AutobuySearchBoxImage.AnchorPoint = Vector2.new(0.5, 0.5)
AutobuySearchBoxImage.BackgroundTransparency = 1.000
AutobuySearchBoxImage.Position = UDim2.new(0.0610000007, 0, 0.5, 0)
AutobuySearchBoxImage.Size = UDim2.new(0, 25, 0, 25)
AutobuySearchBoxImage.ZIndex = 2
AutobuySearchBoxImage.Image = "rbxassetid://3926305904"
AutobuySearchBoxImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
AutobuySearchBoxImage.ImageRectOffset = Vector2.new(964, 324)
AutobuySearchBoxImage.ImageRectSize = Vector2.new(36, 36)

AutobuySearchBox.Name = "AutobuySearchBox"
AutobuySearchBox.Parent = AutobuySearchBoxFrame
AutobuySearchBox.AnchorPoint = Vector2.new(0.5, 0.5)
AutobuySearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutobuySearchBox.BackgroundTransparency = 1.000
AutobuySearchBox.BorderSizePixel = 0
AutobuySearchBox.Position = UDim2.new(0.536507964, 0, 0.49609375, 0)
AutobuySearchBox.Size = UDim2.new(0, 275, 0, 24)
AutobuySearchBox.Font = Enum.Font.GothamBlack
AutobuySearchBox.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
AutobuySearchBox.PlaceholderText = "Search.."
AutobuySearchBox.Text = ""
AutobuySearchBox.TextColor3 = Color3.fromRGB(99, 99, 99)
AutobuySearchBox.TextSize = 13.000
AutobuySearchBox.TextXAlignment = Enum.TextXAlignment.Left

AutobuyScrollingFrame.Name = "AutobuyScrollingFrame"
AutobuyScrollingFrame.Parent = Autobuy
AutobuyScrollingFrame.Active = true
AutobuyScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
AutobuyScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutobuyScrollingFrame.BackgroundTransparency = 1.000
AutobuyScrollingFrame.BorderSizePixel = 0
AutobuyScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.587142885, 0)
AutobuyScrollingFrame.Size = UDim2.new(0, 463, 0, 289)
AutobuyScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
AutobuyScrollingFrame.ScrollBarThickness = 3
AutobuyScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

AutobuyList.Name = "AutobuyList"
AutobuyList.Parent = AutobuyScrollingFrame
AutobuyList.HorizontalAlignment = Enum.HorizontalAlignment.Center
AutobuyList.SortOrder = Enum.SortOrder.LayoutOrder
AutobuyList.Padding = UDim.new(0, 10)

Teleports.Name = "Teleports"
Teleports.Parent = Tabs
Teleports.AnchorPoint = Vector2.new(0.5, 0.5)
Teleports.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Teleports.BackgroundTransparency = 1.000
Teleports.BorderSizePixel = 0
Teleports.Position = UDim2.new(0.5, 0, 0.5, 0)
Teleports.Size = UDim2.new(0, 480, 0, 350)
Teleports.Visible = false

TeleportsTitle.Name = "TeleportsTitle"
TeleportsTitle.Parent = Teleports
TeleportsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportsTitle.BackgroundTransparency = 1.000
TeleportsTitle.BorderSizePixel = 0
TeleportsTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
TeleportsTitle.Size = UDim2.new(0, 60, 0, 20)
TeleportsTitle.Font = Enum.Font.Gotham
TeleportsTitle.Text = "Teleports"
TeleportsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportsTitle.TextSize = 14.000
TeleportsTitle.TextXAlignment = Enum.TextXAlignment.Left
TeleportsTitle.TextYAlignment = Enum.TextYAlignment.Bottom

TeleportsSearchBoxFrame.Name = "TeleportsSearchBoxFrame"
TeleportsSearchBoxFrame.Parent = Teleports
TeleportsSearchBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportsSearchBoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TeleportsSearchBoxFrame.BorderSizePixel = 0
TeleportsSearchBoxFrame.Position = UDim2.new(0.474583298, 0, 0.0770000368, 0)
TeleportsSearchBoxFrame.Size = UDim2.new(0, 315, 0, 32)

TeleportsSearchBoxFrameCorner.Name = "TeleportsSearchBoxFrameCorner"
TeleportsSearchBoxFrameCorner.Parent = TeleportsSearchBoxFrame

TeleportsSearchBoxImage.Name = "TeleportsSearchBoxImage"
TeleportsSearchBoxImage.Parent = TeleportsSearchBoxFrame
TeleportsSearchBoxImage.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportsSearchBoxImage.BackgroundTransparency = 1.000
TeleportsSearchBoxImage.Position = UDim2.new(0.0610000007, 0, 0.5, 0)
TeleportsSearchBoxImage.Size = UDim2.new(0, 25, 0, 25)
TeleportsSearchBoxImage.ZIndex = 2
TeleportsSearchBoxImage.Image = "rbxassetid://3926305904"
TeleportsSearchBoxImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
TeleportsSearchBoxImage.ImageRectOffset = Vector2.new(964, 324)
TeleportsSearchBoxImage.ImageRectSize = Vector2.new(36, 36)

TeleportsSearchBox.Name = "TeleportsSearchBox"
TeleportsSearchBox.Parent = TeleportsSearchBoxFrame
TeleportsSearchBox.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportsSearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportsSearchBox.BackgroundTransparency = 1.000
TeleportsSearchBox.BorderSizePixel = 0
TeleportsSearchBox.Position = UDim2.new(0.536507964, 0, 0.49609375, 0)
TeleportsSearchBox.Size = UDim2.new(0, 275, 0, 24)
TeleportsSearchBox.Font = Enum.Font.GothamBlack
TeleportsSearchBox.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
TeleportsSearchBox.PlaceholderText = "Search.."
TeleportsSearchBox.Text = ""
TeleportsSearchBox.TextColor3 = Color3.fromRGB(99, 99, 99)
TeleportsSearchBox.TextSize = 13.000
TeleportsSearchBox.TextXAlignment = Enum.TextXAlignment.Left

TeleportsScrollingFrame.Name = "TeleportsScrollingFrame"
TeleportsScrollingFrame.Parent = Teleports
TeleportsScrollingFrame.Active = true
TeleportsScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TeleportsScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportsScrollingFrame.BackgroundTransparency = 1.000
TeleportsScrollingFrame.BorderSizePixel = 0
TeleportsScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.587142885, 0)
TeleportsScrollingFrame.Size = UDim2.new(0, 463, 0, 289)
TeleportsScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
TeleportsScrollingFrame.ScrollBarThickness = 3
TeleportsScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

TeleportsList.Name = "TeleportsList"
TeleportsList.Parent = TeleportsScrollingFrame
TeleportsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
TeleportsList.SortOrder = Enum.SortOrder.LayoutOrder
TeleportsList.Padding = UDim.new(0, 10)

Extra.Name = "Extra"
Extra.Parent = Tabs
Extra.AnchorPoint = Vector2.new(0.5, 0.5)
Extra.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Extra.BackgroundTransparency = 1.000
Extra.BorderSizePixel = 0
Extra.Position = UDim2.new(0.5, 0, 0.5, 0)
Extra.Size = UDim2.new(0, 480, 0, 350)
Extra.Visible = false

ExtraTitle.Name = "ExtraTitle"
ExtraTitle.Parent = Extra
ExtraTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtraTitle.BackgroundTransparency = 1.000
ExtraTitle.BorderSizePixel = 0
ExtraTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
ExtraTitle.Size = UDim2.new(0, 60, 0, 20)
ExtraTitle.Font = Enum.Font.Gotham
ExtraTitle.Text = "Extra"
ExtraTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ExtraTitle.TextSize = 14.000
ExtraTitle.TextXAlignment = Enum.TextXAlignment.Left
ExtraTitle.TextYAlignment = Enum.TextYAlignment.Bottom

ExtraSearchBoxFrame.Name = "ExtraSearchBoxFrame"
ExtraSearchBoxFrame.Parent = Extra
ExtraSearchBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ExtraSearchBoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ExtraSearchBoxFrame.BorderSizePixel = 0
ExtraSearchBoxFrame.Position = UDim2.new(0.474583298, 0, 0.0770000368, 0)
ExtraSearchBoxFrame.Size = UDim2.new(0, 315, 0, 32)

ExtraSearchBoxFrameCorner.Name = "ExtraSearchBoxFrameCorner"
ExtraSearchBoxFrameCorner.Parent = ExtraSearchBoxFrame

ExtraSearchBoxImage.Name = "ExtraSearchBoxImage"
ExtraSearchBoxImage.Parent = ExtraSearchBoxFrame
ExtraSearchBoxImage.AnchorPoint = Vector2.new(0.5, 0.5)
ExtraSearchBoxImage.BackgroundTransparency = 1.000
ExtraSearchBoxImage.Position = UDim2.new(0.0610000007, 0, 0.5, 0)
ExtraSearchBoxImage.Size = UDim2.new(0, 25, 0, 25)
ExtraSearchBoxImage.ZIndex = 2
ExtraSearchBoxImage.Image = "rbxassetid://3926305904"
ExtraSearchBoxImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
ExtraSearchBoxImage.ImageRectOffset = Vector2.new(964, 324)
ExtraSearchBoxImage.ImageRectSize = Vector2.new(36, 36)

ExtraSearchBox.Name = "ExtraSearchBox"
ExtraSearchBox.Parent = ExtraSearchBoxFrame
ExtraSearchBox.AnchorPoint = Vector2.new(0.5, 0.5)
ExtraSearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtraSearchBox.BackgroundTransparency = 1.000
ExtraSearchBox.BorderSizePixel = 0
ExtraSearchBox.Position = UDim2.new(0.536507964, 0, 0.49609375, 0)
ExtraSearchBox.Size = UDim2.new(0, 275, 0, 24)
ExtraSearchBox.Font = Enum.Font.GothamBlack
ExtraSearchBox.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
ExtraSearchBox.PlaceholderText = "Search.."
ExtraSearchBox.Text = ""
ExtraSearchBox.TextColor3 = Color3.fromRGB(99, 99, 99)
ExtraSearchBox.TextSize = 13.000
ExtraSearchBox.TextXAlignment = Enum.TextXAlignment.Left

ExtraScrollingFrame.Name = "ExtraScrollingFrame"
ExtraScrollingFrame.Parent = Extra
ExtraScrollingFrame.Active = true
ExtraScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ExtraScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExtraScrollingFrame.BackgroundTransparency = 1.000
ExtraScrollingFrame.BorderSizePixel = 0
ExtraScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.587142885, 0)
ExtraScrollingFrame.Size = UDim2.new(0, 463, 0, 289)
ExtraScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ExtraScrollingFrame.ScrollBarThickness = 3
ExtraScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

ExtraList.Name = "ExtraList"
ExtraList.Parent = ExtraScrollingFrame
ExtraList.HorizontalAlignment = Enum.HorizontalAlignment.Center
ExtraList.SortOrder = Enum.SortOrder.LayoutOrder
ExtraList.Padding = UDim.new(0, 10)

Credits.Name = "Credits"
Credits.Parent = Tabs
Credits.AnchorPoint = Vector2.new(0.5, 0.5)
Credits.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.5, 0, 0.5, 0)
Credits.Size = UDim2.new(0, 480, 0, 350)
Credits.Visible = false

CreditsTitle.Name = "CreditsTitle"
CreditsTitle.Parent = Credits
CreditsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsTitle.BackgroundTransparency = 1.000
CreditsTitle.BorderSizePixel = 0
CreditsTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
CreditsTitle.Size = UDim2.new(0, 60, 0, 20)
CreditsTitle.Font = Enum.Font.Gotham
CreditsTitle.Text = "Credits"
CreditsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsTitle.TextSize = 14.000
CreditsTitle.TextXAlignment = Enum.TextXAlignment.Left
CreditsTitle.TextYAlignment = Enum.TextYAlignment.Bottom

CreditsScrollingFrame.Name = "CreditsScrollingFrame"
CreditsScrollingFrame.Parent = Credits
CreditsScrollingFrame.Active = true
CreditsScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CreditsScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsScrollingFrame.BackgroundTransparency = 1.000
CreditsScrollingFrame.BorderSizePixel = 0
CreditsScrollingFrame.Position = UDim2.new(0.501041651, 0, 0.541428566, 0)
CreditsScrollingFrame.Size = UDim2.new(0, 463, 0, 321)
CreditsScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
CreditsScrollingFrame.ScrollBarThickness = 3
CreditsScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

CreditsList.Name = "CreditsList"
CreditsList.Parent = CreditsScrollingFrame
CreditsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
CreditsList.SortOrder = Enum.SortOrder.LayoutOrder
CreditsList.Padding = UDim.new(0, 10)
Settings.Name = "Settings"
Settings.Parent = Tabs
Settings.Visible = false
Settings.AnchorPoint = Vector2.new(0.5, 0.5)
Settings.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Settings.BackgroundTransparency = 1.000
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.5, 0, 0.5, 0)
Settings.Size = UDim2.new(0, 480, 0, 350)

SettingsTitle.Name = "SettingsTitle"
SettingsTitle.Parent = Settings
SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsTitle.BackgroundTransparency = 1.000
SettingsTitle.BorderSizePixel = 0
SettingsTitle.Position = UDim2.new(0.0199999996, 0, 0, 0)
SettingsTitle.Size = UDim2.new(0, 60, 0, 20)
SettingsTitle.Font = Enum.Font.Gotham
SettingsTitle.Text = "Settings"
SettingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsTitle.TextSize = 14.000
SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left
SettingsTitle.TextYAlignment = Enum.TextYAlignment.Bottom

SettingsStuffHolder.Name = "SettingsStuffHolder"
SettingsStuffHolder.Parent = Settings
SettingsStuffHolder.AnchorPoint = Vector2.new(0.5, 0.5)
SettingsStuffHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsStuffHolder.BackgroundTransparency = 1.000
SettingsStuffHolder.BorderSizePixel = 0
SettingsStuffHolder.Position = UDim2.new(0.5, 0, 0.524999976, 0)
SettingsStuffHolder.Size = UDim2.new(0, 440, 0, 300)

UIGridLayout.Parent = SettingsStuffHolder
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 15)
UIGridLayout.CellSize = UDim2.new(0, 130, 0, 140)

SelfKickButton.Name = "SelfKickButton"
SelfKickButton.Parent = SettingsStuffHolder
SelfKickButton.AnchorPoint = Vector2.new(0.5, 0.5)
SelfKickButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SelfKickButton.BorderSizePixel = 0
SelfKickButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
SelfKickButton.Size = UDim2.new(0, 460, 0, 40)
SelfKickButton.AutoButtonColor = false
SelfKickButton.Font = Enum.Font.Gotham
SelfKickButton.Text = "Self Kick\n "
SelfKickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SelfKickButton.TextSize = 14.000
SelfKickButton.TextWrapped = true
SelfKickButton.TextYAlignment = Enum.TextYAlignment.Bottom

SelfKickButtonUICorner.CornerRadius = UDim.new(0, 5)
SelfKickButtonUICorner.Name = "SelfKickButtonUICorner"
SelfKickButtonUICorner.Parent = SelfKickButton

SelfKickButtonIcon.Name = "SelfKickButtonIcon"
SelfKickButtonIcon.Parent = SelfKickButton
SelfKickButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
SelfKickButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelfKickButtonIcon.BackgroundTransparency = 1.000
SelfKickButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
SelfKickButtonIcon.Size = UDim2.new(0, 75, 0, 75)
SelfKickButtonIcon.Image = "rbxassetid://11398485132"

SelfKickButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
SelfKickButtonIconGradient.Rotation = 45
SelfKickButtonIconGradient.Name = "SelfKickButtonIconGradient"
SelfKickButtonIconGradient.Parent = SelfKickButtonIcon

SelfKickButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
SelfKickButtonGradient.Rotation = 45
SelfKickButtonGradient.Name = "SelfKickButtonGradient"
SelfKickButtonGradient.Parent = SelfKickButton

EditThemesButton.Name = "EditThemesButton"
EditThemesButton.Parent = SettingsStuffHolder
EditThemesButton.AnchorPoint = Vector2.new(0.5, 0.5)
EditThemesButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
EditThemesButton.BorderSizePixel = 0
EditThemesButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
EditThemesButton.Size = UDim2.new(0, 460, 0, 40)
EditThemesButton.AutoButtonColor = false
EditThemesButton.Font = Enum.Font.Gotham
EditThemesButton.Text = "Edit Themes\n "
EditThemesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EditThemesButton.TextSize = 14.000
EditThemesButton.TextWrapped = true
EditThemesButton.TextYAlignment = Enum.TextYAlignment.Bottom

EditThemesButtonUICorner.CornerRadius = UDim.new(0, 5)
EditThemesButtonUICorner.Name = "EditThemesButtonUICorner"
EditThemesButtonUICorner.Parent = EditThemesButton

EditThemesButtonIcon.Name = "EditThemesButtonIcon"
EditThemesButtonIcon.Parent = EditThemesButton
EditThemesButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
EditThemesButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditThemesButtonIcon.BackgroundTransparency = 1.000
EditThemesButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
EditThemesButtonIcon.Size = UDim2.new(0, 75, 0, 75)
EditThemesButtonIcon.Image = "rbxassetid://11398394563"

EditThemesButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
EditThemesButtonIconGradient.Rotation = 45
EditThemesButtonIconGradient.Name = "EditThemesButtonIconGradient"
EditThemesButtonIconGradient.Parent = EditThemesButtonIcon

EditThemesButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
EditThemesButtonGradient.Rotation = 45
EditThemesButtonGradient.Name = "EditThemesButtonGradient"
EditThemesButtonGradient.Parent = EditThemesButton

ThemeChangerFrame.Name = "ThemeChangerFrame"
ThemeChangerFrame.Parent = Pluto
ThemeChangerFrame.Active = true
ThemeChangerFrame.Draggable = true
ThemeChangerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ThemeChangerFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ThemeChangerFrame.BorderSizePixel = 0
ThemeChangerFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
ThemeChangerFrame.Size = UDim2.new(0, 270, 0, 328)
ThemeChangerFrame.Visible = false

ThemeChangerFrameUICorner.CornerRadius = UDim.new(0, 5)
ThemeChangerFrameUICorner.Name = "ThemeChangerFrameUICorner"
ThemeChangerFrameUICorner.Parent = ThemeChangerFrame

ThemeChangerDropshadow.Name = "ThemeChangerDropshadow"
ThemeChangerDropshadow.Parent = ThemeChangerFrame
ThemeChangerDropshadow.AnchorPoint = Vector2.new(0.5, 0.5)
ThemeChangerDropshadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ThemeChangerDropshadow.BackgroundTransparency = 1.000
ThemeChangerDropshadow.BorderSizePixel = 0
ThemeChangerDropshadow.Position = UDim2.new(0.498, 0, 0.5, 0)
ThemeChangerDropshadow.Size = UDim2.new(1, 29, 1, 60)
ThemeChangerDropshadow.ZIndex = 0
ThemeChangerDropshadow.Image = "rbxassetid://6105530152"
ThemeChangerDropshadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ThemeChangerDropshadow.ImageTransparency = 0.200
ThemeChangerDropshadow.SliceCenter = Rect.new(49, 49, 450, 450)

ThemeChangerTitle.Name = "ThemeChangerTitle"
ThemeChangerTitle.Parent = ThemeChangerFrame
ThemeChangerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ThemeChangerTitle.BackgroundTransparency = 1.000
ThemeChangerTitle.BorderSizePixel = 0
ThemeChangerTitle.Position = UDim2.new(0.0199999772, 0, 0, 0)
ThemeChangerTitle.Size = UDim2.new(0, 112, 0, 20)
ThemeChangerTitle.Font = Enum.Font.Gotham
ThemeChangerTitle.Text = "Theme Changer"
ThemeChangerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ThemeChangerTitle.TextSize = 14.000
ThemeChangerTitle.TextXAlignment = Enum.TextXAlignment.Left
ThemeChangerTitle.TextYAlignment = Enum.TextYAlignment.Bottom

ThemesMainHolder.Name = "ThemesMainHolder"
ThemesMainHolder.Parent = ThemeChangerFrame
ThemesMainHolder.AnchorPoint = Vector2.new(0.5, 0.5)
ThemesMainHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ThemesMainHolder.BackgroundTransparency = 1.000
ThemesMainHolder.BorderSizePixel = 0
ThemesMainHolder.Position = UDim2.new(0.5, 0, 0.542511463, 0)
ThemesMainHolder.Size = UDim2.new(0, 260, 0, 298)

UIListLayout2.Parent = ThemesMainHolder
UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 10)

DefaultButton.Name = "DefaultButton"
DefaultButton.Parent = ThemesMainHolder
DefaultButton.AnchorPoint = Vector2.new(0.5, 0.5)
DefaultButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
DefaultButton.BorderSizePixel = 0
DefaultButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
DefaultButton.Size = UDim2.new(0, 260, 0, 40)
DefaultButton.AutoButtonColor = false
DefaultButton.Font = Enum.Font.Gotham
DefaultButton.Text = "  Default"
DefaultButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DefaultButton.TextSize = 14.000
DefaultButton.TextWrapped = true
DefaultButton.TextXAlignment = Enum.TextXAlignment.Left

DefaultButtonUICorner.CornerRadius = UDim.new(0, 5)
DefaultButtonUICorner.Name = "DefaultButtonUICorner"
DefaultButtonUICorner.Parent = DefaultButton

DefaultButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
DefaultButtonGradient.Rotation = 45
DefaultButtonGradient.Name = "DefaultButtonGradient"
DefaultButtonGradient.Parent = DefaultButton

BabyBlueButton.Name = "BabyBlueButton"
BabyBlueButton.Parent = ThemesMainHolder
BabyBlueButton.AnchorPoint = Vector2.new(0.5, 0.5)
BabyBlueButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BabyBlueButton.BorderSizePixel = 0
BabyBlueButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
BabyBlueButton.Size = UDim2.new(0, 260, 0, 40)
BabyBlueButton.AutoButtonColor = false
BabyBlueButton.Font = Enum.Font.Gotham
BabyBlueButton.Text = "  Baby Blue"
BabyBlueButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BabyBlueButton.TextSize = 14.000
BabyBlueButton.TextWrapped = true
BabyBlueButton.TextXAlignment = Enum.TextXAlignment.Left

BabyBlueButtonUICorner.CornerRadius = UDim.new(0, 5)
BabyBlueButtonUICorner.Name = "BabyBlueButtonUICorner"
BabyBlueButtonUICorner.Parent = BabyBlueButton

BabyBlueButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
BabyBlueButtonGradient.Rotation = 45
BabyBlueButtonGradient.Name = "BabyBlueButtonGradient"
BabyBlueButtonGradient.Parent = BabyBlueButton

HotPinkButton.Name = "HotPinkButton"
HotPinkButton.Parent = ThemesMainHolder
HotPinkButton.AnchorPoint = Vector2.new(0.5, 0.5)
HotPinkButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HotPinkButton.BorderSizePixel = 0
HotPinkButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
HotPinkButton.Size = UDim2.new(0, 260, 0, 40)
HotPinkButton.AutoButtonColor = false
HotPinkButton.Font = Enum.Font.Gotham
HotPinkButton.Text = "  Hot Pink"
HotPinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HotPinkButton.TextSize = 14.000
HotPinkButton.TextWrapped = true
HotPinkButton.TextXAlignment = Enum.TextXAlignment.Left

HotPinkButtonUICorner.CornerRadius = UDim.new(0, 5)
HotPinkButtonUICorner.Name = "HotPinkButtonUICorner"
HotPinkButtonUICorner.Parent = HotPinkButton

HotPinkButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
HotPinkButtonGradient.Rotation = 45
HotPinkButtonGradient.Name = "HotPinkButtonGradient"
HotPinkButtonGradient.Parent = HotPinkButton

PurpleButton.Name = "PurpleButton"
PurpleButton.Parent = ThemesMainHolder
PurpleButton.AnchorPoint = Vector2.new(0.5, 0.5)
PurpleButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PurpleButton.BorderSizePixel = 0
PurpleButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
PurpleButton.Size = UDim2.new(0, 260, 0, 40)
PurpleButton.AutoButtonColor = false
PurpleButton.Font = Enum.Font.Gotham
PurpleButton.Text = "  Lavender Purple"
PurpleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PurpleButton.TextSize = 14.000
PurpleButton.TextWrapped = true
PurpleButton.TextXAlignment = Enum.TextXAlignment.Left

PurpleButtonUICorner.CornerRadius = UDim.new(0, 5)
PurpleButtonUICorner.Name = "PurpleButtonUICorner"
PurpleButtonUICorner.Parent = PurpleButton

PurpleButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
PurpleButtonGradient.Rotation = 45
PurpleButtonGradient.Name = "PurpleButtonGradient"
PurpleButtonGradient.Parent = PurpleButton

RedButton.Name = "RedButton"
RedButton.Parent = ThemesMainHolder
RedButton.AnchorPoint = Vector2.new(0.5, 0.5)
RedButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
RedButton.BorderSizePixel = 0
RedButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
RedButton.Size = UDim2.new(0, 260, 0, 40)
RedButton.AutoButtonColor = false
RedButton.Font = Enum.Font.Gotham
RedButton.Text = "  Royal Red"
RedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RedButton.TextSize = 14.000
RedButton.TextWrapped = true
RedButton.TextXAlignment = Enum.TextXAlignment.Left

RedButtonUICorner.CornerRadius = UDim.new(0, 5)
RedButtonUICorner.Name = "RedButtonUICorner"
RedButtonUICorner.Parent = RedButton

RedButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
RedButtonGradient.Rotation = 45
RedButtonGradient.Name = "RedButtonGradient"
RedButtonGradient.Parent = RedButton

YellowButton.Name = "YellowButton"
YellowButton.Parent = ThemesMainHolder
YellowButton.AnchorPoint = Vector2.new(0.5, 0.5)
YellowButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
YellowButton.BorderSizePixel = 0
YellowButton.Position = UDim2.new(0.267307699, 0, 0.5, 0)
YellowButton.Size = UDim2.new(0, 260, 0, 40)
YellowButton.AutoButtonColor = false
YellowButton.Font = Enum.Font.Gotham
YellowButton.Text = "  Bright Yellow"
YellowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
YellowButton.TextSize = 14.000
YellowButton.TextWrapped = true
YellowButton.TextXAlignment = Enum.TextXAlignment.Left

YellowButtonUICorner.CornerRadius = UDim.new(0, 5)
YellowButtonUICorner.Name = "YellowButtonUICorner"
YellowButtonUICorner.Parent = YellowButton

YellowButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
YellowButtonGradient.Rotation = 45
YellowButtonGradient.Name = "YellowButtonGradient"
YellowButtonGradient.Parent = YellowButton

CloseThemeChanger.Name = "CloseThemeChanger"
CloseThemeChanger.Parent = ThemeChangerFrame
CloseThemeChanger.AnchorPoint = Vector2.new(0.5, 0.5)
CloseThemeChanger.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseThemeChanger.BorderSizePixel = 0
CloseThemeChanger.Position = UDim2.new(0.949999988, 0, 0.0399999991, 0)
CloseThemeChanger.Size = UDim2.new(0, 10, 0, 10)
CloseThemeChanger.AutoButtonColor = false
CloseThemeChanger.Font = Enum.Font.SourceSans
CloseThemeChanger.Text = ""
CloseThemeChanger.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseThemeChanger.TextSize = 14.000

CloseThemeChangerUICorner.CornerRadius = UDim.new(1, 0)
CloseThemeChangerUICorner.Name = "CloseThemeChangerUICorner"
CloseThemeChangerUICorner.Parent = CloseThemeChanger

NotificationsButton.Name = "NotificationsButton"
NotificationsButton.Parent = SettingsStuffHolder
NotificationsButton.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationsButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
NotificationsButton.BorderSizePixel = 0
NotificationsButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
NotificationsButton.Size = UDim2.new(0, 460, 0, 40)
NotificationsButton.AutoButtonColor = false
NotificationsButton.Font = Enum.Font.Gotham
NotificationsButton.Text = "Notifications\n "
NotificationsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationsButton.TextSize = 14.000
NotificationsButton.TextWrapped = true
NotificationsButton.TextYAlignment = Enum.TextYAlignment.Bottom

NotificationsButtonUICorner.CornerRadius = UDim.new(0, 5)
NotificationsButtonUICorner.Name = "NotificationsButtonUICorner"
NotificationsButtonUICorner.Parent = NotificationsButton

NotificationsButtonIcon.Name = "NotificationsButtonIcon"
NotificationsButtonIcon.Parent = NotificationsButton
NotificationsButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationsButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotificationsButtonIcon.BackgroundTransparency = 1.000
NotificationsButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
NotificationsButtonIcon.Size = UDim2.new(0, 75, 0, 75)
NotificationsButtonIcon.Image = "rbxassetid://11398342209"

NotificationsButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
NotificationsButtonIconGradient.Rotation = 45
NotificationsButtonIconGradient.Name = "NotificationsButtonIconGradient"
NotificationsButtonIconGradient.Parent = NotificationsButtonIcon

NotificationsButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
NotificationsButtonGradient.Rotation = 45
NotificationsButtonGradient.Name = "NotificationsButtonGradient"
NotificationsButtonGradient.Parent = NotificationsButton

SpecialScriptButton.Name = "SpecialScriptButton"
SpecialScriptButton.Parent = SettingsStuffHolder
SpecialScriptButton.AnchorPoint = Vector2.new(0.5, 0.5)
SpecialScriptButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SpecialScriptButton.BorderSizePixel = 0
SpecialScriptButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
SpecialScriptButton.Size = UDim2.new(0, 460, 0, 40)
SpecialScriptButton.AutoButtonColor = false
SpecialScriptButton.Font = Enum.Font.Gotham
SpecialScriptButton.Text = "Special Script\n "
SpecialScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpecialScriptButton.TextSize = 14.000
SpecialScriptButton.TextWrapped = true
SpecialScriptButton.TextYAlignment = Enum.TextYAlignment.Bottom

SpecialScriptButtonUICorner.CornerRadius = UDim.new(0, 5)
SpecialScriptButtonUICorner.Name = "SpecialScriptButtonUICorner"
SpecialScriptButtonUICorner.Parent = SpecialScriptButton

SpecialScriptButtonIcon.Name = "SpecialScriptButtonIcon"
SpecialScriptButtonIcon.Parent = SpecialScriptButton
SpecialScriptButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
SpecialScriptButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpecialScriptButtonIcon.BackgroundTransparency = 1.000
SpecialScriptButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
SpecialScriptButtonIcon.Size = UDim2.new(0, 75, 0, 75)
SpecialScriptButtonIcon.Image = "rbxassetid://11398403652"

SpecialScriptButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
SpecialScriptButtonIconGradient.Rotation = 45
SpecialScriptButtonIconGradient.Name = "SpecialScriptButtonIconGradient"
SpecialScriptButtonIconGradient.Parent = SpecialScriptButtonIcon

SpecialScriptButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
SpecialScriptButtonGradient.Rotation = 45
SpecialScriptButtonGradient.Name = "SpecialScriptButtonGradient"
SpecialScriptButtonGradient.Parent = SpecialScriptButton

AboutPlutoButton.Name = "AboutPlutoButton"
AboutPlutoButton.Parent = SettingsStuffHolder
AboutPlutoButton.AnchorPoint = Vector2.new(0.5, 0.5)
AboutPlutoButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AboutPlutoButton.BorderSizePixel = 0
AboutPlutoButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
AboutPlutoButton.Size = UDim2.new(0, 460, 0, 40)
AboutPlutoButton.AutoButtonColor = false
AboutPlutoButton.Font = Enum.Font.Gotham
AboutPlutoButton.Text = "About Pluto\n "
AboutPlutoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AboutPlutoButton.TextSize = 14.000
AboutPlutoButton.TextWrapped = true
AboutPlutoButton.TextYAlignment = Enum.TextYAlignment.Bottom

AboutPlutoButtonUICorner.CornerRadius = UDim.new(0, 5)
AboutPlutoButtonUICorner.Name = "AboutPlutoButtonUICorner"
AboutPlutoButtonUICorner.Parent = AboutPlutoButton

AboutPlutoButtonIcon.Name = "AboutPlutoButtonIcon"
AboutPlutoButtonIcon.Parent = AboutPlutoButton
AboutPlutoButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
AboutPlutoButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AboutPlutoButtonIcon.BackgroundTransparency = 1.000
AboutPlutoButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
AboutPlutoButtonIcon.Size = UDim2.new(0, 75, 0, 75)
AboutPlutoButtonIcon.Image = "rbxassetid://11398464158"

AboutPlutoButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
AboutPlutoButtonIconGradient.Rotation = 45
AboutPlutoButtonIconGradient.Name = "AboutPlutoButtonIconGradient"
AboutPlutoButtonIconGradient.Parent = AboutPlutoButtonIcon

AboutPlutoButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
AboutPlutoButtonGradient.Rotation = 45
AboutPlutoButtonGradient.Name = "AboutPlutoButtonGradient"
AboutPlutoButtonGradient.Parent = AboutPlutoButton

ExitPlutoButton.Name = "ExitPlutoButton"
ExitPlutoButton.Parent = SettingsStuffHolder
ExitPlutoButton.AnchorPoint = Vector2.new(0.5, 0.5)
ExitPlutoButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ExitPlutoButton.BorderSizePixel = 0
ExitPlutoButton.Position = UDim2.new(0.498037726, 0, 0.177261829, 0)
ExitPlutoButton.Size = UDim2.new(0, 460, 0, 40)
ExitPlutoButton.AutoButtonColor = false
ExitPlutoButton.Font = Enum.Font.Gotham
ExitPlutoButton.Text = "Exit Pluto\n "
ExitPlutoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitPlutoButton.TextSize = 14.000
ExitPlutoButton.TextWrapped = true
ExitPlutoButton.TextYAlignment = Enum.TextYAlignment.Bottom

ExitPlutoButtonUICorner.CornerRadius = UDim.new(0, 5)
ExitPlutoButtonUICorner.Name = "ExitPlutoButtonUICorner"
ExitPlutoButtonUICorner.Parent = ExitPlutoButton

ExitButtonIcon.Name = "ExitButtonIcon"
ExitButtonIcon.Parent = ExitPlutoButton
ExitButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ExitButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitButtonIcon.BackgroundTransparency = 1.000
ExitButtonIcon.Position = UDim2.new(0.5, 0, 0.379999995, 0)
ExitButtonIcon.Size = UDim2.new(0, 75, 0, 75)
ExitButtonIcon.Image = "rbxassetid://11398367705"

ExitButtonIconGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
ExitButtonIconGradient.Rotation = 45
ExitButtonIconGradient.Name = "ExitButtonIconGradient"
ExitButtonIconGradient.Parent = ExitButtonIcon

ExitPlutoButtonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(0.53, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.77, Color3.fromRGB(83, 83, 83)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(83, 83, 83))}
ExitPlutoButtonGradient.Rotation = 45
ExitPlutoButtonGradient.Name = "ExitPlutoButtonGradient"
ExitPlutoButtonGradient.Parent = ExitPlutoButton

repeat wait() until game:IsLoaded()

game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
    if input.UserInputType == Enum.UserInputType.Keyboard then
        if chatting then
            return
        end
        if input.KeyCode == Enum.KeyCode.V then
            Pluto.Enabled = not Pluto.Enabled
        end
    end
end)
local Database = loadstring(game:HttpGet('t'))()
LocalProfile.Image = "rbxthumb://type=AvatarHeadShot&id="..game.Players.LocalPlayer.UserId.."&w=420&h=420"
LocalDisplayName.Text = game.Players.LocalPlayer.DisplayName
LocalUsername.Text = '@'..game.Players.LocalPlayer.Name
users1 = 0
for i,v in pairs(Database) do
    if v == game.Players.LocalPlayer.UserId then
        RankText.Text = 'Premium'
    end
end

function dragify(Frame)
    local UIS = game:GetService("UserInputService")
    dragToggle = nil
    local dragSpeed = 0
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.3), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

dragify(MainFrame)

function AddButton(Parent, Name, Script)
    Parent.CanvasSize = Parent.CanvasSize + UDim2.new(0, 0, 0, 50)
    local TemplateButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")

    TemplateButton.Name = Name
    TemplateButton.Parent = Parent
    TemplateButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TemplateButton.BorderSizePixel = 0
    TemplateButton.Size = UDim2.new(0, 450, 0, 40)
    TemplateButton.Font = Enum.Font.GothamBlack
    TemplateButton.Text = "   "..Name
    TemplateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TemplateButton.TextSize = 15.000
    TemplateButton.TextXAlignment = Enum.TextXAlignment.Left
    TemplateButton.AutoButtonColor = false
    TemplateButton.MouseButton1Down:Connect(function()
        pcall(Script)
    end)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Name = Name.."UICorner"
    UICorner.Parent = TemplateButton
end

function AddToggle(Parent, Name, Script)
    Parent.CanvasSize = Parent.CanvasSize + UDim2.new(0, 0, 0, 50)
    local TemplateToggle = Instance.new("TextButton")
    local UnChecked = Instance.new("ImageLabel")
    local Checked = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")

    TemplateToggle.Name = "TemplateToggle"
    TemplateToggle.Parent = Parent
    TemplateToggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TemplateToggle.BorderSizePixel = 0
    TemplateToggle.Size = UDim2.new(0, 450, 0, 40)
    TemplateToggle.Font = Enum.Font.GothamBlack
    TemplateToggle.Text = "   "..Name
    TemplateToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TemplateToggle.TextSize = 15.000
    TemplateToggle.TextXAlignment = Enum.TextXAlignment.Left
    TemplateToggle.AutoButtonColor = false
    ThisToggle = false
    TemplateToggle.MouseButton1Down:Connect(function()
        ThisToggle = not ThisToggle
        if ThisToggle == false then
            game.TweenService:Create(Checked, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                ImageTransparency = 1.000
            }):Play()
        elseif ThisToggle == true then
            game.TweenService:Create(Checked, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                ImageTransparency = 0
            }):Play()
        end
        Script(ThisToggle)
    end)
    
    UnChecked.Name = "UnChecked"
    UnChecked.Parent = TemplateToggle
    UnChecked.AnchorPoint = Vector2.new(0.5, 0.5)
    UnChecked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UnChecked.BackgroundTransparency = 1.000
    UnChecked.Position = UDim2.new(0.949999988, 0, 0.5, 0)
    UnChecked.Size = UDim2.new(0, 20, 0, 20)
    UnChecked.Image = "rbxassetid://3926309567"
    UnChecked.ImageRectOffset = Vector2.new(628, 420)
    UnChecked.ImageRectSize = Vector2.new(48, 48)
    
    Checked.Name = "Checked"
    Checked.Parent = TemplateToggle
    Checked.AnchorPoint = Vector2.new(0.5, 0.5)
    Checked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Checked.BackgroundTransparency = 1.000
    Checked.Position = UDim2.new(0.949999988, 0, 0.5, 0)
    Checked.Size = UDim2.new(0, 20, 0, 20)
    Checked.Image = "rbxassetid://3926309567"
    Checked.ImageRectOffset = Vector2.new(784, 420)
    Checked.ImageRectSize = Vector2.new(48, 48)
    Checked.ImageTransparency = 1.000

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Name = Name.."UICorner"
    UICorner.Parent = TemplateToggle
end

CURRENTTHEME = "Default"

function AddCredit(Name, Reason)
    CreditsScrollingFrame.CanvasSize = CreditsScrollingFrame.CanvasSize + UDim2.new(0, 0, 0, 90)
    local CreditCard = Instance.new("Frame")
    local CardDeco = Instance.new("Frame")
    local CardImage = Instance.new("ImageButton")
    local CreditName = Instance.new("TextLabel")
    local CreditReason = Instance.new("TextLabel")

    CreditCard.Name = Name
    CreditCard.Parent = CreditsScrollingFrame
    CreditCard.AnchorPoint = Vector2.new(0.5, 0.5)
    CreditCard.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    CreditCard.BorderSizePixel = 0
    CreditCard.Size = UDim2.new(0, 450, 0, 80)
    
    CardDeco.Name = "CardDeco"
    CardDeco.Parent = CreditCard
    CardDeco.AnchorPoint = Vector2.new(0.5, 0.5)
    CardDeco.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
    CardDeco.BorderSizePixel = 0
    CardDeco.Position = UDim2.new(0.99000001, 0, 0.5, 0)
    CardDeco.Size = UDim2.new(0, 5, 0, 80)
    
    CardImage.Name = "CardImage"
    CardImage.Parent = CreditCard
    CardImage.AnchorPoint = Vector2.new(0.5, 0.5)
    CardImage.BackgroundTransparency = 1.000
    CardImage.LayoutOrder = 5
    CardImage.Position = UDim2.new(0.930000007, 0, 0.5, 0)
    CardImage.Size = UDim2.new(0, 40, 0, 40)
    CardImage.ZIndex = 2
    CardImage.Image = "rbxassetid://3926307971"
    CardImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
    CardImage.ImageRectOffset = Vector2.new(524, 44)
    CardImage.ImageRectSize = Vector2.new(36, 36)
    
    CreditName.Name = "CreditName"
    CreditName.Parent = CreditCard
    CreditName.AnchorPoint = Vector2.new(0.5, 0.5)
    CreditName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CreditName.BackgroundTransparency = 1.000
    CreditName.BorderSizePixel = 0
    CreditName.Position = UDim2.new(0.442222208, 0, 0.331250012, 0)
    CreditName.Size = UDim2.new(0, 358, 0, 25)
    CreditName.Font = Enum.Font.Gotham
    CreditName.Text = Name
    CreditName.TextColor3 = Color3.fromRGB(255, 255, 255)
    CreditName.TextSize = 20.000
    CreditName.TextXAlignment = Enum.TextXAlignment.Left
    CreditName.TextYAlignment = Enum.TextYAlignment.Bottom
    
    CreditReason.Name = "CreditReason"
    CreditReason.Parent = CreditCard
    CreditReason.AnchorPoint = Vector2.new(0.5, 0.5)
    CreditReason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CreditReason.BackgroundTransparency = 1.000
    CreditReason.BorderSizePixel = 0
    CreditReason.Position = UDim2.new(0.442222208, 0, 0.643750012, 0)
    CreditReason.Size = UDim2.new(0, 358, 0, 25)
    CreditReason.Font = Enum.Font.Gotham
    CreditReason.Text = Reason
    CreditReason.TextColor3 = Color3.fromRGB(99, 99, 99)
    CreditReason.TextSize = 17.000
    CreditReason.TextXAlignment = Enum.TextXAlignment.Left
    CreditReason.TextYAlignment = Enum.TextYAlignment.Top

    if CURRENTTHEME == "Default" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
        CardImage.ImageColor3 = Color3.fromRGB(99, 99, 99)
    elseif CURRENTTHEME == "BabyBlue" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
        CardImage.ImageColor3 = Color3.fromRGB(85, 170, 255)
    elseif CURRENTTHEME == "HotPink" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(255, 0, 120)
        CardImage.ImageColor3 = Color3.fromRGB(255, 0, 120)
    elseif CURRENTTHEME == "Purple" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(132, 84, 213)
        CardImage.ImageColor3 = Color3.fromRGB(132, 84, 213)
    elseif CURRENTTHEME == "Red" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
        CardImage.ImageColor3 = Color3.fromRGB(170, 0, 0)
    elseif CURRENTTHEME == "Yellow" then
        CardDeco.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
        CardImage.ImageColor3 = Color3.fromRGB(255, 255, 0)
    end
end

function notify(title,text)
    --[[
    coroutine.resume(coroutine.create(function()
        UserSettings().GameSettings.MasterVolume = 10
        local AudioIds = {1788243907,5153718519}
        local Sound2 = Instance.new("Sound", nil)
        local c = getconnections(game:GetService("PolicyService").ChildAdded)
        for i,v in pairs(c) do v:Disable() end
        Sound2.Parent = game:GetService("PolicyService")
        for i,v in pairs(c) do v:Enable() end
        Sound2.Name = "Notification Sound"
        Sound2.SoundId = "http://www.roblox.com/asset/?id="..AudioIds[1]
        Sound2:Play()
    end))
    ]]

    NotificationHolder:message {
        Title = title,
        Description = text,
        Icon = 10952973354
    }
end

switching = false
function Enable(Frame, Button)
    if switching == false then
        switching = true
        for i,v in pairs(SelectTab:GetChildren()) do
            if v.ClassName == 'TextButton' then
                game.TweenService:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    TextColor3 = Color3.fromRGB(99, 99, 99)
                }):Play()
                for _,x in pairs(v:GetChildren()) do
                    if x.ClassName == 'Frame' then
                        game.TweenService:Create(x, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundTransparency = 1.000
                        }):Play()
                    end
                end
            end
        end
        game.TweenService:Create(Transition, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundTransparency = 0.000
        }):Play()
        game.TweenService:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            TextColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
        for i,v in pairs(Button:GetChildren()) do
            if v.ClassName == 'Frame' then
                game.TweenService:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundTransparency = 0.000
                }):Play()
            end
        end
        wait(0.3)
        for i,v in pairs(Tabs:GetChildren()) do
            v.Visible = false
        end
        Transition.Visible = true
        Frame.Visible = true
        game.TweenService:Create(Transition, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundTransparency = 1.000
        }):Play()
        wait(0.3)
        switching = false
    end
end

coroutine.resume(coroutine.create(function()
    local scroll = MainScrollingFrame -- CHANGE THIS TO YOUR SCROLLING FRAME
    local textBox = MainSearchBox -- CHANGE THIS TO YOUR TEXT BOX
    
    textBox.Changed:Connect(function() -- when the text is changed
        local text = textBox.Text:lower() -- lowercase search bar text
        if text ~= "" then -- if it has text
            local buttons = scroll:GetDescendants() -- all of the buttons
            for _, button in pairs(buttons) do -- loops through the buttons
                if button:IsA("TextButton") then -- if it's a button
                    local buttonText = button.Text:lower() -- lowercase button text
                    if string.find(buttonText, text) then -- if search bar text is found in the button's text
                        button.Visible = true -- shows button
                    else -- otherwise
                        button.Visible = false -- hides button
                    end
                end
            end
        else -- if it's empty
            local buttons = scroll:GetDescendants() -- all buttons
            for _, button in pairs(buttons) do -- loops through buttons
                if button:IsA("TextButton") then -- if it's a button
                    button.Visible = true -- shows button
                end
            end
        end
    end)
end))

coroutine.resume(coroutine.create(function()
    local scroll = ToggleScrollingFrame -- CHANGE THIS TO YOUR SCROLLING FRAME
    local textBox = ToggleSearchBox -- CHANGE THIS TO YOUR TEXT BOX
    
    textBox.Changed:Connect(function() -- when the text is changed
        local text = textBox.Text:lower() -- lowercase search bar text
        if text ~= "" then -- if it has text
            local buttons = scroll:GetDescendants() -- all of the buttons
            for _, button in pairs(buttons) do -- loops through the buttons
                if button:IsA("TextButton") then -- if it's a button
                    local buttonText = button.Text:lower() -- lowercase button text
                    if string.find(buttonText, text) then -- if search bar text is found in the button's text
                        button.Visible = true -- shows button
                    else -- otherwise
                        button.Visible = false -- hides button
                    end
                end
            end
        else -- if it's empty
            local buttons = scroll:GetDescendants() -- all buttons
            for _, button in pairs(buttons) do -- loops through buttons
                if button:IsA("TextButton") then -- if it's a button
                    button.Visible = true -- shows button
                end
            end
        end
    end)
end))

coroutine.resume(coroutine.create(function()
    local scroll = AutobuyScrollingFrame -- CHANGE THIS TO YOUR SCROLLING FRAME
    local textBox = AutobuySearchBox -- CHANGE THIS TO YOUR TEXT BOX

    textBox.Changed:Connect(function() -- when the text is changed
        local text = textBox.Text:lower() -- lowercase search bar text
        if text ~= "" then -- if it has text
            local buttons = scroll:GetDescendants() -- all of the buttons
            for _, button in pairs(buttons) do -- loops through the buttons
                if button:IsA("TextButton") then -- if it's a button
                    local buttonText = button.Text:lower() -- lowercase button text
                    if string.find(buttonText, text) then -- if search bar text is found in the button's text
                        button.Visible = true -- shows button
                    else -- otherwise
                        button.Visible = false -- hides button
                    end
                end
            end
        else -- if it's empty
            local buttons = scroll:GetDescendants() -- all buttons
            for _, button in pairs(buttons) do -- loops through buttons
                if button:IsA("TextButton") then -- if it's a button
                    button.Visible = true -- shows button
                end
            end
        end
    end)
end))

coroutine.resume(coroutine.create(function()
    local scroll = TeleportsScrollingFrame -- CHANGE THIS TO YOUR SCROLLING FRAME
    local textBox = TeleportsSearchBox -- CHANGE THIS TO YOUR TEXT BOX
    
    textBox.Changed:Connect(function() -- when the text is changed
        local text = textBox.Text:lower() -- lowercase search bar text
        if text ~= "" then -- if it has text
            local buttons = scroll:GetDescendants() -- all of the buttons
            for _, button in pairs(buttons) do -- loops through the buttons
                if button:IsA("TextButton") then -- if it's a button
                    local buttonText = button.Text:lower() -- lowercase button text
                    if string.find(buttonText, text) then -- if search bar text is found in the button's text
                        button.Visible = true -- shows button
                    else -- otherwise
                        button.Visible = false -- hides button
                    end
                end
            end
        else -- if it's empty
            local buttons = scroll:GetDescendants() -- all buttons
            for _, button in pairs(buttons) do -- loops through buttons
                if button:IsA("TextButton") then -- if it's a button
                    button.Visible = true -- shows button
                end
            end
        end
    end)
end))

coroutine.resume(coroutine.create(function()
    local scroll = ExtraScrollingFrame -- CHANGE THIS TO YOUR SCROLLING FRAME
    local textBox = ExtraSearchBox -- CHANGE THIS TO YOUR TEXT BOX
    
    textBox.Changed:Connect(function() -- when the text is changed
        local text = textBox.Text:lower() -- lowercase search bar text
        if text ~= "" then -- if it has text
            local buttons = scroll:GetDescendants() -- all of the buttons
            for _, button in pairs(buttons) do -- loops through the buttons
                if button:IsA("TextButton") then -- if it's a button
                    local buttonText = button.Text:lower() -- lowercase button text
                    if string.find(buttonText, text) then -- if search bar text is found in the button's text
                        button.Visible = true -- shows button
                    else -- otherwise
                        button.Visible = false -- hides button
                    end
                end
            end
        else -- if it's empty
            local buttons = scroll:GetDescendants() -- all buttons
            for _, button in pairs(buttons) do -- loops through buttons
                if button:IsA("TextButton") then -- if it's a button
                    button.Visible = true -- shows button
                end
            end
        end
    end)
end))

HomeButton.MouseButton1Down:Connect(function()
    Enable(Home, HomeButton)
end)

MainButton.MouseButton1Down:Connect(function()
    Enable(Main, MainButton)
end)

ToggleButton.MouseButton1Down:Connect(function()
    Enable(Toggle, ToggleButton)
end)

TargetButton.MouseButton1Down:Connect(function()
    Enable(Target, TargetButton)
end)

AutobuyButton.MouseButton1Down:Connect(function()
    Enable(Autobuy, AutobuyButton)
end)

TeleportsButton.MouseButton1Down:Connect(function()
    Enable(Teleports, TeleportsButton)
end)

ExtraButton.MouseButton1Down:Connect(function()
    Enable(Extra, ExtraButton)
end)

CreditsButton.MouseButton1Down:Connect(function()
    Enable(Credits, CreditsButton)
end)

function CurrentCredit()
    AddCredit(Founder, 'Founder')
    AddCredit(Dev1, 'Developer')
    AddCredit(Dev2, 'Developer')
end

DiscordButton.MouseButton1Down:Connect(function()
    setclipboard(game:HttpGet("https://raw.githubusercontent.com/SpacedYes/lua-projects/master/Features/Invite.Lua"))
    notify('Pluto', 'Set Invite To Clipboard')
end)

AddToggle(MainScrollingFrame, 'Chat Spy', function(xxxs)
    if xxxs == true then
        local LP = game.Players.LocalPlayer
        LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
        LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)    
    elseif xxxs == false then
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
        game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 0)
    end
end)

AddButton(MainScrollingFrame, 'Sit', function()
    if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Sit = true
    elseif game.Players.LocalPlayer.Character:FindFirstChild('Humz') then
        game.Players.LocalPlayer.Character:FindFirstChild('Humz').Sit = true
    end
end)

AddButton(MainScrollingFrame, 'Fly [X]', function()
	pcall(function()
    getgenv().XLXLXLXLLX = "CONDOMXDXD"
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SpacedYes/lua-projects/master/Features/Handler.Lua'))()
    --[[
    function mainthing()
        repeat wait()
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        local flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 5000
        local speed = 5000
    
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
                plr.Character.Humanoid.PlatformStand = true
                if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                    speed = speed+.0+(speed/maxspeed)
                    if speed > maxspeed then
                        speed = maxspeed
                    end
                elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                    speed = speed-5
                    if speed > 5 then
                        speed = -2
                    end
                end
                if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                else
                    bv.velocity = Vector3.new(0,0.1,0)
                end
                bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character.Humanoid.PlatformStand = false
        end
        mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then flying = false
                else
                    flying = true
                    Fly()
                end
            elseif key:lower() == "w" then
                ctrl.f = 45
            elseif key:lower() == "s" then
                ctrl.b = -45
            elseif key:lower() == "a" then
                ctrl.l = -45
            elseif key:lower() == "d" then
                ctrl.r = 45
            end
        end)
        mouse.KeyUp:connect(function(key)
            if key:lower() == "w" then
                ctrl.f = 0
            elseif key:lower() == "s" then
                ctrl.b = 0
            elseif key:lower() == "a" then
                ctrl.l = 0
            elseif key:lower() == "d" then
                ctrl.r = 0
            end
        end)
        Fly()
    end
    mainthing()
    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        mainthing()
    end)
    ]]
end)
end)

AddButton(MainScrollingFrame, 'Chat Bypasser [13+ Account Required]', function()
    --loadstring(game:HttpGet('https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser'))()
    if not getgenv() then return end

    if not getgenv().method or getgenv().method == nil then
        getgenv().method = "fn"
    end
    
    repeat
        wait()
    until game:IsLoaded()
    
    local Players = game:GetService("Players")
    local Chat = game:GetService("Chat")
    
    local playerFrom = Players.LocalPlayer
    local message = "C7RN"
    
    local filteredString = Chat:FilterStringForBroadcast(message, playerFrom)
    
    function execute()
    
        local requestt = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
        local httpservice = game:GetService("HttpService")
    
        if IS_KRNL_LOADED and "Krnl" then
    
            local logs = true --Enables logs or not
            local ChatMain = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)
            local blacklistedFirstCharacter = {"a","b","c","d","e","f","g","h","i","j","k","m","n","l","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","M","N","L","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","/","@","?",}
    
            local fakeMessagePosted = Instance.new("BindableEvent")
            fakeMessagePosted.Name = "MessagePosted"
    
            local oldMessagePosted = ChatMain.MessagePosted
            ChatMain.MessagePosted = fakeMessagePosted
    
            function IsBlacklisted(char)
               if table.find(blacklistedFirstCharacter, char) ~= nil then
                   return true
               end
               return false
            end
    
            if setfflag then
                setfflag("AbuseReportScreenshotPercentage", 0)
                setfflag("AbuseReportScreenshot","False")
            end
    
            fakeMessagePosted.Event:Connect(function(msg)
               if IsBlacklisted(string.sub(msg, 1, 1)) == true then
                   if logs == true then
                       printconsole("[LOGS]: Prevented "..tostring(msg).." to be in Chatted!")
                   end
               elseif IsBlacklisted(string.sub(msg, 1, 1)) == false then
                   oldMessagePosted:fire(msg)
                   if logs == true then
                       printconsole("[LOGS]: Sent command "..tostring(msg).." to be in Chatted!")
                   end
               end
            end)
            getgenv().ANTICHAT = true
    
        elseif identifyexecutor() == "Fluxus" then
            local CloneFunction = clonefunction
            local CheckCaller = CloneFunction(checkcaller)
            local HookFunction = CloneFunction(hookfunction)
            local LocalPlayer = game.Players.PlayerAdded:wait()
    
            local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
            getgenv().MessageEvent = Instance.new("BindableEvent")
    
            local OldFunctionHook
            local PostMessageHook = function(self, msg)
               if not CheckCaller() and self == PostMessage then
                   MessageEvent:Fire(msg)
                   return
               end
               return OldFunctionHook(self, msg)
            end
            OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)
            getgenv().ANTICHAT = true
    
        elseif syn and "Synapse X" then
            local ACL_LoadTime = tick()

            local ChatChanged = false
            local OldSetting = nil
            local WhitelistedCoreTypes = {
                "Chat",
                "All",
                Enum.CoreGuiType.Chat,
                Enum.CoreGuiType.All
            }
        
            local StarterGui = game:GetService("StarterGui")
        
            local FixCore = function(x)
                local CoreHook; CoreHook = hookmetamethod(x, "__namecall", function(self, ...)
                    local Method = getnamecallmethod()
                    local Arguments = {...}
                    
                    if self == x and Method == "SetCoreGuiEnabled" and not checkcaller() then
                        local CoreType = Arguments[1]
                        local Enabled = Arguments[2]
                        
                        if table.find(WhitelistedCoreTypes, CoreType) and not Enabled then
                            if CoreType == ("Chat" or Enum.CoreGuiType.Chat) then
                                OldSetting = Enabled
                            end
                            ChatChanged = true
                        end
                    end
                    
                    return CoreHook(self, ...)
                end)
                
                x.CoreGuiChangedSignal:Connect(function(Type)
                    if table.find(WhitelistedCoreTypes, Type) and ChatChanged then
                        task.wait()
                        if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) then
                            x:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
                        end
                        wait(1)
                        if StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) then
                            x:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, OldSetting) -- probably defaults to false i am too tired for the making of this lol
                        end
                        ChatChanged = false
                    end
                end)
            end
        
            if StarterGui then
                FixCore(StarterGui)
                if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) then
                    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
                end
            else
                local Connection; Connection = game.ChildAdded:Connect(function(x)
                    if x:IsA("StarterGui") then
                        FixCore(x)
                        Connection:Disconnect()
                    end
                end)
            end
        
            if not game:IsLoaded() then
                game.Loaded:wait()
            end
        
            local CoreGui = game:GetService("CoreGui")
            local TweenService = game:GetService("TweenService")
            local Players = game:GetService("Players")
        
            local Player = Players.LocalPlayer
        
            local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
                if not PlayerGui then
                    repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
                    PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
                end
            end
        
            local Notify = function(_Title, _Text , Time)
                StarterGui:SetCore("SendNotification", {Title = _Title, Text = _Text, Icon = "rbxassetid://2541869220", Duration = Time})
            end
        
            local Tween = function(Object, Time, Style, Direction, Property)
                return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
            end
        
            local ACLWarning = Instance.new("ScreenGui")
            local Background = Instance.new("Frame")
            local Top = Instance.new("Frame")
            local Exit = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local WarningLbl = Instance.new("TextLabel")
            local Loading = Instance.new("Frame")
            local Bar = Instance.new("Frame")
            local WarningBackground = Instance.new("Frame")
            local WarningFrame = Instance.new("Frame")
            local Despair = Instance.new("TextLabel")
            local UIListLayout = Instance.new("UIListLayout")
            local Reason_1 = Instance.new("TextLabel")
            local Reason_2 = Instance.new("TextLabel")
            local Trollge = Instance.new("ImageLabel")
            local UIPadding = Instance.new("UIPadding")
        
            local MakeGuiThread = coroutine.wrap(function()
                if syn then
                    if gethui then
                        gethui(ACLwarning)
                    else
                        syn.protect_gui(ACLWarning)
                    end
                end
                
                ACLWarning.Name = "ACL Warning"
                ACLWarning.Parent = CoreGui
                ACLWarning.Enabled = false
                ACLWarning.DisplayOrder = -2147483648
                
                Background.Name = "Background"
                Background.Parent = ACLWarning
                Background.AnchorPoint = Vector2.new(0.5, 0.5)
                Background.BackgroundColor3 = Color3.fromRGB(21, 0, 0)
                Background.BorderSizePixel = 0
                Background.Position = UDim2.new(0.5, 0, 0.5, 0)
                Background.Size = UDim2.new(0.300000012, 0, 0.5, 0)
                
                Top.Name = "Top"
                Top.Parent = Background
                Top.AnchorPoint = Vector2.new(0.5, 0.5)
                Top.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                Top.BorderSizePixel = 0
                Top.Position = UDim2.new(0.5, 0, 0.100000001, 0)
                Top.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
                
                Exit.Name = "Exit"
                Exit.Parent = Top
                Exit.AnchorPoint = Vector2.new(0.5, 0.5)
                Exit.BackgroundColor3 = Color3.fromRGB(38, 0, 0)
                Exit.Position = UDim2.new(0.949999988, 0, 0.5, 0)
                Exit.Size = UDim2.new(0.100000001, -6, 1, -9)
                Exit.Visible = false
                Exit.Font = Enum.Font.Arcade
                Exit.Text = "X"
                Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
                Exit.TextScaled = true
                Exit.TextSize = 14.000
                Exit.TextWrapped = true
                
                UICorner.CornerRadius = UDim.new(0.200000003, 0)
                UICorner.Parent = Exit
                
                WarningLbl.Name = "WarningLbl"
                WarningLbl.Parent = Top
                WarningLbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                WarningLbl.BackgroundTransparency = 1.000
                WarningLbl.Position = UDim2.new(0, 17, 0, 0)
                WarningLbl.Size = UDim2.new(0.5, 0, 1, 0)
                WarningLbl.Font = Enum.Font.Arcade
                WarningLbl.Text = "Warning!"
                WarningLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
                WarningLbl.TextScaled = true
                WarningLbl.TextSize = 14.000
                WarningLbl.TextWrapped = true
                WarningLbl.TextXAlignment = Enum.TextXAlignment.Left
                
                Loading.Name = "Loading"
                Loading.Parent = Top
                Loading.AnchorPoint = Vector2.new(0.5, 0.5)
                Loading.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                Loading.BorderSizePixel = 0
                Loading.Position = UDim2.new(0.699999988, 0, 0.5, 0)
                Loading.Size = UDim2.new(0.349999994, 0, 0.0199999996, 0)
                
                Bar.Name = "Bar"
                Bar.Parent = Loading
                Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Bar.BorderSizePixel = 0
                Bar.Size = UDim2.new(0, 0, 1, 0)
                
                WarningBackground.Name = "WarningBackground"
                WarningBackground.Parent = Background
                WarningBackground.AnchorPoint = Vector2.new(0.5, 0.5)
                WarningBackground.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
                WarningBackground.BorderSizePixel = 0
                WarningBackground.Position = UDim2.new(0.5, 0, 0.550000012, 0)
                WarningBackground.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
                
                WarningFrame.Name = "WarningFrame"
                WarningFrame.Parent = WarningBackground
                WarningFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                WarningFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                WarningFrame.BorderSizePixel = 0
                WarningFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                WarningFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
                
                Despair.Name = "Despair"
                Despair.Parent = WarningFrame
                Despair.AnchorPoint = Vector2.new(0.5, 0.5)
                Despair.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                Despair.BackgroundTransparency = 1.000
                Despair.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Despair.BorderSizePixel = 0
                Despair.Position = UDim2.new(0.5, 0, 0.100000001, 0)
                Despair.Size = UDim2.new(0.949999988, 0, 0.119999997, 0)
                Despair.Font = Enum.Font.Oswald
                Despair.Text = "Anti Chat Logger will not work here!"
                Despair.TextColor3 = Color3.fromRGB(255, 255, 255)
                Despair.TextScaled = true
                Despair.TextSize = 50.000
                Despair.TextWrapped = true
                Despair.TextYAlignment = Enum.TextYAlignment.Top
                
                UIListLayout.Parent = WarningFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 15)
                
                Reason_1.Name = "Reason_1"
                Reason_1.Parent = WarningFrame
                Reason_1.AnchorPoint = Vector2.new(0.5, 0.5)
                Reason_1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                Reason_1.BackgroundTransparency = 1.000
                Reason_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Reason_1.BorderSizePixel = 0
                Reason_1.Position = UDim2.new(0.5, 0, 0.100000001, 0)
                Reason_1.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
                Reason_1.Visible = false
                Reason_1.Font = Enum.Font.Oswald
                Reason_1.Text = "-Chat Module was not found."
                Reason_1.TextColor3 = Color3.fromRGB(255, 0, 0)
                Reason_1.TextScaled = true
                Reason_1.TextSize = 50.000
                Reason_1.TextWrapped = true
                Reason_1.TextYAlignment = Enum.TextYAlignment.Top
                
                Reason_2.Name = "Reason_2"
                Reason_2.Parent = WarningFrame
                Reason_2.AnchorPoint = Vector2.new(0.5, 0.5)
                Reason_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
                Reason_2.BackgroundTransparency = 1.000
                Reason_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Reason_2.BorderSizePixel = 0
                Reason_2.Position = UDim2.new(0.5, 0, 0.100000001, 0)
                Reason_2.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
                Reason_2.Visible = false
                Reason_2.Font = Enum.Font.Oswald
                Reason_2.Text = "-MessagePosted function is invalid."
                Reason_2.TextColor3 = Color3.fromRGB(255, 0, 0)
                Reason_2.TextScaled = true
                Reason_2.TextSize = 50.000
                Reason_2.TextWrapped = true
                Reason_2.TextYAlignment = Enum.TextYAlignment.Top
                
                Trollge.Name = "Trollge"
                Trollge.Parent = WarningFrame
                Trollge.AnchorPoint = Vector2.new(0.5, 0.5)
                Trollge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Trollge.BackgroundTransparency = 1.000
                Trollge.Position = UDim2.new(0.5, 0, 0.670000017, 0)
                Trollge.Size = UDim2.new(0.449999988, 0, 0.5, 0)
                Trollge.Image = "rbxassetid://10104834800"
                
                UIPadding.Parent = WarningFrame
                UIPadding.PaddingTop = UDim.new(0, 10)
                
                Exit.MouseButton1Click:Connect(function()
                    local UpTween = Tween(Background, .2, "Quint", "Out", {Position = UDim2.new(0.5, 0, 0.45, 0)})
                    local DownTween = Tween(Background, 1, "Quad", "Out", {Position = UDim2.new(0.5, 0, 2, 0)})
                    UpTween:Play()
                    UpTween.Completed:wait()
                    DownTween:Play()
                    DownTween.Completed:wait()
                    ACLWarning:Destroy()
                end)
            end)()
        
            local ExitCooldown = function()
                wait(.5)
                local Tween = Tween(Bar, 3, "Quad", "InOut", {Size = UDim2.new(1, 0, 1, 0)})
                Tween:Play()
                Tween.Completed:wait()
                Loading:Destroy()
                Exit.Visible = true
            end
        
            local PlayerScripts = Player:WaitForChild("PlayerScripts")
            local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false
        
            if not ChatMain then
                local Timer = tick()
                repeat
                    task.wait()
                until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
                ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
                if not ChatMain then
                    ACLWarning.Enabled = true
                    Reason_1.Visible = true
                    ExitCooldown()
                    return
                end
            end
        
            local PostMessage = require(ChatMain).MessagePosted
        
            if not PostMessage then
                ACLWarning.Enabled = true
                Reason_2.Visible = true
                ExitCooldown()
                return
            end
        
            local MessageEvent = Instance.new("BindableEvent")
            local OldFunctionHook
            OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
                if not checkcaller() and self == PostMessage then
                    MessageEvent:Fire(Message)
                    return
                end
                return OldFunctionHook(self, Message)
            end)
        
            if setfflag then
                setfflag("AbuseReportScreenshot", "False")
                setfflag("AbuseReportScreenshotPercentage", "0")
            end
        
            ChatFixToggle = false
            ACLWarning:Destroy()
            if OldSetting then
                StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
            end
            getgenv().ANTICHAT = true
        end		
    
        NotificationHolder:message {
            Title = "Executor Advice",
            Description = "You will need Synapse X, Fluxus or Krnl to use the secure chat.",
            Icon = 10952973354
        }

        wait(2.5)
    
        local Bypasses = {}
    
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
    
        local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            
            if self == Remote and Method == "FireServer" then
                local Message = Arguments[1]
                local Split = Message:split(" ")
                local FinalMessage = ""
    
                for _, x in next, Split do
                    for _, Bypass in next, Bypasses do
                        if x:lower() == _ then
                            if x:upper() ~= x then
                                Message = Message:gsub(x, Bypass)
                                FinalMessage = Message .. " "..method
                            else
                                Message = Message:gsub(x, Bypass):upper()
                                FinalMessage = Message:gsub(x, Bypass):upper() .. " "..method
                            end
                        end
                    end
                end
                
                if FinalMessage ~= "" then
                    Arguments[1] = FinalMessage
                end
                
                return ChatBypass(self, unpack(Arguments))
            end
            
            return ChatBypass(self, ...)
        end)
    
        if not LOADED then
            NotificationHolder:message {
                Title = "<font color='rgb(130, 220, 120)'>Reminder</font>",
                Description = "This script is bannable if you get reported.",
                Icon = 10792713003
            }
    
        end
    
        requestt(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
                Body = game:GetService("HttpService"):JSONEncode(
                    {
                        cmd = "INVITE_BROWSER",
                        args = {code = "3Rfay4sWQJ"},
                        nonce = game:GetService("HttpService"):GenerateGUID(false)
                    }
                )
            }
        )
    
        wait(10)
        pcall(
            function()
                getgenv().LOADED = true
            end
        )
    
    end
    
    if filteredString == "####" then
        NotificationHolder:message {
            Title = "<font color='rgb(130, 220, 120)'>Failed</font>",
            Description = "Your account is under 13. Your account must be 13 or over in order to execute BetterBypasser.",
            Icon = 10792713003
        }
    else
        execute()
    end
end)

AddButton(MainScrollingFrame, 'God Mode', function()
    pcall(function()
        local localPlayer = game:GetService('Players').LocalPlayer;
        local localCharacter = localPlayer.Character;
        pcall(function()
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health = 0;
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('MeshPart') or v:IsA('Part') then
                    v:Destroy()
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    v.Handle:Destroy()
                end
            end
        end)
        local newCharacter = localPlayer.CharacterAdded:Wait();
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('BreakingParts'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        defValue.Name = 'Defense';
        local armValue = Instance.new('BoolValue', newCharacter);
        armValue.Name = 'Dead';
        local BrValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'))
        BrValue.Name = 'BreakingParts'
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('BreakingParts'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        defValue.Name = 'Defense';
        local armValue = Instance.new('BoolValue', newCharacter);
        armValue.Name = 'Dead';
        local BrValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'))
        BrValue.Name = 'BreakingParts'
    end)
end)

AddButton(MainScrollingFrame, 'God Armor', function()
    pcall(function()
        local localPlayer = game:GetService('Players').LocalPlayer;
        local localCharacter = localPlayer.Character;
        pcall(function()
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health = 0;
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('MeshPart') or v:IsA('Part') then
                    v:Destroy()
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    v.Handle:Destroy()
                end
            end
        end)
        local newCharacter = localPlayer.CharacterAdded:Wait();
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local deadValue = Instance.new('BoolValue', newCharacter);
        deadValue.Name = 'Dead';
        local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        armValue.Name = 'Armor';
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local deadValue = Instance.new('BoolValue', newCharacter);
        deadValue.Name = 'Dead';
        local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        armValue.Name = 'Armor';
    end)
end)

AddButton(MainScrollingFrame, 'God Block', function()
    pcall(function()
        local localPlayer = game:GetService('Players').LocalPlayer;
        local localCharacter = localPlayer.Character;
        pcall(function()
            game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health = 0;
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('MeshPart') or v:IsA('Part') then
                    v:Destroy()
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    v.Handle:Destroy()
                end
            end
        end)
        local newCharacter = localPlayer.CharacterAdded:Wait();
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        defValue.Name = 'Defense';
        local armValue = Instance.new('BoolValue', newCharacter);
        armValue.Name = 'Dead';
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Dead'):Destroy();
        newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
        defValue.Name = 'Defense';
        local armValue = Instance.new('BoolValue', newCharacter);
        armValue.Name = 'Dead';
    end)
end)

AddButton(MainScrollingFrame, 'Force Reset', function()
    pcall(function()
        game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health = 0;
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA('MeshPart') or v:IsA('Part') then
                v:Destroy()
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA('Accessory') then
                v.Handle:Destroy()
            end
        end
    end)
end)

AddButton(MainScrollingFrame, 'No Jump Cooldown', function()
    local player = game.Players.LocalPlayer
    local spacedown = false
    staminup = true
    game:GetService('UserInputService').InputBegan:Connect(function(key,b)
        if key.KeyCode == Enum.KeyCode.Space and not b then
            if staminup == true then
                spacedown = true
                while spacedown == true do
                    wait()
                    player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                    player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                end
            end
        end
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,b)
        if key.KeyCode == Enum.KeyCode.Space and not b then
            if staminup == true then
                spacedown = false
            end
        end
    end)
end)

AddButton(MainScrollingFrame, 'Aimlock [Q]', function()
    pcall(function()
        _G.KEY = "q"
        _G.PART = "LowerTorso"
        _G.PRED = 0.037
        _G.Frame = Vector3.new(0,0.53,0)
        _G.AIR = -0.5
        _G.SHIT = 0.1
        
        
        local CC = game:GetService "Workspace".CurrentCamera
        local Plr
        local enabled = false
        local accomidationfactor = nil
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
        local guimain = Instance.new("Folder", game.CoreGui)
        
        getgenv().makemarker = function(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = true
            local a = Instance.new("Frame", e)
            a.Size = UDim2.new(4, 0, 4, 0)
            a.BackgroundTransparency = 0.1
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            g.CornerRadius = UDim.new(50, 50)
            return (e)
        end
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat
                wait()
            until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
            handler.Name = player.Name
            player.CharacterAdded:connect(
                function(Char)
                    handler.Adornee = Char:WaitForChild(_G.PART)
                end
            )
        
            local TextLabel = Instance.new("TextLabel", handler)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Position = UDim2.new(0, 0, 0, -50)
            TextLabel.Size = UDim2.new(0, 100, 0, 100)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.TextSize = 14
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
            TextLabel.Text = "Name: " .. player.Name
            TextLabel.ZIndex = 10
        
            spawn(
                function()
                    while wait() do
                        if player.Character then
                        --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                        end
                    end
                end
            )
        end
        
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
        
        game.Players.PlayerAdded:connect(
            function(Player)
                noob(Player)
            end
        )
        
        game.Players.PlayerRemoving:Connect(
            function(player)
                guimain[player.Name]:Destroy()
            end
        )
        
        spawn(
            function()
                placemarker.Anchored = true
                placemarker.CanCollide = false
                placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
                placemarker.Transparency = _G.SHIT
                makemarker(placemarker, placemarker, Color3.fromRGB(255, 255, 255), 0.20, 0)
            end
        )
        
        mouse.KeyDown:Connect(
            function(k)
                if k ~= _G.KEY then
                    return
                end
                if enabled then
                    -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    enabled = false
                    TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
                    TextLabel.Text = "------"
                else
                    --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    enabled = true
                    Plr = getClosestPlayerToCursor()
                    TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
                    TextLabel.Text = Plr.Character.Humanoid.DisplayName
                end
            end)
        
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = math.huge
        
            for i, v in pairs(game.Players:GetPlayers()) do
                if
                    v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                        v.Character.Humanoid.Health ~= 0 and
                        v.Character:FindFirstChild(_G.PART)
                 then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end
        
        game:GetService "RunService".Stepped:connect(
            function()
                if enabled and Plr.Character and Plr.Character:FindFirstChild(_G.PART) then
                    placemarker.CFrame =
                        CFrame.new(Plr.Character[_G.PART].Position + _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor))
                else
                    placemarker.CFrame = CFrame.new(0, 9999, 0)
                end
            end
        )
        
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall =
            newcclosure(
            function(...)
                local args = {...}
                if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                    args[3] = Plr.Character[_G.PART].Position+ _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor)
                    return old(unpack(args))
                end
                return old(...)
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "print" then
                    print(accomidationfactor)
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "Code:1029" then
        
                    _G.KEY = nil
                    _G.AIR = nil
                    _G.PART = nil
                    _G.PRED = nil
                    TextLabel.Visible = false
        
        
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "Code:1030" then
        
                _G.KEY = "q"
                _G.PART = "UpperTorso"
                _G.PRED = 0.037
                _G.Frame = Vector3.new(0,0.0,0)
                _G.AIR = -0.5
                _G.SHIT = 1
        
        
                end
            end
        )
        
        
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "P+" then
        
        
                    _G.PRED = _G.PRED+0.001
        
        
        
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "P-" then
        
                    _G.PRED = _G.PRED-0.001
        
        
        
                end
            end
        )
        
        
        --[[
        while wait() do
            local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local Value = tostring(ping)
            local pingValue = Value:split(" ")
            local PingNumber = pingValue[1]
            
            accomidationfactor = PingNumber / 1000 + _G.PRED
             if getClosestPlayerToCursor().Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                _G.PART = "RightFood"
                accomidationfactor = _G.AIR
            else
                getClosestPlayerToCursor().Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                        _G.PART = "RightFood"
                        accomidationfactor = _G.AIR
                    else
                        _G.PART = "UpperTorso"
                        accomidationfactor = PingNumber / 1000 + _G.PRED
                    end
                end)
            end
        end
        
        ]]
        
        while wait() do
            local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local Value = tostring(ping)
            local pingValue = Value:split(" ")
            local PingNumber = pingValue[1]
            
         accomidationfactor = PingNumber / 1000 + _G.PRED
        end
    end)
end)

AddButton(MainScrollingFrame, 'Free Fists [T]', function()
-- // Variables
local localPlayer       = game:GetService("Players").LocalPlayer
local localCharacter    = localPlayer.Character
local Mouse             = localPlayer:GetMouse()
local FistControl       = false
local LeftFist          = localCharacter.LeftHand
local RightFist         = localCharacter.RightHand

-- // Services
local uis = game:GetService("UserInputService")

-- // Coroutine Loop + Functions
local loopFunction = function()
LeftFist.CFrame  = CFrame.new(Mouse.Hit.p)
RightFist.CFrame = CFrame.new(Mouse.Hit.p)
end

local Loop

local Start = function()
Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction)
end

local Pause = function()
Loop:Disconnect()
end

-- // Hotkeys
uis.InputBegan:connect(function(Key)
if (Key.KeyCode == Enum.KeyCode.T) then
if (FistControl == false) then
    FistControl = true
    Start()
    pcall(function()
        localCharacter.RightHand.RightWrist:Remove()
        localCharacter.LeftHand.LeftWrist:Remove()
    end)
elseif (FistControl == true) then
    FistControl = false
    Pause()
    local rightwrist  = Instance.new("Motor6D")
    rightwrist.Name   = "RightWrist"
    rightwrist.Parent = localCharacter.RightHand
    rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    rightwrist.Part0  = localCharacter.RightLowerArm
    rightwrist.Part1  = localCharacter.RightHand

    local leftwrist   = Instance.new("Motor6D")
    leftwrist.Name    = "LeftWrist"
    leftwrist.Parent  = localCharacter.LeftHand
    leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    leftwrist.Part0   = localCharacter.LeftLowerArm
    leftwrist.Part1   = localCharacter.LeftHand
end
end
end)
end)

AddToggle(ToggleScrollingFrame, 'Anti Stomp', function(c8347t3)
    if c8347t3 == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('MeshPart') or v:IsA('Part') then
                        v:Destroy()
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('Accessory') then
                        v.Handle:Destroy()
                    end
                end
            end
        end)
    elseif c8347t3 == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
    end
end)

AddToggle(ToggleScrollingFrame, 'Cash Aura', function(vmm893wmc94)
    if vmm893wmc94 == true then
        game:GetService('RunService'):BindToRenderStep("Cash-Aura", 0 , function()
            for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
                if v:IsA('Part') then
                    if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                        fireclickdetector(v:FindFirstChild('ClickDetector'))
                    end
                end
            end
       end)
    elseif vmm893wmc94 == false then
        game:GetService('RunService'):UnbindFromRenderStep("Cash-Aura")
    end
end)

AddToggle(ToggleScrollingFrame, 'Anti Fling', function(enrtcy3y87v4nt8734678347b69347)
    if enrtcy3y87v4nt8734678347b69347 == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Flingxoxo", 0 , function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end)
    elseif enrtcy3y87v4nt8734678347b69347 == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Flingxoxo")
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end)

AddToggle(ToggleScrollingFrame, 'Walkspeed', function(uwuwuwuw)
    if uwuwuwuw == true then
        game:GetService('RunService'):BindToRenderStep("Walkspeed", 0 , function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 2
            game:GetService("RunService").Stepped:wait()
        end)
    elseif uwuwuwuw == false then
        game:GetService('RunService'):UnbindFromRenderStep("Walkspeed")
    end
end)

AddToggle(ToggleScrollingFrame, 'Fist Reach', function(tiuevheu)
    if tiuevheu == true then
        game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
            local success, err = pcall(function()
                if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                    for i,v in pairs(game:GetService('Players'):GetChildren()) do
                        if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                else
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                    firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                end
                            end
                        end
                    end
                end
            end)
        end)
    elseif tiuevheu == false then
        game:GetService('RunService'):UnbindFromRenderStep("Reach")
    end
end)

AddToggle(ToggleScrollingFrame, 'No Slowdown', function(v795my984c)
    if v795my984c == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
        end)
    elseif v795my984c == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
    end
end)

AddToggle(ToggleScrollingFrame, 'No Fog', function(vn8y35my8tv9n3)
    if vn8y35my8tv9n3 == true then
        game:GetService("Lighting").FogEnd = 99999999999999999999999999999999999
    elseif vn8y35my8tv9n3 == false then
        game:GetService("Lighting").FogEnd = 500
    end
end)

AddToggle(ToggleScrollingFrame, 'Mobile Walk', function(xxxm93mf84938vt)
    if xxxm93mf84938vt == true then
        game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
        game.Players.LocalPlayer.Character.Humz.WalkSpeed = 4
        game.Players.LocalPlayer.Character.Humz.JumpPower = 50
    elseif xxxm93mf84938vt == false then
        game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humz.JumpPower = 50
        game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
    end
end)

AddToggle(ToggleScrollingFrame, 'Anti Grab', function(lkdgl4moc9c74w8m)
    if lkdgl4moc9c74w8m == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Grab", 0 , function()
            local GC = game.Players.LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT")
            if GC then
                GC:Destroy()
                wait(0.04)
                game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Sit = true
            end
        end)
    elseif lkdgl4moc9c74w8m == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Grab")
    end
end)

AddToggle(ToggleScrollingFrame, 'Anti Bag', function(djmscgrkjseigmrhog)
    if djmscgrkjseigmrhog == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Bag", 0 , function()
            repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild('Christmas_Sock')
                game.Players.LocalPlayer.Character['Christmas_Sock']:Destroy()
        end)
    elseif djmscgrkjseigmrhog == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Bag")
    end
end)

AddToggle(ToggleScrollingFrame, 'Anti Effect', function(khkthmhmuuuuuubeusilkikjh)
    if khkthmhmuuuuuubeusilkikjh == true then
        game:GetService('RunService'):BindToRenderStep("Anti-Effects", 0 , function()
            local Particle = game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('ElectricuteParticle') or player.Character.UpperTorso:FindFirstChild('FlamethrowerFireParticle')
            if Particle then Particle:Destroy() end
                for i,v in pairs(player.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                    if v.Animation.AnimationId == 'rbxassetid://5641749824' then
                        v:Stop() 
                    end
                end
        end)
    elseif khkthmhmuuuuuubeusilkikjh == false then
        game:GetService('RunService'):UnbindFromRenderStep("Anti-Effects")
    end
end)

AddToggle(ToggleScrollingFrame, 'Auto Mask', function(dfh)
    if dfh == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Mask", 0 , function()
            local WearingMask = game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask')
                    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
                    if not WearingMask then
                        local OwnsMask = game.Players.LocalPlayer.Character:FindFirstChild('Mask') or game.Players.LocalPlayer.Backpack:FindFirstChild('Mask')
                        if OwnsMask then
                            local MaskInventory = game.Players.LocalPlayer.Backpack:FindFirstChild('Mask')
                            if MaskInventory then
                                Humanoid:EquipTool(MaskInventory)
                                wait(0.1)
                            end
                            OwnsMask:Activate()
                        else
                            local ItemName = 'Mask'
                            local ItemCost = 60
                            local ClickDetector = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
                            local Location = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
                            local function buy()
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
                                fireclickdetector(ClickDetector)
                                if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                                    game.Players.LocalPlayer.Character.LeftHand.Position = game.Players.LocalPlayer.Character.LeftLowerArm.Position
                                    game.Players.LocalPlayer.Character.RightHand.Position = game.Players.LocalPlayer.Character.RightLowerArm.Position
                                end
                            end
                            repeat buy() until game.Players.LocalPlayer.Backpack:FindFirstChild(ItemName) or game.Players.LocalPlayer.DataFolder.Currency.Value <= ItemCost or game.Players.LocalPlayer.Character:FindFirstChild(ItemName)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NamePos
                            if not game.Players.LocalPlayer.Character.LeftHand:FindFirstChild('LeftWrist') then
                                game.Players.LocalPlayer.Character.LeftHand.Position = game.Players.LocalPlayer.Character.LeftLowerArm.Position
                                game.Players.LocalPlayer.Character.RightHand.Position = game.Players.LocalPlayer.Character.RightLowerArm.Position
                            end
                        end
                    else
                        local MaskVisible = game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle')
                        if MaskVisible then
                            MaskVisible:Destroy()
                        end
                    end
        end)
        elseif dfh == false then
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Mask")
        end
end)

AddToggle(ToggleScrollingFrame, 'Auto Stomp', function(rty)
    if rty == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
        end)
    elseif rty == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
    end
end)

AddToggle(ToggleScrollingFrame, 'Auto Reload', function(utut)
    if utut == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                        wait(1)
                    end
                end
            end
        end)
    elseif utut == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
    end
end)

if tostring(game.PlaceId) == "2788229376" or "7213786345" then
    for i,v in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
        AddButton(AutobuyScrollingFrame, v.Name, function()
            local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local Teleport = v:FindFirstChild("Head")
            if Teleport then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Teleport.CFrame
                local CD = v:FindFirstChild("ClickDetector")
                if CD then
                    wait(0.75)
                    fireclickdetector(CD)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
                end
            end
        end);
    end
else
    AddButton(AutobuyScrollingFrame, "Game is not supported!", function()
        notify('Pluto', 'Game is not supported!')
    end);
end

SavedPos = nil

AddButton(TeleportsScrollingFrame, 'Save CFrame', function()
    SavedPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    notify('Pluto', 'Successfully saved position!')
end)
AddButton(TeleportsScrollingFrame, 'Load CFrame', function()
    if SavedPos ~= nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SavedPos
    else
        notify('Pluto', 'You need to save a position first!')
    end
end)
AddButton(TeleportsScrollingFrame, 'Food Store', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(306.0067138671875, 49.28265380859375, -623.0841674804688)
end)
AddButton(TeleportsScrollingFrame, 'Bank', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-450.474609375, 39.01521301269531, -284.3252868652344)
end)
AddButton(TeleportsScrollingFrame, 'Admin Base', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-812.9453125, -39.64921188354492, -886.0879516601562)
end)
AddButton(TeleportsScrollingFrame, 'Safe Zone 1', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-104.6056900024414, -58.7000732421875, 146.9606170654297)
end)
AddButton(TeleportsScrollingFrame, 'Safe Zone 2', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085021972656, 38.2499885559082, 200014.953125)
end)
AddButton(TeleportsScrollingFrame, 'Bat Cave', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.51559066772461, -58.7000732421875, 147.2098388671875)
end)
AddButton(TeleportsScrollingFrame, 'School', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-602.9989624023438, 21.87499237060547, 312.4015197753906)
end)
AddButton(TeleportsScrollingFrame, 'UFO', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.95069885253906, 138.9999542236328, -667.5256958007812)
end)
AddButton(TeleportsScrollingFrame, 'Uphill Guns', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(465.9172058105469, 48.070491790771484, -624.9341430664062)
end)
AddButton(TeleportsScrollingFrame, 'Downhill Guns', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582.903564453125, 8.314778327941895, -720.2985229492188)
end)
AddButton(TeleportsScrollingFrame, 'Sewer', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.58362579345703, -26.750036239624023, -272.1873474121094)
end)
AddButton(TeleportsScrollingFrame, 'Circus', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(110.11005401611328, 25.37999725341797, -969.6434936523438)
end)
AddButton(TeleportsScrollingFrame, 'Basketball', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-932.4991455078125, 22.099815368652344, -482.3588562011719)
end)
AddButton(TeleportsScrollingFrame, 'Gas Station', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(592.6478881835938, 49.00003433227539, -265.2165222167969)
end)
AddButton(TeleportsScrollingFrame, 'Taco Shop', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(587.97021484375, 51.061397552490234, -474.3446350097656)
end)
AddButton(TeleportsScrollingFrame, 'Casino', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-883.0330810546875, 21.7499942779541, -134.714111328125)
end)
AddButton(TeleportsScrollingFrame, 'Fire Station', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-153.78318786621094, 53.810604095458984, -102.96733856201172)
end)
AddButton(TeleportsScrollingFrame, 'Graveyard', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.1076202392578, 21.74999237060547, 19.999374389648438)
end)

local formatNumber = (function (n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

function SetPlayerInfo()
    local foundplayer = game:GetService('Players'):FindFirstChild(TargetUsername.Text)
    if foundplayer then
        local TargetId = foundplayer.UserId
        local ThumbType = Enum.ThumbnailType.HeadShot
        local ThumbSize = Enum.ThumbnailSize.Size420x420
        local Content, IsReady = game:GetService('Players'):GetUserThumbnailAsync(TargetId, ThumbType, ThumbSize)
        
        TargetProfile.Image = Content

        TargetCash.Text = ('   Cash : ' .. formatNumber(foundplayer.DataFolder.Currency.Value))

        for i,v in pairs(Database) do
            if v == foundplayer.UserId then
                TargetRank.Text = '   Rank : Premium'
            end
        end
    end
end

function ShrinkName()
    TargetUsername.FocusLost:connect(function()
        TargetRank.Text = '   Rank : Default'
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(TargetUsername.Text))) == string.lower(TargetUsername.Text) or (string.sub(string.lower(v.DisplayName),1,string.len(TargetUsername.Text))) == string.lower(TargetUsername.Text) then
                TargetUsername.Text = v.Name
                target = v.Name
                Skid = target
                SetPlayerInfo()
            end
        end
    end)
end
ShrinkName()

AddButton(TargetScrollingFrame, 'Teleport To', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position)
end)

AddButton(TargetScrollingFrame, 'Bag', function()
    local oldbagpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local TargetPlr = TargetUsername.Text
    function getRoot(char)
        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
        return rootPart
    end
    
    if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop['[BrownBag] - $25'].Head.CFrame
        wait(.30)
        fireclickdetector(game.Workspace.Ignored.Shop['[BrownBag] - $25'].ClickDetector)
        game.Players.LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game.Players.LocalPlayer.Character
    
        
        wait(.5)
        repeat
            pcall(function()
                wait()
                getRoot(game.Players[TargetPlr].Character).CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame + Vector3.new(1,3,0)
                game.Players.LocalPlayer.Character["[BrownBag]"]:Activate()
            end)
        until game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock")
    elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
    end
    if game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldbagpos)
    end
end)

AddButton(TargetScrollingFrame, 'Bring', function()
    BringPositionLOL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait(0.04)
    local oldbagpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local Target = TargetUsername.Text
    coroutine.wrap(function()
        local TargetPlr = game.Players:FindFirstChild(Target)
        if TargetPlr and TargetPlr.Character and TargetPlr.Character:FindFirstChild("Humanoid") then
            local c = game.Players.LocalPlayer.Character
            local Root = c.HumanoidRootPart
            local PrevCF = Root.CFrame
            local TargetChar = TargetPlr.Character
            c.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
            IsLocking = true
            Root.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position + Vector3.new(0, -5, 0))
            if TargetChar.BodyEffects["K.O"].Value == false then
                repeat wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position + Vector3.new(0, -5, 0))
                    if not c:FindFirstChild("Combat") then
                        c.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat)     
                    end
                    c.Combat:Activate()
                until not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == true     
            end
            Root.CFrame = CFrame.new(TargetChar.LowerTorso.Position)*CFrame.new(0,3,0)
            if c.BodyEffects.Grabbed.Value ~= nil then
            else
                if not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false  then
                else
                    local args = {
                        [1] = "Grabbing",
                        [2] = false
                    }

                    game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
                end
            end
            game:GetService('RunService'):BindToRenderStep("BringPlrReach", 0 , function()
                local success, err = pcall(function()
                    if player.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
            game:GetService('RunService'):BindToRenderStep("BringPlrTP", 0 , function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position)
            end)
            repeat
                wait(0.35)
                if c.BodyEffects.Grabbed.Value == nil then
                    if not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false  then
                    else
                        Root.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position)
                        local args = {
                            [1] = "Grabbing",
                            [2] = false
                        }
                        game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
                        wait(0.4)
                        game:GetService('RunService'):UnbindFromRenderStep("BringPlrTP")
                        game:GetService('RunService'):UnbindFromRenderStep("Reach")
                    end
                end
            until not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = BringPositionLOL
            wait(1.5)
            local args = {
                [1] = "Grabbing",
                [2] = false
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
        end
    end)()
end)

AddToggle(TargetScrollingFrame, 'View', function(msufkcmrug9)
    function view(plr)
        wait()
        if game.Players:FindFirstChild(plr) then
            if game.Players[plr].Character then
                game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = game.Players:FindFirstChild(plr).Character.HumanoidRootPart
            end
        end
    end
    if msufkcmrug9 == true then
        game:GetService('RunService'):BindToRenderStep("View", 0 , function()
            view(TargetUsername.Text)
        end)
    elseif msufkcmrug9 == false then
        game:GetService('RunService'):UnbindFromRenderStep("View")
        wait(0.04)
        game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
    end
end)

local Loop
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")
local OldFlingPos = player.Character.HumanoidRootPart.Position
local loopFunction = function()
    local success,err = pcall(function()
        local FlingEnemy = Players:FindFirstChild(TargetUsername.Text).Character
        if FlingEnemy and player.Character then
            FlingTorso = FlingEnemy.UpperTorso
            local dis = 3.85
            local increase = 6
            if FlingEnemy.Humanoid.MoveDirection.X < 0 then
                xchange = -increase
            elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
                xchange = increase
            else
                xchange = 0
            end
            if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
                zchange = -increase
            elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
                zchange = increase
            else
                zchange = 0
            end          
            if player.Character then
                player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dis,dis) + zchange) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X + 350),math.rad(player.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(player.Character.HumanoidRootPart.Orientation.Z + 240))
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
            end
        end
    end)
    if err then
        return
    end
end;
local Start = function()    
    OldFlingPos = player.Character.HumanoidRootPart.Position
    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
end;
local Pause = function()
    Loop:Disconnect()
    local vectorZero = Vector3.new(0, 0, 0)
    player.Character.PrimaryPart.Velocity = vectorZero
    player.Character.PrimaryPart.RotVelocity = vectorZero
    player.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
end;

AddToggle(TargetScrollingFrame, 'Fling', function(msufkcmrug9)
    if msufkcmrug9 == true then
        if getgenv().isflingingyeah == false then
            getgenv().isflingingyeah = true
            spawn(function() -- Network
                game.RunService.RenderStepped:Connect(function()
                    game.Players.LocalPlayer.MaximumSimulationRadius = 1000;
                    setsimulationradius(1000,1000)
                end)
            end)
        end
        Start()
    elseif msufkcmrug9 == false then
        Pause()
    end
end)

pcall(function()
    Players = game:GetService('Players')
    player = game.Players.LocalPlayer
    Plr = game.Players.LocalPlayer
    lokis = nil
    Grab = nil
    GC = nil
    target = nil
    Skid = nil

    local localPlayer     = game:GetService("Players").LocalPlayer;
    local localCharacter  = localPlayer.Character;
    AddToggle(TargetScrollingFrame, 'Auto Kill', function(hmirmgnyo4m8n3m4y3799480)
        if hmirmgnyo4m8n3m4y3799480 == true then
            
            jo = game:GetService('Players').LocalPlayer
            AX1 = jo.Character:FindFirstChild('HumanoidRootPart').CFrame.X
            AY1 = jo.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
            AZ1 = jo.Character:FindFirstChild('HumanoidRootPart').CFrame.Z

            game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
                local success, err = pcall(function()
                    if player.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
    
            game:GetService('RunService'):BindToRenderStep("Auto-Kill", 0 , function()
    
    
                if game.Players[target].Character.BodyEffects['K.O'].Value == false then
    
    
    
                    pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack.Combat)end)		
    
                    wait(0.00005)
                    Plr.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position + Vector3.new(0, -2, 0))
                    wait(0.00005)
                    Plr.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position + Vector3.new(0, -3, 0))
    
                    pcall(function()
                        Plr.Character.Combat:Activate()
                    end)
    
                end
    
    
                if game.Players[target].Character.BodyEffects['K.O'].Value == true then
    
    
    
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
    
                    Plr.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[TargetUsername.Text].Character.UpperTorso.Position + Vector3.new(0, 3, 0))
    
                end
    
            end)

        elseif hmirmgnyo4m8n3m4y3799480 == false then
            game:GetService('RunService'):UnbindFromRenderStep("Reach")
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Kill")
            wait(0.1)
            jo = game:GetService('Players').LocalPlayer
            jo.Character.HumanoidRootPart.CFrame = CFrame.new(AX1,AY1,AZ1)
        end
    end)
end)

AddToggle(ExtraScrollingFrame, 'Fake Lag', function(cyueritcn387)
    if cyueritcn387 == true then
        game:GetService('RunService'):BindToRenderStep("Fake Lag", 0 , function()
            wait(0.05)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(0.05)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end)
    elseif cyueritcn387 == false then
        game:GetService('RunService'):UnbindFromRenderStep("Fake Lag")
    end
end)
lettuceeatinf9928 = false
AddToggle(ExtraScrollingFrame, 'Lettuce Farm', function(krmihhhhhcgihe985389)
    function LettuceEat()
        if game.Players.LocalPlayer.Backpack:FindFirstChild("[Lettuce]") or game.Players.LocalPlayer.Character:FindFirstChild("[Lettuce]") then
            return
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame.Position) * CFrame.new(0,5,0)
            fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("[Lettuce]"))
            game.Players.LocalPlayer.Character:WaitForChild("[Lettuce]"):Activate()
        end
    end
    if krmihhhhhcgihe985389 == true then
        game:GetService('RunService'):BindToRenderStep("LettuceFarm", 0 , function()
            LettuceEat()
        end)
    elseif krmihhhhhcgihe985389 == false then
        game:GetService('RunService'):UnbindFromRenderStep("LettuceFarm")
    end
end)

AddButton(ExtraScrollingFrame, 'Cash Autofarm', function()
    pcall(function()
        if game:IsLoaded() then
            -- noclip
            for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                   if child:IsA("BasePart") then
                        child.CanCollide = false
                    end
            end
            repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")
            --SEAT DESTRUCTIONNNNN
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v:IsA("Seat") then
                    v:Destroy()
                end
            end
            --anti tp anticheat
            function DeleteAntiCheat()
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Script" and v.Name ~= "Health" then
                        v:Destroy()
                    end
                end
            end
        
            game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
                repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("FULLY_LOADED_CHAR")
                DeleteAntiCheat()
                wait(1)
                reset = false
            end)
            DeleteAntiCheat()
            --respawn
            local reset = false
            spawn(function()
                while wait() do
                    pcall(function()if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then reset = true end end)
                end
            end)
        --anti-cheat
        repeat
            wait()
        until game:IsLoaded()
        local gm = getrawmetatable(game)
        setreadonly(gm, false)
        local namecall = gm.__namecall
        gm.__namecall =
            newcclosure(
            function(self, ...)
                local args = {...}
                if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                    if tostring(getcallingscript()) ~= "Framework" then
                        return
                    end
                end
                if not checkcaller() and getnamecallmethod() == "Kick" then
                    return
                end
                return namecall(self, unpack(args))
          end)
            --antiafk
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        
            while wait(0.5) do
                for i,v in pairs(game.Workspace.Cashiers:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        spawn(function()
                            while v.Humanoid.Health > 0 do
                                wait()
                                pcall(function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0, -2, 1.5)end)
                            end
                        end)
                        repeat
                            pcall(function()game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat)end)
                            wait(0.1)
                            pcall(function()
                                game.Players.LocalPlayer.Character.Combat:Activate()
                            end)
                        until v.Humanoid.Health <= 0
                        wait(0.1)
        
                        for ii,vv in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
                            if vv.Name ~= "MoneyDrop" then continue end
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - vv.Position).Magnitude > 25 then continue end
                            vv.Name = "Grabbing"
                            vv.Anchored = true
                            while game.Workspace.Ignored.Drop:FindFirstChild("Grabbing") do
                                wait()
                                pcall(function()
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = vv.CFrame
                                    if not reset then fireclickdetector(vv.ClickDetector) end
                                end)
                            end
                        end
                local Loop
                local loopFunction = function()
                    for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
                        if v:IsA('Part') then
                            if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                                fireclickdetector(v:FindFirstChild('ClickDetector'))
                            end
                        end
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                Start()
                    end
                end
            end
        end
    end)
end)

AddButton(ExtraScrollingFrame, 'Animation Gamepass', function()
    local Folder = Instance.new('Folder', game:GetService("Workspace"))
    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton
    
    AnimationPack.Visible = true
    
    local LeanAnimation = Instance.new("Animation", Folder)
    LeanAnimation.Name = "LeanAnimation"
    LeanAnimation.AnimationId = "rbxassetid://3152375249"
    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
    local LayAnimation = Instance.new("Animation", Folder)
    LayAnimation.Name = "LayAnimation"
    LayAnimation.AnimationId = "rbxassetid://3152378852"
    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
    local Dance1Animation = Instance.new("Animation", Folder)
    Dance1Animation.Name = "Dance1Animation"
    Dance1Animation.AnimationId = "rbxassetid://3189773368"
    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
    local Dance2Animation = Instance.new("Animation", Folder)
    Dance2Animation.Name = "Dance2Animation"
    Dance2Animation.AnimationId = "rbxassetid://3189776546"
    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
    local GreetAnimation = Instance.new("Animation", Folder)
    GreetAnimation.Name = "GreetAnimation"
    GreetAnimation.AnimationId = "rbxassetid://3189777795"
    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
    local PrayingAnimation = Instance.new("Animation", Folder)
    PrayingAnimation.Name = "PrayingAnimation"
    PrayingAnimation.AnimationId = "rbxassetid://3487719500"
    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end
    
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end
    
    function Stop()
        Lay:Stop()
        Lean:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        Praying:Stop()
    end
    
    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local PrayingTextButton = ScrollingFrame.PrayingButton
    
    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
        end
    end)
    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)
    
    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)
    game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
        Stop()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
        wait(1)
        local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton
    
        AnimationPack.Visible = true
    
        local LeanAnimation = Instance.new("Animation", Folder)
        LeanAnimation.Name = "LeanAnimation"
        LeanAnimation.AnimationId = "rbxassetid://3152375249"
        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
        local LayAnimation = Instance.new("Animation", Folder)
        LayAnimation.Name = "LayAnimation"
        LayAnimation.AnimationId = "rbxassetid://3152378852"
        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
        local Dance1Animation = Instance.new("Animation", Folder)
        Dance1Animation.Name = "Dance1Animation"
        Dance1Animation.AnimationId = "rbxassetid://3189773368"
        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
        local Dance2Animation = Instance.new("Animation", Folder)
        Dance2Animation.Name = "Dance2Animation"
        Dance2Animation.AnimationId = "rbxassetid://3189776546"
        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
        local GreetAnimation = Instance.new("Animation", Folder)
        GreetAnimation.Name = "GreetAnimation"
        GreetAnimation.AnimationId = "rbxassetid://3189777795"
        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
        local PrayingAnimation = Instance.new("Animation", Folder)
        PrayingAnimation.Name = "PrayingAnimation"
        PrayingAnimation.AnimationId = "rbxassetid://3487719500"
        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lean" then
                    v.Name = "LeanButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lay" then
                    v.Name = "LayButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance1" then
                    v.Name = "Dance1Button"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance2" then
                    v.Name = "Dance2Button"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Greet" then
                    v.Name = "GreetButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Praying" then
                    v.Name = "PrayingButton"
                end
            end
        end
    
        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            Praying:Stop()
        end
    
        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
        local PrayingTextButton = ScrollingFrame.PrayingButton
    
        AnimationPack.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == false then
                ScrollingFrame.Visible = true
                CloseButton.Visible = true
            end
        end)
        CloseButton.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == true then
                ScrollingFrame.Visible = false
                CloseButton.Visible = false
            end
        end)
        LeanTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lean:Play()
        end)
        LayTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lay:Play()
        end)
        Dance1TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance1:Play()
        end)
        Dance2TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance2:Play()
        end)
        GreetTextButton.MouseButton1Click:Connect(function()
            Stop()
            Greet:Play()
        end)
        PrayingTextButton.MouseButton1Click:Connect(function()
            Stop()
            Praying:Play()  
        end)
    end)
end)

AddButton(ExtraScrollingFrame, 'Low GFX', function()
    game.Workspace.Terrain.WaterWaveSize = 0
    game.Workspace.Terrain.WaterWaveSpeed = 0
    game.Workspace.Terrain.WaterReflectance = 0
    game.Workspace.Terrain.WaterTransparency = 0
    game.Lighting.GlobalShadows = false
    game.Lighting.FogEnd = 99999999
    game.Lighting.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        end
    end
end)

AddButton(ExtraScrollingFrame, 'Fake Macro [M]', function()
    Key = Enum.KeyCode.M -- If you want to change the keybind, change "Q" with something else
	game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if chatting then
                IsChatting = true
            else
                IsChatting = false
            end
            if input.KeyCode == Key then
                if IsChatting ~= false then
                    return
                end
                if not toggle then
                    toggle = true
                    if game.Players.LocalPlayer.Character:FindFirstChild('Wallet')then
                        spawn(function()
                            while toggle == true do
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait() game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait() game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait() game.RunService.RenderStepped:Wait()
                            end
                        end)
                    else
                        Instance.new("Animation", game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations")).Name = 'Greet'
                        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet").AnimationId = 'rbxassetid://3189777795'
                        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Play()
                        wait(1.6)
                        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
                        wait()
                        pcall(function()
                            game.Players.LocalPlayer.Backpack.Wallet.Parent = game.Players.LocalPlayer.Character
                        end)
                        spawn(function()
                            while toggle == true do
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) game.RunService.RenderStepped:Wait()
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) game.RunService.RenderStepped:Wait()
                            end
                        end)
                        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
                    end
                else
                    toggle = false
                    game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
                    game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet"):Remove()
                end
            end
        end
    end)
end)

AddButton(ExtraScrollingFrame, 'Show Mask Names', function()
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v and v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType ~= Enum.HumanoidDisplayDistanceType.Viewer then
			v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
		end
	end
    notify('Pluto', 'If they use mask again, use this feature.')
end)

AddButton(ExtraScrollingFrame, 'Turn Fat', function()
    game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
    game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
end)

AddButton(ExtraScrollingFrame, 'Headless', function()
    game.Players.LocalPlayer.Character.Head:BreakJoints()
    game.Players.LocalPlayer.Character.Head.Position = Vector3.new(0,99999999999999,0)
    notify('Pluto', 'Others will not be able to see your chat.')
end)

AddButton(ExtraScrollingFrame, 'Korblox', function()
    game.Players.LocalPlayer.Character.RightLowerLeg.MeshId = "902942093"
    game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = "1"
    game.Players.LocalPlayer.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
    game.Players.LocalPlayer.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
    game.Players.LocalPlayer.Character.RightFoot.MeshId = "902942089"
    game.Players.LocalPlayer.Character.RightFoot.Transparency = "1"
    notify('Pluto', 'Only you are able to see this.')
end)

AddButton(ExtraScrollingFrame, 'Dick Bat', function()
    pcall(function()
        local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local k = game.Workspace.Ignored.Shop["[Bat] - $250"]
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
            wait(.2)
            fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
            toolf = game.Players.LocalPlayer.Backpack:WaitForChild("[Bat]")
            toolf.Parent = game.Players.LocalPlayer.Character
            wait()
            game.Players.LocalPlayer.Character:WaitForChild("[Bat]")
            game.Players.LocalPlayer.Character:WaitForChild("[Bat]").Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
            game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripForward = Vector3.new(0, -1, -0)
            game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripPos = Vector3.new(1.2111, 1.11114, 1.8111)
            game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripUp = Vector3.new(-500000, 404, 5000000)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
        end
    end)
end)

AddButton(ExtraScrollingFrame, 'Holy Cross', function()
    pcall(function()
    	pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == '[SledgeHammer]' then
                    v.Parent = game.Players.LocalPlayer.Character
                end
            end
        end)
        wait(.9)
        local targetpos = CFrame.new(-899.925659, 21.75, -297.100342)
        local plr = game.Players.LocalPlayer
        local pos = plr.Character.HumanoidRootPart.Position
        if not game.Players.LocalPlayer.Character:FindFirstChild("[SledgeHammer]") then
            plr.Character.HumanoidRootPart.CFrame = targetpos
            local cd = game:GetService("Workspace").Ignored.Shop["[SledgeHammer] - $350"]:FindFirstChild("ClickDetector")
            wait(.9)
            fireclickdetector(cd)
            wait(.4)
            game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = plr.Character
            wait(.9)
            fireclickdetector(cd)
            wait(.4)
            game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = plr.Character
            for i,v in pairs(plr.Character:GetChildren()) do
                if v.Name == '[SledgeHammer]' then
                    v:GetChildren()[3]:Destroy()
                end
            end
            local sd = plr.Character:FindFirstChild("[SledgeHammer]")
            sd.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
            sd.GripForward = Vector3.new(0, 0, -1)
            sd.GripPos = Vector3.new(-2.4, -0.7, 0)
            sd.GripUp = Vector3.new(1, 0, 0)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
        end
        local sd = plr.Character:FindFirstChild("[SledgeHammer]")
        sd.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
        sd.GripForward = Vector3.new(0, 0, -1)
        sd.GripPos = Vector3.new(-2.4, -0.7, 0)
        sd.GripUp = Vector3.new(1, 0, 0)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
    end)
end)

AddButton(ExtraScrollingFrame, 'Bike Fly', function()
    local speed = 60
    local old
    local Plr = game.Players.LocalPlayer
    local wheels = {}
    local control = {q=false,e=false,w=false,a=false,s=false,d=false}
    local Mouse = Plr:GetMouse()

    Mouse.KeyDown:connect(function(KEY)
        local key = KEY:lower()
        if control[key] ~= nil then
            control[key]=true
        end
    end)

    Mouse.KeyUp:connect(function(KEY)
        local key = KEY:lower()
        if control[key] ~= nil then
            control[key]=false
        end
    end)

    while game.RunService.Stepped:wait() do
        local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
        if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
            Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
        else
            local c = Plr.PlayerGui.MainScreenGui.Bar.HP
            local g = c:Clone()
            g.Name = "Speed"
            g.Position = UDim2.new(0.5, 0, 1, -120)
            g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
            g.Picture.Image.Image = "rbxassetid://181035717"
            g.TextLabel.Text = "Speed"
            g.Parent = c.Parent
        end
        if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
            if seat ~= old then
                if old then
                    old.Vel:Destroy()
                    old.Gyro:Destroy()
                end
                old = seat
                for i = 1, 2 do
                    if wheels[i] then
                        wheels[i][2].Parent = wheels[i][1]
                    end
                    local wheel = seat.Parent.Wheel
                    wheels[i] = {seat.Parent, wheel}
                    wheel:remove()
                end
                local gyro = Instance.new("BodyGyro", seat)
                gyro.Name = "Gyro"
                local pos = Instance.new("BodyVelocity", seat)
                pos.Name = "Vel"
                gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            else 
                seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                local vel = CFrame.new(0, 0, 0)
                if control.w then
                    vel = vel * CFrame.new(0, 0, -speed)
                end
                if control.s then
                    vel = vel * CFrame.new(0, 0, speed)
                end
                if control.a then
                    vel = vel * CFrame.new(-speed, 0, 0)
                end
                if control.d then
                    vel = vel * CFrame.new(speed, 0, 0)
                end
                seat.Vel.Velocity = (seat.CFrame*vel).p - seat.CFrame.p
            end
        end
        if control.e and speed<100 then
            speed = speed + 1
        end
        if control.q and speed > 0 then
            speed = speed - 1
        end
    end
end)

AddButton(ExtraScrollingFrame, 'Invisible Mask', function()
    local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
        wait(.2)
        fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
        toolf = game.Players.LocalPlayer.Backpack:WaitForChild("Mask")
        toolf.Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character:WaitForChild("Mask")
        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
        game.Players.LocalPlayer.Character:WaitForChild("In-gameMask")
        game.Players.LocalPlayer.Character["In-gameMask"].Handle:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
    end
end)

AddButton(ExtraScrollingFrame, 'Anonymous', function()
    local function inTable(What, Table)
        for Index, Value in pairs(Table) do
            if What == Value then
                return true
            end
        end
        return false
    end

    local removingClasses = {
        "Accessory",
        "Pants",
        "Shirt",
    }

    for _, Instance in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if inTable(Instance.ClassName, removingClasses) or Instance.Name == "face" then
            Instance:Destroy()
        end
    end
end)

AddButton(ExtraScrollingFrame, 'Server Crasher', function()
    pcall(function()loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
end)
end)

AddButton(ExtraScrollingFrame, 'Rejoin', function()
    function k(message)
        game.Players.LocalPlayer:Kick("\n[PLUTO REJOIN]"..message)
    end
    entries = 0
    repeat
    k("\nRejoining".."\n Attempt:"..entries)
    wait(0.2)
    k("\nRejoining.".."\n Attempt:"..entries)
    wait(0.2)
    k("\nRejoining..".."\n Attempt:"..entries)
    wait(0.2)
    k("\nRejoining...".."\n Attempt:"..entries)
    wait(0.2)
    k("\nRejoining..".."\n Attempt:"..entries)
    wait(0.2)
    k("\nRejoining.".."\n Attempt:"..entries)
    wait(0.2)
    entries = entries + 1
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    until game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

pcall(function()
    function PremiumCommands()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(Data)
            local Player = game:GetService("Players")[Data.FromSpeaker]
            local Message = Data.Message
            Message = string.lower(Message)
            local Args = string.split(Message," ")
            for i,v in pairs(Database) do
                if v == Player.UserId then
                    if Args[1] == ":freeze" then
                        game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
                        game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
                    elseif Args[1] == ":unfreeze" then
                            game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
                            game.Players.LocalPlayer.Character.UppperTorso.Anchored = false
                    elseif Args[1] == ":benx" then
                        bending = true
                        local segtarget = Player.Name
                        local Crouch = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                        Crouch.Looped = true
                        Crouch:Play()
                        local away = .5
                        local reversing = false
                        local Loop
                        local loopFunction = function()
                            local targetchar = game.Workspace.Players:FindFirstChild(segtarget) or game.Workspace:FindFirstChild(segtarget)
                            local character = game.Players.LocalPlayer.Character
                            if targetchar then
                                if reversing == true then
                                    away = away - 0.1
                                else
                                    away = away + 0.1
                                end
                                if away >= 2 then
                                    reversing = true
                                elseif away < 0.5 then
                                    reversing = false
                                end
                                character.HumanoidRootPart.CFrame = game.Players[segtarget].Character.HumanoidRootPart.CFrame + game.Players[segtarget].Character.HumanoidRootPart.CFrame.lookVector * away
                            end
                        end;
                        local Start = function()
                            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                        end;
                        local Pause = function()
                            Loop:Disconnect()
                            Crouch:Stop()
                        end;
                        Start()	
                        repeat wait() until bending == false
                        Pause()
                    elseif Args[1] == ":unbenx" then
                        while bending == true do
                            wait()
                            bending = false
                        end
                    elseif Args[1] == ":kill" then
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                    elseif Args[1] == ":bring" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.UpperTorso.Position)
                    elseif Args[1] == ":ban" then
                        game.Players.LocalPlayer:Kick("PERMA BAN")
                    elseif Args[1] == ":kick" then
                        game.Players.LocalPlayer:Kick("You've been kicked by\n"..Player.DisplayName)
                    elseif Args[1] == ":fling" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
                    elseif Args[1] == ":crash" then
                        while true do end
                    elseif Args[1] == ":drop" then
                        game.ReplicatedStorage.MainEvent:FireServer("DropMoney",10000)
                    elseif Args[1] == ":fat" then
                        game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
                        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
                    elseif Args[1] == ":find" then
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("i like the planet pluto", 'All')
                    end
                end
            end
        end)
    end
    
    local IsPremium = false
    
    for i,v in pairs(Database) do
        if v == game.Players.LocalPlayer.UserId then
            IsPremium = true
        end
    end
    
    pcall(function()
        if IsPremium == false then
            PremiumCommands()
        end
    end)

    function CIT(c1, c2, c3)
        Dropshadow.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        SettingsButton.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        SelfKickButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        EditThemesButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        NotificationsButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        SpecialScriptButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        AboutPlutoButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        ExitButtonIcon.ImageColor3 = Color3.fromRGB(c1, c2, c3)
        TargetInfoFrame.ImageColor3 = Color3.fromRGB(c1, c2, c3)
    end
    
    function asdjkjasjdj()
        for _,v in pairs(CreditsScrollingFrame:GetChildren()) do
            if v.ClassName == "Frame" then
                v:Destroy()
            end
        end
        CreditsScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        CurrentCredit()
    end

    SettingsButton.MouseButton1Down:Connect(function()
        for i,v in pairs(SelectTab:GetChildren()) do
            if v.ClassName == 'TextButton' then
                game.TweenService:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    TextColor3 = Color3.fromRGB(99, 99, 99)
                }):Play()
                for _,x in pairs(v:GetChildren()) do
                    if x.ClassName == 'Frame' then
                        game.TweenService:Create(x, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundTransparency = 1.000
                        }):Play()
                    end
                end
            end
        end
        game.TweenService:Create(Transition, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundTransparency = 0.000
        }):Play()
        wait(0.3)
        for i,v in pairs(Tabs:GetChildren()) do
            v.Visible = false
        end
        Transition.Visible = true
        Settings.Visible = true
        game.TweenService:Create(Transition, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
            BackgroundTransparency = 1.000
        }):Play()
    end)

    EditThemesButton.MouseButton1Down:Connect(function()
        ThemeChangerFrame.Visible = not ThemeChangerFrame.Visible
    end)

    CloseThemeChanger.MouseButton1Down:Connect(function()
        ThemeChangerFrame.Visible = false
    end)

    SelfKickButton.MouseButton1Down:Connect(function()
        game.Players.LocalPlayer:Kick('Self kick.')
    end)

    ExitPlutoButton.MouseButton1Down:Connect(function()
        notify('Pluto','Good bye.')
        wait(2)
        Pluto:Destroy()
    end)

    AboutPlutoButton.MouseButton1Down:Connect(function()
        notify('Pluto', 'Press V to toggle the gui.')
        wait(2.5)
        notify('Pluto', "Pluto doesn't log any executions.")
    end)

    SpecialScriptButton.MouseButton1Down:Connect(function()
        if IsPremium == true then
            local Toggle = false
            local KeyCode = 'z'
            
            NotificationHolder:message {
                Title = "Pluto",
                Description = "Press Z to toggle script.",
                Icon = 10952973354
            }
            
            function AA()
                local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,888,0)
                game.RunService.RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
            end
            
            game:GetService('UserInputService').InputBegan:Connect(function(Key)
                if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
                    if Toggle then
                        Toggle = false
                        NotificationHolder:message {
                            Title = "Pluto",
                            Description = "Disabled script!",
                            Icon = 10952973354
                        }
            
                    elseif not Toggle then
                        Toggle = true
                        NotificationHolder:message {
                            Title = "Pluto",
                            Description = "Enabled script!",
                            Icon = 10952973354
                        }
            
                        while Toggle do
                            AA()
                            task.wait()
                        end
                    end
                end
            end)
        else
            NotificationHolder:message {
                Title = "Pluto",
                Description = "This is a premium only feature.",
                Icon = 10952973354
            }
        end
    end)

    NotificationsButton.MouseButton1Down:Connect(function()
        notify('Pluto', game:HttpGet('https://raw.githubusercontent.com/SpacedYes/lua-projects/master/Features/Message.Lua'))
    end)

    DefaultButton.MouseButton1Down:Connect(function()
        CIT(255, 255, 255)
        Dropshadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        PlutoName.Text = "PLU<font color=\"rgb(99,99,99)\">TO</font>"
        CURRENTTHEME = "Default"
        asdjkjasjdj()
    end)

    BabyBlueButton.MouseButton1Down:Connect(function()
        CIT(85, 170, 255)
        PlutoName.Text = "PLU<font color=\"rgb(85, 170, 255)\">TO</font>"
        CURRENTTHEME = "BabyBlue"
        asdjkjasjdj()
    end)

    HotPinkButton.MouseButton1Down:Connect(function()
        CIT(255, 0, 120)
        PlutoName.Text = "PLU<font color=\"rgb(255, 0, 120)\">TO</font>"
        CURRENTTHEME = "HotPink"
        asdjkjasjdj()
    end)

    PurpleButton.MouseButton1Down:Connect(function()
        CIT(132, 84, 213)
        PlutoName.Text = "PLU<font color=\"rgb(132, 84, 213)\">TO</font>"
        CURRENTTHEME = "Purple"
        asdjkjasjdj()
    end)

    RedButton.MouseButton1Down:Connect(function()
        CIT(170, 0, 0)
        PlutoName.Text = "PLU<font color=\"rgb(170, 0, 0)\">TO</font>"
        CURRENTTHEME = "Red"
        asdjkjasjdj()
    end)

    YellowButton.MouseButton1Down:Connect(function()
        CIT(255, 255, 0)
        PlutoName.Text = "PLU<font color=\"rgb(255, 255, 0)\">TO</font>"
        CURRENTTHEME = "Yellow"
        asdjkjasjdj()
    end)

    coroutine.resume(coroutine.create(function()
        while wait(0.5) do
            local function Pluto_Names()
pcall(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/SpacedYes/lua-projects/master/Features/Emoji.Lua'))()
end)
                if game.Players.LocalPlayer.Character.UpperTorso.BodyFrontAttachment then
                    game.Players.LocalPlayer.Character.UpperTorso.BodyFrontAttachment:Destroy()
                end
                local TOTAL = 0
                for i,v in pairs(game.Workspace.Players:GetChildren()) do
                    if not v.UpperTorso:FindFirstChild('BodyFrontAttachment') then
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            TOTAL = TOTAL + 1
                        end
                    end
                end
                PlutoUsersText.Text = TOTAL
            end
            local success, err = pcall(Pluto_Names)
        end
    end))
end)

pcall(function()
    UserSettings().GameSettings.MasterVolume = 10
    local AudioIds = {1788243907,5153718519}
    local Sound2 = Instance.new("Sound", nil)
    local c = getconnections(game:GetService("PolicyService").ChildAdded)
    for i,v in pairs(c) do v:Disable() end
    Sound2.Parent = game:GetService("PolicyService")
    for i,v in pairs(c) do v:Enable() end
    Sound2.Name = "Notification Sound"
    Sound2.SoundId = "http://www.roblox.com/asset/?id="..AudioIds[2]
    Sound2:Play()

    NotificationHolder:message {
        Title = "Pluto",
        Description = "Successfully loaded script.",
        Icon = 10952973354
    }
    asdjkjasjdj()
    for i,v in pairs(Database) do
        if v == game.Players.LocalPlayer.UserId then
            wait(2.5)
            NotificationHolder:message {
                Title = "Pluto Premium",
                Description = "Mod powers granted.",
                Icon = 10952973354
            }
        end
    end
end)

pcall(function()
    assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)
end)

pcall(function()
    local CoreGui = game:GetService("CoreGui")
    local DevConsole = CoreGui:WaitForChild("DevConsoleMaster")
    local DevWindow = DevConsole:FindFirstChild("DevConsoleWindow")
    local DevUI = DevWindow:FindFirstChild("DevConsoleUI")
    local MainView = DevUI:FindFirstChild("MainView")
    local ClientLog = MainView:FindFirstChild("ClientLog")
    
    function ClearConsole()
        for _, Element in next, ClientLog:GetChildren() do
            if Element:IsA("GuiObject") and Element.Name == Element.Name:match("%d+") then
                Element:Destroy()
            end
        end
    end
    
    ClearConsole()
end)