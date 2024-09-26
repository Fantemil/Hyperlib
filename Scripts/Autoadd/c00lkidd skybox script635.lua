-- !!!Note!!!:only work on server side executor or backdoor executor
local msg = Instance.new("Message",workspace)
msg.Text = "Made By They_are666 [subs to Alan chiel] --team c00lkidd and team skrubl0rdz"
wait(5.8)
msg:Destroy()
s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=358313209"
s.SkyboxDn = "http://www.roblox.com/asset/?id=358313209"
s.SkyboxFt = "http://www.roblox.com/asset/?id=358313209"
s.SkyboxLf = "http://www.roblox.com/asset/?id=358313209"
s.SkyboxRt = "http://www.roblox.com/asset/?id=358313209"
s.SkyboxUp = "http://www.roblox.com/asset/?id=358313209"
s.Parent = game.Lighting
Spooky = Instance.new("Sound", game.Workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://1839246711"
Spooky.Volume = 20
Spooky.Looped = true
Spooky:Play()
local ID =358313209 --id here
function spamDecal(v)
if v:IsA("Part") then
for i=0, 5 do
D = Instance.new("Decal")
D.Name = "MYDECALHUE"
D.Face = i
D.Parent = v
D.Texture = ("http://www.roblox.com/asset/?id="..Id)
end
else
if v:IsA("Model") then
for a,b in pairs(v:GetChildren()) do
spamDecal(b)
end
end
end
end
function decalspam(id) --use this function, not the one on top
Id = id
for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Part") then
for i=0, 5 do
D = Instance.new("Decal")
D.Name = "MYDECALHUE"
D.Face = i
D.Parent = v
D.Texture = ("http://www.roblox.com/asset/?id="..id)
end
else
if v:IsA("Model") then
for a,b in pairs(v:GetChildren()) do
spamDecal(b)
end
end
end
end
end

decalspam(ID)