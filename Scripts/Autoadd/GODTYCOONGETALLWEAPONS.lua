local h4x = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local center_teleport = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local music_1 = Instance.new("TextButton")
local music_2 = Instance.new("TextButton")
local stop_songs = Instance.new("TextButton")
local lightning_teleport = Instance.new("TextButton")
local death_teleport = Instance.new("TextButton")
local poison_teleport = Instance.new("TextButton")
local ice_teleport = Instance.new("TextButton")
local light_teleport = Instance.new("TextButton")
local nature_teleport = Instance.new("TextButton")
local wind_teleport = Instance.new("TextButton")
local get_weapons = Instance.new("TextButton")
local noclip = Instance.new("TextButton")
local lightning_morph = Instance.new("TextButton")
local poison_morph = Instance.new("TextButton")
local ice_morph = Instance.new("TextButton")
local fire_morph = Instance.new("TextButton")
local death_morph = Instance.new("TextButton")
local wind_morph = Instance.new("TextButton")
local nature_morph = Instance.new("TextButton")
local light_morph = Instance.new("TextButton")
local speed_button = Instance.new("TextButton")
local speed_value_textbox = Instance.new("TextBox")
local open_close = Instance.new("Frame")
local open_close_2 = Instance.new("TextButton")

--Properties:

h4x.Name = "h4x"
h4x.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
h4x.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = h4x
main.BackgroundColor3 = Color3.fromRGB(4, 134, 104)
main.BorderColor3 = Color3.fromRGB(4, 134, 104)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.692518234, 0, 0.0289389063, 0)
main.Size = UDim2.new(0, 320, 0, 554)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(5, 190, 147)
title.BorderColor3 = Color3.fromRGB(2, 117, 88)
title.BorderSizePixel = 4
title.Size = UDim2.new(0, 320, 0, 55)
title.Font = Enum.Font.SourceSans
title.Text = "GOD TYCOON GUI"
title.TextColor3 = Color3.fromRGB(1, 0, 89)
title.TextSize = 35.000

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.581250012, 0, 0.699327946, 0)
ImageLabel.Size = UDim2.new(0, 186, 0, 165)
ImageLabel.Image = "rbxassetid://7182999569"

center_teleport.Name = "center_teleport"
center_teleport.Parent = main
center_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
center_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
center_teleport.BorderSizePixel = 0
center_teleport.Position = UDim2.new(0.550000012, 0, 0.118876547, 0)
center_teleport.Size = UDim2.new(0, 144, 0, 31)
center_teleport.Font = Enum.Font.SourceSans
center_teleport.Text = "Teleport to Center"
center_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
center_teleport.TextSize = 20.000

Credits.Name = "Credits"
Credits.Parent = main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.59375, 0, 0.926134646, 0)
Credits.Size = UDim2.new(0, 130, 0, 40)
Credits.Font = Enum.Font.Antique
Credits.Text = "JUKjacker"
Credits.TextColor3 = Color3.fromRGB(1, 0, 89)
Credits.TextScaled = true
Credits.TextSize = 50.000
Credits.TextWrapped = true

music_1.Name = "music_1"
music_1.Parent = main
music_1.BackgroundColor3 = Color3.fromRGB(77, 182, 80)
music_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
music_1.BorderSizePixel = 0
music_1.Position = UDim2.new(0, 0, 0.756107509, 0)
music_1.Size = UDim2.new(0, 110, 0, 33)
music_1.Font = Enum.Font.SourceSans
music_1.Text = "Music 1"
music_1.TextColor3 = Color3.fromRGB(0, 0, 0)
music_1.TextScaled = true
music_1.TextSize = 20.000
music_1.TextWrapped = true

music_2.Name = "music_2"
music_2.Parent = main
music_2.BackgroundColor3 = Color3.fromRGB(77, 182, 80)
music_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
music_2.BorderSizePixel = 0
music_2.Position = UDim2.new(0, 0, 0.829176068, 0)
music_2.Size = UDim2.new(0, 110, 0, 33)
music_2.Font = Enum.Font.SourceSans
music_2.Text = "Music 2"
music_2.TextColor3 = Color3.fromRGB(0, 0, 0)
music_2.TextScaled = true
music_2.TextSize = 20.000
music_2.TextWrapped = true

stop_songs.Name = "stop_songs"
stop_songs.Parent = main
stop_songs.BackgroundColor3 = Color3.fromRGB(182, 117, 43)
stop_songs.BorderColor3 = Color3.fromRGB(27, 42, 53)
stop_songs.BorderSizePixel = 0
stop_songs.Position = UDim2.new(0, 0, 0.915448785, 0)
stop_songs.Size = UDim2.new(0, 78, 0, 33)
stop_songs.Font = Enum.Font.SourceSans
stop_songs.Text = "Stop songs"
stop_songs.TextColor3 = Color3.fromRGB(0, 0, 0)
stop_songs.TextSize = 20.000
stop_songs.TextWrapped = true

lightning_teleport.Name = "lightning_teleport"
lightning_teleport.Parent = main
lightning_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
lightning_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
lightning_teleport.BorderSizePixel = 0
lightning_teleport.Position = UDim2.new(0.550000012, 0, 0.185663551, 0)
lightning_teleport.Size = UDim2.new(0, 144, 0, 37)
lightning_teleport.Font = Enum.Font.SourceSans
lightning_teleport.Text = "Teleport to lightning base"
lightning_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
lightning_teleport.TextScaled = true
lightning_teleport.TextSize = 20.000
lightning_teleport.TextWrapped = true

death_teleport.Name = "death_teleport"
death_teleport.Parent = main
death_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
death_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
death_teleport.BorderSizePixel = 0
death_teleport.Position = UDim2.new(0.550000012, 0, 0.265085936, 0)
death_teleport.Size = UDim2.new(0, 144, 0, 37)
death_teleport.Font = Enum.Font.SourceSans
death_teleport.Text = "Teleport to death base"
death_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
death_teleport.TextScaled = true
death_teleport.TextSize = 20.000
death_teleport.TextWrapped = true

poison_teleport.Name = "poison_teleport"
poison_teleport.Parent = main
poison_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
poison_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
poison_teleport.BorderSizePixel = 0
poison_teleport.Position = UDim2.new(0.550000012, 0, 0.342703253, 0)
poison_teleport.Size = UDim2.new(0, 144, 0, 37)
poison_teleport.Font = Enum.Font.SourceSans
poison_teleport.Text = "Teleport to poison base"
poison_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
poison_teleport.TextScaled = true
poison_teleport.TextSize = 20.000
poison_teleport.TextWrapped = true

ice_teleport.Name = "ice_teleport"
ice_teleport.Parent = main
ice_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
ice_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
ice_teleport.BorderSizePixel = 0
ice_teleport.Position = UDim2.new(0.550000012, 0, 0.423930705, 0)
ice_teleport.Size = UDim2.new(0, 144, 0, 37)
ice_teleport.Font = Enum.Font.SourceSans
ice_teleport.Text = "Teleport to ice base"
ice_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
ice_teleport.TextScaled = true
ice_teleport.TextSize = 20.000
ice_teleport.TextWrapped = true

light_teleport.Name = "light_teleport"
light_teleport.Parent = main
light_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
light_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
light_teleport.BorderSizePixel = 0
light_teleport.Position = UDim2.new(0.550000012, 0, 0.506963193, 0)
light_teleport.Size = UDim2.new(0, 144, 0, 37)
light_teleport.Font = Enum.Font.SourceSans
light_teleport.Text = "Teleport to light base"
light_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
light_teleport.TextScaled = true
light_teleport.TextSize = 20.000
light_teleport.TextWrapped = true

nature_teleport.Name = "nature_teleport"
nature_teleport.Parent = main
nature_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
nature_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
nature_teleport.BorderSizePixel = 0
nature_teleport.Position = UDim2.new(0.550000012, 0, 0.588190675, 0)
nature_teleport.Size = UDim2.new(0, 144, 0, 37)
nature_teleport.Font = Enum.Font.SourceSans
nature_teleport.Text = "Teleport to nature base"
nature_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
nature_teleport.TextScaled = true
nature_teleport.TextSize = 20.000
nature_teleport.TextWrapped = true

wind_teleport.Name = "wind_teleport"
wind_teleport.Parent = main
wind_teleport.BackgroundColor3 = Color3.fromRGB(89, 204, 145)
wind_teleport.BorderColor3 = Color3.fromRGB(27, 42, 53)
wind_teleport.BorderSizePixel = 0
wind_teleport.Position = UDim2.new(0.550000012, 0, 0.667613029, 0)
wind_teleport.Size = UDim2.new(0, 144, 0, 37)
wind_teleport.Font = Enum.Font.SourceSans
wind_teleport.Text = "Teleport to wind base"
wind_teleport.TextColor3 = Color3.fromRGB(0, 0, 0)
wind_teleport.TextScaled = true
wind_teleport.TextSize = 20.000
wind_teleport.TextWrapped = true

get_weapons.Name = "get_weapons"
get_weapons.Parent = main
get_weapons.BackgroundColor3 = Color3.fromRGB(121, 173, 10)
get_weapons.BorderColor3 = Color3.fromRGB(27, 42, 53)
get_weapons.BorderSizePixel = 0
get_weapons.Position = UDim2.new(0, 0, 0.118876547, 0)
get_weapons.Size = UDim2.new(0, 153, 0, 31)
get_weapons.Font = Enum.Font.SourceSans
get_weapons.Text = "Get all weapons (OP)"
get_weapons.TextColor3 = Color3.fromRGB(0, 0, 0)
get_weapons.TextSize = 20.000
get_weapons.TextWrapped = true

noclip.Name = "noclip"
noclip.Parent = main
noclip.BackgroundColor3 = Color3.fromRGB(79, 182, 129)
noclip.BorderColor3 = Color3.fromRGB(27, 42, 53)
noclip.BorderSizePixel = 0
noclip.Position = UDim2.new(0, 0, 0.185663551, 0)
noclip.Size = UDim2.new(0, 153, 0, 31)
noclip.Font = Enum.Font.SourceSans
noclip.Text = "e to noclip"
noclip.TextColor3 = Color3.fromRGB(0, 0, 0)
noclip.TextSize = 20.000
noclip.TextWrapped = true

lightning_morph.Name = "lightning_morph"
lightning_morph.Parent = main
lightning_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
lightning_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
lightning_morph.BorderSizePixel = 0
lightning_morph.Position = UDim2.new(0, 0, 0.252450556, 0)
lightning_morph.Size = UDim2.new(0, 153, 0, 31)
lightning_morph.Font = Enum.Font.SourceSans
lightning_morph.Text = "Lightning morph"
lightning_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
lightning_morph.TextSize = 20.000
lightning_morph.TextWrapped = true

poison_morph.Name = "poison_morph"
poison_morph.Parent = main
poison_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
poison_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
poison_morph.BorderSizePixel = 0
poison_morph.Position = UDim2.new(0, 0, 0.31923756, 0)
poison_morph.Size = UDim2.new(0, 153, 0, 31)
poison_morph.Font = Enum.Font.SourceSans
poison_morph.Text = "Poison morph"
poison_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
poison_morph.TextSize = 20.000
poison_morph.TextWrapped = true

ice_morph.Name = "ice_morph"
ice_morph.Parent = main
ice_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
ice_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
ice_morph.BorderSizePixel = 0
ice_morph.Position = UDim2.new(0, 0, 0.386024565, 0)
ice_morph.Size = UDim2.new(0, 153, 0, 31)
ice_morph.Font = Enum.Font.SourceSans
ice_morph.Text = "Ice morph"
ice_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
ice_morph.TextSize = 20.000
ice_morph.TextWrapped = true

fire_morph.Name = "fire_morph"
fire_morph.Parent = main
fire_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
fire_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
fire_morph.BorderSizePixel = 0
fire_morph.Position = UDim2.new(0, 0, 0.451006532, 0)
fire_morph.Size = UDim2.new(0, 153, 0, 31)
fire_morph.Font = Enum.Font.SourceSans
fire_morph.Text = "Fire morph"
fire_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
fire_morph.TextSize = 20.000
fire_morph.TextWrapped = true

death_morph.Name = "death_morph"
death_morph.Parent = main
death_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
death_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
death_morph.BorderSizePixel = 0
death_morph.Position = UDim2.new(0, 0, 0.515988529, 0)
death_morph.Size = UDim2.new(0, 153, 0, 31)
death_morph.Font = Enum.Font.SourceSans
death_morph.Text = "Death morph"
death_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
death_morph.TextSize = 20.000
death_morph.TextWrapped = true

wind_morph.Name = "wind_morph"
wind_morph.Parent = main
wind_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
wind_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
wind_morph.BorderSizePixel = 0
wind_morph.Position = UDim2.new(0, 0, 0.588190675, 0)
wind_morph.Size = UDim2.new(0, 153, 0, 31)
wind_morph.Font = Enum.Font.SourceSans
wind_morph.Text = "Wind morph"
wind_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
wind_morph.TextSize = 20.000
wind_morph.TextWrapped = true

nature_morph.Name = "nature_morph"
nature_morph.Parent = main
nature_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
nature_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
nature_morph.BorderSizePixel = 0
nature_morph.Position = UDim2.new(0, 0, 0.654977679, 0)
nature_morph.Size = UDim2.new(0, 153, 0, 31)
nature_morph.Font = Enum.Font.SourceSans
nature_morph.Text = "Nature morph"
nature_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
nature_morph.TextSize = 20.000
nature_morph.TextWrapped = true

light_morph.Name = "light_morph"
light_morph.Parent = main
light_morph.BackgroundColor3 = Color3.fromRGB(73, 182, 89)
light_morph.BorderColor3 = Color3.fromRGB(27, 42, 53)
light_morph.BorderSizePixel = 0
light_morph.Position = UDim2.new(0.550000012, 0, 0.756060719, 0)
light_morph.Size = UDim2.new(0, 144, 0, 31)
light_morph.Font = Enum.Font.SourceSans
light_morph.Text = "Light morph"
light_morph.TextColor3 = Color3.fromRGB(0, 0, 0)
light_morph.TextSize = 20.000
light_morph.TextWrapped = true

speed_button.Name = "speed_button"
speed_button.Parent = main
speed_button.BackgroundColor3 = Color3.fromRGB(72, 165, 117)
speed_button.BorderColor3 = Color3.fromRGB(27, 42, 53)
speed_button.BorderSizePixel = 0
speed_button.Position = UDim2.new(0.550000012, 0, 0.824652731, 0)
speed_button.Size = UDim2.new(0, 144, 0, 22)
speed_button.Font = Enum.Font.SourceSans
speed_button.Text = "Speed"
speed_button.TextColor3 = Color3.fromRGB(0, 0, 0)
speed_button.TextScaled = true
speed_button.TextSize = 20.000
speed_button.TextWrapped = true

speed_value_textbox.Name = "speed_value_textbox"
speed_value_textbox.Parent = main
speed_value_textbox.BackgroundColor3 = Color3.fromRGB(147, 255, 201)
speed_value_textbox.BorderSizePixel = 0
speed_value_textbox.Position = UDim2.new(0.550000012, 0, 0.862815857, 0)
speed_value_textbox.Size = UDim2.new(0, 144, 0, 29)
speed_value_textbox.ClearTextOnFocus = false
speed_value_textbox.Font = Enum.Font.SourceSans
speed_value_textbox.Text = "100"
speed_value_textbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speed_value_textbox.TextScaled = true
speed_value_textbox.TextSize = 20.000
speed_value_textbox.TextWrapped = true

open_close.Name = "open_close"
open_close.Parent = h4x
open_close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open_close.BackgroundTransparency = 1.000
open_close.Size = UDim2.new(0, 100, 0, 100)

open_close_2.Name = "open_close"
open_close_2.Parent = open_close
open_close_2.BackgroundColor3 = Color3.fromRGB(76, 173, 123)
open_close_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
open_close_2.BorderSizePixel = 0
open_close_2.Position = UDim2.new(6.80999994, 0, 0.171367407, 0)
open_close_2.Size = UDim2.new(0, 68, 0, 40)
open_close_2.Font = Enum.Font.SourceSans
open_close_2.Text = "Hide"
open_close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
open_close_2.TextSize = 20.000

-- Scripts:

local function LATA_fake_script() -- center_teleport.LocalScript 
 local script = Instance.new('LocalScript', center_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(77.200912475586, 136.28895568848, -173.05107116699))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(LATA_fake_script)()
local function LZMW_fake_script() -- music_1.LocalScript 
 local script = Instance.new('LocalScript', music_1)

 function do_stuff()
  local music = Instance.new("Sound")
  music.Parent = workspace
  music.SoundId = "rbxassetid://6665234911"
  music.Volume = 10
  music.Looped = true
  music.Name = "music"
  music:Play()
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(LZMW_fake_script)()
local function UXPTY_fake_script() -- music_2.LocalScript 
 local script = Instance.new('LocalScript', music_2)

 function do_stuff()
  local music = Instance.new("Sound")
  music.Parent = workspace
  music.SoundId = "rbxassetid://5998819632"
  music.Volume = 10
  music.Looped = true
  music.Name = "music"
  music:Play()
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(UXPTY_fake_script)()
local function EZODDJE_fake_script() -- stop_songs.LocalScript 
 local script = Instance.new('LocalScript', stop_songs)

 function do_stuff()
  for i,v in pairs(workspace:GetChildren()) do
   if v.Name == "music" then
    v:Remove()
   end
  end
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(EZODDJE_fake_script)()
local function IJDVJ_fake_script() -- lightning_teleport.LocalScript 
 local script = Instance.new('LocalScript', lightning_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(218.96739196777, 141.97253417969, -317.11404418945))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(IJDVJ_fake_script)()
local function VCZEWQK_fake_script() -- death_teleport.LocalScript 
 local script = Instance.new('LocalScript', death_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(86.338417053223, 141.7392578125, -375.60772705078))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(VCZEWQK_fake_script)()
local function HAEVUM_fake_script() -- poison_teleport.LocalScript 
 local script = Instance.new('LocalScript', poison_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(-51.093280792236, 141.83815002441, -319.45190429688))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(HAEVUM_fake_script)()
local function FVAS_fake_script() -- ice_teleport.LocalScript 
 local script = Instance.new('LocalScript', ice_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(287.42858886719, 141.94912719727, -172.95935058594))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(FVAS_fake_script)()
local function RXCF_fake_script() -- light_teleport.LocalScript 
 local script = Instance.new('LocalScript', light_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(214.74580383301, 141.95018005371, -30.623189926147))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(RXCF_fake_script)()
local function VOQZRU_fake_script() -- nature_teleport.LocalScript 
 local script = Instance.new('LocalScript', nature_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(79.047225952148, 141.78202819824, 32.028415679932))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(VOQZRU_fake_script)()
local function DCBYOWL_fake_script() -- wind_teleport.LocalScript 
 local script = Instance.new('LocalScript', wind_teleport)

 function do_stuff()
  game.Players.LocalPlayer.Character:moveTo(Vector3.new(-71.147148132324, 141.96440124512, -34.252185821533))
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(DCBYOWL_fake_script)()
local function EECFUL_fake_script() -- get_weapons.LocalScript 
 local script = Instance.new('LocalScript', get_weapons)

 function do_stuff()
  for i,tycoon in pairs(workspace.Tycoons.Tycoons:GetChildren()) do
   for j,purchased in pairs(tycoon:FindFirstChild("PurchasedObjects"):GetChildren()) do
    local name = purchased.Name:lower()
    if name:match("giver") then
     local giver = purchased:FindFirstChild("Giver")
     giver.Position = game.Players.LocalPlayer.Character.Head.Position
    end
   end
  end
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(EECFUL_fake_script)()
local function YIQAZN_fake_script() -- noclip.LocalScript 
 local script = Instance.new('LocalScript', noclip)

 function do_stuff()
  local noclip = false
  game:GetService('RunService').Stepped:connect(function()
   if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  local plr = game.Players.LocalPlayer
  local mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
 
   if key == "e" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  print('Loaded')
  print('Press "E" to noclip')
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(YIQAZN_fake_script)()
local function TDBO_fake_script() -- lightning_morph.LocalScript 
 local script = Instance.new('LocalScript', lightning_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Lightning.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(TDBO_fake_script)()
local function EZKI_fake_script() -- poison_morph.LocalScript 
 local script = Instance.new('LocalScript', poison_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Poison.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(EZKI_fake_script)()
local function QEBS_fake_script() -- ice_morph.LocalScript 
 local script = Instance.new('LocalScript', ice_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Ice.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(QEBS_fake_script)()
local function TJJDF_fake_script() -- fire_morph.LocalScript 
 local script = Instance.new('LocalScript', fire_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Fire.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(TJJDF_fake_script)()
local function TMPC_fake_script() -- death_morph.LocalScript 
 local script = Instance.new('LocalScript', death_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Death.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(TMPC_fake_script)()
local function ZOIO_fake_script() -- wind_morph.LocalScript 
 local script = Instance.new('LocalScript', wind_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Wind.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(ZOIO_fake_script)()
local function KRBZG_fake_script() -- nature_morph.LocalScript 
 local script = Instance.new('LocalScript', nature_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Nature.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(KRBZG_fake_script)()
local function GBAQOOV_fake_script() -- light_morph.LocalScript 
 local script = Instance.new('LocalScript', light_morph)

 function do_stuff()
  workspace.Tycoons.Tycoons.Light.PurchasedObjects:FindFirstChild("Morph")[""].MorphButton.Position = game.Players.LocalPlayer.Character.Head.Position
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(GBAQOOV_fake_script)()
local function IRCSI_fake_script() -- speed_button.LocalScript 
 local script = Instance.new('LocalScript', speed_button)

 function do_stuff()
  local speed_value = tonumber(script.Parent.Parent.speed_value_textbox.Text)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed_value
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(IRCSI_fake_script)()
local function MCMKGX_fake_script() -- open_close_2.LocalScript 
 local script = Instance.new('LocalScript', open_close_2)

 function do_stuff()
  if script.Parent.Parent.Parent.main.Visible == true then
   script.Parent.Parent.Parent.main.Visible = false
   script.Parent.Text = "Show"
  else
   script.Parent.Parent.Parent.main.Visible = true
   script.Parent.Text = "Hide"
  end
 end
 
 script.Parent.MouseButton1Click:Connect(do_stuff)
 
end
coroutine.wrap(MCMKGX_fake_script)()