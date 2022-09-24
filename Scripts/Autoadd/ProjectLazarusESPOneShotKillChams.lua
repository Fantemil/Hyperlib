--BROUGHT TO YOU BY RSCRIPTS.NET--

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")

hookfunction(gcinfo, function()
return math.random(1500, 2500)
end)

local repo = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()

local protect_gui = syn and syn.protect_gui or function(obj: Instance) end

-- Constants:
local WEAPON_NAMES = { "Weapon1", "Weapon2", "Weapon3" }

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local Map = Workspace:WaitForChild("Map")
local ZombiesFolder = Workspace:WaitForChild("Baddies")
local IgnoreFolder = Workspace:WaitForChild("Ignore")
local InteractFolder = Workspace:WaitForChild("Interact")
local CurrentRound = Workspace:WaitForChild("RoundNum")

local Circle = Drawing.new("Circle")

-- Variables:
local aimTarget = nil
local botTarget = nil

local aimbotting = false

local weaponScript = nil
local inputBeganFunc = nil

local playerVisuals = {}
local zombieVisuals = {}
local crateVisuals = {}

local zombieMovers = {}
local zombieIgnore = {}

-- Functions:
local function isCharacterValid(character: Model)
if character and character:IsA("Model") then
local humanoid = character:FindFirstChildWhichIsA("Humanoid")
if humanoid and humanoid.Health > 0 then
local root = character.PrimaryPart or character:FindFirstChild("HumanoidRootPart")
if root then
return true
end
end
end
return false
end

local function isPositionVisible(position: Vector3)
local raycastParams = RaycastParams.new()

local ignore = { IgnoreFolder, ZombiesFolder }
for i, v in ipairs(Players:GetPlayers()) do
local character = v.Character
if character then
table.insert(ignore, character)
end
end
raycastParams.FilterDescendantsInstances = ignore
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

-- Raycast to the position:
local origin = Camera.CFrame.Position
local direction = (position - origin)
local result = Workspace:Raycast(Camera.CFrame.Position, direction, raycastParams)
return result == nil
end

local function getAimbotTarget(mouse: Vector2)
local target = nil
local distance = math.huge
local visible = false
for i, v in ipairs(ZombiesFolder:GetChildren()) do
if isCharacterValid(v) and not zombieIgnore[v] then
local root = v.HumanoidRootPart
local position = Camera:WorldToViewportPoint(root.Position)
if position.Z > 0 then
position = Vector2.new(position.X, position.Y)
local mouseDistance = (position - mouse).Magnitude
if mouseDistance < Options.Aimbot_FOV.Value then
local magnitude = (root.Position - Camera.CFrame.Position).Magnitude
local canSee = isPositionVisible(root.Position)
if magnitude < distance or (canSee and not visible) then
target = v
distance = magnitude
visible = canSee
end
end
end
end
end
return target
end

local function onMapChild(child: Instance)
if child.Name == "IceBlock" then
local weld: WeldConstraint = child:WaitForChild("WeldConstraint", 5)
if weld and weld.Part1 then
local zombie = weld.Part1.Parent
if isCharacterValid(zombie) then
zombieIgnore[zombie] = true
end
end
end
end

local function onZombieAdded(zombie: Model) -- Fires on Zombie added
if zombieVisuals[zombie] then
return
end
zombieIgnore[zombie] = nil

-- Constants:
local highlight = Instance.new("Highlight")
zombieVisuals[zombie] = highlight

-- Listeners:
local function onDestroy()
highlight:Destroy()
zombieVisuals[zombie] = nil
end

-- Listeners:
zombie.Destroying:Connect(onDestroy)

-- Actions:
highlight.Adornee = zombie
highlight.Enabled = Toggles.Zombie_Chams.Value
highlight.FillColor = Color3.new(0, 1, 0)
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.RobloxLocked = true
protect_gui(highlight)
highlight.Parent = CoreGui
end

local function onInteractAdded(interact: Instance) -- Fires on Interact Item added
if interact.Name ~= "MysteryBox" or crateVisuals[interact] then
return
end

-- Constants:
local highlight = Instance.new("Highlight")
crateVisuals[interact] = highlight

-- Listeners:
local function onDestroy()
highlight:Destroy()
crateVisuals[interact] = nil
end

-- Listeners:
interact.Destroying:Connect(onDestroy)

-- Actions:
highlight.Adornee = interact
highlight.Enabled = Toggles.Zombie_Chams.Value
highlight.FillColor = Color3.new(1, 1, 0)
highlight.FillTransparency = 0.75
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.RobloxLocked = true
protect_gui(highlight)
highlight.Parent = CoreGui
end

local function onPlayerAdded(player: Player) -- Fires on Player joined
-- Constants:
local highlight = Instance.new("Highlight")
playerVisuals[player] = highlight

-- Listeners:
local function onCharacterAdded(character: Model)
highlight.Adornee = character
end

-- Listeners:
player.CharacterAdded:Connect(onCharacterAdded)

-- Actions:
local character = player.Character
if character then
onCharacterAdded(character)
end

highlight.Enabled = Toggles.Player_Chams.Value
highlight.FillColor = Color3.new(0, 0.5, 1)
highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
highlight.RobloxLocked = true
protect_gui(highlight)
highlight.Parent = CoreGui
end

local function onPlayerRemoving(player: Player) -- Fires on Player left
-- Destroys Highlight:
local highlight = playerVisuals[player]
if highlight then
highlight:Destroy()
end

-- Cleanup:
playerVisuals[player] = nil
end

local function onCharacterAdded(character: Model) -- Fires on Character added
weaponScript = character:WaitForChild("WeaponScript")

-- Obtain Locals:
inputBeganFunc = nil
repeat
task.wait(0.1)
for i, v in ipairs(getgc()) do
if type(v) == "function" then
local script = getfenv(v).script
if script and script == weaponScript then
local constants = debug.getconstants(v)
if table.find(constants, Enum.UserInputType.MouseButton1) then
inputBeganFunc = v
break
end
end
end
end
until inputBeganFunc
end

-- Interface:
do
Library:SetWatermark("Linoria Community (OminousVibes)")
Library:Notify("Loading UI...")

local Window = Library:CreateWindow("Project Lazarus")

do -- Gameplay
local Tab = Window:AddTab("Gameplay")

do -- Silent Aim
local Container = Tab:AddLeftTabbox("Silent Aim")

local Aimbot = Container:AddTab("Silent Aim")
Aimbot
:AddToggle("Aimbot", { Text = "Enabled", Default = false })
:AddKeyPicker("Aimbot", { Text = "Silent Aim", Default = "G" })
Aimbot
:AddToggle("Aimbot_Circle", { Text = "Show Circle", Default = false })
:AddColorPicker("Aimbot_Circle", { Title = "Circle Color", Default = Color3.new(1, 1, 1) })

local Advanced = Container:AddTab("Advanced")
Advanced:AddSlider(
"Aimbot_FOV",
{ Text = "Circle Radius", Min = 25, Max = 500, Default = 100, Rounding = 0, Suffix = "px" }
)
Advanced:AddSlider(
"Aimbot_Thicknesss",
{ Text = "Circle Thickness", Min = 0, Max = 10, Default = 1, Rounding = 1, Suffix = "px" }
)
end

do -- Modifications
local Container = Tab:AddRightTabbox("Modifications")

local Guns = Container:AddTab("Guns")
Guns:AddToggle("Gun_Clip", { Text = "Infinite Clip", Default = false })
Guns:AddToggle("Gun_Ammo", { Text = "Infinite Ammo", Default = false })
Guns:AddToggle("Gun_HK", { Text = "One Hit Kill", Default = false })
Guns:AddToggle("Gun_Piercing", { Text = "High Penetration", Default = false })

local Char = Container:AddTab("Character")
Char:AddToggle("Character_Speed", { Text = "Speed Hack", Default = false })

local Zomb = Container:AddTab("Zombies")
Zomb:AddToggle("Zombie_Freeze", { Text = "Freeze Zombies", Default = false })
end

do -- AFK Bot
local Container = Tab:AddRightGroupbox("AFK Bot")
Container:AddToggle("Bot_Enabled", { Text = "Enabled", Default = false })
Container:AddSlider(
"Bot_Radius",
{ Text = "Shoot Distance", Min = 10, Max = 100, Default = 25, Rounding = 0, Suffix = " studs" }
)
end
end

do -- Visuals
local Tab = Window:AddTab("Visuals")

do -- Visuals
local Container = Tab:AddLeftTabbox("Visuals")

local Zombies = Container:AddTab("Humanoids")
Zombies:AddToggle("Player_Chams", { Text = "Players", Default = true })
Zombies:AddToggle("Zombie_Chams", { Text = "Zombies", Default = true })

local Others = Container:AddTab("Others")
Others:AddToggle("Crate_Chams", { Text = "Mystery Box", Default = false })
end

do -- World Render
local Container = Tab:AddRightGroupbox("World Render")
Container:AddLabel("Work in progress")
end
end

do -- Settings
local Tab = Window:AddTab("Settings")

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

ThemeManager:SetFolder("OminousVibes")
SaveManager:SetFolder("OminousVibes/project-lazarus")

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

SaveManager:BuildConfigSection(Tab)
ThemeManager:ApplyToTab(Tab)

local Menu = Tab:AddLeftGroupbox("Menu")
Menu:AddButton("Unload", function()
Library:Unload()
end)
Menu:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "End", NoUI = true, Text = "Menu keybind" })

Menu:AddToggle("Keybinds", { Text = "Show Keybinds Menu", Default = true }):OnChanged(function()
Library.KeybindFrame.Visible = Toggles.Keybinds.Value
end)
Menu:AddToggle("Watermark", { Text = "Show Watermark", Default = true }):OnChanged(function()
Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end

Library:Notify("UI Loaded")
end

-- Listeners:
RunService.RenderStepped:Connect(function(deltaTime)
-- Aimbot:
local mouseLocation = UserInputService:GetMouseLocation()
if Toggles.Aimbot.Value and Options.Aimbot:GetState() then
aimTarget = getAimbotTarget(mouseLocation)
aimbotting = true
else
aimTarget = nil
aimbotting = false
end
if Circle.Visible then
Circle.Position = mouseLocation
end

-- Gun Mods:
local equipped = getrenv()._G.Equipped
if equipped then
if Toggles.Gun_Clip.Value then
equipped.Ammo = equipped.MagSize
end
if Toggles.Gun_Ammo.Value then
equipped.StoredAmmo = equipped.MaxAmmo
end
if Toggles.Gun_HK.Value then
equipped.HeadShot = 100 + (CurrentRound.Value * 50)
equipped.TorsoShot = 100 + (CurrentRound.Value * 50)
equipped.LimbShot = 100 + (CurrentRound.Value * 50)
end
if Toggles.Gun_Piercing.Value then
equipped.BulletPenetration = 250
end
end

-- Character Mods:

-- Zombie Mods:
if Toggles.Zombie_Freeze.Value then
for _, zombie in ipairs(ZombiesFolder:GetChildren()) do
if isCharacterValid(zombie) then
local root = zombie.PrimaryPart
if root then
local distance = (root.Position - Camera.CFrame.Position).Magnitude
if distance < 30 and not zombieMovers[zombie] then
local bodyMover = Instance.new("BodyPosition")
zombieMovers[zombie] = bodyMover
bodyMover.MaxForce = Vector3.one * math.huge
bodyMover.P = 1e4
bodyMover.Position = root.Position + Vector3.new(0, 4, 0)
bodyMover.RobloxLocked = true
bodyMover.Parent = root
local connection
connection = zombie.AncestryChanged:Connect(function()
connection:Disconnect()
bodyMover:Destroy()
zombieMovers[zombie] = nil
end)
end
end
end
end
end
end)
Toggles.Bot_Enabled:OnChanged(function()
if not Toggles.Bot_Enabled.Value then
return
end

-- Variables:
local aiming = false

-- Bot Logic:
while Toggles.Bot_Enabled.Value do
local character = LocalPlayer.Character
if weaponScript and inputBeganFunc then
while Toggles.Bot_Enabled.Value and isCharacterValid(character) do
local target = nil
local distance = Options.Bot_Radius.Value or 25
local zombies = ZombiesFolder:GetChildren()
for i, v in ipairs(zombies) do
if isCharacterValid(v) and not zombieIgnore[v] then
local root: BasePart = v.HumanoidRootPart
if isPositionVisible(root.Position) then
local magnitude = (root.Position - Camera.CFrame.Position).Magnitude
if magnitude < distance then
target = v
distance = magnitude
end
end
end
end
botTarget = target
if target then
Camera.CFrame = Camera.CFrame:Lerp(
CFrame.new(Camera.CFrame.Position, target.HumanoidRootPart.Position),
0.5
)
task.defer(getsenv(weaponScript).AimGun)
aiming = true

local input = {
UserInputType = Enum.UserInputType.MouseButton1,
KeyCode = nil,
UserInputState = Enum.UserInputState.Begin,
}
task.defer(inputBeganFunc, input, false)
task.delay(0.05, function()
input.UserInputState = Enum.UserInputState.End
end)
else
if aiming then
task.defer(getsenv(weaponScript).UnAimGun)
aiming = false
end
task.defer(inputBeganFunc, {
UserInputType = Enum.UserInputType.Keyboard,
KeyCode = Enum.KeyCode.R,
UserInputState = Enum.UserInputState.Begin,
}, false)
end
RunService.RenderStepped:Wait()
end
end
task.wait(0.1)
end
end)

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
ZombiesFolder.ChildAdded:Connect(onZombieAdded)
InteractFolder.ChildAdded:Connect(onInteractAdded)
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
local camera = Workspace.CurrentCamera
if camera then
Camera = camera
end
end)
Workspace.ChildAdded:Connect(function(child)
if child.Name == "Map" then
child.ChildAdded:Connect(onMapChild)
end
end)

do -- UI Listeners
-- Aimbot:
Toggles.Aimbot:OnChanged(function()
Circle.Visible = Toggles.Aimbot.Value and Toggles.Aimbot_Circle.Value
end)
Toggles.Aimbot_Circle:OnChanged(function()
Circle.Visible = Toggles.Aimbot.Value and Toggles.Aimbot_Circle.Value
end)
Options.Aimbot_Circle:OnChanged(function()
Circle.Color = Options.Aimbot_Circle.Value
end)
Options.Aimbot_FOV:OnChanged(function()
Circle.Radius = Options.Aimbot_FOV.Value
end)
Options.Aimbot_Thicknesss:OnChanged(function()
Circle.Thickness = Options.Aimbot_Thicknesss.Value
end)

-- Zombie Mods:
Toggles.Zombie_Freeze:OnChanged(function()
if not Toggles.Zombie_Freeze.Value then
for i, v in pairs(zombieMovers) do
v:Destroy()
end
zombieMovers = {}
end
end)

-- Visual:
Toggles.Player_Chams:OnChanged(function()
for player, highlight in pairs(playerVisuals) do
highlight.Enabled = Toggles.Player_Chams.Value
end
end)
Toggles.Zombie_Chams:OnChanged(function()
for zombie, highlight in pairs(zombieVisuals) do
highlight.Enabled = Toggles.Zombie_Chams.Value
end
end)
Toggles.Crate_Chams:OnChanged(function()
for crate, highlight in pairs(crateVisuals) do
highlight.Enabled = Toggles.Crate_Chams.Value
end
end)
end

-- MetaHooks:
local __index
__index = hookmetamethod(game, "__index", function(self: Instance, index)
if not checkcaller() then
local script = getcallingscript()
if script == weaponScript then
if typeof(self) == "Instance" then
local target = nil
if Toggles.Bot_Enabled.Value then
target = botTarget
elseif aimbotting then
target = aimTarget
end
if target then
if index == "CFrame" then
if self == Camera then
local head = target:FindFirstChild("HeadBox")
if head then
local origin = __index(Camera, "CFrame").Position
return CFrame.new(origin, head.Position)
end
end
if __index(self, "Name") == "AimPart" and self:IsA("BasePart") then
local head = target:FindFirstChild("HeadBox")
if head then
local origin = __index(Camera, "CFrame").Position
return CFrame.new(origin + (head.Position - origin) / 2)
end
end
end
end
end
end
end
return __index(self, index)
end)

-- Actions:
Circle.Transparency = 0.9
Circle.NumSides = 25
Circle.Thickness = Options.Aimbot_Thicknesss.Value
Circle.Color = Options.Aimbot_Circle.Value

for i, v in ipairs(Players:GetPlayers()) do
if v ~= LocalPlayer then
task.defer(onPlayerAdded, v)
end
end
if LocalPlayer.Character then
task.defer(onCharacterAdded, LocalPlayer.Character)
end
for i, v in ipairs(ZombiesFolder:GetChildren()) do
task.defer(onZombieAdded, v)
end
for i, v in ipairs(InteractFolder:GetChildren()) do
task.defer(onInteractAdded, v)
end

return Library:Notify("[Project Lazarus] Loaded!")