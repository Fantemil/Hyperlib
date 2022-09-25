 -- Gui to Lua
-- Version: 3.2

-- Instances:

local LiftingTitans = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local public = Instance.new("ImageButton")
local white1 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local AutoClick_label = Instance.new("TextLabel")
local AutoClick_Frame = Instance.new("ImageLabel")
local AutoClick_btn = Instance.new("TextButton")
local AutoSell_label = Instance.new("TextLabel")
local AutoSell_Frame = Instance.new("ImageLabel")
local AutoSell_btn = Instance.new("TextButton")
local AutoFarm_label = Instance.new("TextLabel")
local Teleport_label = Instance.new("TextLabel")
local RainbowGymFrame = Instance.new("ImageLabel")
local RainbowGymbtn = Instance.new("TextButton")
local ForestGymFrame = Instance.new("ImageLabel")
local ForestGymbtn = Instance.new("TextButton")
local DesertGymFrame = Instance.new("ImageLabel")
local DesertGymbtn = Instance.new("TextButton")
local VolcanicGymFrame = Instance.new("ImageLabel")
local VolcanicGymbtn = Instance.new("TextButton")
local CliffsideGymFrame = Instance.new("ImageLabel")
local CliffsideGymbtn = Instance.new("TextButton")
local BeachGymFrame = Instance.new("ImageLabel")
local BeachGymbtn = Instance.new("TextButton")
local BackyardGymFrame = Instance.new("ImageLabel")
local BackyardGymbtn = Instance.new("TextButton")
local Mix_label = Instance.new("TextLabel")
local OpenShopFrame = Instance.new("ImageLabel")
local OpenShopbtn = Instance.new("TextButton")
local EquipAllPetsFrame = Instance.new("ImageLabel")
local EquipAllPetsbtn = Instance.new("TextButton")
local Mix_label_2 = Instance.new("TextLabel")
local CopyDiscordFrame = Instance.new("ImageLabel")
local CopyDiscordbtn = Instance.new("TextButton")
local DiscordTextBox = Instance.new("TextBox")

--Properties:

LiftingTitans.Name = "Lifting Titans"
LiftingTitans.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LiftingTitans.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = LiftingTitans
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.347933412, 0, 0.269574821, 0)
Main.Size = UDim2.new(0, 492, 0, 375)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(0, 0, 0)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120
Main.Active = true
Main.Draggable = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.209349588, 0, 0, 0)
Title.Size = UDim2.new(0, 285, 0, 60)
Title.Font = Enum.Font.SourceSans
Title.Text = "Lifting Titans"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 64.000

public.Name = "public"
public.Parent = Title
public.BackgroundTransparency = 1.000
public.Position = UDim2.new(-0.0912042558, 0, 0.289926291, 0)
public.Size = UDim2.new(0, 25, 0, 25)
public.ZIndex = 2
public.Image = "rbxassetid://3926305904"
public.ImageRectOffset = Vector2.new(604, 324)
public.ImageRectSize = Vector2.new(36, 36)

white1.Name = "white-1"
white1.Parent = Main
white1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
white1.BorderColor3 = Color3.fromRGB(255, 255, 255)
white1.Position = UDim2.new(-0.0630081296, 0, 0.159999996, 0)
white1.Size = UDim2.new(0, 589, 0, 0)

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0181196332, 0, 0.181913137, 0)
ScrollingFrame.Size = UDim2.new(0, 474, 0, 298)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 4, 0)
ScrollingFrame.ScrollBarThickness = 6

AutoClick_label.Name = "AutoClick _label"
AutoClick_label.Parent = ScrollingFrame
AutoClick_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoClick_label.BackgroundTransparency = 1.000
AutoClick_label.Position = UDim2.new(0.0311203431, 0, 0.0380835347, 0)
AutoClick_label.Size = UDim2.new(0, 200, 0, 50)
AutoClick_label.Font = Enum.Font.SourceSans
AutoClick_label.Text = "AutoClick "
AutoClick_label.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoClick_label.TextSize = 28.000

AutoClick_Frame.Name = "AutoClick_Frame"
AutoClick_Frame.Parent = AutoClick_label
AutoClick_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoClick_Frame.BackgroundTransparency = 1.000
AutoClick_Frame.Position = UDim2.new(0.758734465, 0, 0.145020142, 0)
AutoClick_Frame.Size = UDim2.new(0, 34, 0, 35)
AutoClick_Frame.Image = "rbxassetid://3570695787"
AutoClick_Frame.ImageColor3 = Color3.fromRGB(255, 0, 4)
AutoClick_Frame.ScaleType = Enum.ScaleType.Slice
AutoClick_Frame.SliceCenter = Rect.new(100, 100, 100, 100)
AutoClick_Frame.SliceScale = 0.120

AutoClick_btn.Name = "AutoClick_btn"
AutoClick_btn.Parent = AutoClick_Frame
AutoClick_btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoClick_btn.BackgroundTransparency = 1.000
AutoClick_btn.Size = UDim2.new(0, 34, 0, 35)
AutoClick_btn.Font = Enum.Font.SourceSans
AutoClick_btn.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoClick_btn.TextSize = 14.000

AutoSell_label.Name = "AutoSell _label"
AutoSell_label.Parent = ScrollingFrame
AutoSell_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoSell_label.BackgroundTransparency = 1.000
AutoSell_label.Position = UDim2.new(0.414937794, 0, 0.0374692827, 0)
AutoSell_label.Size = UDim2.new(0, 200, 0, 50)
AutoSell_label.Font = Enum.Font.SourceSans
AutoSell_label.Text = "AutoSell"
AutoSell_label.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoSell_label.TextSize = 28.000

AutoSell_Frame.Name = "AutoSell_Frame"
AutoSell_Frame.Parent = AutoSell_label
AutoSell_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoSell_Frame.BackgroundTransparency = 1.000
AutoSell_Frame.Position = UDim2.new(0.758734465, 0, 0.145020142, 0)
AutoSell_Frame.Size = UDim2.new(0, 34, 0, 35)
AutoSell_Frame.Image = "rbxassetid://3570695787"
AutoSell_Frame.ImageColor3 = Color3.fromRGB(255, 0, 4)
AutoSell_Frame.ScaleType = Enum.ScaleType.Slice
AutoSell_Frame.SliceCenter = Rect.new(100, 100, 100, 100)
AutoSell_Frame.SliceScale = 0.120

AutoSell_btn.Name = "AutoSell_btn"
AutoSell_btn.Parent = AutoSell_Frame
AutoSell_btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoSell_btn.BackgroundTransparency = 1.000
AutoSell_btn.Size = UDim2.new(0, 34, 0, 35)
AutoSell_btn.Font = Enum.Font.SourceSans
AutoSell_btn.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoSell_btn.TextSize = 14.000

AutoFarm_label.Name = "AutoFarm_label"
AutoFarm_label.Parent = ScrollingFrame
AutoFarm_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm_label.BackgroundTransparency = 1.000
AutoFarm_label.Position = UDim2.new(0.290456444, 0, 0, 0)
AutoFarm_label.Size = UDim2.new(0, 200, 0, 50)
AutoFarm_label.Font = Enum.Font.SourceSans
AutoFarm_label.Text = "AutoFarm"
AutoFarm_label.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm_label.TextScaled = true
AutoFarm_label.TextSize = 14.000
AutoFarm_label.TextWrapped = true

Teleport_label.Name = "Teleport_label"
Teleport_label.Parent = ScrollingFrame
Teleport_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Teleport_label.BackgroundTransparency = 1.000
Teleport_label.Position = UDim2.new(0.290456444, 0, 0.0761670768, 0)
Teleport_label.Size = UDim2.new(0, 200, 0, 50)
Teleport_label.Font = Enum.Font.SourceSans
Teleport_label.Text = "Teleport"
Teleport_label.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleport_label.TextScaled = true
Teleport_label.TextSize = 14.000
Teleport_label.TextWrapped = true

RainbowGymFrame.Name = "RainbowGym-Frame"
RainbowGymFrame.Parent = ScrollingFrame
RainbowGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RainbowGymFrame.BackgroundTransparency = 1.000
RainbowGymFrame.Position = UDim2.new(0.178423241, 0, 0.115335293, 0)
RainbowGymFrame.Size = UDim2.new(0, 149, 0, 46)
RainbowGymFrame.Image = "rbxassetid://3570695787"
RainbowGymFrame.ScaleType = Enum.ScaleType.Slice
RainbowGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
RainbowGymFrame.SliceScale = 0.120

RainbowGymbtn.Name = "RainbowGym-btn"
RainbowGymbtn.Parent = RainbowGymFrame
RainbowGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RainbowGymbtn.BackgroundTransparency = 1.000
RainbowGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
RainbowGymbtn.BorderSizePixel = 0
RainbowGymbtn.Size = UDim2.new(0, 149, 0, 46)
RainbowGymbtn.AutoButtonColor = false
RainbowGymbtn.Font = Enum.Font.SourceSans
RainbowGymbtn.Text = "Rainbow Gym"
RainbowGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
RainbowGymbtn.TextSize = 28.000

ForestGymFrame.Name = "Forest Gym-Frame"
ForestGymFrame.Parent = ScrollingFrame
ForestGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ForestGymFrame.BackgroundTransparency = 1.000
ForestGymFrame.Position = UDim2.new(0.342323661, 0, 0.216686636, 0)
ForestGymFrame.Size = UDim2.new(0, 149, 0, 46)
ForestGymFrame.Image = "rbxassetid://3570695787"
ForestGymFrame.ScaleType = Enum.ScaleType.Slice
ForestGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
ForestGymFrame.SliceScale = 0.120

ForestGymbtn.Name = "Forest Gym-btn"
ForestGymbtn.Parent = ForestGymFrame
ForestGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ForestGymbtn.BackgroundTransparency = 1.000
ForestGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
ForestGymbtn.BorderSizePixel = 0
ForestGymbtn.Size = UDim2.new(0, 149, 0, 46)
ForestGymbtn.AutoButtonColor = false
ForestGymbtn.Font = Enum.Font.SourceSans
ForestGymbtn.Text = "Forest Gym"
ForestGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
ForestGymbtn.TextSize = 28.000

DesertGymFrame.Name = "Desert Gym-Frame"
DesertGymFrame.Parent = ScrollingFrame
DesertGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DesertGymFrame.BackgroundTransparency = 1.000
DesertGymFrame.Position = UDim2.new(0.508298755, 0, 0.182902858, 0)
DesertGymFrame.Size = UDim2.new(0, 149, 0, 46)
DesertGymFrame.Image = "rbxassetid://3570695787"
DesertGymFrame.ScaleType = Enum.ScaleType.Slice
DesertGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
DesertGymFrame.SliceScale = 0.120

DesertGymbtn.Name = "Desert Gym-btn"
DesertGymbtn.Parent = DesertGymFrame
DesertGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DesertGymbtn.BackgroundTransparency = 1.000
DesertGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
DesertGymbtn.BorderSizePixel = 0
DesertGymbtn.Size = UDim2.new(0, 149, 0, 46)
DesertGymbtn.AutoButtonColor = false
DesertGymbtn.Font = Enum.Font.SourceSans
DesertGymbtn.Text = "Desert Gym"
DesertGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
DesertGymbtn.TextSize = 28.000

VolcanicGymFrame.Name = "Volcanic Gym-Frame"
VolcanicGymFrame.Parent = ScrollingFrame
VolcanicGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VolcanicGymFrame.BackgroundTransparency = 1.000
VolcanicGymFrame.Position = UDim2.new(0.178423241, 0, 0.182902858, 0)
VolcanicGymFrame.Size = UDim2.new(0, 149, 0, 46)
VolcanicGymFrame.Image = "rbxassetid://3570695787"
VolcanicGymFrame.ScaleType = Enum.ScaleType.Slice
VolcanicGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
VolcanicGymFrame.SliceScale = 0.120

VolcanicGymbtn.Name = "Volcanic Gym-btn"
VolcanicGymbtn.Parent = VolcanicGymFrame
VolcanicGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VolcanicGymbtn.BackgroundTransparency = 1.000
VolcanicGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
VolcanicGymbtn.BorderSizePixel = 0
VolcanicGymbtn.Size = UDim2.new(0, 149, 0, 46)
VolcanicGymbtn.AutoButtonColor = false
VolcanicGymbtn.Font = Enum.Font.SourceSans
VolcanicGymbtn.Text = "Volcanic Gym"
VolcanicGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
VolcanicGymbtn.TextSize = 28.000

CliffsideGymFrame.Name = "Cliffside Gym-Frame"
CliffsideGymFrame.Parent = ScrollingFrame
CliffsideGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CliffsideGymFrame.BackgroundTransparency = 1.000
CliffsideGymFrame.Position = UDim2.new(0.508298755, 0, 0.148504823, 0)
CliffsideGymFrame.Size = UDim2.new(0, 149, 0, 46)
CliffsideGymFrame.Image = "rbxassetid://3570695787"
CliffsideGymFrame.ScaleType = Enum.ScaleType.Slice
CliffsideGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
CliffsideGymFrame.SliceScale = 0.120

CliffsideGymbtn.Name = "Cliffside Gym-btn"
CliffsideGymbtn.Parent = CliffsideGymFrame
CliffsideGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CliffsideGymbtn.BackgroundTransparency = 1.000
CliffsideGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
CliffsideGymbtn.BorderSizePixel = 0
CliffsideGymbtn.Size = UDim2.new(0, 149, 0, 46)
CliffsideGymbtn.AutoButtonColor = false
CliffsideGymbtn.Font = Enum.Font.SourceSans
CliffsideGymbtn.Text = "Cliffside Gym"
CliffsideGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CliffsideGymbtn.TextSize = 28.000

BeachGymFrame.Name = "Beach Gym-Frame"
BeachGymFrame.Parent = ScrollingFrame
BeachGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BeachGymFrame.BackgroundTransparency = 1.000
BeachGymFrame.Position = UDim2.new(0.178423241, 0, 0.148504823, 0)
BeachGymFrame.Size = UDim2.new(0, 149, 0, 46)
BeachGymFrame.Image = "rbxassetid://3570695787"
BeachGymFrame.ScaleType = Enum.ScaleType.Slice
BeachGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
BeachGymFrame.SliceScale = 0.120

BeachGymbtn.Name = "Beach Gym-btn"
BeachGymbtn.Parent = BeachGymFrame
BeachGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BeachGymbtn.BackgroundTransparency = 1.000
BeachGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
BeachGymbtn.BorderSizePixel = 0
BeachGymbtn.Size = UDim2.new(0, 149, 0, 46)
BeachGymbtn.AutoButtonColor = false
BeachGymbtn.Font = Enum.Font.SourceSans
BeachGymbtn.Text = "Beach Gym"
BeachGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
BeachGymbtn.TextSize = 28.000

BackyardGymFrame.Name = "Backyard Gym-Frame"
BackyardGymFrame.Parent = ScrollingFrame
BackyardGymFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackyardGymFrame.BackgroundTransparency = 1.000
BackyardGymFrame.Position = UDim2.new(0.508298755, 0, 0.115335293, 0)
BackyardGymFrame.Size = UDim2.new(0, 149, 0, 46)
BackyardGymFrame.Image = "rbxassetid://3570695787"
BackyardGymFrame.ScaleType = Enum.ScaleType.Slice
BackyardGymFrame.SliceCenter = Rect.new(100, 100, 100, 100)
BackyardGymFrame.SliceScale = 0.120

BackyardGymbtn.Name = "Backyard Gym-btn"
BackyardGymbtn.Parent = BackyardGymFrame
BackyardGymbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BackyardGymbtn.BackgroundTransparency = 1.000
BackyardGymbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
BackyardGymbtn.BorderSizePixel = 0
BackyardGymbtn.Size = UDim2.new(0, 149, 0, 46)
BackyardGymbtn.AutoButtonColor = false
BackyardGymbtn.Font = Enum.Font.SourceSans
BackyardGymbtn.Text = "Backyard Gym"
BackyardGymbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
BackyardGymbtn.TextSize = 28.000

Mix_label.Name = "Mix_label"
Mix_label.Parent = ScrollingFrame
Mix_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mix_label.BackgroundTransparency = 1.000
Mix_label.Position = UDim2.new(0.290456444, 0, 0.251842737, 0)
Mix_label.Size = UDim2.new(0, 200, 0, 50)
Mix_label.Font = Enum.Font.SourceSans
Mix_label.Text = "Mix"
Mix_label.TextColor3 = Color3.fromRGB(255, 255, 255)
Mix_label.TextScaled = true
Mix_label.TextSize = 14.000
Mix_label.TextWrapped = true

OpenShopFrame.Name = "Open Shop-Frame"
OpenShopFrame.Parent = Mix_label
OpenShopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenShopFrame.BackgroundTransparency = 1.000
OpenShopFrame.Position = UDim2.new(0.53842324, 0, 1.29533541, 0)
OpenShopFrame.Size = UDim2.new(0, 149, 0, 46)
OpenShopFrame.Image = "rbxassetid://3570695787"
OpenShopFrame.ScaleType = Enum.ScaleType.Slice
OpenShopFrame.SliceCenter = Rect.new(100, 100, 100, 100)
OpenShopFrame.SliceScale = 0.120

OpenShopbtn.Name = "Open Shop-btn"
OpenShopbtn.Parent = OpenShopFrame
OpenShopbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenShopbtn.BackgroundTransparency = 1.000
OpenShopbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
OpenShopbtn.BorderSizePixel = 0
OpenShopbtn.Size = UDim2.new(0, 149, 0, 46)
OpenShopbtn.AutoButtonColor = false
OpenShopbtn.Font = Enum.Font.SourceSans
OpenShopbtn.Text = "Open Shop"
OpenShopbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenShopbtn.TextSize = 28.000

EquipAllPetsFrame.Name = "Equip All Pets-Frame"
EquipAllPetsFrame.Parent = Mix_label
EquipAllPetsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EquipAllPetsFrame.BackgroundTransparency = 1.000
EquipAllPetsFrame.Position = UDim2.new(-0.291576743, 0, 1.29533529, 0)
EquipAllPetsFrame.Size = UDim2.new(0, 149, 0, 46)
EquipAllPetsFrame.Image = "rbxassetid://3570695787"
EquipAllPetsFrame.ScaleType = Enum.ScaleType.Slice
EquipAllPetsFrame.SliceCenter = Rect.new(100, 100, 100, 100)
EquipAllPetsFrame.SliceScale = 0.120

EquipAllPetsbtn.Name = "Equip All Pets-btn"
EquipAllPetsbtn.Parent = EquipAllPetsFrame
EquipAllPetsbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EquipAllPetsbtn.BackgroundTransparency = 1.000
EquipAllPetsbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
EquipAllPetsbtn.BorderSizePixel = 0
EquipAllPetsbtn.Size = UDim2.new(0, 149, 0, 46)
EquipAllPetsbtn.AutoButtonColor = false
EquipAllPetsbtn.Font = Enum.Font.SourceSans
EquipAllPetsbtn.Text = "Equip All Pets"
EquipAllPetsbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
EquipAllPetsbtn.TextSize = 28.000

Mix_label_2.Name = "Mix_label"
Mix_label_2.Parent = ScrollingFrame
Mix_label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mix_label_2.BackgroundTransparency = 1.000
Mix_label_2.Position = UDim2.new(0.288381755, 0, 0.327395558, 0)
Mix_label_2.Size = UDim2.new(0, 200, 0, 50)
Mix_label_2.Font = Enum.Font.SourceSans
Mix_label_2.Text = "Credits"
Mix_label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Mix_label_2.TextScaled = true
Mix_label_2.TextSize = 14.000
Mix_label_2.TextWrapped = true

CopyDiscordFrame.Name = "CopyDiscord-Frame"
CopyDiscordFrame.Parent = Mix_label_2
CopyDiscordFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscordFrame.BackgroundTransparency = 1.000
CopyDiscordFrame.Position = UDim2.new(0.0434231758, 0, 2.73533511, 0)
CopyDiscordFrame.Size = UDim2.new(0, 192, 0, 46)
CopyDiscordFrame.Image = "rbxassetid://3570695787"
CopyDiscordFrame.ScaleType = Enum.ScaleType.Slice
CopyDiscordFrame.SliceCenter = Rect.new(100, 100, 100, 100)
CopyDiscordFrame.SliceScale = 0.120

CopyDiscordbtn.Name = "CopyDiscord-btn"
CopyDiscordbtn.Parent = CopyDiscordFrame
CopyDiscordbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscordbtn.BackgroundTransparency = 1.000
CopyDiscordbtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscordbtn.BorderSizePixel = 0
CopyDiscordbtn.Size = UDim2.new(0, 192, 0, 46)
CopyDiscordbtn.AutoButtonColor = false
CopyDiscordbtn.Font = Enum.Font.SourceSans
CopyDiscordbtn.Text = "CopyDiscordServer"
CopyDiscordbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyDiscordbtn.TextSize = 28.000

DiscordTextBox.Name = "DiscordTextBox"
DiscordTextBox.Parent = ScrollingFrame
DiscordTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
DiscordTextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
DiscordTextBox.BorderSizePixel = 0
DiscordTextBox.Position = UDim2.new(0.213080168, 0, 0.368142933, 0)
DiscordTextBox.Size = UDim2.new(0, 273, 0, 52)
DiscordTextBox.ClearTextOnFocus = false
DiscordTextBox.Font = Enum.Font.SourceSans
DiscordTextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
DiscordTextBox.PlaceholderText = "https://discord.gg/TTzUdfP74H"
DiscordTextBox.Text = "https://discord.gg/TTzUdfP74H"
DiscordTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordTextBox.TextScaled = true
DiscordTextBox.TextSize = 14.000
DiscordTextBox.TextWrapped = true


----------------------------------------------------------

local b = false
AutoClick_btn.MouseButton1Down:Connect(function()
 if b == false then 
  b = true
  AutoClick_Frame.ImageColor3 = Color3.fromRGB(0, 255, 0)
  while b do
   wait()
   game:GetService("ReplicatedStorage").Remotes.OnLift:FireServer()
  end
 else
  b = false
  AutoClick_Frame.ImageColor3 = Color3.fromRGB(255, 0, 4)
 end 
end)

local a = false
AutoSell_btn.MouseButton1Down:Connect(function()
 if a == false then 
  a = true
  AutoSell_Frame.ImageColor3 = Color3.fromRGB(0, 255, 0)
  while a do
   wait()
   game:GetService("ReplicatedStorage").Remotes.Sell:FireServer()
  end
 else
  a = false
  AutoSell_Frame.ImageColor3 = Color3.fromRGB(255, 0, 4)
 end 
end)

ForestGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(385.337067, 330.216034, 332.980347, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

RainbowGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(379.614594, 251.574493, -297.358337, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

BackyardGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(517.487732, 260.759155, -454.583466, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

BeachGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(588.383362, 246.656143, -244.878281, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

CliffsideGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(496.718414, 328.768555, -113.212868, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

VolcanicGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.811462, 301.641815, -329.376099, 0.736673117, 0, 0.676249027, 0, 1, 0, -0.676249027, 0, 0.736673117)
end)

DesertGymbtn.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(368.594299, 330.002136, -981.549133, 0.624513805, 0, 0.781013787, 0, 1, 0, -0.781013787, 0, 0.624513805)
end)

EquipAllPetsbtn.MouseButton1Down:connect(function()
 for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainUis.Menus.PetsMenu.PetsScrollingFrame.ScrollingFrame:GetChildren()) do
  if v.Name ~= "UIGridLayout" then
   game:GetService("ReplicatedStorage").BearSuite.Client.ComponentModule.ClientReplication:FireServer(game:GetService("Players").LocalPlayer.leaderstats.Pets[v.Name].PetEquipped)
  end
 end
end)

OpenShopbtn.MouseButton1Down:connect(function()
game:GetService("Players").LocalPlayer.PlayerGui.MainUis.Menus.ShopSelectMenu.Visible = true
end)

CopyDiscordbtn.MouseButton1Down:connect(function()
 setclipboard("https://discord.gg/TTzUdfP74H")
end)