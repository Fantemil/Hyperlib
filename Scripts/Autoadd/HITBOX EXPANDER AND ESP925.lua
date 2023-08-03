-- Settings --

local settings = {
   
   fillcolor = Color3.fromRGB(255, 255, 255);
   filltransparency = .75;
   
   outlinecolor = Color3.fromRGB(255, 255, 255);
   outlinetransparency = 0;
   
}

-- Script --

local plr = game:service'Players'.LocalPlayer
local highlights = Instance.new('Folder', game:service'CoreGui')

local function addhighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   
   highlight.FillColor = settings.fillcolor
   highlight.FillTransparency = settings.filltransparency
   
   highlight.OutlineColor = settings.outlinecolor
   highlight.OutlineTransparency = settings.outlinetransparency
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee.Parent then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end

local function addtoplayer(object)
   if object:IsA'Model' and object.Name == 'Player' and object.Parent.Name ~= tostring(plr.TeamColor) then
       addhighlight(object)
   end
end

for i,v in pairs(workspace.Players:GetDescendants()) do
   addtoplayer(v)
end

workspace.Players.DescendantAdded:Connect(function(v)
   addtoplayer(v)
end)

-- For head hitbox

Size = 8 -- Setting higher than 8 or so will screw with the server hit detection and prevent your guns from damaging people. 8 is still easy to "rage" with. I recommend 2-5 if you want to look legit.
Transparency = 0.5 -- Leave it at 0.5 if you want the heads to be visible. Set to 1 to make them invisible.

game:GetService("RunService").Stepped:Connect(function()
for i,v in next, workspace.Players:GetDescendants() do
if v:FindFirstChild("Head") and not v:FindFirstChildWhichIsA("MeshPart") then
sethiddenproperty(v.Head, "Massless", true)
v.Head.CanCollide = false
v.Head.Transparency = Transparency
if v.Head.Size ~= Vector3.new(Size, Size, Size) and v.Head.Mesh.Scale ~= Vector3.new(Size, Size, Size) then
v.Head.Size = Vector3.new(Size, Size, Size)
v.Head.Mesh.Scale = Vector3.new(Size, Size, Size)
end
if v.Head.Parent.Parent.Name == "Bright blue" then
v.Head.BrickColor = BrickColor.new("Bright blue")
end
if v.Head.Parent.Parent.Name == "Bright orange" then
v.Head.BrickColor = BrickColor.new("Bright orange")
end
end
end
end)

while wait() do
for i,v in next, workspace.Ignore.DeadBody:GetChildren() do
v:Destroy()
end
end
------------------------------------------------------------------------For torso

Size = 8 -- Setting higher than 8 or so will screw with the server hit detection and prevent your guns from damaging people. 8 is still easy to "rage" with. I recommend 2-5 if you want to look legit.
Transparency = 0.5 -- Leave it at 0.5 if you want the torsos/left legs to be visible. Set to 1 to make them invisible.

game:GetService("RunService").Stepped:Connect(function()
for i,v in next, workspace.Players:GetDescendants() do
if v:FindFirstChild("Left Leg") and not v:FindFirstChildWhichIsA("MeshPart") then
sethiddenproperty(v["Left Leg"], "Massless", true)
v["Left Leg"].CanCollide = false
v["Left Leg"].Transparency = Transparency
if v["Left Leg"].Size ~= Vector3.new(Size, Size, Size) and v["Left Leg"].Mesh.Scale ~= Vector3.new(Size, Size, Size) then
v["Left Leg"].Size = Vector3.new(Size, Size, Size)
v["Left Leg"].Mesh.Scale = Vector3.new(Size, Size, Size)
end
if v["Left Leg"].Parent.Parent.Name == "Bright blue" then
v["Left Leg"].BrickColor = BrickColor.new("Bright blue")
end
if v["Left Leg"].Parent.Parent.Name == "Bright orange" then
v["Left Leg"].BrickColor = BrickColor.new("Bright orange")
end
end
end
end)

while wait() do
for i,v in next, workspace.Ignore.DeadBody:GetChildren() do
v:Destroy()
end
end


