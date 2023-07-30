--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGuiDSP = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local WorkspaceTab = Instance.new("TextButton")
local ImageBorder = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local ImageLabel = Instance.new("ImageLabel")
local PlayersMenu = Instance.new("Frame")
local PlayerScroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local PlayerFrame = Instance.new("TextButton")
local DisplayLabel = Instance.new("TextLabel")
local UserLabel = Instance.new("TextLabel")
local HealthLabel = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local Tools = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIGradient = Instance.new("UIGradient")
local AllToggle = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local OthersToggle = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local CommandButton = Instance.new("TextButton")
local CommandScroll = Instance.new("ScrollingFrame")
local Sink = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local Kick = Instance.new("TextButton")
local Punish = Instance.new("TextButton")
local RemoveTool = Instance.new("TextButton")
local AllTools = Instance.new("TextButton")
local Midget = Instance.new("TextButton")
local Unwing = Instance.new("TextButton")
local Bald = Instance.new("TextButton")
local Naked = Instance.new("TextButton")
local UIPadding = Instance.new("UIPadding")
local UIGridLayout = Instance.new("UIGridLayout")
local Box = Instance.new("TextButton")
local RemoveRootJoint = Instance.new("TextButton")
local RemoteKill = Instance.new("TextButton")
local PlayersTab = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local ImageBorder_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local WorkspaceMenu = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local RemoveModelInserter = Instance.new("TextButton")
local RemoveAllGearboards = Instance.new("TextButton")
local RemoveMusicPlayer = Instance.new("TextButton")
local RemoveF3XGiver = Instance.new("TextButton")
local RemoveBtoolsGiver = Instance.new("TextButton")
local Input = Instance.new("TextBox")
local Decription = Instance.new("TextLabel")
local Border = Instance.new("TextLabel")

--Properties:

ScreenGuiDSP.Name = "ScreenGuiDSP"
ScreenGuiDSP.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGuiDSP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGuiDSP.ResetOnSpawn = false

Frame.Parent = ScreenGuiDSP
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 98)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.0192031264, 0, 0.52895838, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 249, 0, 409)
Frame.ZIndex = 2

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 0, 98)
Title.BorderColor3 = Color3.fromRGB(255, 0, 98)
Title.BorderSizePixel = 2
Title.Position = UDim2.new(0.0109999999, 0, 0.00503637036, 0)
Title.Size = UDim2.new(0, 244, 0, 21)
Title.ZIndex = 2
Title.Font = Enum.Font.GothamBold
Title.Text = "gigafart9000 (TEST)"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 102)
Close.BorderColor3 = Color3.fromRGB(27, 42, 53)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.885494351, 0, 1.34403845e-05, 0)
Close.Size = UDim2.new(0, 28, 0, 22)
Close.ZIndex = 4
Close.Font = Enum.Font.Michroma
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 16.000

WorkspaceTab.Name = "WorkspaceTab"
WorkspaceTab.Parent = Frame
WorkspaceTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WorkspaceTab.BackgroundTransparency = 1.000
WorkspaceTab.BorderColor3 = Color3.fromRGB(27, 42, 53)
WorkspaceTab.Position = UDim2.new(0.9923895, 0, 0.223958239, 0)
WorkspaceTab.Size = UDim2.new(0, 35, 0, 50)
WorkspaceTab.Font = Enum.Font.SourceSans
WorkspaceTab.Text = ""
WorkspaceTab.TextColor3 = Color3.fromRGB(0, 0, 0)
WorkspaceTab.TextSize = 14.000

ImageBorder.Name = "ImageBorder"
ImageBorder.Parent = WorkspaceTab
ImageBorder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageBorder.BackgroundTransparency = 1.000
ImageBorder.Position = UDim2.new(-0.349999994, 0, -0.100000001, 0)
ImageBorder.Size = UDim2.new(0, 61, 0, 60)
ImageBorder.Visible = false
ImageBorder.Image = "rbxassetid://11931995681"

Icon.Name = "Icon"
Icon.Parent = WorkspaceTab
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.192857176, 0, 0.300000012, 0)
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.ZIndex = 3
Icon.Image = "rbxassetid://11932160300"

ImageLabel.Parent = WorkspaceTab
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.349999994, 0, -0.0599999987, 0)
ImageLabel.Size = UDim2.new(0, 58, 0, 56)
ImageLabel.ZIndex = 2
ImageLabel.Image = "rbxassetid://11931577372"

PlayersMenu.Name = "PlayersMenu"
PlayersMenu.Parent = Frame
PlayersMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersMenu.BackgroundTransparency = 1.000
PlayersMenu.BorderSizePixel = 0
PlayersMenu.Position = UDim2.new(0.0197603162, 0, 0.060709089, 0)
PlayersMenu.Size = UDim2.new(0, 243, 0, 385)

PlayerScroll.Name = "PlayerScroll"
PlayerScroll.Parent = PlayersMenu
PlayerScroll.Active = true
PlayerScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerScroll.BackgroundTransparency = 1.000
PlayerScroll.BorderSizePixel = 0
PlayerScroll.Position = UDim2.new(-0.0147158774, 0, 0.074443236, 0)
PlayerScroll.Size = UDim2.new(0, 244, 0, 353)
PlayerScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
PlayerScroll.ScrollBarThickness = 0
PlayerScroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

UIListLayout.Parent = PlayerScroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = PlayerScroll
PlayerFrame.BackgroundColor3 = Color3.fromRGB(55, 52, 79)
PlayerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerFrame.BorderSizePixel = 2
PlayerFrame.Position = UDim2.new(3.12680086e-08, 0, 0, 0)
PlayerFrame.Size = UDim2.new(0, 245, 0, 58)
PlayerFrame.Font = Enum.Font.SourceSans
PlayerFrame.Text = ""
PlayerFrame.TextColor3 = Color3.fromRGB(168, 168, 168)
PlayerFrame.TextScaled = true
PlayerFrame.TextSize = 28.000
PlayerFrame.TextWrapped = true

DisplayLabel.Name = "DisplayLabel"
DisplayLabel.Parent = PlayerFrame
DisplayLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DisplayLabel.BackgroundTransparency = 1.000
DisplayLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisplayLabel.BorderSizePixel = 0
DisplayLabel.Position = UDim2.new(0.258064538, 0, 0, 0)
DisplayLabel.Size = UDim2.new(0, 182, 0, 29)
DisplayLabel.Font = Enum.Font.Gotham
DisplayLabel.Text = "WWWWWWWWWWWWWWW"
DisplayLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DisplayLabel.TextSize = 15.000
DisplayLabel.TextXAlignment = Enum.TextXAlignment.Left

UserLabel.Name = "UserLabel"
UserLabel.Parent = PlayerFrame
UserLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserLabel.BackgroundTransparency = 1.000
UserLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserLabel.BorderSizePixel = 0
UserLabel.Position = UDim2.new(0.258064479, 0, 0, 20)
UserLabel.Size = UDim2.new(0, 168, 0, 20)
UserLabel.Font = Enum.Font.Gotham
UserLabel.Text = "WWWWWWWWWWWWWWWWWWWWWWWWWWW"
UserLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
UserLabel.TextSize = 12.000
UserLabel.TextXAlignment = Enum.TextXAlignment.Left

HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = PlayerFrame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
HealthLabel.BorderSizePixel = 0
HealthLabel.Position = UDim2.new(0.569387734, 0, 0.344827592, 20)
HealthLabel.Size = UDim2.new(0, 105, 0, 18)
HealthLabel.Font = Enum.Font.Gotham
HealthLabel.Text = "90000/90000"
HealthLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
HealthLabel.TextSize = 12.000
HealthLabel.TextXAlignment = Enum.TextXAlignment.Right

ImageLabel_2.Parent = PlayerFrame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Size = UDim2.new(0, 57, 0, 57)
ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Tools.Name = "Tools"
Tools.Parent = PlayerFrame
Tools.Active = true
Tools.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tools.BackgroundTransparency = 1.000
Tools.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tools.BorderSizePixel = 0
Tools.Position = UDim2.new(0.232653067, 0, 0.689655185, 0)
Tools.Size = UDim2.new(0, 58, 0, 17)
Tools.CanvasSize = UDim2.new(2, 0, 2, 0)
Tools.ScrollBarThickness = 0
Tools.ScrollingEnabled = false

UIListLayout_2.Parent = Tools
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.76, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Parent = PlayerFrame

AllToggle.Name = "AllToggle"
AllToggle.Parent = PlayersMenu
AllToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AllToggle.BackgroundTransparency = 1.000
AllToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
AllToggle.BorderSizePixel = 0
AllToggle.Position = UDim2.new(0.0193814244, 0, 0, 5)
AllToggle.Size = UDim2.new(0, 39, 0, 18)
AllToggle.Font = Enum.Font.Gotham
AllToggle.Text = "All"
AllToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
AllToggle.TextSize = 12.000
AllToggle.TextXAlignment = Enum.TextXAlignment.Right

TextButton.Parent = AllToggle
TextButton.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
TextButton.BorderColor3 = Color3.fromRGB(55, 52, 79)
TextButton.BorderSizePixel = 2
TextButton.Size = UDim2.new(0, 18, 0, 18)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

OthersToggle.Name = "OthersToggle"
OthersToggle.Parent = PlayersMenu
OthersToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OthersToggle.BackgroundTransparency = 1.000
OthersToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
OthersToggle.BorderSizePixel = 0
OthersToggle.Position = UDim2.new(0.21985203, 0, 0, 5)
OthersToggle.Size = UDim2.new(0, 62, 0, 18)
OthersToggle.Font = Enum.Font.Gotham
OthersToggle.Text = "Others"
OthersToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
OthersToggle.TextSize = 12.000
OthersToggle.TextXAlignment = Enum.TextXAlignment.Right

TextButton_2.Parent = OthersToggle
TextButton_2.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
TextButton_2.BorderColor3 = Color3.fromRGB(55, 52, 79)
TextButton_2.BorderSizePixel = 2
TextButton_2.Size = UDim2.new(0, 18, 0, 18)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

CommandButton.Name = "CommandButton"
CommandButton.Parent = PlayersMenu
CommandButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommandButton.BorderColor3 = Color3.fromRGB(55, 52, 79)
CommandButton.BorderSizePixel = 0
CommandButton.Position = UDim2.new(0, 195, 0, 5)
CommandButton.Size = UDim2.new(0, 39, 0, 18)
CommandButton.Font = Enum.Font.Gotham
CommandButton.Text = "CMD"
CommandButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandButton.TextSize = 14.000

CommandScroll.Name = "CommandScroll"
CommandScroll.Parent = PlayersMenu
CommandScroll.Active = true
CommandScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandScroll.BackgroundTransparency = 1.000
CommandScroll.BorderSizePixel = 0
CommandScroll.Position = UDim2.new(-0.0149999997, 0, 0.074000001, 0)
CommandScroll.Size = UDim2.new(0, 244, 0, 353)
CommandScroll.Visible = false
CommandScroll.CanvasSize = UDim2.new(0, 0, 1.70000005, 0)
CommandScroll.ScrollBarThickness = 9

Sink.Name = "Sink"
Sink.Parent = CommandScroll
Sink.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Sink.BorderColor3 = Color3.fromRGB(255, 0, 98)
Sink.BorderSizePixel = 2
Sink.Position = UDim2.new(0.550000012, 0, 0.0299999993, 0)
Sink.Size = UDim2.new(0, 95, 0, 46)
Sink.Font = Enum.Font.SourceSans
Sink.Text = "Sink"
Sink.TextColor3 = Color3.fromRGB(168, 168, 168)
Sink.TextScaled = true
Sink.TextSize = 28.000
Sink.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = CommandScroll
Kill.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Kill.BorderColor3 = Color3.fromRGB(255, 0, 98)
Kill.BorderSizePixel = 2
Kill.Position = UDim2.new(0.0755277202, 0, 0.209999993, 0)
Kill.Size = UDim2.new(0, 95, 0, 46)
Kill.Font = Enum.Font.SourceSans
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(168, 168, 168)
Kill.TextScaled = true
Kill.TextSize = 28.000
Kill.TextWrapped = true

Kick.Name = "Kick"
Kick.Parent = CommandScroll
Kick.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Kick.BorderColor3 = Color3.fromRGB(255, 0, 98)
Kick.BorderSizePixel = 2
Kick.Position = UDim2.new(0.550000012, 0, 0.119999997, 0)
Kick.Size = UDim2.new(0, 95, 0, 46)
Kick.Font = Enum.Font.SourceSans
Kick.Text = "Kick"
Kick.TextColor3 = Color3.fromRGB(168, 168, 168)
Kick.TextScaled = true
Kick.TextSize = 28.000
Kick.TextWrapped = true

Punish.Name = "Punish"
Punish.Parent = CommandScroll
Punish.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Punish.BorderColor3 = Color3.fromRGB(255, 0, 98)
Punish.BorderSizePixel = 2
Punish.Position = UDim2.new(0.550000012, 0, 0.209999993, 0)
Punish.Size = UDim2.new(0, 95, 0, 46)
Punish.Font = Enum.Font.SourceSans
Punish.Text = "Punish"
Punish.TextColor3 = Color3.fromRGB(168, 168, 168)
Punish.TextScaled = true
Punish.TextSize = 28.000
Punish.TextWrapped = true

RemoveTool.Name = "RemoveTool"
RemoveTool.Parent = CommandScroll
RemoveTool.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveTool.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveTool.BorderSizePixel = 2
RemoveTool.Position = UDim2.new(0.0755277202, 0, 0.119999997, 0)
RemoveTool.Size = UDim2.new(0, 95, 0, 46)
RemoveTool.Font = Enum.Font.SourceSans
RemoveTool.Text = "Remove Equipped Tool"
RemoveTool.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveTool.TextScaled = true
RemoveTool.TextSize = 28.000
RemoveTool.TextWrapped = true

AllTools.Name = "AllTools"
AllTools.Parent = CommandScroll
AllTools.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
AllTools.BorderColor3 = Color3.fromRGB(255, 0, 98)
AllTools.BorderSizePixel = 2
AllTools.Position = UDim2.new(0.550000012, 0, 0.300000012, 0)
AllTools.Size = UDim2.new(0, 95, 0, 46)
AllTools.Font = Enum.Font.SourceSans
AllTools.Text = "Remove All Tools"
AllTools.TextColor3 = Color3.fromRGB(168, 168, 168)
AllTools.TextScaled = true
AllTools.TextSize = 28.000
AllTools.TextWrapped = true

Midget.Name = "Midget"
Midget.Parent = CommandScroll
Midget.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Midget.BorderColor3 = Color3.fromRGB(255, 0, 98)
Midget.BorderSizePixel = 2
Midget.Position = UDim2.new(0.0755277202, 0, 0.300000012, 0)
Midget.Size = UDim2.new(0, 95, 0, 46)
Midget.Font = Enum.Font.SourceSans
Midget.Text = "Midget"
Midget.TextColor3 = Color3.fromRGB(168, 168, 168)
Midget.TextScaled = true
Midget.TextSize = 28.000
Midget.TextWrapped = true

Unwing.Name = "Unwing"
Unwing.Parent = CommandScroll
Unwing.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Unwing.BorderColor3 = Color3.fromRGB(255, 0, 98)
Unwing.BorderSizePixel = 2
Unwing.Position = UDim2.new(0.0755277202, 0, 0.0299999993, 0)
Unwing.Size = UDim2.new(0, 95, 0, 46)
Unwing.Font = Enum.Font.SourceSans
Unwing.Text = "Unwing"
Unwing.TextColor3 = Color3.fromRGB(168, 168, 168)
Unwing.TextScaled = true
Unwing.TextSize = 28.000
Unwing.TextWrapped = true

Bald.Name = "Bald"
Bald.Parent = CommandScroll
Bald.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Bald.BorderColor3 = Color3.fromRGB(255, 0, 98)
Bald.BorderSizePixel = 2
Bald.Position = UDim2.new(0.0755277202, 0, 0.389999986, 0)
Bald.Size = UDim2.new(0, 95, 0, 46)
Bald.Font = Enum.Font.SourceSans
Bald.Text = "Bald"
Bald.TextColor3 = Color3.fromRGB(168, 168, 168)
Bald.TextScaled = true
Bald.TextSize = 28.000
Bald.TextWrapped = true

Naked.Name = "Naked"
Naked.Parent = CommandScroll
Naked.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Naked.BorderColor3 = Color3.fromRGB(255, 0, 98)
Naked.BorderSizePixel = 2
Naked.Position = UDim2.new(0.0759999976, 0, 0.479999989, 0)
Naked.Size = UDim2.new(0, 95, 0, 46)
Naked.Font = Enum.Font.SourceSans
Naked.Text = "Naked"
Naked.TextColor3 = Color3.fromRGB(168, 168, 168)
Naked.TextScaled = true
Naked.TextSize = 28.000
Naked.TextWrapped = true

UIPadding.Parent = CommandScroll
UIPadding.PaddingTop = UDim.new(0.00999999978, 0)

UIGridLayout.Parent = CommandScroll
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0.100000001, 0, 0.0199999996, 0)
UIGridLayout.CellSize = UDim2.new(0, 95, 0, 46)

Box.Name = "Box"
Box.Parent = CommandScroll
Box.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Box.BorderColor3 = Color3.fromRGB(255, 0, 98)
Box.BorderSizePixel = 2
Box.Position = UDim2.new(0.550000012, 0, 0.389999986, 0)
Box.Size = UDim2.new(0, 95, 0, 46)
Box.Font = Enum.Font.SourceSans
Box.Text = "Box"
Box.TextColor3 = Color3.fromRGB(168, 168, 168)
Box.TextScaled = true
Box.TextSize = 28.000
Box.TextWrapped = true

RemoveRootJoint.Name = "RemoveRootJoint"
RemoveRootJoint.Parent = CommandScroll
RemoveRootJoint.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveRootJoint.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveRootJoint.BorderSizePixel = 2
RemoveRootJoint.Position = UDim2.new(0.550000012, 0, 0.389999986, 0)
RemoveRootJoint.Size = UDim2.new(0, 95, 0, 46)
RemoveRootJoint.Font = Enum.Font.SourceSans
RemoveRootJoint.Text = "Remove Root Joint"
RemoveRootJoint.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveRootJoint.TextScaled = true
RemoveRootJoint.TextSize = 28.000
RemoveRootJoint.TextWrapped = true

RemoteKill.Name = "RemoteKill"
RemoteKill.Parent = CommandScroll
RemoteKill.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoteKill.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoteKill.BorderSizePixel = 2
RemoteKill.Position = UDim2.new(0.0755277202, 0, 0.0299999993, 0)
RemoteKill.Size = UDim2.new(0, 95, 0, 46)
RemoteKill.Font = Enum.Font.SourceSans
RemoteKill.Text = "Remote Kill"
RemoteKill.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoteKill.TextScaled = true
RemoteKill.TextSize = 28.000
RemoteKill.TextWrapped = true

PlayersTab.Name = "PlayersTab"
PlayersTab.Parent = Frame
PlayersTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersTab.BackgroundTransparency = 1.000
PlayersTab.Position = UDim2.new(0.99000001, 0, 0.0942732692, 0)
PlayersTab.Size = UDim2.new(0, 35, 0, 50)
PlayersTab.ZIndex = 3
PlayersTab.Font = Enum.Font.SourceSans
PlayersTab.Text = ""
PlayersTab.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayersTab.TextSize = 14.000

Icon_2.Name = "Icon"
Icon_2.Parent = PlayersTab
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1.000
Icon_2.Position = UDim2.new(0.171811342, 0, 0.300000012, 0)
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.ZIndex = 3
Icon_2.Image = "rbxassetid://11932201526"

ImageBorder_2.Name = "ImageBorder"
ImageBorder_2.Parent = PlayersTab
ImageBorder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageBorder_2.BackgroundTransparency = 1.000
ImageBorder_2.Position = UDim2.new(-0.349999994, 0, -0.100000001, 0)
ImageBorder_2.Size = UDim2.new(0, 61, 0, 60)
ImageBorder_2.Image = "rbxassetid://11931995681"

ImageLabel_3.Parent = PlayersTab
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(-0.349999994, 0, -0.0599999987, 0)
ImageLabel_3.Size = UDim2.new(0, 58, 0, 56)
ImageLabel_3.ZIndex = 2
ImageLabel_3.Image = "rbxassetid://11931577372"

WorkspaceMenu.Name = "WorkspaceMenu"
WorkspaceMenu.Parent = Frame
WorkspaceMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WorkspaceMenu.BackgroundTransparency = 1.000
WorkspaceMenu.BorderSizePixel = 0
WorkspaceMenu.Position = UDim2.new(0.0197603162, 0, 0.060709089, 0)
WorkspaceMenu.Size = UDim2.new(0, 243, 0, 385)
WorkspaceMenu.Visible = false

ScrollingFrame.Parent = WorkspaceMenu
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.0147158774, 0, -0.00687985122, 0)
ScrollingFrame.Size = UDim2.new(0, 244, 0, 308)
ScrollingFrame.ScrollBarThickness = 9

RemoveModelInserter.Name = "RemoveModelInserter"
RemoveModelInserter.Parent = ScrollingFrame
RemoveModelInserter.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveModelInserter.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveModelInserter.BorderSizePixel = 2
RemoveModelInserter.Position = UDim2.new(0.550000012, 0, 0.0299999993, 0)
RemoveModelInserter.Size = UDim2.new(0, 95, 0, 46)
RemoveModelInserter.Font = Enum.Font.SourceSans
RemoveModelInserter.Text = "Remove Model Inserter"
RemoveModelInserter.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveModelInserter.TextScaled = true
RemoveModelInserter.TextSize = 28.000
RemoveModelInserter.TextWrapped = true

RemoveAllGearboards.Name = "RemoveAllGearboards"
RemoveAllGearboards.Parent = ScrollingFrame
RemoveAllGearboards.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveAllGearboards.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveAllGearboards.BorderSizePixel = 2
RemoveAllGearboards.Position = UDim2.new(0.0759999976, 0, 0.109999999, 0)
RemoveAllGearboards.Size = UDim2.new(0, 95, 0, 46)
RemoveAllGearboards.Font = Enum.Font.SourceSans
RemoveAllGearboards.Text = "Remove All Gearboards"
RemoveAllGearboards.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveAllGearboards.TextScaled = true
RemoveAllGearboards.TextSize = 28.000
RemoveAllGearboards.TextWrapped = true

RemoveMusicPlayer.Name = "RemoveMusicPlayer"
RemoveMusicPlayer.Parent = ScrollingFrame
RemoveMusicPlayer.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveMusicPlayer.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveMusicPlayer.BorderSizePixel = 2
RemoveMusicPlayer.Position = UDim2.new(0.550000012, 0, 0.109999999, 0)
RemoveMusicPlayer.Size = UDim2.new(0, 95, 0, 46)
RemoveMusicPlayer.Font = Enum.Font.SourceSans
RemoveMusicPlayer.Text = "Remove Music Player"
RemoveMusicPlayer.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveMusicPlayer.TextScaled = true
RemoveMusicPlayer.TextSize = 28.000
RemoveMusicPlayer.TextWrapped = true

RemoveF3XGiver.Name = "RemoveF3XGiver"
RemoveF3XGiver.Parent = ScrollingFrame
RemoveF3XGiver.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveF3XGiver.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveF3XGiver.BorderSizePixel = 2
RemoveF3XGiver.Position = UDim2.new(0.550000012, 0, 0.189999998, 0)
RemoveF3XGiver.Size = UDim2.new(0, 95, 0, 46)
RemoveF3XGiver.Font = Enum.Font.SourceSans
RemoveF3XGiver.Text = "Remove F3X Giver"
RemoveF3XGiver.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveF3XGiver.TextScaled = true
RemoveF3XGiver.TextSize = 28.000
RemoveF3XGiver.TextWrapped = true

RemoveBtoolsGiver.Name = "RemoveBtoolsGiver"
RemoveBtoolsGiver.Parent = ScrollingFrame
RemoveBtoolsGiver.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
RemoveBtoolsGiver.BorderColor3 = Color3.fromRGB(255, 0, 98)
RemoveBtoolsGiver.BorderSizePixel = 2
RemoveBtoolsGiver.Position = UDim2.new(0.0759999976, 0, 0.189999998, 0)
RemoveBtoolsGiver.Size = UDim2.new(0, 95, 0, 46)
RemoveBtoolsGiver.Font = Enum.Font.SourceSans
RemoveBtoolsGiver.Text = "Remove Btools Giver"
RemoveBtoolsGiver.TextColor3 = Color3.fromRGB(168, 168, 168)
RemoveBtoolsGiver.TextScaled = true
RemoveBtoolsGiver.TextSize = 28.000
RemoveBtoolsGiver.TextWrapped = true

Input.Name = "Input"
Input.Parent = WorkspaceMenu
Input.BackgroundColor3 = Color3.fromRGB(35, 35, 58)
Input.BorderColor3 = Color3.fromRGB(217, 0, 87)
Input.BorderSizePixel = 2
Input.Position = UDim2.new(0.0364312679, 0, 0.827287972, 0)
Input.Size = UDim2.new(0.899367929, 0, 0.0768411979, 0)
Input.ClearTextOnFocus = false
Input.Font = Enum.Font.SourceSansLight
Input.PlaceholderColor3 = Color3.fromRGB(168, 168, 168)
Input.PlaceholderText = "Input"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(168, 168, 168)
Input.TextScaled = true
Input.TextSize = 2.000
Input.TextWrapped = true

Decription.Name = "Decription"
Decription.Parent = WorkspaceMenu
Decription.Active = true
Decription.BackgroundColor3 = Color3.fromRGB(22, 22, 36)
Decription.BackgroundTransparency = 1.000
Decription.BorderColor3 = Color3.fromRGB(255, 2, 48)
Decription.BorderSizePixel = 0
Decription.LayoutOrder = -1
Decription.Position = UDim2.new(0.0364313014, 0, 0.884797633, 0)
Decription.Size = UDim2.new(0.752443254, 0, 0.0692129657, 0)
Decription.ZIndex = 4
Decription.Font = Enum.Font.SourceSansBold
Decription.Text = ""
Decription.TextColor3 = Color3.fromRGB(168, 168, 168)
Decription.TextSize = 9.000
Decription.TextWrapped = true
Decription.TextXAlignment = Enum.TextXAlignment.Left

Border.Name = "Border"
Border.Parent = Frame
Border.Active = true
Border.BackgroundColor3 = Color3.fromRGB(255, 0, 98)
Border.BorderColor3 = Color3.fromRGB(255, 0, 93)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(1.00100005, 0, 0.0102956509, 0)
Border.Size = UDim2.new(0, 2, 0, 382)
Border.ZIndex = 2
Border.Font = Enum.Font.SourceSans
Border.Text = ""
Border.TextColor3 = Color3.fromRGB(0, 0, 0)
Border.TextSize = 14.000

-- Scripts:

local function FFYO_fake_script() -- ScreenGuiDSP.LocalScript 
	local script = Instance.new('LocalScript', ScreenGuiDSP)

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local plr = Players.LocalPlayer
	local SelectedPlayers = {}
	local Toggle1 = false
	local Toggle2 = false
	
	local ScreenGui = script.Parent
	local Frame = ScreenGui:FindFirstChild("Frame")
	Frame.Draggable = true
	
	local PlayersMenu = Frame:FindFirstChild("PlayersMenu")
	local WorkspaceMenu = Frame:FindFirstChild("WorkspaceMenu")
	local PlayersTab = Frame:FindFirstChild("PlayersTab")
	local WorkspaceTab = Frame:FindFirstChild("WorkspaceTab")
	local PlayersScroll = PlayersMenu:FindFirstChild("PlayerScroll")
	local CommandScroll = PlayersMenu:FindFirstChild("CommandScroll")
	local WorkspaceScroll = WorkspaceMenu:FindFirstChild("ScrollingFrame")
	local PlayersTabBorder = PlayersTab:FindFirstChild("ImageBorder")
	local WorkspaceTabBorder = WorkspaceTab:FindFirstChild("ImageBorder")
	local AllToggle = PlayersMenu:FindFirstChild("AllToggle")
	local OthersToggle = PlayersMenu:FindFirstChild("OthersToggle")
	local CommandButton = PlayersMenu:FindFirstChild("CommandButton")
	local CloseButton = Frame:FindFirstChild("Close")
	local WorkspaceMenuButtons = {
		RemoteKill = WorkspaceScroll:FindFirstChild("RemoteKill"),
		RemoveModelInserter = WorkspaceScroll:FindFirstChild("RemoveModelInserter"),
		RemoveAllGearboards = WorkspaceScroll:FindFirstChild("RemoveAllGearboards"),
		RemoveMusicPlayer = WorkspaceScroll:FindFirstChild("RemoveMusicPlayer"),
		RemoveBtoolsGiver = WorkspaceScroll:FindFirstChild("RemoveBtoolsGiver"),
		RemoveF3XGiver = WorkspaceScroll:FindFirstChild("RemoveF3XGiver")
	}
	local PlayersMenuButtons = {
		Sink = CommandScroll:FindFirstChild("Sink"),
		Kill = CommandScroll:FindFirstChild("Kill"),
		Kick = CommandScroll:FindFirstChild("Kick"),
		Punish = CommandScroll:FindFirstChild("Punish"),
		RemoveTool = CommandScroll:FindFirstChild("RemoveTool"),
		AllTools = CommandScroll:FindFirstChild("AllTools"),
		Midget = CommandScroll:FindFirstChild("Midget"),
		Unwing = CommandScroll:FindFirstChild("Unwing"),
		Bald = CommandScroll:FindFirstChild("Bald"),
		Naked = CommandScroll:FindFirstChild("Naked"),
		Box = CommandScroll:FindFirstChild("Box"),
		RemoveRootJoint = CommandScroll:FindFirstChild("RemoveRootJoint"),
		RemoteKill = CommandScroll:FindFirstChild("RemoteKill")
	}
	
	local PlayerFrame = PlayersScroll:FindFirstChild("PlayerFrame")
	local PlayerFrameClone = PlayerFrame:Clone()
	PlayerFrame:Destroy()
	
	function round(num, numDecimalPlaces)
		local mult = 10^(numDecimalPlaces or 0)
		return math.floor(num * mult + 0.5) / mult
	end
	
	function GetPath()
		local ToolName = "F3X" or "Building Tools"
		local Tool = plr.Character:FindFirstChild(ToolName) or plr.Backpack:FindFirstChild(ToolName)
		return Tool
	end
	
	function Delete(instance, tool)
		tool:FindFirstChildOfClass("BindableFunction"):FindFirstChildOfClass("RemoteFunction"):InvokeServer("UndoRemove", {instance})
	end
	
	function GetPlayer(Table)
		local Found = {}
		for i,v in pairs(Table) do
			if Table[i] == true then
				table.insert(Found, Players[i])
			end
		end
		return Found
	end
	
	CloseButton.MouseButton1Down:Connect(function()
		for i,v in pairs(PlayersScroll:GetChildren()) do
			v:Destroy()
		end
		ScreenGui.Enabled = false
		warn("Gigafart9000 has been removed")
	end)
	
	PlayersTab.MouseButton1Down:Connect(function()
		if PlayersTab.ZIndex ~= 3 and WorkspaceTab.ZIndex ~= 1 then
			PlayersTab.ZIndex = 3
			PlayersTabBorder.Visible = true
			PlayersMenu.Visible = true
			WorkspaceTab.ZIndex = 1
			WorkspaceTabBorder.Visible = false
			WorkspaceMenu.Visible = false
		end
	end)
	
	WorkspaceTab.MouseButton1Down:Connect(function()
		if WorkspaceTab.ZIndex ~= 3 and PlayersTab.ZIndex ~= 1 then
			WorkspaceTab.ZIndex = 3
			WorkspaceTabBorder.Visible = true
			WorkspaceMenu.Visible = true
			PlayersTab.ZIndex = 1
			PlayersTabBorder.Visible = false
			PlayersMenu.Visible = false
		end
	end)
	
	CommandButton.MouseButton1Down:Connect(function()
		if CommandScroll.Visible == false and PlayersScroll.Visible == true then
			CommandScroll.Visible = true
			PlayersScroll.Visible = false
			CommandButton.Text = "-"
		elseif CommandScroll.Visible == true and PlayersScroll.Visible == false then
			CommandScroll.Visible = false
			PlayersScroll.Visible = true
			CommandButton.Text = "CMD"
		end
	end)
	
	AllToggle.TextButton.MouseButton1Down:Connect(function()
		if Toggle2 == true then
			Toggle2 = false
			OthersToggle.TextButton.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
		end
		if Toggle1 == false then
			Toggle1 = true
			for i,v in pairs(SelectedPlayers) do
				SelectedPlayers[i] = true
				PlayersScroll:FindFirstChild(i.."_PlayerFrame").BackgroundColor3 = Color3.fromRGB(150,150,150)
			end
			AllToggle.TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 98)
		elseif Toggle1 == true then
			Toggle1 = false
			for i,v in pairs(SelectedPlayers) do
				SelectedPlayers[i] = false
				PlayersScroll:FindFirstChild(i.."_PlayerFrame").BackgroundColor3 = Color3.fromRGB(55, 52, 79)
			end
			AllToggle.TextButton.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
		end
	end)
	
	OthersToggle.TextButton.MouseButton1Down:Connect(function()
		if Toggle1 == true then
			Toggle1 = false
			AllToggle.TextButton.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
		end
		if Toggle2 == false then
			Toggle2 = true
			for i,v in pairs(SelectedPlayers) do
				if i == plr.Name then
					SelectedPlayers[i] = false
					PlayersScroll:FindFirstChild(i.."_PlayerFrame").BackgroundColor3 = Color3.fromRGB(55, 52, 79)
				else
					SelectedPlayers[i] = true
					PlayersScroll:FindFirstChild(i.."_PlayerFrame").BackgroundColor3 = Color3.fromRGB(150,150,150)
				end
			end
			OthersToggle.TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 98)
		elseif Toggle2 == true then
			Toggle2 = false
			for i,v in pairs(SelectedPlayers) do
				SelectedPlayers[i] = false
				PlayersScroll:FindFirstChild(i.."_PlayerFrame").BackgroundColor3 = Color3.fromRGB(55, 52, 79)
			end
			OthersToggle.TextButton.BackgroundColor3 = Color3.fromRGB(21, 20, 30)
		end
	end)
	
	function CreatePlayerFrame(player)
		local PlayerFrame
		if player.Character then
			local Humanoid = player.Character.Humanoid
			if not PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame") then
				PlayerFrame = PlayerFrameClone:Clone()
				PlayerFrame.Parent = PlayersScroll
				PlayerFrame.Name = player.Name.."_PlayerFrame"
				PlayerFrame.ImageLabel.Image = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
				if player.Name == plr.Name then
					PlayerFrame.UserLabel.Text = ""
					PlayerFrame.DisplayLabel.Text = "You"
					PlayerFrame.DisplayLabel.TextSize = 17
				else
					PlayerFrame.UserLabel.Text = "@"..player.Name
					PlayerFrame.DisplayLabel.Text = player.DisplayName
				end
				PlayersScroll.CanvasSize = UDim2.new(0,0,0,(#PlayersScroll:GetChildren() - 1) * 58)
				SelectedPlayers[player.Name] = false
				PlayerFrame.MouseButton1Down:Connect(function()
					if SelectedPlayers[player.Name] == false then
						SelectedPlayers[player.Name] = true
						PlayerFrame.BackgroundColor3 = Color3.fromRGB(150,150,150)
					elseif SelectedPlayers[player.Name] == true then
						SelectedPlayers[player.Name] = false
						PlayerFrame.BackgroundColor3 = Color3.fromRGB(55, 52, 79)		
					end
				end)
			end
			
			local CharAdded
			local ToolAdded
			local ToolRemoved
			local MaxHealthEvent
			local HealthEvent
			local OnDeathEvent
			local LoopFunc
			CharAdded = player.CharacterAdded:Connect(function(character)
				for i,v in pairs(PlayersScroll:GetChildren()) do
					if v.Name == character.Name.."_PlayerFrame" then
						local PlayerFrame = v
						for i,v in pairs(PlayerFrame.Tools:GetChildren()) do
							if v then v:Destroy() end
						end
						repeat wait() until character:FindFirstChildOfClass("Humanoid")
						ToolAdded:Disconnect()
						ToolRemoved:Disconnect()
						MaxHealthEvent:Disconnect()
						HealthEvent:Disconnect()
						OnDeathEvent:Disconnect()
						LoopFunc:Disconnect()
						CreatePlayerFrame(player)
						CharAdded:Disconnect()
					end
				end
			end)
			ToolAdded = player.Character.ChildAdded:Connect(function(instance)
				if instance:IsA("Tool") and PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame") then
					local PlayerFrame = PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame")
					if instance.TextureId:match("/") then
						local ToolImg = Instance.new("ImageLabel", PlayerFrame.Tools)
						ToolImg.Name = instance.Name
						ToolImg.BackgroundTransparency = 1
						ToolImg.Size = UDim2.new(0,18,0,18)
						ToolImg.Image = instance.TextureId
					else
						local ToolLabel = Instance.new("TextLabel", PlayerFrame.Tools)
						ToolLabel.Name = instance.Name
						ToolLabel.BackgroundTransparency = 1
						ToolLabel.Size = UDim2.new(0,18,0,18)
						ToolLabel.TextScaled = true
						ToolLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						ToolLabel.Text = instance.Name
					end
				end
			end)
			ToolRemoved = player.Character.ChildRemoved:Connect(function(instance)
				if instance:IsA("Tool") and PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame") then
					local PlayerFrame = PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame")
					for i,v in pairs(PlayerFrame.Tools:GetChildren()) do
						if v.Name == instance.Name then v:Destroy() end
					end
				end
			end)
			local MaxHealth = round(Humanoid.MaxHealth)
			MaxHealthEvent = Humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(function()
				MaxHealth = round(Humanoid.MaxHealth)
			end)
			local Health = round(Humanoid.Health)
			HealthEvent = Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
				Health = round(Humanoid.Health)
			end)
			OnDeathEvent = Humanoid.Died:Connect(function()
				MaxHealthEvent:Disconnect()
				HealthEvent:Disconnect()
				Health = nil
				MaxHealth = nil
			end)
			local function Loop()
				if PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame") then
					local PlayerFrame = PlayersScroll:FindFirstChild(player.Name.."_PlayerFrame")
					if not Health and not MaxHealth then
						for i,v in pairs({PlayerFrame.UserLabel,PlayerFrame.DisplayLabel,PlayerFrame.HealthLabel}) do
							v.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
						PlayerFrame.HealthLabel.Text = "dead"
						LoopFunc:Disconnect()
					else
						PlayerFrame.UserLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
						PlayerFrame.DisplayLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						PlayerFrame.HealthLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
						PlayerFrame.HealthLabel.Text = "HP: "..tostring(Health).."/"..tostring(MaxHealth)
					end
				else
					MaxHealthEvent:Disconnect()
					HealthEvent:Disconnect()
					OnDeathEvent:Disconnect()
					LoopFunc:Disconnect()
					Health = nil
					MaxHealth = nil
				end
				--PlayersScroll.CanvasSize = UDim2.new(0,0,0,(#PlayersScroll:GetChildren() - 1) * 58)
			end
			LoopFunc = RunService.RenderStepped:Connect(Loop)
		end
	end
	
	for i,v in ipairs(Players:GetPlayers()) do
		repeat wait() until v.Character and v.Character:FindFirstChild("Humanoid")
		CreatePlayerFrame(v)
	end
	
	Players.PlayerAdded:Connect(function(player)
		repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
		CreatePlayerFrame(player)
	end)
	
	Players.PlayerRemoving:Connect(function(player)
		for i,v in pairs(PlayersScroll:GetChildren()) do
			if v.Name == player.Name.."_PlayerFrame" then v:Destroy() end
		end
		for i,v in pairs(SelectedPlayers) do
			if i == player.Name then 
				print(player.Name,'has left')
				SelectedPlayers[i] = nil
			end
		end
		PlayersScroll.CanvasSize = UDim2.new(0,0,0,(#PlayersScroll:GetChildren() - 1) * 58)
	end)
	
	--Workspace scroll functions:
	
	WorkspaceMenuButtons.RemoveModelInserter.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			local ModelInserter = workspace:FindFirstChild("FoxBinMK5")
			Delete(ModelInserter, Tool)
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	WorkspaceMenuButtons.RemoveAllGearboards.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			local Gearboards = {
				workspace:FindFirstChild("made by FoxBin"), 
				workspace:FindFirstChild("made by FoxBin1"),
				workspace:FindFirstChild("made byFoxBin MK2"),
				workspace:FindFirstChild("made by FoxBinMK4"),
				workspace:FindFirstChild("made by FoxBinMK6")
			}
			for i,v in ipairs(Gearboards) do
				if v then
					Delete(v, Tool)
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	WorkspaceMenuButtons.RemoveMusicPlayer.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			local MusicModel = workspace:FindFirstChild("FoxBin'sDjBoard")
			local MusicPlayer = MusicModel:FindFirstChild("Brain")
			Delete(MusicPlayer, Tool)
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	WorkspaceMenuButtons.RemoveF3XGiver.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			local F3XGiver
			local SafePlate = workspace:FindFirstChild("SafePlate")
			for i,v in pairs(SafePlate.Mesh.Value:GetDescendants()) do
				if v.Name == "Bricks" and v:FindFirstChild("Bar") then
					F3XGiver = v.Parent
				end
			end
			Delete(F3XGiver, Tool)
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	WorkspaceMenuButtons.RemoveBtoolsGiver.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			local BtoolsGiver
			local SafePlate = workspace:FindFirstChild("SafePlate")
			for i,v in pairs(SafePlate.Mesh.Value:GetDescendants()) do
				if v.Name == "Bricks" and not v:FindFirstChild("Bar") then
					BtoolsGiver = v.Parent
				end
			end
			Delete(BtoolsGiver, Tool)
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Sink.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				Delete(TargetedPlayer.Character:FindFirstChild("HumanoidRootPart"), Tool)
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Kill.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				Delete(TargetedPlayer.Character.Torso:FindFirstChild("Neck"), Tool)
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Kick.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				Delete(TargetedPlayer, Tool)
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Punish.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				Delete(TargetedPlayer.Character, Tool)
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.RemoveTool.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				for i,v in pairs(TargetedPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
						Delete(v, Tool)
					end
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.AllTools.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			while wait() do
				coroutine.wrap(function()
					for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
						for i,v in pairs(TargetedPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") then
								Delete(v, Tool)
							end
						end
					end
				end)()
				for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
					for i,v in pairs(TargetedPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							Delete(v,Tool)
						end
					end
				end 
				if not GetPlayer(SelectedPlayers):FindFirstChildOfClass("Tool") and not GetPlayer(SelectedPlayers).Backpack:FindFirstChildOfClass("Tool") then
					break
				end 
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Midget.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				local LeftLeg = TargetedPlayer.Character.Torso:FindFirstChild("Left Hip")
				local RightLeg = TargetedPlayer.Character.Torso:FindFirstChild("Right Hip")
				local LeftArm = TargetedPlayer.Character.Torso:FindFirstChild("Left Shoulder")
				local RightArm = TargetedPlayer.Character.Torso:FindFirstChild("Right Shoulder")
				for i,v in ipairs({LeftLeg,RightLeg,LeftArm,RightArm}) do
					Delete(v, Tool) 
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Unwing.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				local HRP = TargetedPlayer.Character:FindFirstChild("HumanoidRootPart")
				local BodyPos = HRP:FindFirstChildOfClass("BodyPosition")
				local BodyVelo = HRP:FindFirstChildOfClass("BodyVelocity")
				local BodyGyro = HRP:FindFirstChildOfClass("BodyGyro")
				for i,v in ipairs({BodyPos,BodyVelo,BodyGyro}) do
					Delete(v, Tool) 
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	
	PlayersMenuButtons.Bald.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				for i,v in pairs(TargetedPlayer.Character:GetChildren()) do
					if v:IsA("Accessory") then
						Delete(v, Tool)
					end
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Naked.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				local Shirt = TargetedPlayer.Character:FindFirstChild("Shirt")
				local Pants = TargetedPlayer.Character:FindFirstChild("Pants")
				local ShirtGraphic = TargetedPlayer.Character:FindFirstChild("Shirt Graphic")
				for i,v in pairs({Shirt,Pants,ShirtGraphic}) do
					Delete(v, Tool)
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.Box.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				for i,v in pairs(TargetedPlayer.Character:GetChildren()) do
					if v:IsA("CharacterMesh") then
						Delete(v, Tool)
					end
				end
				for i,v in pairs(TargetedPlayer.Character.Head:GetChildren()) do
					if v:IsA("SpecialMesh") then
						Delete(v, Tool)
					end
				end
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.RemoveRootJoint.MouseButton1Down:Connect(function()
		local Tool = GetPath()
		local function Task()
			for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
				local HumanoidRootPart = TargetedPlayer.Character:FindFirstChild("HumanoidRootPart")
				local RootJoint = HumanoidRootPart:FindFirstChild("RootJoint")
				Delete(RootJoint, Tool)
			end
		end
		if Tool.Parent == plr.Backpack then
			Tool.Parent = plr.Character
			wait()
			Task()
			wait()
			Tool.Parent = plr.Backpack
		elseif Tool.Parent == plr.Character then
			Task()
		end
	end)
	
	PlayersMenuButtons.RemoteKill.MouseButton1Down:Connect(function()
		for i,TargetedPlayer in pairs(GetPlayer(SelectedPlayers)) do
			
		end
	end)
end
coroutine.wrap(FFYO_fake_script)()