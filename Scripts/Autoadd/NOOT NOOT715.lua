local msg = Instance.new("Message",workspace)
msg.Text = "Created by c00lkidd."
wait(2)
msg:Destroy()
pingudecal = "http://www.roblox.com/asset/?id=382332426"
local didpingu = false
local ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
ScreenGui.Name = "nooties"
local asd = Instance.new("TextButton",ScreenGui)
asd.BackgroundColor3 = Color3.new(0,0,0)
asd.BorderColor3 = Color3.new(0,0,0)
asd.Name = "nooties"
asd.Position = UDim2.new(1,-150,1,-90)
asd.Size = UDim2.new(0,150,0,45)
asd.Font = "SourceSansBold"
asd.FontSize = "Size32"
asd.Text = "Noot Noot!"
asd.TextColor3 = Color3.new(255,255,255)
asd.MouseButton1Down:connect(function()
if didpingu == false then
didpingu = true
for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then
local nooties = Instance.new("Sound",workspace)
nooties.SoundId = "https://www.roblox.com/library/5332890821/Free-noots"
nooties.Volume = 1
nooties.Looped = true
nooties:Play()
end 
end 
wait(1) 
local Sky = Instance.new("Sky",game.Lighting) 
Sky.SkyboxBk = pingudecal 
Sky.SkyboxDn = pingudecal 
Sky.SkyboxFt = pingudecal 
Sky.SkyboxLf = pingudecal 
Sky.SkyboxRt = pingudecal 
Sky.SkyboxUp = pingudecal 
local function modelasd() 
for i,v in pairs(workspace:GetChildren()) do 
if v:IsA("Model") then 
for i,a in pairs(v:GetChildren()) do 
local top = Instance.new("Decal",a) 
top.Face = "Top" 
top.Texture = pingudecal 
local btm = Instance.new("Decal",a) 
btm.Face = "Bottom" 
btm.Texture = pingudecal 
local lft = Instance.new("Decal",a) 
lft.Face = "Left" 
lft.Texture = pingudecal 
local rft = Instance.new("Decal",a) 
rft.Face = "Right" 
rft.Texture = pingudecal 
local frnt = Instance.new("Decal",a) 
frnt.Face = "Front" 
frnt.Texture = pingudecal 
local bk = Instance.new("Decal",a) 
bk.Face = "Back" 
bk.Texture = pingudecal 
local VTest = Instance.new("ParticleEmitter")  
VTest.Parent = a 
VTest.Texture = pingudecal 
VTest.Speed = NumberRange.new(200) 
VTest.Rate = 200 
VTest.Size = NumberSequence.new(10000,10000) 
VTest.Lifetime = NumberRange.new(1000) 
local pepe = coroutine.create(function() 
while wait() do 
local Explosion = Instance.new("Explosion",a) 
Explosion.BlastRadius = 10000 
end 
end) 
coroutine.resume(pepe) 
end 
end 
end 
end 
local function partasd() 
for i,a in pairs(workspace:GetChildren()) do 
local top = Instance.new("Decal",a) 
top.Face = "Top" 
top.Texture = pingudecal 
local btm = Instance.new("Decal",a) 
btm.Face = "Bottom" 
btm.Texture = pingudecal 
local lft = Instance.new("Decal",a) 
lft.Face = "Left" 
lft.Texture = pingudecal 
local rft = Instance.new("Decal",a) 
rft.Face = "Right" 
rft.Texture = pingudecal 
local frnt = Instance.new("Decal",a) 
frnt.Face = "Front" 
frnt.Texture = pingudecal 
local bk = Instance.new("Decal",a) 
bk.Face = "Back" 
bk.Texture = pingudecal 
local VTest = Instance.new("ParticleEmitter")  
VTest.Parent = a 
VTest.Texture = pingudecal 
VTest.Speed = NumberRange.new(200) 
VTest.Rate = 200 
VTest.Lifetime = NumberRange.new(1000) 
VTest.Size = NumberSequence.new(10000,10000) 
local pepe = coroutine.create(function() 
while wait() do 
if a.Name ~= "Head" or "Torso" or "Left Arm" or "Right Arm" or "Left Leg" or "Right Leg" then 
local Explosion = Instance.new("Explosion",a) 
Explosion.BlastRadius = 10000 
end 
end 
end) 
coroutine.resume(pepe) 
end 
end 
partasd() 
modelasd() 
else 
warn("Already Ran! Did not execute the script!") 
end 
end)