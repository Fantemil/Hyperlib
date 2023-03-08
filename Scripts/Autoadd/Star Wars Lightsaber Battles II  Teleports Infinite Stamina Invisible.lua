local Library = loadstring(game:HttpGet("https://pastebin.com/raw/SxMgx9Zk", true))()

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer

local Force = Library:CreateSection("Force")
local Sabers = Library:CreateSection("Sabers")
local Teleports = Library:CreateSection("Teleports")
local Other = Library:CreateSection("Other")
local Options = Library:CreateSection("Options")

local Push = Instance.new("BoolValue")
local Pull = Instance.new("BoolValue")
local MindTrick = Instance.new("BoolValue")
local Heal = Instance.new("BoolValue")
local Lightning = Instance.new("BoolValue")
local Freeze = Instance.new("BoolValue")
local Repulse = Instance.new("BoolValue")

local InfForce = Instance.new("BoolValue")

local InfStamina = Instance.new("BoolValue")

local MedHeal = Instance.new("BoolValue")
local Night = Instance.new("BoolValue")

local Player = LocalPlayer

local Forms = {
"Shii-Cho",
"Makashi",
"Soresu",
"Ataru",
"Djem So",
"Jar'Kai",
"Shien",
"Juyo",
"Vaapad"
}

function FindPlayer(String)
for _, v in next, Players:GetPlayers() do
if v.Name:lower():sub(1, #String) == String:lower() then
Player = v
end
end
end

-- Force
Force:Label("Spam")

Force:Toggle("Push", function(Callback)
Push.Value = Callback
end)

Force:Toggle("Pull", function(Callback)
Pull.Value = Callback
end)

Force:Toggle("Mind Trick", function(Callback)
MindTrick.Value = Callback
end)

Force:Toggle("Heal", function(Callback)
Heal.Value = Callback
end)

Force:Toggle("Lightning", function(Callback)
Lightning.Value = Callback
end)

Force:Toggle("Freeze", function(Callback)
Freeze.Value = Callback
end)

Force:Toggle("Repulse", function(Callback)
Repulse.Value = Callback
end)

Force:Label("Other")

Force:Button("Unlock Powers", function()
loadstring(game:HttpGet(("https://pastebin.com/raw/MxZ4KGxf"), true))()
end)

Force:Toggle("Infinite Force", function(Callback)
InfForce.Value = Callback
end)

Push.Changed:Connect(function()
while Push.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.push
Event:FireServer(nil, nil, "456rghfghsdf")
end
if Push.Value == false then
break
end
end
end)

Pull.Changed:Connect(function()
while Pull.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.pull
Event:FireServer(nil, nil, "456rghfghsdf")
end
if Pull.Value == false then
break
end
end
end)

MindTrick.Changed:Connect(function()
while MindTrick.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.mindTrick
Event:FireServer(nil, nil, "456rghfghsdf")
end
if MindTrick.Value == false then
break
end
end
end)

Heal.Changed:Connect(function()
while Heal.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.heal
Event:FireServer(nil, nil, "456rghfghsdf")
end
if Heal.Value == false then
break
end
end
end)

Lightning.Changed:Connect(function()
while Lightning.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.toggleLightning
Event:FireServer(true, nil, "456rghfghsdf")
Event:FireServer(false, nil, "456rghfghsdf")
end
if Lightning.Value == false then
break
end
end
end)

Freeze.Changed:Connect(function()
while Freeze.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.freeze
Event:FireServer(nil, nil, "456rghfghsdf")
end
if Freeze.Value == false then
break
end
end
end)

Repulse.Changed:Connect(function()
while Repulse.Value == true do
game:GetService("RunService").RenderStepped:Wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Assets") and LocalPlayer.Backpack.Force.Assets:FindFirstChild("Events") and LocalPlayer.Backpack.Force.Assets.Events:FindFirstChild("repulse") then
local Event = LocalPlayer.Backpack.Force.Assets.Events.repulse
Event:FireServer(nil, nil, "456rghfghsdf")
end
if Repulse.Value == false then
break
end
end
end)

InfForce.Changed:Connect(function()
while InfForce.Value == true do
wait()
if LocalPlayer.Backpack:FindFirstChild("Force") and LocalPlayer.Backpack.Force:FindFirstChild("Client") then
local ClientScript = LocalPlayer.Backpack.Force.Client
local SENV = getsenv(ClientScript)

SENV["forceLevel"] = 100
if InfForce.Value == false then
break
end
end
end
end)

-- Lightsabers
Sabers:Dropdown("Forms", Forms, function(Callback)
if Callback == "Shii-Cho" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[I] Shii-Cho"
end
v.Assets.Events.setForm:FireServer(1)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[I] Shii-Cho"
end
v.Assets.Events.setForm:FireServer(1)
end
end
elseif Callback == "Makashi" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[II] Makashi"
end
v.Assets.Events.setForm:FireServer(2)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[II] Makashi"
end
v.Assets.Events.setForm:FireServer(2)
end
end
elseif Callback == "Soresu" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[III] Soresu"
end
v.Assets.Events.setForm:FireServer(3)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[III] Soresu"
end
v.Assets.Events.setForm:FireServer(3)
end
end
elseif Callback == "Ataru" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[IV] Ataru"
end
v.Assets.Events.setForm:FireServer(4)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[IV] Ataru"
end
v.Assets.Events.setForm:FireServer(4)
end
end
elseif Callback == "Djem So" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Dual Lightsabers" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[V] Djem So"
end
v.Assets.Events.setForm:FireServer(5)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Dual Lightsabers" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[V] Djem So"
end
v.Assets.Events.setForm:FireServer(5)
end
end
elseif Callback == "Jar'Kai" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Dual Lightsabers" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VI] Jar'Kai"
end
v.Assets.Events.setForm:FireServer(1)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Dual Lightsabers" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VI] Jar'Kai"
end
v.Assets.Events.setForm:FireServer(1)
end
end
elseif Callback == "Shien" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[V] Shien"
end
v.Assets.Events.setForm:FireServer(6)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[V] Shien"
end
v.Assets.Events.setForm:FireServer(6)
end
end
elseif Callback == "Juyo" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VII] Juyo"
end
v.Assets.Events.setForm:FireServer(7)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VII] Juyo"
end
v.Assets.Events.setForm:FireServer(7)
end
end
elseif Callback == "Vaapad" then
for _, v in pairs(Player.Backpack:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VII] Vaapad"
end
v.Assets.Events.setForm:FireServer(8)
end
end
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Crossguard Lightsaber" then
if Player == LocalPlayer then
LocalPlayer.PlayerGui.lightsaberHUD.formLabel.Text = "[VII] Vaapad"
end
v.Assets.Events.setForm:FireServer(8)
end
end
end
end)

Sabers:Toggle("Infinite Stamina", function(Callback)
InfStamina.Value = not InfStamina.Value
end)

InfStamina.Changed:Connect(function()
while InfStamina.Value == true do
wait()
for _, v in pairs(LocalPlayer.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Dual Lightsabers" or v.Name == "Crossguard Lightsaber" then
if v:FindFirstChild("Client") then
local ClientScript = v.Client
local SENV = getsenv(ClientScript)

SENV["stamina"] = 100
end
end
end
if InfStamina.Value == false then
break
end
end
end)

-- Teleports
Teleports:Button("Neutral Spawn", function()
LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(171, 72, -298)
end)

Teleports:Button("Jedi Spawn", function()
LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-342, 58, -397)
end)

Teleports:Button("Sith Spawn", function()
LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(513, 184, -467)
end)

Teleports:Button("Cave", function()
LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(502.481537, 80.9418716, -621.514038)
end)

Teleports:Button("Safe Area", function()
LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(853.459045, 0.663321495, 518.816589)
end)

-- Other

Other:Label("Character")

Other:Button("Invisible", function()
if LocalPlayer.Character then
local OldCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(853.505798, 0.650310755, 518.362549)
wait(0.5)
local Clone = LocalPlayer.Character.LowerTorso.Root:Clone()
LocalPlayer.Character.LowerTorso.Root:Destroy()
Clone.Parent = LocalPlayer.Character.LowerTorso
LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
end
end)

Other:Toggle("Meditation Heal", function(Callback)
MedHeal.Value = Callback
end)

Other:Label("Music")

Other:Button("Play", function()
Workspace.battleMusic:Play()
end)

Other:Button("Stop", function()
Workspace.battleMusic:Stop()
end)

Other:Box("Time Position", function(Callback)
Workspace.battleMusic.TimePosition = Callback
end)

Other:Label("World")

Other:Toggle("Night (Client)", function(Callback)
if Callback == true then
Lighting.ClockTime = 0
Lighting.Brightness = 2
Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
Lighting.FogColor = Color3.fromRGB(0, 0, 0)
Night.Value = true
else
Lighting.ClockTime = 9.5
Lighting.Brightness = 2
Lighting.OutdoorAmbient = Color3.fromRGB(104, 104, 104)
Lighting.FogColor = Color3.fromRGB(182, 157, 118)
Night.Value = false
end
end)

MedHeal.Changed:Connect(function()
while MedHeal.Value == true do
wait()
ReplicatedStorage.Events.toggleHealing:FireServer(true)
if MedHeal.Value == false then
break
end
end
end)

-- Options
Options:Box("Player", function(Callback)
FindPlayer(Callback)
if Callback == "" then
Player = LocalPlayer
elseif Callback == "all" or Callback == "All" then
Player = "all"
elseif Callback == "others" or Callback == "Others" then
Player = "others"
elseif Callback == "jedi" or Callback == "Jedi" then
Player = "jedi"
elseif Callback == "sith" or Callback == "Sith" then
Player = "sith"
end
end)

--
Players.PlayerRemoving:Connect(function(Removing)
if Removing.Name == Player.Name then
Player = nil
end
end)

Library:Ready()

UserInputService.InputBegan:Connect(function(Input, GameProcessed)
if not GameProcessed then
if Input.KeyCode == Enum.KeyCode.F then
for _, v in pairs(Player.Character:GetChildren()) do
if v.Name == "Lightsaber" or v.Name == "Dual Lightsabers" or v.Name == "Crossguard Lightsaber" then
local RNG = Random.new()
local Picker = RNG:NextInteger(1, 2)

if Picker == 1 then
v.Assets.Events.attackStart:FireServer(900)
elseif Picker == 2 then
v.Assets.Events.attackStart:FireServer(-900)
end
end
end
end
end
end)