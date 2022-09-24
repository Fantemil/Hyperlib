--[[
traitor town esp, based on the old esp (on https://v3rmillion.net/showthread.php?tid=820592)

credits to: infinite yield for the overhead code, and the old esp for the base code (which is detected by the game)
to the original creator, please beautify your code :troll: (nevermind, v3rm decides to remove all spaces from the script)
from the original thread: players get highlighted with orange if they kill one innocent, and red if they kill two and if a player kills a terrorist they are marked green, if they are marked green and kill a innocent
if marked blue, they are a detective
]]--
local overhead = true --set this to false if you have a bad pc (will not show names, but will be less laggy)
local Workspace = game:GetService("Workspace")
local Ragdolls = Workspace:WaitForChild("Ragdolls")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

function CreateESPPart(BodyPart, color)
local ESPPartparent = BodyPart
local PlayerName = BodyPart:FindFirstAncestorOfClass("Model").Name
local Box = Instance.new("BoxHandleAdornment")
Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
Box.Name = PlayerName
Box.Adornee = ESPPartparent
Box.Color3 = color
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 0.7
Box.Parent = CoreGui
if BodyPart.Name == "Head" and overhead then
local Overhead = Instance.new("BillboardGui")
Overhead.Name = PlayerName
Overhead.StudsOffsetWorldSpace = Vector3.new(0,2.5,0)
Overhead.Adornee = ESPPartparent
Overhead.Size = UDim2.new(0,100,0,100)
Overhead.AlwaysOnTop = true
Overhead.Parent = CoreGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Text = PlayerName
TextLabel.Position = UDim2.new(0, 0, 0, -50)
TextLabel.Size = UDim2.new(0, 100, 0, 100)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.TextSize = 20
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
TextLabel.Parent = Overhead
end
end

function loadCheck(chr)
if chr:FindFirstChild("Humanoid") then
local parts = chr:GetChildren()
for i = 1, #parts do
if parts[i]:IsA("BasePart") then
CreateESPPart(parts[i],Color3.fromRGB(255,255,255))
end
end
end
end


local player = game.Players:GetChildren()
for i = 1, #player do
if player[i].Name ~= game.Players.LocalPlayer.Name then
if workspace:FindFirstChild(player[i].Name) then
loadCheck(player[i].Character)
end
spawn(function()
player[i].CharacterAdded:Connect(function(character)
character:WaitForChild("UpperTorso")
loadCheck(character)
end)
end)
end
end
local function removeEsp(name)
local esp = CoreGui:GetChildren()
for i,v in pairs(esp) do
if name == v.Name then
v:Destroy()
end
end
end
Players.PlayerAdded:Connect(function(player)
player.CharacterAdded:Connect(function(character)
character:WaitForChild("UpperTorso")
loadCheck(character)
end)
Players.PlayerRemoving:Connect(function(plr)
removeEsp(plr.Name)
end)
end)

local function SetColor(Instance)
if Instance.Color3 == Color3.fromRGB(255, 165, 0) then
Instance.Color3 = Color3.fromRGB(255, 0, 0)
end
if Instance.Color3 == Color3.fromRGB(255, 255, 255) then
Instance.Color3 = Color3.fromRGB(255, 165, 0)
end
end

local function SetDetective(plr)
for i,v in pairs(CoreGui:GetChildren()) do
if v.Name == plr and v.ClassName == "BoxHandleAdornment" then
v.Color3 = Color3.fromRGB(95, 179, 206)
end
if v.Name == plr and v.ClassName == "BillboardGui" then
v.TextLabel.TextColor3 = Color3.fromRGB(95, 179, 206)
end
end
end

local function SetTextColor(Instance)
if Instance.TextColor3 == Color3.fromRGB(255, 165, 0) then
Instance.TextColor3 = Color3.fromRGB(255, 0, 0)
end
if Instance.TextColor3 == Color3.fromRGB(255, 255, 255) then
Instance.TextColor3 = Color3.fromRGB(255, 165, 0)
end
end
task.defer(function()
game:GetService("ReplicatedStorage").ClientEvents.UpdateGameTeams.OnClientEvent:Connect(function(info)
if typeof(info) == "table" then
for i,v in pairs(info) do
if v == "Detective" then
SetDetective(i)
end
end
end
end)
end)

Ragdolls.ChildAdded:Connect(function(body)
local cd = body:WaitForChild("CorpseData")
local tm = cd:WaitForChild("Team")
local killer = cd:WaitForChild("KilledBy")
removeEsp(body.Name)
if tm.Value == "Innocent" then
if workspace:findFirstChild(killer.Value) then
local espparts = game.CoreGui:GetChildren()
for i = 1, #espparts do
if espparts[i].Name == tostring(killer.Value) and espparts[i]:IsA("BoxHandleAdornment") then
SetColor(espparts[i])
end
if espparts[i]:IsA("BillboardGui") and espparts[i].TextLabel.Text == tostring(killer.Value) then
SetTextColor(espparts[i].TextLabel)
end
end
end
end
if tm.Value == "Traitor" then
local espparts = game.CoreGui:GetChildren()
for i = 1, #espparts do
if espparts[i].Name == tostring(killer.Value) and espparts[i]:IsA("BoxHandleAdornment") then
espparts[i].Color3 = Color3.fromRGB(0,255,0)
end
if espparts[i]:IsA("BillboardGui") and espparts[i].TextLabel.Text == killer.Value then
espparts[i].TextLabel.TextColor3 = Color3.fromRGB(0,255,0)
end
end
end
end)