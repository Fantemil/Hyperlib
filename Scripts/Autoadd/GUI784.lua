local a=Instance.new("ScreenGui")local b=Instance.new("Frame")local c=Instance.new("TextLabel")local d=Instance.new("TextButton")local e=Instance.new("TextButton")local f=Instance.new("TextButton")local g=Instance.new("TextButton")local h=Instance.new("TextButton")local i=Instance.new("TextLabel")a.ResetOnSpawn=false
a.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui")b.Parent=a
b.BackgroundColor3=Color3.fromRGB(30,30,30)
b.Size=UDim2.new(0,300,0,350)
b.Position=UDim2.new(0.5,-150,0.5,-175)
b.Active=true
b.Draggable=true
c.Parent=b
c.BackgroundColor3=Color3.fromRGB(20,20,20)
c.Size=UDim2.new(1,0,0,50)
c.Font=Enum.Font.SourceSans
c.Text="Unnamed Shooter"
c.TextColor3=Color3.fromRGB(255,255,255)
c.TextSize=24
d.Parent=b
d.BackgroundColor3=Color3.fromRGB(20,20,20)
d.Size=UDim2.new(0,50,0,50)
d.Position=UDim2.new(1,-50,0,0)
d.Font=Enum.Font.SourceSans
d.Text="-"
d.TextColor3=Color3.fromRGB(255,255,255)
d.TextSize=24
e.Parent=b
e.BackgroundColor3=Color3.fromRGB(50,50,50)
e.Size=UDim2.new(1,0,0,50)
e.Position=UDim2.new(0,0,0,60)
e.Font=Enum.Font.SourceSans
e.Text="Infinite Ammo"
e.TextColor3=Color3.fromRGB(255,255,255)
e.TextSize=24
f.Parent=b
f.BackgroundColor3=Color3.fromRGB(50,50,50)
f.Size=UDim2.new(1,0,0,50)
f.Position=UDim2.new(0,0,0,120)
f.Font=Enum.Font.SourceSans
f.Text="No Recoil"
f.TextColor3=Color3.fromRGB(255,255,255)
f.TextSize=24
g.Parent=b
g.BackgroundColor3=Color3.fromRGB(50,50,50)
g.Size=UDim2.new(1,0,0,50)
g.Position=UDim2.new(0,0,0,180)
g.Font=Enum.Font.SourceSans
g.Text="Speed Boost"
g.TextColor3=Color3.fromRGB(255,255,255)
g.TextSize=24
h.Parent=b
h.BackgroundColor3=Color3.fromRGB(50,50,50)
h.Size=UDim2.new(1,0,0,50)
h.Position=UDim2.new(0,0,0,240)
h.Font=Enum.Font.SourceSans
h.Text="ESP"
h.TextColor3=Color3.fromRGB(255,255,255)
h.TextSize=24
i.Parent=b
i.BackgroundColor3=Color3.fromRGB(20,20,20)
i.Size=UDim2.new(1,0,0,50)
i.Position=UDim2.new(0,0,0,300)
i.Font=Enum.Font.SourceSans
i.Text="Script by Bloodscript"
i.TextColor3=Color3.fromRGB(255,255,255)
i.TextSize=18
local j=game:GetService("Players")
local k=j.LocalPlayer
local l=false
local m=false
local n=false
local o=false
local function p()while l do
local q=k.Backpack:FindFirstChildOfClass("Tool")or k.Character:FindFirstChildOfClass("Tool")
if q and q:FindFirstChild("Ammo")then q.Ammo.Value=math.huge end wait(1)end end
local function r()while m do
local s=k.Backpack:FindFirstChildOfClass("Tool")or k.Character:FindFirstChildOfClass("Tool")
if s and s:FindFirstChild("Recoil")then s.Recoil.Value=0
game.Workspace.CurrentCamera.Recoil=0 end wait(0.1)end end
local function t()while n do
if k.Character and k.Character:FindFirstChild("Humanoid")then k.Character.Humanoid.WalkSpeed=50 end wait(1)end end
local function u()while o do
for v,w in pairs(j:GetPlayers())do
if w~=k and w.Character and w.Character:FindFirstChild("Head")then
if not w.Character.Head:FindFirstChild("BillboardGui")then
local x=Instance.new("BillboardGui")
local y=Instance.new("TextLabel")
x.Parent=w.Character.Head
x.AlwaysOnTop=true
x.Size=UDim2.new(0,200,0,50)
x.StudsOffset=Vector3.new(0,3,0)
y.Parent=x
y.Size=UDim2.new(1,0,1,0)
y.BackgroundTransparency=1
y.Text=w.Name
y.TextColor3=Color3.new(1,0,0)end end end wait(1)end end
e.MouseButton1Click:Connect(function()
l=not l
if l then spawn(p)end end)
f.MouseButton1Click:Connect(function()
m=not m
if m then spawn(r)end end)
g.MouseButton1Click:Connect(function()
n=not n
if n then spawn(t)end end)
h.MouseButton1Click:Connect(function()
o=not o
if o then spawn(u)end end)
local function v(w)if l then spawn(p)end
if m then spawn(r)end
if n then spawn(t)end
if o then spawn(u)end end
k.CharacterAdded:Connect(v)
d.MouseButton1Click:Connect(function()
j=not j
for w,x in pairs(b:GetChildren())do
if x~=c and x~=d then
x.Visible=not j end end
if j then
b.Size=UDim2.new(0,300,0,50)else b.Size=UDim2.new(0,300,0,350)end end)
