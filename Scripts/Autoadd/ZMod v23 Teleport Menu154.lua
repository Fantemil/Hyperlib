-- Gui to Lua
-- Version: 3.2

-- Instances:

local It_is_not_hack_alanzoka = Instance.new("ScreenGui")
local principal_frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local minigun_button = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local reload_time = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local spread_button = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local help_button = Instance.new("ImageButton")
local damage_button = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local shaking_button = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local firerate_button = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local auto_fire_button = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local infinite_ammo_button = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local help_frame = Instance.new("Frame")
local help_text = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local shotgun_button = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local player_frame = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local title_player = Instance.new("TextLabel")
local cure_button = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local virus_button = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local weaponzone_button = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local humandooronly_button = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local teleport_menu = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local teleport_player = Instance.new("TextLabel")
local zombieinside_button = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local lab1_button = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local lab2_button = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local viruslab_button = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local camera_room_button = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local human_room_button = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local zooutside_button = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local pisadonaefodamaneirovoucomerteuanusgostosaputinha = Instance.new("TextLabel")

--Properties:

It_is_not_hack_alanzoka.Name = "It_is_not_hack_alanzoka"
It_is_not_hack_alanzoka.Parent = game.CoreGui

principal_frame.Name = "principal_frame"
principal_frame.Parent = It_is_not_hack_alanzoka
principal_frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
principal_frame.BorderSizePixel = 0
principal_frame.Position = UDim2.new(0.187379673, 0, 0.279000014, 0)
principal_frame.Size = UDim2.new(0, 157, 0, 402)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = principal_frame

title.Name = "title"
title.Parent = principal_frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.198566988, 0, -0.00248756213, 0)
title.Size = UDim2.new(0, 92, 0, 40)
title.Font = Enum.Font.GothamMedium
title.Text = "Pistol"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextStrokeTransparency = 0.000
title.TextWrapped = true

minigun_button.Name = "minigun_button"
minigun_button.Parent = principal_frame
minigun_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
minigun_button.BorderSizePixel = 0
minigun_button.Position = UDim2.new(0.116483845, 0, 0.0986381993, 0)
minigun_button.Size = UDim2.new(0, 121, 0, 30)
minigun_button.Font = Enum.Font.GothamMedium
minigun_button.Text = "Minigun"
minigun_button.TextColor3 = Color3.fromRGB(255, 255, 255)
minigun_button.TextScaled = true
minigun_button.TextSize = 14.000
minigun_button.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = minigun_button

reload_time.Name = "reload_time"
reload_time.Parent = principal_frame
reload_time.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
reload_time.BorderSizePixel = 0
reload_time.Position = UDim2.new(0.116483845, 0, 0.294267029, 0)
reload_time.Size = UDim2.new(0, 121, 0, 30)
reload_time.Font = Enum.Font.GothamMedium
reload_time.Text = "Reload Time"
reload_time.TextColor3 = Color3.fromRGB(255, 255, 255)
reload_time.TextScaled = true
reload_time.TextSize = 14.000
reload_time.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = reload_time

spread_button.Name = "spread_button"
spread_button.Parent = principal_frame
spread_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
spread_button.BorderSizePixel = 0
spread_button.Position = UDim2.new(0.116124824, 0, 0.195414066, 0)
spread_button.Size = UDim2.new(0, 121, 0, 30)
spread_button.Font = Enum.Font.GothamMedium
spread_button.Text = "Spread"
spread_button.TextColor3 = Color3.fromRGB(255, 255, 255)
spread_button.TextScaled = true
spread_button.TextSize = 14.000
spread_button.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = spread_button

help_button.Name = "help_button"
help_button.Parent = principal_frame
help_button.BackgroundTransparency = 1.000
help_button.Position = UDim2.new(0.805930078, 0, 0.0179908648, 0)
help_button.Size = UDim2.new(0, 25, 0, 25)
help_button.Image = "rbxassetid://3926305904"
help_button.ImageRectOffset = Vector2.new(924, 164)
help_button.ImageRectSize = Vector2.new(36, 36)

damage_button.Name = "damage_button"
damage_button.Parent = principal_frame
damage_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
damage_button.BorderSizePixel = 0
damage_button.Position = UDim2.new(0.109071188, 0, 0.395543486, 0)
damage_button.Size = UDim2.new(0, 121, 0, 30)
damage_button.Font = Enum.Font.GothamMedium
damage_button.Text = "Damage"
damage_button.TextColor3 = Color3.fromRGB(255, 255, 255)
damage_button.TextScaled = true
damage_button.TextSize = 14.000
damage_button.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = damage_button

shaking_button.Name = "shaking_button"
shaking_button.Parent = principal_frame
shaking_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
shaking_button.BorderSizePixel = 0
shaking_button.Position = UDim2.new(0.115565792, 0, 0.585347652, 0)
shaking_button.Size = UDim2.new(0, 121, 0, 30)
shaking_button.Font = Enum.Font.GothamMedium
shaking_button.Text = "No Camera Shaking"
shaking_button.TextColor3 = Color3.fromRGB(255, 255, 255)
shaking_button.TextScaled = true
shaking_button.TextSize = 14.000
shaking_button.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = shaking_button

firerate_button.Name = "firerate_button"
firerate_button.Parent = principal_frame
firerate_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
firerate_button.BorderSizePixel = 0
firerate_button.Position = UDim2.new(0.115565792, 0, 0.488886744, 0)
firerate_button.Size = UDim2.new(0, 121, 0, 30)
firerate_button.Font = Enum.Font.GothamMedium
firerate_button.Text = "FireRate"
firerate_button.TextColor3 = Color3.fromRGB(255, 255, 255)
firerate_button.TextScaled = true
firerate_button.TextSize = 14.000
firerate_button.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = firerate_button

auto_fire_button.Name = "auto_fire_button"
auto_fire_button.Parent = principal_frame
auto_fire_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
auto_fire_button.BorderSizePixel = 0
auto_fire_button.Position = UDim2.new(0.115565792, 0, 0.791790724, 0)
auto_fire_button.Size = UDim2.new(0, 121, 0, 30)
auto_fire_button.Font = Enum.Font.GothamMedium
auto_fire_button.Text = "Auto Fire"
auto_fire_button.TextColor3 = Color3.fromRGB(255, 255, 255)
auto_fire_button.TextScaled = true
auto_fire_button.TextSize = 14.000
auto_fire_button.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = auto_fire_button

infinite_ammo_button.Name = "infinite_ammo_button"
infinite_ammo_button.Parent = principal_frame
infinite_ammo_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
infinite_ammo_button.BorderSizePixel = 0
infinite_ammo_button.Position = UDim2.new(0.115565792, 0, 0.693754137, 0)
infinite_ammo_button.Size = UDim2.new(0, 121, 0, 30)
infinite_ammo_button.Font = Enum.Font.GothamMedium
infinite_ammo_button.Text = "Infinite Ammo"
infinite_ammo_button.TextColor3 = Color3.fromRGB(255, 255, 255)
infinite_ammo_button.TextScaled = true
infinite_ammo_button.TextSize = 14.000
infinite_ammo_button.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = infinite_ammo_button

help_frame.Name = "help_frame"
help_frame.Parent = principal_frame
help_frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
help_frame.BorderSizePixel = 0
help_frame.Position = UDim2.new(1.11813664, 0, -0.00228662416, 0)
help_frame.Size = UDim2.new(0, 414, 0, 27)
help_frame.Visible = false

help_text.Name = "help_text"
help_text.Parent = help_frame
help_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
help_text.BackgroundTransparency = 1.000
help_text.Size = UDim2.new(0, 414, 0, 27)
help_text.Font = Enum.Font.GothamMedium
help_text.Text = "Unequip the weapon first before clicking on any button"
help_text.TextColor3 = Color3.fromRGB(255, 255, 255)
help_text.TextScaled = true
help_text.TextSize = 14.000
help_text.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = help_frame

shotgun_button.Name = "shotgun_button"
shotgun_button.Parent = principal_frame
shotgun_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
shotgun_button.BorderSizePixel = 0
shotgun_button.Position = UDim2.new(0.115565792, 0, 0.890272021, 0)
shotgun_button.Size = UDim2.new(0, 121, 0, 30)
shotgun_button.Font = Enum.Font.GothamMedium
shotgun_button.Text = "Shotgun"
shotgun_button.TextColor3 = Color3.fromRGB(255, 255, 255)
shotgun_button.TextScaled = true
shotgun_button.TextSize = 14.000
shotgun_button.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 4)
UICorner_11.Parent = shotgun_button

player_frame.Name = "player_frame"
player_frame.Parent = It_is_not_hack_alanzoka
player_frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
player_frame.BorderSizePixel = 0
player_frame.Position = UDim2.new(0.290960401, 0, 0.319865406, 0)
player_frame.Size = UDim2.new(0, 157, 0, 190)

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = player_frame

title_player.Name = "title_player"
title_player.Parent = player_frame
title_player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_player.BackgroundTransparency = 1.000
title_player.BorderSizePixel = 0
title_player.Position = UDim2.new(0.198566988, 0, 0, 0)
title_player.Size = UDim2.new(0, 92, 0, 40)
title_player.Font = Enum.Font.GothamMedium
title_player.Text = "Player"
title_player.TextColor3 = Color3.fromRGB(255, 255, 255)
title_player.TextScaled = true
title_player.TextSize = 14.000
title_player.TextStrokeTransparency = 0.000
title_player.TextWrapped = true

cure_button.Name = "cure_button"
cure_button.Parent = player_frame
cure_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
cure_button.BorderSizePixel = 0
cure_button.Position = UDim2.new(0.134215593, 0, 0.414809108, 0)
cure_button.Size = UDim2.new(0, 111, 0, 30)
cure_button.Font = Enum.Font.GothamMedium
cure_button.Text = "Get Cure"
cure_button.TextColor3 = Color3.fromRGB(255, 255, 255)
cure_button.TextScaled = true
cure_button.TextSize = 14.000
cure_button.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 4)
UICorner_13.Parent = cure_button

virus_button.Name = "virus_button"
virus_button.Parent = player_frame
virus_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
virus_button.BorderSizePixel = 0
virus_button.Position = UDim2.new(0.134215593, 0, 0.20691438, 0)
virus_button.Size = UDim2.new(0, 111, 0, 30)
virus_button.Font = Enum.Font.GothamMedium
virus_button.Text = "Get Virus"
virus_button.TextColor3 = Color3.fromRGB(255, 255, 255)
virus_button.TextScaled = true
virus_button.TextSize = 14.000
virus_button.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = virus_button

weaponzone_button.Name = "weaponzone_button"
weaponzone_button.Parent = player_frame
weaponzone_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
weaponzone_button.BorderSizePixel = 0
weaponzone_button.Position = UDim2.new(0.134215593, 0, 0.797602654, 0)
weaponzone_button.Size = UDim2.new(0, 111, 0, 30)
weaponzone_button.Font = Enum.Font.GothamMedium
weaponzone_button.Text = "Delete Anti Pistol Zone"
weaponzone_button.TextColor3 = Color3.fromRGB(255, 255, 255)
weaponzone_button.TextScaled = true
weaponzone_button.TextSize = 14.000
weaponzone_button.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 4)
UICorner_15.Parent = weaponzone_button

humandooronly_button.Name = "humandooronly_button"
humandooronly_button.Parent = player_frame
humandooronly_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
humandooronly_button.BorderSizePixel = 0
humandooronly_button.Position = UDim2.new(0.134215593, 0, 0.609748423, 0)
humandooronly_button.Size = UDim2.new(0, 111, 0, 30)
humandooronly_button.Font = Enum.Font.GothamMedium
humandooronly_button.Text = "Delete Human Only Door"
humandooronly_button.TextColor3 = Color3.fromRGB(255, 255, 255)
humandooronly_button.TextScaled = true
humandooronly_button.TextSize = 14.000
humandooronly_button.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 4)
UICorner_16.Parent = humandooronly_button

teleport_menu.Name = "teleport_menu"
teleport_menu.Parent = It_is_not_hack_alanzoka
teleport_menu.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
teleport_menu.BorderSizePixel = 0
teleport_menu.Position = UDim2.new(0.390402824, 0, 0.319865406, 0)
teleport_menu.Size = UDim2.new(0, 157, 0, 333)

UICorner_17.CornerRadius = UDim.new(0, 4)
UICorner_17.Parent = teleport_menu

teleport_player.Name = "teleport_player"
teleport_player.Parent = teleport_menu
teleport_player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleport_player.BackgroundTransparency = 1.000
teleport_player.BorderSizePixel = 0
teleport_player.Position = UDim2.new(0.204936415, 0, -0.00600600615, 0)
teleport_player.Size = UDim2.new(0, 92, 0, 40)
teleport_player.Font = Enum.Font.GothamMedium
teleport_player.Text = "Teleport"
teleport_player.TextColor3 = Color3.fromRGB(255, 255, 255)
teleport_player.TextScaled = true
teleport_player.TextSize = 14.000
teleport_player.TextStrokeTransparency = 0.000
teleport_player.TextWrapped = true

zombieinside_button.Name = "zombieinside_button"
zombieinside_button.Parent = teleport_menu
zombieinside_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
zombieinside_button.BorderSizePixel = 0
zombieinside_button.Position = UDim2.new(0.109196559, 0, 0.861819327, 0)
zombieinside_button.Size = UDim2.new(0, 121, 0, 31)
zombieinside_button.Font = Enum.Font.GothamMedium
zombieinside_button.Text = "Zombie room (INSIDE)"
zombieinside_button.TextColor3 = Color3.fromRGB(255, 255, 255)
zombieinside_button.TextScaled = true
zombieinside_button.TextSize = 14.000
zombieinside_button.TextWrapped = true

UICorner_18.CornerRadius = UDim.new(0, 4)
UICorner_18.Parent = zombieinside_button

lab1_button.Name = "lab1_button"
lab1_button.Parent = teleport_menu
lab1_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
lab1_button.BorderSizePixel = 0
lab1_button.Position = UDim2.new(0.109196559, 0, 0.114174597, 0)
lab1_button.Size = UDim2.new(0, 121, 0, 31)
lab1_button.Font = Enum.Font.GothamMedium
lab1_button.Text = "Lab 1"
lab1_button.TextColor3 = Color3.fromRGB(255, 255, 255)
lab1_button.TextScaled = true
lab1_button.TextSize = 14.000
lab1_button.TextWrapped = true

UICorner_19.CornerRadius = UDim.new(0, 4)
UICorner_19.Parent = lab1_button

lab2_button.Name = "lab2_button"
lab2_button.Parent = teleport_menu
lab2_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
lab2_button.BorderSizePixel = 0
lab2_button.Position = UDim2.new(0.109196559, 0, 0.242431641, 0)
lab2_button.Size = UDim2.new(0, 121, 0, 31)
lab2_button.Font = Enum.Font.GothamMedium
lab2_button.Text = "Lab 2"
lab2_button.TextColor3 = Color3.fromRGB(255, 255, 255)
lab2_button.TextScaled = true
lab2_button.TextSize = 14.000
lab2_button.TextWrapped = true

UICorner_20.CornerRadius = UDim.new(0, 4)
UICorner_20.Parent = lab2_button

viruslab_button.Name = "viruslab_button"
viruslab_button.Parent = teleport_menu
viruslab_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
viruslab_button.BorderSizePixel = 0
viruslab_button.Position = UDim2.new(0.109196559, 0, 0.358175844, 0)
viruslab_button.Size = UDim2.new(0, 121, 0, 31)
viruslab_button.Font = Enum.Font.GothamMedium
viruslab_button.Text = "Virus Lab"
viruslab_button.TextColor3 = Color3.fromRGB(255, 255, 255)
viruslab_button.TextScaled = true
viruslab_button.TextSize = 14.000
viruslab_button.TextWrapped = true

UICorner_21.CornerRadius = UDim.new(0, 4)
UICorner_21.Parent = viruslab_button

camera_room_button.Name = "camera_room_button"
camera_room_button.Parent = teleport_menu
camera_room_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
camera_room_button.BorderSizePixel = 0
camera_room_button.Position = UDim2.new(0.109196559, 0, 0.480176419, 0)
camera_room_button.Size = UDim2.new(0, 121, 0, 31)
camera_room_button.Font = Enum.Font.GothamMedium
camera_room_button.Text = "Camera Room"
camera_room_button.TextColor3 = Color3.fromRGB(255, 255, 255)
camera_room_button.TextScaled = true
camera_room_button.TextSize = 14.000
camera_room_button.TextWrapped = true

UICorner_22.CornerRadius = UDim.new(0, 4)
UICorner_22.Parent = camera_room_button

human_room_button.Name = "human_room_button"
human_room_button.Parent = teleport_menu
human_room_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
human_room_button.BorderSizePixel = 0
human_room_button.Position = UDim2.new(0.109196559, 0, 0.617818117, 0)
human_room_button.Size = UDim2.new(0, 121, 0, 31)
human_room_button.Font = Enum.Font.GothamMedium
human_room_button.Text = "Human Room"
human_room_button.TextColor3 = Color3.fromRGB(255, 255, 255)
human_room_button.TextScaled = true
human_room_button.TextSize = 14.000
human_room_button.TextWrapped = true

UICorner_23.CornerRadius = UDim.new(0, 4)
UICorner_23.Parent = human_room_button

zooutside_button.Name = "zooutside_button"
zooutside_button.Parent = teleport_menu
zooutside_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
zooutside_button.BorderSizePixel = 0
zooutside_button.Position = UDim2.new(0.109196559, 0, 0.739818692, 0)
zooutside_button.Size = UDim2.new(0, 121, 0, 31)
zooutside_button.Font = Enum.Font.GothamMedium
zooutside_button.Text = "Zombie room (OUTSIDE)"
zooutside_button.TextColor3 = Color3.fromRGB(255, 255, 255)
zooutside_button.TextScaled = true
zooutside_button.TextSize = 14.000
zooutside_button.TextWrapped = true

UICorner_24.CornerRadius = UDim.new(0, 4)
UICorner_24.Parent = zooutside_button

pisadonaefodamaneirovoucomerteuanusgostosaputinha.Name = "pisadonaefodamaneirovoucomerteuanusgostosaputinha"
pisadonaefodamaneirovoucomerteuanusgostosaputinha.Parent = It_is_not_hack_alanzoka
pisadonaefodamaneirovoucomerteuanusgostosaputinha.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pisadonaefodamaneirovoucomerteuanusgostosaputinha.BackgroundTransparency = 1.000
pisadonaefodamaneirovoucomerteuanusgostosaputinha.BorderSizePixel = 0
pisadonaefodamaneirovoucomerteuanusgostosaputinha.Position = UDim2.new(0, 0, 0.949519217, 0)
pisadonaefodamaneirovoucomerteuanusgostosaputinha.Size = UDim2.new(0, 125, 0, 31)
pisadonaefodamaneirovoucomerteuanusgostosaputinha.Font = Enum.Font.SourceSans
pisadonaefodamaneirovoucomerteuanusgostosaputinha.Text = "0"
pisadonaefodamaneirovoucomerteuanusgostosaputinha.TextColor3 = Color3.fromRGB(0, 0, 0)
pisadonaefodamaneirovoucomerteuanusgostosaputinha.TextScaled = true
pisadonaefodamaneirovoucomerteuanusgostosaputinha.TextSize = 14.000
pisadonaefodamaneirovoucomerteuanusgostosaputinha.TextWrapped = true

-- Scripts:

local function YOFM_fake_script() -- principal_frame.Draggable 
	local script = Instance.new('LocalScript', principal_frame)

	print("Executed...")
	
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
coroutine.wrap(YOFM_fake_script)()
local function YNLOPZ_fake_script() -- minigun_button.migun_script 
	local script = Instance.new('LocalScript', minigun_button)

	function minigun_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = true
		local elementIndex = "MinigunEnabled"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.minigun_button.MouseButton1Click:Connect(minigun_function)
end
coroutine.wrap(YNLOPZ_fake_script)()
local function ZKCHA_fake_script() -- reload_time.reload_script 
	local script = Instance.new('LocalScript', reload_time)

	function reload_time_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 7
		local closureConstants = {
			[1] = "Health",
			[2] = "ChargedShotEnabled",
			[3] = "ChargeSound",
			[4] = "FindFirstChild",
			[5] = "Play",
			[6] = "wait"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = 0
		local elementIndex = "ReloadTime"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
		
		
		
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 7
		local closureConstants = {
			[1] = "Health",
			[2] = "ChargedShotEnabled",
			[3] = "ChargeSound",
			[4] = "FindFirstChild",
			[5] = "Play",
			[6] = "wait"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = math.huge
		local elementIndex = "ReloadAnimationSpeed"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
		
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.reload_time.MouseButton1Click:Connect(reload_time_function)
end
coroutine.wrap(ZKCHA_fake_script)()
local function OAEMR_fake_script() -- spread_button.LocalScript 
	local script = Instance.new('LocalScript', spread_button)

	function spread_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 3
		local closureConstants = {
			[1] = "CanSnipe",
			[2] = "PlayerGui",
			[3] = "ContextButtonFrame",
			[4] = "ReloadButton",
			[5] = "Visible",
			[6] = "UpdateGUI"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = 0
		local elementIndex = "Spread"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.spread_button.MouseButton1Click:Connect(spread_function)
end
coroutine.wrap(OAEMR_fake_script)()
local function AVDSXP_fake_script() -- help_button.help_script 
	local script = Instance.new('LocalScript', help_button)

	function help()
		game.CoreGui.It_is_not_hack_alanzoka.principal_frame.help_frame.Visible = not game.CoreGui.It_is_not_hack_alanzoka.principal_frame.help_frame.Visible
	end
	
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.help_button.MouseButton1Click:Connect(help)
end
coroutine.wrap(AVDSXP_fake_script)()
local function EYQPBL_fake_script() -- damage_button.LocalScript 
	local script = Instance.new('LocalScript', damage_button)

	function damage_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = math.huge
		local elementIndex = "BaseDamage"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
		
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = math.huge
		local elementIndex = "HeadshotDamageMultiplier"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.damage_button.MouseButton1Click:Connect(damage_function)
end
coroutine.wrap(EYQPBL_fake_script)()
local function JMEN_fake_script() -- shaking_button.shaking_Script 
	local script = Instance.new('LocalScript', shaking_button)

	function shaking_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = false
		local elementIndex = "CameraShakingEnabled"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.shaking_button.MouseButton1Click:Connect(shaking_function)
end
coroutine.wrap(JMEN_fake_script)()
local function TPBVKN_fake_script() -- firerate_button.firerate_script 
	local script = Instance.new('LocalScript', firerate_button)

	function firerate()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = 0
		local elementIndex = "FireRate"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.firerate_button.MouseButton1Click:Connect(firerate)
end
coroutine.wrap(TPBVKN_fake_script)()
local function DUBIZJD_fake_script() -- auto_fire_button.autofire_script 
	local script = Instance.new('LocalScript', auto_fire_button)

	function autofire_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = true
		local elementIndex = "Auto"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.auto_fire_button.MouseButton1Click:Connect(autofire_function)
end
coroutine.wrap(DUBIZJD_fake_script)()
local function SPFALZJ_fake_script() -- infinite_ammo_button.LocalScript 
	local script = Instance.new('LocalScript', infinite_ammo_button)

	function inf_ammo()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = 9e9
		local elementIndex = "AmmoPerClip"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.infinite_ammo_button.MouseButton1Click:Connect(inf_ammo)
end
coroutine.wrap(SPFALZJ_fake_script)()
local function WOME_fake_script() -- shotgun_button.shotgun_script 
	local script = Instance.new('LocalScript', shotgun_button)

	function shotgun_function()
		local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
	
		local scriptPath = game:GetService("Players").LocalPlayer.Backpack.Pistol.GunScript_Local
		local closureName = "Unnamed function"
		local upvalueIndex = 6
		local closureConstants = {
			[1] = "script",
			[3] = "Parent",
			[4] = "Stop",
			[5] = "workspace",
			[6] = workspace,
			[7] = "CurrentCamera"
		}
	
		local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
		local value = true
		local elementIndex = "ShotgunEnabled"
	
		debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	end
	
	
	game.CoreGui.It_is_not_hack_alanzoka.principal_frame.shotgun_button.MouseButton1Click:Connect(shotgun_function)
end
coroutine.wrap(WOME_fake_script)()
local function NQPWUE_fake_script() -- player_frame.Draggable 
	local script = Instance.new('LocalScript', player_frame)

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
coroutine.wrap(NQPWUE_fake_script)()
local function VVGQDI_fake_script() -- cure_button.cure_script 
	local script = Instance.new('LocalScript', cure_button)

	function cureaiquedeliciauau()
		game:GetService("ReplicatedStorage").Events.GiveCure:FireServer()
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.player_frame.cure_button.MouseButton1Click:Connect(cureaiquedeliciauau)
end
coroutine.wrap(VVGQDI_fake_script)()
local function WGIRNPK_fake_script() -- virus_button.LocalScript 
	local script = Instance.new('LocalScript', virus_button)

	function viruscovidhahahzombiegay()
		game:GetService("ReplicatedStorage").Events.GiveVirus:FireServer()
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.player_frame.virus_button.MouseButton1Click:Connect(viruscovidhahahzombiegay)
end
coroutine.wrap(WGIRNPK_fake_script)()
local function FJDWAC_fake_script() -- weaponzone_button.LocalScript 
	local script = Instance.new('LocalScript', weaponzone_button)

	function no_gun()
		game:GetService("Workspace").AntiWeaponZone:Destroy()
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.player_frame.weaponzone_button.MouseButton1Click:Connect(no_gun)
end
coroutine.wrap(FJDWAC_fake_script)()
local function INIP_fake_script() -- humandooronly_button.LocalScript 
	local script = Instance.new('LocalScript', humandooronly_button)

	function humanflaviouaueusoumuitofodamagnattamenueumamerdachupaflamengo()
		game:GetService("Workspace").HumanOnlyDoor:Destroy()
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.player_frame.humandooronly_button.MouseButton1Click:Connect(humanflaviouaueusoumuitofodamagnattamenueumamerdachupaflamengo)
end
coroutine.wrap(INIP_fake_script)()
local function PMGM_fake_script() -- teleport_menu.Draggable 
	local script = Instance.new('LocalScript', teleport_menu)

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
coroutine.wrap(PMGM_fake_script)()
local function YLUKLJ_fake_script() -- zombieinside_button.LocalScript 
	local script = Instance.new('LocalScript', zombieinside_button)

	function inside()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
		
		humanroot.CFrame = CFrame.new(-75, 3, 93)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.zombieinside_button.MouseButton1Click:Connect(inside)
end
coroutine.wrap(YLUKLJ_fake_script)()
local function CUFSBKB_fake_script() -- lab1_button.LocalScript 
	local script = Instance.new('LocalScript', lab1_button)

	function lab1_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(-19, 3, 16)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.lab1_button.MouseButton1Click:Connect(lab1_button)
end
coroutine.wrap(CUFSBKB_fake_script)()
local function XKOG_fake_script() -- lab2_button.LocalScript 
	local script = Instance.new('LocalScript', lab2_button)

	function lab2_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(-76, -15, 83)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.lab2_button.MouseButton1Click:Connect(lab2_button)
end
coroutine.wrap(XKOG_fake_script)()
local function CYIRR_fake_script() -- viruslab_button.LocalScript 
	local script = Instance.new('LocalScript', viruslab_button)

	function viruslab_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(-69, -15, -52)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.viruslab_button.MouseButton1Click:Connect(viruslab_button)
end
coroutine.wrap(CYIRR_fake_script)()
local function XYUPJ_fake_script() -- camera_room_button.LocalScript 
	local script = Instance.new('LocalScript', camera_room_button)

	function camera_room_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(150, 3, -8)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.camera_room_button.MouseButton1Click:Connect(camera_room_button)
end
coroutine.wrap(XYUPJ_fake_script)()
local function MIXJY_fake_script() -- human_room_button.LocalScript 
	local script = Instance.new('LocalScript', human_room_button)

	function human_room_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(113, 3, 7)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.human_room_button.MouseButton1Click:Connect(human_room_button)
end
coroutine.wrap(MIXJY_fake_script)()
local function ULGIDRR_fake_script() -- zooutside_button.LocalScript 
	local script = Instance.new('LocalScript', zooutside_button)

	function zooutside_button()
		local player = game:GetService("Players").LocalPlayer
		local char = player.Character
		local humanroot = char.HumanoidRootPart
	
		humanroot.CFrame = CFrame.new(-83, 3, 60)
	end
	
	game.CoreGui.It_is_not_hack_alanzoka.teleport_menu.zooutside_button.MouseButton1Click:Connect(zooutside_button)
end
coroutine.wrap(ULGIDRR_fake_script)()
local function HQTFWW_fake_script() -- pisadonaefodamaneirovoucomerteuanusgostosaputinha.LocalScript 
	local script = Instance.new('LocalScript', pisadonaefodamaneirovoucomerteuanusgostosaputinha)

	local watermark = game.CoreGui.It_is_not_hack_alanzoka.pisadonaefodamaneirovoucomerteuanusgostosaputinha
	
	watermark.Text = string.char(90,109,111,100,32,118,46,50,46,51,32,32,83,99,114,105,112,116,32,66,121,32,77,114,82,111,110,97,107)
end
coroutine.wrap(HQTFWW_fake_script)()
