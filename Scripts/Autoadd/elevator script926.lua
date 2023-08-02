local h4x_thing = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local robux_shop_teleport = Instance.new("TextButton")
local points_shop_teleport = Instance.new("TextButton")
local VIP_shop_teleport = Instance.new("TextButton")
local elevator_teleport = Instance.new("TextButton")
local secret_teleport = Instance.new("TextButton")
local remove_fog = Instance.new("TextButton")
local remove_lighting_stuff = Instance.new("TextButton")
local unlock_zoom = Instance.new("TextButton")
local night_vision = Instance.new("TextButton")
local bypassed_fly = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local unlock_ws = Instance.new("TextButton")
local r_to_noclip = Instance.new("TextButton")
local set_speed_button = Instance.new("TextButton")
local set_speed_textbox = Instance.new("TextBox")
local teleport_to_player = Instance.new("TextButton")
local teleport_to_player_textbox = Instance.new("TextBox")
local remove_lobby_enemies = Instance.new("TextButton")
local remove_enemies = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local discord = Instance.new("TextLabel")
--Properties:
h4x_thing.Name = "h4x_thing"
h4x_thing.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
h4x_thing.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.Name = "main"
main.Parent = h4x_thing
main.BackgroundColor3 = Color3.fromRGB(41, 18, 40)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.705716968, 0, 0.0278330017, 0)
main.Size = UDim2.new(0, 283, 0, 474)
title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(209, 61, 56)
title.BorderColor3 = Color3.fromRGB(71, 9, 44)
title.BorderSizePixel = 3
title.Size = UDim2.new(0, 283, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Insane elevator GUI"
title.TextColor3 = Color3.fromRGB(254, 254, 0)
title.TextScaled = true
title.TextSize = 60.000
title.TextWrapped = true
robux_shop_teleport.Name = "robux_shop_teleport"
robux_shop_teleport.Parent = main
robux_shop_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
robux_shop_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
robux_shop_teleport.BorderSizePixel = 2
robux_shop_teleport.Position = UDim2.new(0.0212014131, 0, 0.124472558, 0)
robux_shop_teleport.Size = UDim2.new(0, 88, 0, 31)
robux_shop_teleport.Font = Enum.Font.SourceSans
robux_shop_teleport.Text = "Robux shop"
robux_shop_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
robux_shop_teleport.TextScaled = true
robux_shop_teleport.TextSize = 14.000
robux_shop_teleport.TextWrapped = true
points_shop_teleport.Name = "points_shop_teleport"
points_shop_teleport.Parent = main
points_shop_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
points_shop_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
points_shop_teleport.BorderSizePixel = 2
points_shop_teleport.Position = UDim2.new(0.367491156, 0, 0.124472558, 0)
points_shop_teleport.Size = UDim2.new(0, 88, 0, 31)
points_shop_teleport.Font = Enum.Font.SourceSans
points_shop_teleport.Text = "Points shop"
points_shop_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
points_shop_teleport.TextScaled = true
points_shop_teleport.TextSize = 14.000
points_shop_teleport.TextWrapped = true
VIP_shop_teleport.Name = "VIP_shop_teleport"
VIP_shop_teleport.Parent = main
VIP_shop_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
VIP_shop_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
VIP_shop_teleport.BorderSizePixel = 2
VIP_shop_teleport.Position = UDim2.new(0.703180194, 0, 0.124472558, 0)
VIP_shop_teleport.Size = UDim2.new(0, 78, 0, 31)
VIP_shop_teleport.Font = Enum.Font.SourceSans
VIP_shop_teleport.Text = "VIP shop"
VIP_shop_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
VIP_shop_teleport.TextScaled = true
VIP_shop_teleport.TextSize = 14.000
VIP_shop_teleport.TextWrapped = true
elevator_teleport.Name = "elevator_teleport"
elevator_teleport.Parent = main
elevator_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
elevator_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
elevator_teleport.BorderSizePixel = 2
elevator_teleport.Position = UDim2.new(0.0212014131, 0, 0.208860755, 0)
elevator_teleport.Size = UDim2.new(0, 88, 0, 31)
elevator_teleport.Font = Enum.Font.SourceSans
elevator_teleport.Text = "Elevator"
elevator_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
elevator_teleport.TextScaled = true
elevator_teleport.TextSize = 14.000
elevator_teleport.TextWrapped = true
secret_teleport.Name = "secret_teleport"
secret_teleport.Parent = main
secret_teleport.BackgroundColor3 = Color3.fromRGB(168, 35, 55)
secret_teleport.BorderColor3 = Color3.fromRGB(107, 16, 45)
secret_teleport.BorderSizePixel = 2
secret_teleport.Position = UDim2.new(0.367491156, 0, 0.208860755, 0)
secret_teleport.Size = UDim2.new(0, 88, 0, 31)
secret_teleport.Font = Enum.Font.SourceSans
secret_teleport.Text = "Secret location"
secret_teleport.TextColor3 = Color3.fromRGB(228, 255, 52)
secret_teleport.TextScaled = true
secret_teleport.TextSize = 14.000
secret_teleport.TextWrapped = true
remove_fog.Name = "remove_fog"
remove_fog.Parent = main
remove_fog.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_fog.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_fog.BorderSizePixel = 2
remove_fog.Position = UDim2.new(0.703180194, 0, 0.208860755, 0)
remove_fog.Size = UDim2.new(0, 78, 0, 31)
remove_fog.Font = Enum.Font.SourceSans
remove_fog.Text = "Remove fog"
remove_fog.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_fog.TextScaled = true
remove_fog.TextSize = 14.000
remove_fog.TextWrapped = true
remove_lighting_stuff.Name = "remove_lighting_stuff"
remove_lighting_stuff.Parent = main
remove_lighting_stuff.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_lighting_stuff.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_lighting_stuff.BorderSizePixel = 2
remove_lighting_stuff.Position = UDim2.new(0.0212014131, 0, 0.289029539, 0)
remove_lighting_stuff.Size = UDim2.new(0, 88, 0, 31)
remove_lighting_stuff.Font = Enum.Font.SourceSans
remove_lighting_stuff.Text = "Remove effects"
remove_lighting_stuff.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_lighting_stuff.TextScaled = true
remove_lighting_stuff.TextSize = 14.000
remove_lighting_stuff.TextWrapped = true
unlock_zoom.Name = "unlock_zoom"
unlock_zoom.Parent = main
unlock_zoom.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
unlock_zoom.BorderColor3 = Color3.fromRGB(107, 16, 45)
unlock_zoom.BorderSizePixel = 2
unlock_zoom.Position = UDim2.new(0.367491156, 0, 0.289029539, 0)
unlock_zoom.Size = UDim2.new(0, 88, 0, 31)
unlock_zoom.Font = Enum.Font.SourceSans
unlock_zoom.Text = "Unlock zoom out"
unlock_zoom.TextColor3 = Color3.fromRGB(243, 255, 0)
unlock_zoom.TextScaled = true
unlock_zoom.TextSize = 14.000
unlock_zoom.TextWrapped = true
night_vision.Name = "night_vision"
night_vision.Parent = main
night_vision.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
night_vision.BorderColor3 = Color3.fromRGB(107, 16, 45)
night_vision.BorderSizePixel = 2
night_vision.Position = UDim2.new(0.703180194, 0, 0.289029539, 0)
night_vision.Size = UDim2.new(0, 78, 0, 31)
night_vision.Font = Enum.Font.SourceSans
night_vision.Text = "Night vision"
night_vision.TextColor3 = Color3.fromRGB(243, 255, 0)
night_vision.TextScaled = true
night_vision.TextSize = 14.000
night_vision.TextWrapped = true
bypassed_fly.Name = "bypassed_fly"
bypassed_fly.Parent = main
bypassed_fly.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
bypassed_fly.BorderColor3 = Color3.fromRGB(107, 16, 45)
bypassed_fly.BorderSizePixel = 2
bypassed_fly.Position = UDim2.new(0.0212014131, 0, 0.367088616, 0)
bypassed_fly.Size = UDim2.new(0, 88, 0, 31)
bypassed_fly.Font = Enum.Font.SourceSans
bypassed_fly.Text = "Bypassed fly"
bypassed_fly.TextColor3 = Color3.fromRGB(243, 255, 0)
bypassed_fly.TextScaled = true
bypassed_fly.TextSize = 14.000
bypassed_fly.TextWrapped = true
btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
btools.BorderColor3 = Color3.fromRGB(107, 16, 45)
btools.BorderSizePixel = 2
btools.Position = UDim2.new(0.367491156, 0, 0.367088616, 0)
btools.Size = UDim2.new(0, 88, 0, 31)
btools.Font = Enum.Font.SourceSans
btools.Text = "Btools"
btools.TextColor3 = Color3.fromRGB(243, 255, 0)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true
unlock_ws.Name = "unlock_ws"
unlock_ws.Parent = main
unlock_ws.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
unlock_ws.BorderColor3 = Color3.fromRGB(107, 16, 45)
unlock_ws.BorderSizePixel = 2
unlock_ws.Position = UDim2.new(0.703180194, 0, 0.367088616, 0)
unlock_ws.Size = UDim2.new(0, 78, 0, 31)
unlock_ws.Font = Enum.Font.SourceSans
unlock_ws.Text = "Unlock workspace"
unlock_ws.TextColor3 = Color3.fromRGB(243, 255, 0)
unlock_ws.TextScaled = true
unlock_ws.TextSize = 14.000
unlock_ws.TextWrapped = true
r_to_noclip.Name = "r_to_noclip"
r_to_noclip.Parent = main
r_to_noclip.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
r_to_noclip.BorderColor3 = Color3.fromRGB(107, 16, 45)
r_to_noclip.BorderSizePixel = 2
r_to_noclip.Position = UDim2.new(0.0212014131, 0, 0.445147693, 0)
r_to_noclip.Size = UDim2.new(0, 88, 0, 31)
r_to_noclip.Font = Enum.Font.SourceSans
r_to_noclip.Text = "R to noclip"
r_to_noclip.TextColor3 = Color3.fromRGB(243, 255, 0)
r_to_noclip.TextScaled = true
r_to_noclip.TextSize = 14.000
r_to_noclip.TextWrapped = true
set_speed_button.Name = "set_speed_button"
set_speed_button.Parent = main
set_speed_button.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
set_speed_button.BorderColor3 = Color3.fromRGB(107, 16, 45)
set_speed_button.BorderSizePixel = 2
set_speed_button.Position = UDim2.new(0.367491156, 0, 0.445147693, 0)
set_speed_button.Size = UDim2.new(0, 88, 0, 31)
set_speed_button.Font = Enum.Font.SourceSans
set_speed_button.Text = "Set speed:"
set_speed_button.TextColor3 = Color3.fromRGB(243, 255, 0)
set_speed_button.TextScaled = true
set_speed_button.TextSize = 14.000
set_speed_button.TextWrapped = true
set_speed_textbox.Name = "set_speed_textbox"
set_speed_textbox.Parent = main
set_speed_textbox.BackgroundColor3 = Color3.fromRGB(168, 76, 105)
set_speed_textbox.BorderSizePixel = 0
set_speed_textbox.Position = UDim2.new(0.703180194, 0, 0.445147693, 0)
set_speed_textbox.Size = UDim2.new(0, 78, 0, 31)
set_speed_textbox.ClearTextOnFocus = false
set_speed_textbox.Font = Enum.Font.SourceSans
set_speed_textbox.Text = "100"
set_speed_textbox.TextColor3 = Color3.fromRGB(234, 255, 0)
set_speed_textbox.TextScaled = true
set_speed_textbox.TextSize = 30.000
set_speed_textbox.TextWrapped = true
teleport_to_player.Name = "teleport_to_player"
teleport_to_player.Parent = main
teleport_to_player.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
teleport_to_player.BorderColor3 = Color3.fromRGB(107, 16, 45)
teleport_to_player.BorderSizePixel = 2
teleport_to_player.Position = UDim2.new(0.0212014019, 0, 0.52320677, 0)
teleport_to_player.Size = UDim2.new(0, 88, 0, 31)
teleport_to_player.Font = Enum.Font.SourceSans
teleport_to_player.Text = "Teleport to player"
teleport_to_player.TextColor3 = Color3.fromRGB(243, 255, 0)
teleport_to_player.TextScaled = true
teleport_to_player.TextSize = 14.000
teleport_to_player.TextWrapped = true
teleport_to_player_textbox.Name = "teleport_to_player_textbox"
teleport_to_player_textbox.Parent = main
teleport_to_player_textbox.BackgroundColor3 = Color3.fromRGB(168, 76, 105)
teleport_to_player_textbox.BorderSizePixel = 0
teleport_to_player_textbox.Position = UDim2.new(0.367491156, 0, 0.52320677, 0)
teleport_to_player_textbox.Size = UDim2.new(0, 88, 0, 31)
teleport_to_player_textbox.ClearTextOnFocus = false
teleport_to_player_textbox.Font = Enum.Font.SourceSans
teleport_to_player_textbox.Text = "noob"
teleport_to_player_textbox.TextColor3 = Color3.fromRGB(234, 255, 0)
teleport_to_player_textbox.TextScaled = true
teleport_to_player_textbox.TextSize = 30.000
teleport_to_player_textbox.TextWrapped = true
remove_lobby_enemies.Name = "remove_lobby_enemies"
remove_lobby_enemies.Parent = main
remove_lobby_enemies.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_lobby_enemies.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_lobby_enemies.BorderSizePixel = 2
remove_lobby_enemies.Position = UDim2.new(0.703180194, 0, 0.52320677, 0)
remove_lobby_enemies.Size = UDim2.new(0, 78, 0, 31)
remove_lobby_enemies.Font = Enum.Font.SourceSans
remove_lobby_enemies.Text = "Remove lobby enemies"
remove_lobby_enemies.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_lobby_enemies.TextScaled = true
remove_lobby_enemies.TextSize = 14.000
remove_lobby_enemies.TextWrapped = true
remove_enemies.Name = "remove_enemies"
remove_enemies.Parent = main
remove_enemies.BackgroundColor3 = Color3.fromRGB(255, 53, 87)
remove_enemies.BorderColor3 = Color3.fromRGB(107, 16, 45)
remove_enemies.BorderSizePixel = 2
remove_enemies.Position = UDim2.new(0.0212014131, 0, 0.603375554, 0)
remove_enemies.Size = UDim2.new(0, 271, 0, 31)
remove_enemies.Font = Enum.Font.SourceSans
remove_enemies.Text = "Remove enemies"
remove_enemies.TextColor3 = Color3.fromRGB(243, 255, 0)
remove_enemies.TextScaled = true
remove_enemies.TextSize = 14.000
remove_enemies.TextWrapped = true
credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.519434631, 0, 0.926160336, 0)
credits.Size = UDim2.new(0, 136, 0, 35)
credits.Font = Enum.Font.SourceSans
credits.Text = "JUKjacker"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextScaled = true
credits.TextSize = 50.000
credits.TextWrapped = true
ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.533568919, 0, 0.635021091, 0)
ImageLabel.Size = UDim2.new(0, 151, 0, 173)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7197261343"
ImageLabel.ImageTransparency = 0.500
discord.Name = "discord"
discord.Parent = main
discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
discord.BackgroundTransparency = 1.000
discord.Position = UDim2.new(0, 0, 0.691983163, 0)
discord.Size = UDim2.new(0, 283, 0, 24)
discord.Font = Enum.Font.SourceSans
discord.Text = "https://discord.gg/4jFcGAaq2T"
discord.TextColor3 = Color3.fromRGB(255, 255, 255)
discord.TextScaled = true
discord.TextSize = 50.000
discord.TextWrapped = true
-- Scripts:
local function AHBRXQ_fake_script() -- robux_shop_teleport.LocalScript
local script = Instance.new('LocalScript', robux_shop_teleport)
function teleport()
game.Players.LocalPlayer.Character:moveTo(Vector3.new(-1997.6684570313, -409.20330810547, 911.39624023438))
end
script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(AHBRXQ_fake_script)()
local function QHFXC_fake_script() -- points_shop_teleport.LocalScript
local script = Instance.new('LocalScript', points_shop_teleport)
function teleport()
game.Players.LocalPlayer.Character:moveTo(Vector3.new(-1984.5408935547, -395.32086181641, 912.65405273438))
end
script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(QHFXC_fake_script)()
local function KBSVX_fake_script() -- VIP_shop_teleport.LocalScript
local script = Instance.new('LocalScript', VIP_shop_teleport)
function teleport()
game.Players.LocalPlayer.Character:moveTo(Vector3.new(-1868.0435791016, -395.34997558594, 910.12969970703))
end
script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(KBSVX_fake_script)()
local function HRZCN_fake_script() -- elevator_teleport.LocalScript
local script = Instance.new('LocalScript', elevator_teleport)
function teleport()
game.Players.LocalPlayer.Character:moveTo(Vector3.new(1.6829100847244, 5.4634070396423, -8.3735904693604))
end
script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(HRZCN_fake_script)()
local function UOCZDI_fake_script() -- secret_teleport.LocalScript
local script = Instance.new('LocalScript', secret_teleport)
function teleport()
game.Players.LocalPlayer.Character:moveTo(Vector3.new(-1860.6604003906, -373.4931640625, 925.72955322266))
end
script.Parent.MouseButton1Click:Connect(teleport)
end
coroutine.wrap(UOCZDI_fake_script)()
local function HUNO_fake_script() -- remove_fog.LocalScript
local script = Instance.new('LocalScript', remove_fog)
function remove_fog()
game.Lighting.FogEnd = math.huge
game.Lighting.FogStart = 0
end
script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(HUNO_fake_script)()
local function OQVVN_fake_script() -- remove_lighting_stuff.LocalScript
local script = Instance.new('LocalScript', remove_lighting_stuff)
function remove_fog()
for i,v in pairs(game.Lighting:GetChildren()) do
if v:IsA("Script") == false and v:IsA("LocalScript") == false then
v:Remove()
end
end
end
script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(OQVVN_fake_script)()
local function CYEXVHO_fake_script() -- unlock_zoom.LocalScript
local script = Instance.new('LocalScript', unlock_zoom)
function remove_fog()
game.StarterPlayer.CameraMaxZoomDistance = math.huge
game.StarterPlayer.CameraMinZoomDistance = 0
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(CYEXVHO_fake_script)()
local function GDSLWB_fake_script() -- night_vision.LocalScript
local script = Instance.new('LocalScript', night_vision)
function remove_fog()
game.Lighting.Brightness = 2
game.Lighting.Ambient = Color3.fromRGB(167, 167, 167)
game.Lighting.OutdoorAmbient = Color3.fromRGB(167, 167, 167)
end
script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(GDSLWB_fake_script)()
local function YAYN_fake_script() -- bypassed_fly.LocalScript
local script = Instance.new('LocalScript', bypassed_fly)
function remove_fog()
local LocalPlayer = game.Players.LocalPlayer
local torso = LocalPlayer.Character:FindFirstChild("Torso")
if torso == nil then
torso = LocalPlayer.Character:FindFirstChild("LowerTorso")
end
local emitter = Instance.new("ParticleEmitter")
emitter.Transparency = NumberSequence.new(0.5)
emitter.Rate = 20
emitter.Speed = NumberRange.new(3)
emitter.Lifetime = NumberRange.new(1)
emitter.SpreadAngle = Vector2.new(360, 360)
emitter.Parent = torso
emitter.Texture = "rbxassetid://6882037552"
emitter.Size = NumberSequence.new(1.5)
emitter.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
-- nagatoro music
if workspace:FindFirstChild("nagatoro is epic") == nil then
local sound = Instance.new("Sound")
sound.Name = "nagatoro is epic"
sound.SoundId = "rbxassetid://5998819632"
sound.Playing = true
sound.Looped = true
sound.Volume = 5
sound.Parent = workspace
end
-- platform under you so you fly
while(true) do
local leg = LocalPlayer.Character:FindFirstChild("Right Leg")
if leg == nil then
leg = LocalPlayer.Character:FindFirstChild("RightLowerLeg")
end
local position = Vector3.new(leg.Position.X, leg.Position.Y-2, leg.Position.Z)
local part = Instance.new("Part")
part.Color = Color3.fromRGB(170, 0, 170)
part.Material = Enum.Material.Plastic
part.Transparency = 0.5
part.Position = position
part.Size = Vector3.new(6, 0.25, 6)
part.Anchored = true
part.Parent = workspace
local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://3437901383"
decal.Face = "Top"
decal.Transparency = 0.5
decal.Parent = part
wait(0)
part:Destroy()
end
end
script.Parent.MouseButton1Click:Connect(remove_fog)
end
coroutine.wrap(YAYN_fake_script)()
local function CGDHZXR_fake_script() -- btools.LocalScript
local script = Instance.new('LocalScript', btools)
function btools()
local tool1 = Instance.new("HopperBin")
local tool2 = Instance.new("HopperBin")
local tool3 = Instance.new("HopperBin")
tool1.BinType = 1
tool2.BinType = 3
tool3.BinType = 4
tool1.Parent = game.Players.LocalPlayer.Backpack
tool2.Parent = game.Players.LocalPlayer.Backpack
tool3.Parent = game.Players.LocalPlayer.Backpack
end
script.Parent.MouseButton1Click:Connect(btools)
end
coroutine.wrap(CGDHZXR_fake_script)()
local function JRNIYI_fake_script() -- unlock_ws.LocalScript
local script = Instance.new('LocalScript', unlock_ws)
function unlock_ws()
local function iterate_in(object)
for i,v in pairs(object:GetChildren()) do
if v:IsA("Model") or v:IsA("Folder") then
iterate_in(v)
end
if v:IsA("Part") then
v.Locked = false
end
end
end
iterate_in(workspace)
end
script.Parent.MouseButton1Click:Connect(unlock_ws)
end
coroutine.wrap(JRNIYI_fake_script)()
local function HYSFDU_fake_script() -- r_to_noclip.LocalScript
local script = Instance.new('LocalScript', r_to_noclip)
function e_to_noclip()
local noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "r" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end
script.Parent.MouseButton1Click:Connect(e_to_noclip)
end
coroutine.wrap(HYSFDU_fake_script)()
local function WNKKD_fake_script() -- set_speed_button.LocalScript
local script = Instance.new('LocalScript', set_speed_button)
function set_speed()
local new_speed = tonumber(script.Parent.Parent.set_speed_textbox.Text)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = new_speed
end
script.Parent.MouseButton1Click:Connect(set_speed)
end
coroutine.wrap(WNKKD_fake_script)()
local function TXTHJA_fake_script() -- teleport_to_player.LocalScript
local script = Instance.new('LocalScript', teleport_to_player)
function teleport_to_player()
local localplayer = game.Players.LocalPlayer.Character
local player_name = script.Parent.Parent.teleport_to_player_textbox.Text:lower()
local player = nil
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():match(player_name) then
player = v
end
end
if player ~= nil then
localplayer:moveTo(player.Character.Head.Position)
end
end
script.Parent.MouseButton1Click:Connect(teleport_to_player)
end
coroutine.wrap(TXTHJA_fake_script)()
local function GSVPY_fake_script() -- remove_lobby_enemies.LocalScript
local script = Instance.new('LocalScript', remove_lobby_enemies)
function remove_lobby_enemies()
if workspace:FindFirstChild("LobbyLOL") then
if workspace.LobbyLOL:FindFirstChild("A") then
workspace.LobbyLOL.A:Remove()
end
end
end
script.Parent.MouseButton1Click:Connect(remove_lobby_enemies)
end
coroutine.wrap(GSVPY_fake_script)()
local function LTUYX_fake_script() -- remove_enemies.LocalScript
local script = Instance.new('LocalScript', remove_enemies)
function remove_lobby_enemies()
local enemy_list = {"workspace.Piggy1", "Workspace.Slender.Slenderman", "workspace.GrannyMap.Granny", "workspace.School.Baldi", "Workspace.SadMap.SadFace", "Workspace.ScaryFace", "Workspace.Imposter", "Workspace.BenMap.Ben",  "Workspace.SCPMap.SCPx173.SCP-173", "Workspace.ClownMap.Pennywise", "Workspace.Jeff.Jeff1.Jeff The Killer", "Workspace.JeffMap.Jeff2.Jeff The Killer", "Workspace.CartoonCatMap.Cat", "Workspace.Maze.ScareFace2", "Workspace.Robot", "Workspace.Sadmap2.Sadface2", "Workspace.Rake"}
for i,enemy_full_name in pairs(enemy_list) do
local split_name = enemy_full_name:split(".")
local current = game
for j,child in pairs(split_name) do
if current:FindFirstChild(child) ~= nil then
current = current[child]
if j == #split_name then
current:Remove()
end
end
end
end
end
script.Parent.MouseButton1Click:Connect(remove_lobby_enemies)
end
coroutine.wrap(LTUYX_fake_script)()