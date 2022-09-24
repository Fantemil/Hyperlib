local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title_frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local discord = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local teleports_label = Instance.new("TextLabel")
local line = Instance.new("Frame")
local title_2 = Instance.new("TextLabel")
local teleports_label_2 = Instance.new("TextLabel")
local get_weapons = Instance.new("TextButton")
local Goku = Instance.new("TextButton")
local Deku = Instance.new("TextButton")
local Ichigo = Instance.new("TextButton")
local Sasuke = Instance.new("TextButton")
local Naruto = Instance.new("TextButton")
local Kakashi = Instance.new("TextButton")
local Tanjiro = Instance.new("TextButton")
local Bakugo = Instance.new("TextButton")
local Saitama = Instance.new("TextButton")
local noclip = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local remove_doors = Instance.new("TextButton")
local collect_cash = Instance.new("TextButton")
local get_robux_gears = Instance.new("TextButton")
local get_powerups = Instance.new("TextButton")
local t_to_tele_random = Instance.new("TextButton")
local open_close = Instance.new("Frame")
local open = Instance.new("TextButton")
local close = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
main.BorderColor3 = Color3.fromRGB(28, 33, 26)
main.BorderSizePixel = 4
main.Position = UDim2.new(0.733585656, 0, -0.00154402526, 0)
main.Size = UDim2.new(0, 254, 0, 502)
 
title_frame.Name = "title_frame"
title_frame.Parent = main
title_frame.BackgroundColor3 = Color3.fromRGB(92, 59, 95)
title_frame.BorderColor3 = Color3.fromRGB(39, 34, 42)
title_frame.BorderSizePixel = 4
title_frame.Size = UDim2.new(0, 254, 0, 48)
 
title.Name = "title"
title.Parent = title_frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(0, 254, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Anime tycoon"
title.TextColor3 = Color3.fromRGB(190, 193, 0)
title.TextSize = 40.000
 
discord.Name = "discord"
discord.Parent = main
discord.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
discord.BorderColor3 = Color3.fromRGB(28, 33, 26)
discord.BorderSizePixel = 2
discord.Position = UDim2.new(-0.523622036, 0, 0.925339341, 0)
discord.Size = UDim2.new(0, 127, 0, 33)
discord.Font = Enum.Font.SourceSans
discord.Text = "Discord server: 9tpmepb"
discord.TextColor3 = Color3.fromRGB(251, 255, 0)
discord.TextSize = 14.000
 
ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.515748024, 0, 0.676470578, 0)
ImageLabel.Size = UDim2.new(0, 125, 0, 110)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6565026743"
ImageLabel.ImageTransparency = 0.600
 
teleports_label.Name = "teleports_label"
teleports_label.Parent = main
teleports_label.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
teleports_label.BorderColor3 = Color3.fromRGB(28, 33, 26)
teleports_label.BorderSizePixel = 2
teleports_label.Position = UDim2.new(0, 0, 0.099009268, 0)
teleports_label.Size = UDim2.new(0, 111, 0, 41)
teleports_label.Font = Enum.Font.SourceSans
teleports_label.Text = "Teleports"
teleports_label.TextColor3 = Color3.fromRGB(190, 193, 0)
teleports_label.TextSize = 30.000
 
line.Name = "line"
line.Parent = main
line.BackgroundColor3 = Color3.fromRGB(28, 33, 26)
line.BorderColor3 = Color3.fromRGB(28, 33, 26)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.437007874, 0, 0.113122202, 0)
line.Size = UDim2.new(0, 2, 0, 439)
 
title_2.Name = "title"
title_2.Parent = main
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.Position = UDim2.new(0.476377964, 0, 0.917657852, 0)
title_2.Size = UDim2.new(0, 127, 0, 28)
title_2.Font = Enum.Font.SourceSans
title_2.Text = "JUKjacker"
title_2.TextColor3 = Color3.fromRGB(221, 139, 255)
title_2.TextSize = 30.000
 
teleports_label_2.Name = "teleports_label"
teleports_label_2.Parent = main
teleports_label_2.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
teleports_label_2.BorderColor3 = Color3.fromRGB(28, 33, 26)
teleports_label_2.BorderSizePixel = 2
teleports_label_2.Position = UDim2.new(0.444881886, 0, 0.099009268, 0)
teleports_label_2.Size = UDim2.new(0, 141, 0, 41)
teleports_label_2.Font = Enum.Font.SourceSans
teleports_label_2.Text = "Cheats"
teleports_label_2.TextColor3 = Color3.fromRGB(190, 193, 0)
teleports_label_2.TextSize = 30.000
 
get_weapons.Name = "get_weapons"
get_weapons.Parent = main
get_weapons.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
get_weapons.BorderColor3 = Color3.fromRGB(38, 45, 35)
get_weapons.BorderSizePixel = 2
get_weapons.Position = UDim2.new(0.468503922, 0, 0.193595409, 0)
get_weapons.Size = UDim2.new(0, 129, 0, 30)
get_weapons.Font = Enum.Font.SourceSans
get_weapons.Text = "Get all weapons"
get_weapons.TextColor3 = Color3.fromRGB(190, 193, 0)
get_weapons.TextSize = 20.000
 
Goku.Name = "Goku"
Goku.Parent = main
Goku.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Goku.BorderColor3 = Color3.fromRGB(38, 45, 35)
Goku.BorderSizePixel = 2
Goku.Position = UDim2.new(0.0236220472, 0, 0.195587441, 0)
Goku.Size = UDim2.new(0, 99, 0, 29)
Goku.Font = Enum.Font.SourceSans
Goku.Text = "Goku"
Goku.TextColor3 = Color3.fromRGB(190, 193, 0)
Goku.TextSize = 20.000
 
Deku.Name = "Deku"
Deku.Parent = main
Deku.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Deku.BorderColor3 = Color3.fromRGB(38, 45, 35)
Deku.BorderSizePixel = 2
Deku.Position = UDim2.new(0.0236220472, 0, 0.265308559, 0)
Deku.Size = UDim2.new(0, 99, 0, 29)
Deku.Font = Enum.Font.SourceSans
Deku.Text = "Deku"
Deku.TextColor3 = Color3.fromRGB(190, 193, 0)
Deku.TextSize = 20.000
 
Ichigo.Name = "Ichigo"
Ichigo.Parent = main
Ichigo.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Ichigo.BorderColor3 = Color3.fromRGB(38, 45, 35)
Ichigo.BorderSizePixel = 2
Ichigo.Position = UDim2.new(0.0236220472, 0, 0.335029662, 0)
Ichigo.Size = UDim2.new(0, 99, 0, 29)
Ichigo.Font = Enum.Font.SourceSans
Ichigo.Text = "Ichigo"
Ichigo.TextColor3 = Color3.fromRGB(190, 193, 0)
Ichigo.TextSize = 20.000
 
Sasuke.Name = "Sasuke"
Sasuke.Parent = main
Sasuke.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Sasuke.BorderColor3 = Color3.fromRGB(38, 45, 35)
Sasuke.BorderSizePixel = 2
Sasuke.Position = UDim2.new(0.0236220472, 0, 0.404750764, 0)
Sasuke.Size = UDim2.new(0, 99, 0, 29)
Sasuke.Font = Enum.Font.SourceSans
Sasuke.Text = "Sasuke"
Sasuke.TextColor3 = Color3.fromRGB(190, 193, 0)
Sasuke.TextSize = 20.000
 
Naruto.Name = "Naruto"
Naruto.Parent = main
Naruto.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Naruto.BorderColor3 = Color3.fromRGB(38, 45, 35)
Naruto.BorderSizePixel = 2
Naruto.Position = UDim2.new(0.0236220472, 0, 0.47247988, 0)
Naruto.Size = UDim2.new(0, 99, 0, 29)
Naruto.Font = Enum.Font.SourceSans
Naruto.Text = "Naruto"
Naruto.TextColor3 = Color3.fromRGB(190, 193, 0)
Naruto.TextSize = 20.000
 
Kakashi.Name = "Kakashi"
Kakashi.Parent = main
Kakashi.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Kakashi.BorderColor3 = Color3.fromRGB(38, 45, 35)
Kakashi.BorderSizePixel = 2
Kakashi.Position = UDim2.new(0.0236220472, 0, 0.542200983, 0)
Kakashi.Size = UDim2.new(0, 99, 0, 29)
Kakashi.Font = Enum.Font.SourceSans
Kakashi.Text = "Kakashi"
Kakashi.TextColor3 = Color3.fromRGB(190, 193, 0)
Kakashi.TextSize = 20.000
 
Tanjiro.Name = "Tanjiro"
Tanjiro.Parent = main
Tanjiro.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Tanjiro.BorderColor3 = Color3.fromRGB(38, 45, 35)
Tanjiro.BorderSizePixel = 2
Tanjiro.Position = UDim2.new(0.0236220472, 0, 0.617898226, 0)
Tanjiro.Size = UDim2.new(0, 99, 0, 29)
Tanjiro.Font = Enum.Font.SourceSans
Tanjiro.Text = "Tanjiro"
Tanjiro.TextColor3 = Color3.fromRGB(190, 193, 0)
Tanjiro.TextSize = 20.000
 
Bakugo.Name = "Bakugo"
Bakugo.Parent = main
Bakugo.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Bakugo.BorderColor3 = Color3.fromRGB(38, 45, 35)
Bakugo.BorderSizePixel = 2
Bakugo.Position = UDim2.new(0.0236220472, 0, 0.689611375, 0)
Bakugo.Size = UDim2.new(0, 99, 0, 29)
Bakugo.Font = Enum.Font.SourceSans
Bakugo.Text = "Bakugo"
Bakugo.TextColor3 = Color3.fromRGB(190, 193, 0)
Bakugo.TextSize = 20.000
 
Saitama.Name = "Saitama"
Saitama.Parent = main
Saitama.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
Saitama.BorderColor3 = Color3.fromRGB(38, 45, 35)
Saitama.BorderSizePixel = 2
Saitama.Position = UDim2.new(0.0236220472, 0, 0.769292653, 0)
Saitama.Size = UDim2.new(0, 99, 0, 29)
Saitama.Font = Enum.Font.SourceSans
Saitama.Text = "Saitama"
Saitama.TextColor3 = Color3.fromRGB(190, 193, 0)
Saitama.TextSize = 20.000
 
noclip.Name = "noclip"
noclip.Parent = main
noclip.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
noclip.BorderColor3 = Color3.fromRGB(38, 45, 35)
noclip.BorderSizePixel = 2
noclip.Position = UDim2.new(0.468503922, 0, 0.263316512, 0)
noclip.Size = UDim2.new(0, 129, 0, 30)
noclip.Font = Enum.Font.SourceSans
noclip.Text = "E to noclip"
noclip.TextColor3 = Color3.fromRGB(190, 193, 0)
noclip.TextSize = 20.000
 
btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
btools.BorderColor3 = Color3.fromRGB(38, 45, 35)
btools.BorderSizePixel = 2
btools.Position = UDim2.new(0.468503922, 0, 0.333037615, 0)
btools.Size = UDim2.new(0, 129, 0, 30)
btools.Font = Enum.Font.SourceSans
btools.Text = "Btools"
btools.TextColor3 = Color3.fromRGB(190, 193, 0)
btools.TextSize = 20.000
 
remove_doors.Name = "remove_doors"
remove_doors.Parent = main
remove_doors.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
remove_doors.BorderColor3 = Color3.fromRGB(38, 45, 35)
remove_doors.BorderSizePixel = 2
remove_doors.Position = UDim2.new(0.468503922, 0, 0.404750764, 0)
remove_doors.Size = UDim2.new(0, 129, 0, 30)
remove_doors.Font = Enum.Font.SourceSans
remove_doors.Text = "Remove all doors"
remove_doors.TextColor3 = Color3.fromRGB(190, 193, 0)
remove_doors.TextSize = 20.000
 
collect_cash.Name = "collect_cash"
collect_cash.Parent = main
collect_cash.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
collect_cash.BorderColor3 = Color3.fromRGB(38, 45, 35)
collect_cash.BorderSizePixel = 2
collect_cash.Position = UDim2.new(0.468503922, 0, 0.47247985, 0)
collect_cash.Size = UDim2.new(0, 129, 0, 30)
collect_cash.Font = Enum.Font.SourceSans
collect_cash.Text = "Collect cash"
collect_cash.TextColor3 = Color3.fromRGB(190, 193, 0)
collect_cash.TextSize = 20.000
 
get_robux_gears.Name = "get_robux_gears"
get_robux_gears.Parent = main
get_robux_gears.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
get_robux_gears.BorderColor3 = Color3.fromRGB(38, 45, 35)
get_robux_gears.BorderSizePixel = 2
get_robux_gears.Position = UDim2.new(0.468503922, 0, 0.542200983, 0)
get_robux_gears.Size = UDim2.new(0, 129, 0, 30)
get_robux_gears.Font = Enum.Font.SourceSans
get_robux_gears.Text = "Get robux weapons"
get_robux_gears.TextColor3 = Color3.fromRGB(190, 193, 0)
get_robux_gears.TextSize = 17.000
 
get_powerups.Name = "get_powerups"
get_powerups.Parent = main
get_powerups.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
get_powerups.BorderColor3 = Color3.fromRGB(38, 45, 35)
get_powerups.BorderSizePixel = 2
get_powerups.Position = UDim2.new(0.468503922, 0, 0.617898226, 0)
get_powerups.Size = UDim2.new(0, 129, 0, 30)
get_powerups.Font = Enum.Font.SourceSans
get_powerups.Text = "Get powerups"
get_powerups.TextColor3 = Color3.fromRGB(190, 193, 0)
get_powerups.TextSize = 17.000
 
t_to_tele_random.Name = "t_to_tele_random"
t_to_tele_random.Parent = main
t_to_tele_random.BackgroundColor3 = Color3.fromRGB(57, 66, 50)
t_to_tele_random.BorderColor3 = Color3.fromRGB(38, 45, 35)
t_to_tele_random.BorderSizePixel = 2
t_to_tele_random.Position = UDim2.new(0.468503922, 0, 0.689611375, 0)
t_to_tele_random.Size = UDim2.new(0, 129, 0, 30)
t_to_tele_random.Font = Enum.Font.SourceSans
t_to_tele_random.Text = "T to teleport to person"
t_to_tele_random.TextColor3 = Color3.fromRGB(190, 193, 0)
t_to_tele_random.TextSize = 17.000
 
open_close.Name = "open_close"
open_close.Parent = ScreenGui
open_close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open_close.BackgroundTransparency = 1.000
open_close.Position = UDim2.new(0.231683165, 0, 0, 0)
open_close.Size = UDim2.new(0, 435, 0, 100)
 
open.Name = "open"
open.Parent = open_close
open.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
open.BorderColor3 = Color3.fromRGB(28, 33, 26)
open.BorderSizePixel = 2
open.Position = UDim2.new(0.402298838, 0, -0.219999999, 0)
open.Size = UDim2.new(0, 43, 0, 36)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(190, 193, 0)
open.TextSize = 20.000
 
close.Name = "close"
close.Parent = open_close
close.BackgroundColor3 = Color3.fromRGB(52, 59, 45)
close.BorderColor3 = Color3.fromRGB(28, 33, 26)
close.BorderSizePixel = 2
close.Position = UDim2.new(0.528735638, 0, -0.219999999, 0)
close.Size = UDim2.new(0, 43, 0, 36)
close.Font = Enum.Font.SourceSans
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(190, 193, 0)
close.TextSize = 20.000
 
-- Scripts:
 
local function LIRFYY_fake_script() -- get_weapons.LocalScript 
 local script = Instance.new('LocalScript', get_weapons)
 
 script.Parent.MouseButton1Click:connect(function()
  for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
   if v:IsA("Tool") then
    local x = v:Clone()
    x.Parent = game.Players.LocalPlayer.Backpack
   end    
  end
 end)
end
coroutine.wrap(LIRFYY_fake_script)()
local function XEOAK_fake_script() -- Goku.LocalScript 
 local script = Instance.new('LocalScript', Goku)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Goku.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(XEOAK_fake_script)()
local function NNZBDN_fake_script() -- Deku.LocalScript 
 local script = Instance.new('LocalScript', Deku)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Deku.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(NNZBDN_fake_script)()
local function EZSJY_fake_script() -- Ichigo.LocalScript 
 local script = Instance.new('LocalScript', Ichigo)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Ichigo.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(EZSJY_fake_script)()
local function OOVSMQ_fake_script() -- Sasuke.LocalScript 
 local script = Instance.new('LocalScript', Sasuke)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Sasuke.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(OOVSMQ_fake_script)()
local function GILJOD_fake_script() -- Naruto.LocalScript 
 local script = Instance.new('LocalScript', Naruto)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Naruto.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(GILJOD_fake_script)()
local function SUJHZB_fake_script() -- Kakashi.LocalScript 
 local script = Instance.new('LocalScript', Kakashi)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Kakashi.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(SUJHZB_fake_script)()
local function SGPB_fake_script() -- Tanjiro.LocalScript 
 local script = Instance.new('LocalScript', Tanjiro)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Tanjiro.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(SGPB_fake_script)()
local function RQJRUFB_fake_script() -- Bakugo.LocalScript 
 local script = Instance.new('LocalScript', Bakugo)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Bakugo.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(RQJRUFB_fake_script)()
local function ROZIG_fake_script() -- Saitama.LocalScript 
 local script = Instance.new('LocalScript', Saitama)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character:MoveTo(game.Workspace.Tycoons.Saitama.Essential.SpawnLocation.Position)
 end)
end
coroutine.wrap(ROZIG_fake_script)()
local function MAJAVGZ_fake_script() -- noclip.LocalScript 
 local script = Instance.new('LocalScript', noclip)
 
 script.Parent.MouseButton1Click:connect(function()
  noclip = false
  game:GetService('RunService').Stepped:connect(function()
   if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  plr = game.Players.LocalPlayer
  mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
 
   if key == "e" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   end
  end)
  print('Loaded')
  print('Press "E" to noclip')
 end)
end
coroutine.wrap(MAJAVGZ_fake_script)()
local function YWDCU_fake_script() -- btools.LocalScript 
 local script = Instance.new('LocalScript', btools)
 
 script.Parent.MouseButton1Click:connect(function()
  Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
  Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
  Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
 end)
end
coroutine.wrap(YWDCU_fake_script)()
local function LSOIL_fake_script() -- remove_doors.LocalScript 
 local script = Instance.new('LocalScript', remove_doors)
 
 script.Parent.MouseButton1Click:connect(function()
  local tycoons = workspace.Tycoons:GetChildren()
  for _,v in pairs(tycoons) do
   if v:FindFirstChild("Essential") then
    v:FindFirstChild("Essential"):FindFirstChild("Door"):Remove()
   end
  end
 end)
end
coroutine.wrap(LSOIL_fake_script)()
local function SXPOOF_fake_script() -- collect_cash.LocalScript 
 local script = Instance.new('LocalScript', collect_cash)
 
 script.Parent.MouseButton1Click:connect(function()
  local playertycoon = nil
  for _,v in pairs(workspace.Tycoons:GetChildren()) do
   if v:FindFirstChild("Owner") ~= nil then
    if v:FindFirstChild("Owner").Value == game.Players.LocalPlayer.Character.Name then
     playertycoon = v
    end
   end
  end
 
  playertycoon.Essential.CashCollect.Collect.Position = game.Players.LocalPlayer.Character.Head.Position
 end)
end
coroutine.wrap(SXPOOF_fake_script)()
local function MGKOC_fake_script() -- get_robux_gears.LocalScript 
 local script = Instance.new('LocalScript', get_robux_gears)
 
 script.Parent.MouseButton1Click:connect(function()
  for _,v in pairs(game.ReplicatedStorage.RobuxGears:GetChildren()) do
   if v:IsA("Tool") then
    local x = v:Clone()
    x.Parent = game.Players.LocalPlayer.Backpack
   end    
  end
 end)
end
coroutine.wrap(MGKOC_fake_script)()
local function VJBVUXU_fake_script() -- get_powerups.LocalScript 
 local script = Instance.new('LocalScript', get_powerups)
 
 script.Parent.MouseButton1Click:connect(function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 64
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
 end)
end
coroutine.wrap(VJBVUXU_fake_script)()
local function KLQOS_fake_script() -- t_to_tele_random.LocalScript 
 local script = Instance.new('LocalScript', t_to_tele_random)
 
 script.Parent.MouseButton1Click:connect(function()
  local plr = game.Players.LocalPlayer
  local mouse = plr:GetMouse()
  mouse.KeyDown:connect(function(key)
   if key == "t" then
    local players = game.Players:GetPlayers()
    local player = players[math.random(1, #players)]
    game.Players.LocalPlayer.Character:moveTo(player.Character.Head.Position)
   end
  end)
 end)
end
coroutine.wrap(KLQOS_fake_script)()
local function UYNNZ_fake_script() -- open.LocalScript 
 local script = Instance.new('LocalScript', open)
 
 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.Parent:FindFirstChild("main").Visible = true
 end)
end
coroutine.wrap(UYNNZ_fake_script)()
local function MVTXID_fake_script() -- close.LocalScript 
 local script = Instance.new('LocalScript', close)
 
 script.Parent.MouseButton1Click:connect(function()
  script.Parent.Parent.Parent:FindFirstChild("main").Visible = false
 end)
end
coroutine.wrap(MVTXID_fake_script)()