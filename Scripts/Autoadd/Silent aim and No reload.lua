local library = loadstring(game:HttpGet('https://pastebin.com/raw/edJT9EGX', true))()
 
local plrs = game:service('Players')
local local_plr = plrs.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = local_plr:GetMouse()
local WorldToViewportPoint = camera.WorldToViewportPoint
 
fov = {}
 
local main_window = library:CreateWindow('Main')
main_window:AddToggle({text = 'Silent Aim', flag = 'silent_aim'})
main_window:AddToggle({text = 'No Reload', flag = 'no_reload'})
 
function is_valid_plr(plr)
return plr.ClassName == 'Player' and plr.Character and plr.Character:FindFirstChild('Humanoid') and plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character.Humanoid.Health > 0 and plr.Name ~= local_plr.Name and local_plr.Character:FindFirstChild('TEAM') and plr.Character:FindFirstChild('TEAM') and plr.Character.TEAM.Value ~= local_plr.Character.TEAM.Value and true or false
end
 
function get_target_plr()
local max_distance = math.huge
for i,v in next, plrs:GetPlayers() do
if local_plr.Character and is_valid_plr(v) then
local position, onscreen = WorldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
local magnitude = (Vector2.new(position.X, position.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
if magnitude < max_distance then
target = v
max_distance = magnitude
end
end
end
return target
end
 
local v2 = require(game.ReplicatedStorage.Functions.GunRayCastModule)
 
function ray_cast(p1, p2, p3, p4)
local v43, v44, v45 = v2.CastRay(local_plr, p1, p2, p3, p4, false);
return v43, v44, v45
end
 
function do_silent_aim(char)
char.ChildAdded:connect(function(weapon)
if weapon:FindFirstChild('LocalGunHeld') then
local handlepart = weapon.HandlePart
local x = getsenv(weapon.LocalGunHeld)
 
local old_fire = x.Fire
local old_reload = x.Reload
 
x.Fire = newcclosure(function()
local target = get_target_plr()
 
if library.flags['silent_aim'] and target and in_fov(target) then
local plr_dir = CFrame.lookAt(camera.CFrame.p, target.Character.Head.CFrame.p)
 
local v46 = plr_dir * CFrame.Angles(0, 0, 0)
local v48, v49, v50 = ray_cast(v46.Position, v46.lookVector, 5000, weapon)
v48 = target.Character.Head
game:service('ReplicatedStorage').ShootEvent:FireServer(v46, v46.lookVector, weapon, weapon.Variables, v48, v49)
 
local_plr.PlayerScripts.BulletVisualizerScript.Visualize:Fire(nil, handlepart, v49, 'Bullet', 'None', v48, nil, v46.lookVector, v50, 10)
return
else
return old_fire()
end
end)
 
x.Reload = newcclosure(function()
if library.flags['no_reload'] then
weapon.Variables.Reloading.Value = true
x.UpdateGUI()
game:service('ReplicatedStorage').ReloadEvent:FireServer(weapon)
weapon.Variables.CurrentMag.Value = weapon.Variables.AmmoPerMag.Value
weapon.Variables.Reloading.Value = false
x.UpdateGUI()
return
end
 
return old_reload()
end)
 
x.ShakeCamera = function() return end
end
end)
end
 
local_plr.CharacterAdded:connect(function(char) do_silent_aim(char) end)
 
local settings = library:CreateWindow('Settings')
 
settings:AddSlider({text = 'FOV', flag = 'fov_size', min = 1, max = 1000})
settings:AddBind({text = 'Toggle UI', key = 'RightShift', callback = function() library:Close() end})
 
function update_fov()
if not fov.fov then
fov.fov = Drawing.new('Circle')
fov.fov.Visible = false
fov.fov.Thickness = 1
fov.fov.NumSides = 360
fov.fov.Filled = false
end
 
if not fov.target then
fov.target = Drawing.new('Text')
fov.target.Visible = false
fov.target.Text = ''
fov.target.Size = 16
fov.target.Center = false
fov.target.Outline = true
fov.target.Font = 0
fov.target.Color = Color3.new(1, 1, 1)
end
 
fov.fov.Visible = true
fov.fov.Radius = library.flags['fov_size']
fov.fov.Color = Color3.new(1, 1, 1)
fov.fov.Transparency = 1
fov.fov.Position = Vector2.new(mouse.X, mouse.Y + game:GetService('GuiService'):GetGuiInset().Y)
end
 
function in_fov(target)
local min = math.huge
local fov_dist = math.huge
 
local is_in_fov = false
 
if is_valid_plr(target) then
local screenpoint, visible = WorldToViewportPoint(camera, target.Character.HumanoidRootPart.Position)
fov_dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(screenpoint.X, screenpoint.Y)).magnitude
fov_dist = (fov_dist <= library.flags['fov_size']) and fov_dist or math.huge
 
if fov_dist < min then
min = fov_dist
is_in_fov = true
end
end
 
return is_in_fov
end
 
game:service('RunService').RenderStepped:connect(function()
update_fov()
end)
library:Init()