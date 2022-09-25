-- made by Nexity#2106
-- no, this is not a copy script
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Plane Crazy o7 (Made by Nexity#2106)", 5013109572)
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),
TextColor = Color3.fromRGB(255, 255, 255)
}
local page1 = venyx:addPage("Main Functions", 5012544693)
local page2 = venyx:addPage("Random Scripts", 5012544693)
local tab1 = page1:addSection("Honk")
tab1:addSlider("Horn Pitch", 0.1, 0.1, 20, function(value)
for i,v in pairs(game.Workspace[tostring(game.Players.LocalPlayer) .. 'Aircraft']:GetChildren()) do
if v.Name == "Horn" then
v.Configuration.Pitch.Value = value
end
end
end)
local tptobase = page1:addSection("Base TP")
tptobase:addTextbox("TP to Base", "NameHere", function(value, focusLost)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(value))) == string.lower(value) then
value = v.Name
end
end
if focusLost then
for i,v in pairs(game.Workspace.BuildingZones:GetChildren()) do
if tostring(v.Owner.Value) == value then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z - 75)
end
end
end
end)
local otherstuff = page1:addSection("Other Stuff")
otherstuff:addTextbox("Kill Player with Seats", "NameHere", function(value, focusLost)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(value))) == string.lower(value) then
value = v.Name
end
end
if focusLost then
for i,blocks in pairs(game.Workspace[tostring(game.Players.LocalPlayer) .. 'Aircraft']:GetChildren()) do
pcall(function()
if blocks.Name == "Seat" then
blocks.Seat.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
wait(0.8)
blocks.Seat.CFrame = CFrame.new(blocks.Seat.Position.x, (blocks.Seat.Position.y-5000), blocks.Seat.Position.z)
end
end)
end
end
end)
otherstuff:addTextbox("Bring Player with Seats", "NameHere", function(value, focusLost)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(value))) == string.lower(value) then
value = v.Name
end
end
if focusLost then
for i,blocks in pairs(game.Workspace[tostring(game.Players.LocalPlayer) .. 'Aircraft']:GetChildren()) do
if blocks.Name == "Seat" then
blocks.Seat.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
wait(0.8)
blocks.Seat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
break
end
end
end
end)
otherstuff:addTextbox("Trap Player", "NameHere", function(value, focusLost)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(value))) == string.lower(value) then
value = v.Name
end
end
if focusLost then
for i,blocks in pairs(game.Workspace[tostring(game.Players.LocalPlayer) .. 'Aircraft']:GetChildren()) do
if blocks.Name == "Seat" then
blocks.Seat.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
break
end
end
end
end)
otherstuff:addTextbox("TP Explosives to Player", "NameHere", function(value, focusLost)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(value))) == string.lower(value) then
value = v.Name
end
end
if focusLost then
for i,blocks in pairs(game.Workspace[tostring(game.Players.LocalPlayer) .. 'Aircraft']:GetChildren()) do
pcall(function()
if blocks.Name == "ExplosiveBlock" then
blocks.Decorate.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
wait()
end
if blocks.Name == "ExplosiveBall" then
blocks.Decorate.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
wait()
end
end)
end
end
end)
otherstuff:addButton('Bypass AntiCheat', function()
pcall(function()
game.ReplicatedStorage.Remotes.KickEvent:Destroy()
end)
end)
local tab2 = page2:addSection("")
tab2:addButton('Ocean Map', function()
local region = Region3.new(Vector3.new(-3750,-100,-2050), Vector3.new(2500,43,2700))
region = region:ExpandToGrid(4)
game.Workspace.Terrain:FillRegion(region, 4, Enum.Material.Water)
end)
tab2:addButton('Gravity Gun', function()
loadstring(game:HttpGet(('https://pastebin.com/raw/6cfa5Wxa'),true))()
end)
tab2:addButton('Infinite Yield', function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
tab2:addButton("Destroy this GUI", function()
game.CoreGui["Plane Crazy o7 (Made by Nexity#2106)"]:Destroy()
end