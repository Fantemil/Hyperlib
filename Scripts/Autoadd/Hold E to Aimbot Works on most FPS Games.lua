local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local CurrentCamera = game.Workspace.CurrentCamera
local Trigger = 101
local Enabled = false
local EspBoxes = {}

function GetNearestPlayerToMouse()
local players = {}
local plrhld = {}
local dists = {}
for i, v in pairs(game.Players:GetPlayers()) do
if v~=Player then
table.insert(players,v)
end
end
for i, v in pairs(players) do
if v and (v.Character)~=nil then
local head = v.Character:FindFirstChild("Head")
if head~=nil then
local dist = (head.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
plrhld[v.Name..i]={}
plrhld[v.Name..i].dist=dist
plrhld[v.Name..i].plr=v
local ray = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(Mouse.Hit.p-game.Workspace.CurrentCamera.CoordinateFrame.p).unit*dist)
local hit,pos = game.Workspace:FindPartOnRay(ray,game.Workspace)
local diff = math.floor((pos-head.Position).magnitude)
plrhld[v.Name..i].diff=diff
table.insert(dists,diff)
end
end
end
if unpack(dists) == nil then
return false
end
local ldist = math.floor(math.min(unpack(dists)))
if ldist > 20 then
return false
end
for i, v in pairs(plrhld) do
if v.diff==ldist then
return v.plr
end
end
return false
end

Mouse.KeyDown:connect(
function(key)
key = key:lower():byte()
if key == Trigger then
Enabled = true
end
end
)

Mouse.KeyUp:connect(
function(key)
key = key:lower():byte()
if key == Trigger then
Enabled = false
end
end
)

local g = Instance.new("ScreenGui")
g.Name="RiasAimbot"
g.Parent=game.CoreGui
local tl = Instance.new("TextLabel")
tl.Size = UDim2.new(0,200,0,40)
tl.BackgroundTransparency=0.3
tl.BackgroundColor3=Color3.new(1,1,1)
tl.Position=UDim2.new(0.5,-100,0,0)
tl.Text = "Aimbot off"
tl.TextStrokeColor3= Color3.new(27/255, 42/255, 53/255)
tl.TextColor3=Color3.new(1,1,1)
tl.TextStrokeTransparency=0
tl.Parent=g
tl.TextWrapped=true
tl.FontSize="Size32"
tl.Font="SourceSansBold"


game:GetService("RunService").RenderStepped:connect(
function()
if Enabled then
local Target = GetNearestPlayerToMouse()
if (Target~=false) then
local head = Target.Character:FindFirstChild("Head")
if head then
game.Workspace.CurrentCamera.CoordinateFrame = CFrame.new(game.Workspace.CurrentCamera.CoordinateFrame.p,head.CFrame.p)
end
tl.Text = "Aim: "..Target.NameConfusedub(1,5)
else
tl.Text = "Aimbot off"
end
end
for i, v in pairs(game.Players:GetPlayers()) do
if type(EspBoxes[v.Name:lower()])=="table" then
local tabl = EspBoxes[v.Name:lower()]
if (tabl.gui)~= nil then
tabl.gui.Adornee = v.Character:FindFirstChild("Torso") or nil
else
EspBoxes[v.Name:lower()] = nil
end
else
EspBoxes[v.Name:lower()]={}
local tabl = EspBoxes[v.Name:lower()]
tabl.gui = Instance.new("BillboardGui")
tabl.gui.Name="esprekt"
tabl.gui.Parent=game.Workspace.CurrentCamera
tabl.gui.Adornee=v.Character:FindFirstChild("Torso") and v.Character.Torso or nil
tabl.gui.esp = Instance.new("ImageLabel",tabl.gui)
tabl.gui.AlwaysOnTop=true
tabl.gui.Size=UDim2.new(2,40,2,40)
tabl.StudsOffset=Vector3.new(0,0,0)
local esp = tabl.gui.esp
esp.BackgroundTransparency=1
esp.Size=UDim2.new(1,0,1,0)
esp.ImageColor3=Color3.new(1,1,1)
esp.Image="http://www.roblox.com/asset/?id=103834483"
end
end
end)