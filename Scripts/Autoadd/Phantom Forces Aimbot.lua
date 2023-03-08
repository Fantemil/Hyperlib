getgenv().AIMBOT_SETTINGS = {
smoothness = 2,
FOV = 250,
VisibleCheck = true,
}

-- services
local players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- variables
local client = players.LocalPlayer
local shared = getrenv().shared
local camera = workspace.CurrentCamera
local mouseLocation = UserInputService.GetMouseLocation
local WorldToViewportPoint = camera.WorldToViewportPoint

-- modules
local replicationObject = shared.require("ReplicationObject")
local replicationInterface = shared.require("ReplicationInterface")

-- functions
local function isAlive(entry)
return replicationObject.isAlive(entry)
end

local function isVisible(p, ...)
if not getgenv().AIMBOT_SETTINGS.VisibleCheck then
return true
end

return #camera:GetPartsObscuringTarget({ p }, { camera, client.Character, workspace.Ignore, ... }) == 0
end

local function get_closest(fov: number)
local targetPos: Vector3 = nil
local magnitude: number = fov or math.huge
for _, player in pairs(players:GetPlayers()) do
if player == client or player.Team == client.Team then
continue
end

local entry = replicationInterface.getEntry(player)
local character = entry and replicationObject.getThirdPersonObject(entry)

if character and isAlive(entry) then
local body_parts = character:getCharacterHash()

local screen_pos, on_screen = WorldToViewportPoint(camera, body_parts.head.Position)
local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
local new_magnitude = (screen_pos_2D - mouseLocation(UserInputService)).Magnitude
if
on_screen
and new_magnitude < magnitude
and isVisible(body_parts.head.Position, body_parts.torso.Parent)
then
magnitude = new_magnitude
targetPos = body_parts.head.Position
end
end
end
return targetPos
end
local mouse = client:GetMouse()
local function aimAt(pos, smooth)
local targetPos = camera:WorldToScreenPoint(pos)
local mousePos = camera:WorldToScreenPoint(mouse.Hit.p)
mousemoverel((targetPos.X - mousePos.X) / smooth, (targetPos.Y - mousePos.Y) / smooth)
end
local circle = Drawing.new("Circle")
circle.Thickness = 2
circle.NumSides = 12
circle.Radius = 350
circle.Filled = false
circle.Transparency = 1
circle.Color = Color3.new(1, 0.5, 0)
circle.Visible = true

RunService.RenderStepped:Connect(function()
if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
local _pos = get_closest(getgenv().AIMBOT_SETTINGS.FOV)
if _pos then
aimAt(_pos, getgenv().AIMBOT_SETTINGS.smoothness)
end
end
if circle.__OBJECT_EXISTS then
circle.Position = mouseLocation(UserInputService)
circle.Radius = getgenv().AIMBOT_SETTINGS.FOV
end
end)