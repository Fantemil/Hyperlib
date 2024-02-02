--The following section was auto-generated because this script isn't verified. If you have full trust in this script, you may pay no attention to it and remove it. Otherwise, it's best to to keep it in for additional protection
if not game:IsLoaded() then game.Loaded:Wait() end
if identifyexecutor()~="Codex" then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
end
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
local ZombieAttackGUI = Instance.new("ScreenGui")
`local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local ConsoleFrame = Instance.new("Frame")
local Console = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local KillPlatform = Instance.new("TextButton")
local StealKills = Instance.new("TextButton")
local AutoFarm = Instance.new("TextButton")
local NoRecoil = Instance.new("TextButton")
local Guns = Instance.new("TextButton")
local Knifes = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
 
ZombieAttackGUI.Name = "Zombie Attack"
ZombieAttackGUI.Parent = game.CoreGui
ZombieAttackGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ZombieAttackGUI
Main.BackgroundColor3 = Color3.new(0.247059, 0, 0.372549)
Main.BackgroundTransparency = 0.15000000596046
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.794708014, 0, 0, 0)
Main.Size = UDim2.new(0.191605836, 0, 1, 0)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0768115819, 0, 0.068296887, 0)
TextLabel.Size = UDim2.new(0.842857122, 0, 0.0322580636, 0)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Made by Mikeexc"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0434782468, 0, 0.0118953418, 0)
TextLabel_2.Size = UDim2.new(0.90476191, 0, 0.0569259971, 0)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Zombie Attack Menu"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.111954458, 0)
Frame.Size = UDim2.new(1, 0, 0.0417457297, 0)

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0434782468, 0, 0.181818187, 0)
TextLabel_3.Size = UDim2.new(0.90476191, 0, 0.590909064, 0)
TextLabel_3.Font = Enum.Font.SourceSansSemibold
TextLabel_3.Text = "Console"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = Main
ConsoleFrame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ConsoleFrame.BackgroundTransparency = 0.5
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0, 0, 0.153700188, 0)
ConsoleFrame.Size = UDim2.new(1, 0, 0.0967741907, 0)

Console.Name = "Console"
Console.Parent = ConsoleFrame
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.BorderSizePixel = 0
Console.Position = UDim2.new(0.0387163423, 0, 0.117647059, 0)
Console.Size = UDim2.new(0.909523785, 0, 0.764705896, 0)
Console.Font = Enum.Font.SourceSans
Console.Text = "Status: Ready to use\n\n"
Console.TextColor3 = Color3.new(0.333333, 1, 0)
Console.TextScaled = true
Console.TextSize = 14
Console.TextWrapped = true
Console.TextXAlignment = Enum.TextXAlignment.Left
Console.TextYAlignment = Enum.TextYAlignment.Top

Frame_2.Parent = Main
Frame_2.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
Frame_2.BackgroundTransparency = 0.5
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.250474393, 0)
Frame_2.Size = UDim2.new(0.995238066, 0, 0.0417457297, 0)

TextLabel_4.Parent = Frame_2
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0482401513, 0, 0.181818187, 0)
TextLabel_4.Size = UDim2.new(0.904306233, 0, 0.590909064, 0)
TextLabel_4.Font = Enum.Font.SourceSansSemibold
TextLabel_4.Text = "Main Mods"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

Frame_3.Parent = Main
Frame_3.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
Frame_3.BackgroundTransparency = 0.5
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, 0.455407977, 0)
Frame_3.Size = UDim2.new(1, 0, 0.0417457297, 0)

TextLabel_5.Parent = Frame_3
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0434782468, 0, 0.181818187, 0)
TextLabel_5.Size = UDim2.new(0.90476191, 0, 0.590909064, 0)
TextLabel_5.Font = Enum.Font.SourceSansSemibold
TextLabel_5.Text = "Weapon Mods"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Frame_4.Parent = Main
Frame_4.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
Frame_4.BackgroundTransparency = 0.5
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0, 0, 0.65464896, 0)
Frame_4.Size = UDim2.new(0.995238066, 0, 0.0417457297, 0)

TextLabel_6.Parent = Frame_4
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0482401513, 0, 0.18181771, 0)
TextLabel_6.Size = UDim2.new(0.909090936, 0, 0.590909064, 0)
TextLabel_6.Font = Enum.Font.SourceSansSemibold
TextLabel_6.Text = "Local Player Mods"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

KillPlatform.Name = "KillPlatform"
KillPlatform.Parent = Main
KillPlatform.BackgroundColor3 = Color3.new(1, 1, 1)
KillPlatform.BackgroundTransparency = 1
KillPlatform.Position = UDim2.new(0.0434782468, 0, 0.309297919, 0)
KillPlatform.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
KillPlatform.Font = Enum.Font.SourceSansSemibold
KillPlatform.Text = "Kill Platform "
KillPlatform.TextColor3 = Color3.new(1, 1, 1)
KillPlatform.TextScaled = true
KillPlatform.TextSize = 14
KillPlatform.TextWrapped = true
KillPlatform.TextXAlignment = Enum.TextXAlignment.Left

StealKills.Name = "StealKills"
StealKills.Parent = Main
StealKills.BackgroundColor3 = Color3.new(1, 1, 1)
StealKills.BackgroundTransparency = 1
StealKills.Position = UDim2.new(0.0434782468, 0, 0.354838729, 0)
StealKills.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
StealKills.Font = Enum.Font.SourceSansSemibold
StealKills.Text = "Steal Kills"
StealKills.TextColor3 = Color3.new(1, 1, 1)
StealKills.TextScaled = true
StealKills.TextSize = 14
StealKills.TextWrapped = true
StealKills.TextXAlignment = Enum.TextXAlignment.Left

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Main
AutoFarm.BackgroundColor3 = Color3.new(1, 1, 1)
AutoFarm.BackgroundTransparency = 1
AutoFarm.Position = UDim2.new(0.0434782468, 0, 0.400379539, 0)
AutoFarm.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
AutoFarm.Font = Enum.Font.SourceSansSemibold
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(1, 1, 1)
AutoFarm.TextScaled = true
AutoFarm.TextSize = 14
AutoFarm.TextWrapped = true
AutoFarm.TextXAlignment = Enum.TextXAlignment.Left

NoRecoil.Name = "NoRecoil"
NoRecoil.Parent = Main
NoRecoil.BackgroundColor3 = Color3.new(1, 1, 1)
NoRecoil.BackgroundTransparency = 1
NoRecoil.Position = UDim2.new(0.0434782468, 0, 0.510436416, 0)
NoRecoil.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
NoRecoil.Font = Enum.Font.SourceSansSemibold
NoRecoil.Text = "No Recoil"
NoRecoil.TextColor3 = Color3.new(1, 1, 1)
NoRecoil.TextScaled = true
NoRecoil.TextSize = 14
NoRecoil.TextWrapped = true
NoRecoil.TextXAlignment = Enum.TextXAlignment.Left

Guns.Name = "Guns"
Guns.Parent = Main
Guns.BackgroundColor3 = Color3.new(1, 1, 1)
Guns.BackgroundTransparency = 1
Guns.Position = UDim2.new(0.0434782468, 0, 0.555977225, 0)
Guns.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Guns.Font = Enum.Font.SourceSansSemibold
Guns.Text = "Equip All Guns"
Guns.TextColor3 = Color3.new(1, 1, 1)
Guns.TextScaled = true
Guns.TextSize = 14
Guns.TextWrapped = true
Guns.TextXAlignment = Enum.TextXAlignment.Left

Knifes.Name = "Knifes"
Knifes.Parent = Main
Knifes.BackgroundColor3 = Color3.new(1, 1, 1)
Knifes.BackgroundTransparency = 1
Knifes.Position = UDim2.new(0.0434782468, 0, 0.603415549, 0)
Knifes.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Knifes.Font = Enum.Font.SourceSansSemibold
Knifes.Text = "Equip All Knifes "
Knifes.TextColor3 = Color3.new(1, 1, 1)
Knifes.TextScaled = true
Knifes.TextSize = 14
Knifes.TextWrapped = true
Knifes.TextXAlignment = Enum.TextXAlignment.Left

Fly.Name = "Fly"
Fly.Parent = Main
Fly.BackgroundColor3 = Color3.new(1, 1, 1)
Fly.BackgroundTransparency = 1
Fly.Position = UDim2.new(0.0434782468, 0, 0.709677398, 0)
Fly.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Fly.Font = Enum.Font.SourceSansSemibold
Fly.Text = "Toggle Flying Mode"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextScaled = true
Fly.TextSize = 14
Fly.TextWrapped = true
Fly.TextXAlignment = Enum.TextXAlignment.Left

Noclip.Name = "Noclip"
Noclip.Parent = Main
Noclip.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip.BackgroundTransparency = 1
Noclip.Position = UDim2.new(0.0434782468, 0, 0.755218208, 0)
Noclip.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Noclip.Font = Enum.Font.SourceSansSemibold
Noclip.Text = "Toggle NoClip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextScaled = true
Noclip.TextSize = 14
Noclip.TextWrapped = true
Noclip.TextXAlignment = Enum.TextXAlignment.Left

Gravity.Name = "Gravity"
Gravity.Parent = Main
Gravity.BackgroundColor3 = Color3.new(1, 1, 1)
Gravity.BackgroundTransparency = 1
Gravity.Position = UDim2.new(0.0387163423, 0, 0.802656531, 0)
Gravity.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Gravity.Font = Enum.Font.SourceSansSemibold
Gravity.Text = "Low Gravity"
Gravity.TextColor3 = Color3.new(1, 1, 1)
Gravity.TextScaled = true
Gravity.TextSize = 14
Gravity.TextWrapped = true
Gravity.TextXAlignment = Enum.TextXAlignment.Left

Speed.Name = "Speed"
Speed.Parent = Main
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.BackgroundTransparency = 1
Speed.Position = UDim2.new(0.0387163423, 0, 0.851992369, 0)
Speed.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Speed.Font = Enum.Font.SourceSansSemibold
Speed.Text = "Super Speed"
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true
Speed.TextXAlignment = Enum.TextXAlignment.Left

Jump.Name = "Jump"
Jump.Parent = Main
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.BackgroundTransparency = 1
Jump.Position = UDim2.new(0.0434782468, 0, 0.899430692, 0)
Jump.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Jump.Font = Enum.Font.SourceSansSemibold
Jump.Text = "Super Jump"
Jump.TextColor3 = Color3.new(1, 1, 1)
Jump.TextScaled = true
Jump.TextSize = 14
Jump.TextWrapped = true
Jump.TextXAlignment = Enum.TextXAlignment.Left

Btools.Name = "Btools"
Btools.Parent = Main
Btools.BackgroundColor3 = Color3.new(1, 1, 1)
Btools.BackgroundTransparency = 1
Btools.Position = UDim2.new(0.0434782468, 0, 0.946869016, 0)
Btools.Size = UDim2.new(0.90476191, 0, 0.034155596, 0)
Btools.Font = Enum.Font.SourceSansSemibold
Btools.Text = "B-Tools"
Btools.TextColor3 = Color3.new(1, 1, 1)
Btools.TextScaled = true
Btools.TextSize = 14
Btools.TextWrapped = true
Btools.TextXAlignment = Enum.TextXAlignment.Left
-- scripts 
Fly.MouseButton1Click:Connect(function()
Console.Text = ("Press E to activate and deactivate flying mode\n\n ")
wait(0.2)
loadstring(game:HttpGet(('https://pastebin.com/raw/7rXZ9VNc'),true))()
wait(5)
Console.Text = ("Status: Ready To Use\n\n")
end)

Noclip.MouseButton1Click:connect(function()
if Console.Text == "Toggle NoClip" then
noclip = true
Console.Text = "Toggle NoClip: On"
        Console.TextColor3 = Color3.new(0,185,0)
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                 end
        end)
    elseif Console.Text == "Toggle NoClip: On" then
        noclip = false
        Console.Text = "Toggle NoClip: Off"
        Console.TextColor3 = Color3.new(170,0,0)
elseif Console.Text == "Toggle NoClip: On" then
    noclip = true
Console.Text = "Toggle NoClip: On"
        Console.TextColor3 = Color3.new(0,185,0)
    end
end)

Knifes.MouseButton1Click:connect(function()
	for _,Thing in pairs(game.ReplicatedStorage.Knives:GetChildren()) do
if Thing:IsA("Tool") then
Thing.Parent = game.Players.LocalPlayer.Backpack
end
end
end)

Guns.MouseButton1Click:connect(function()
	for _,Thing in pairs(game.ReplicatedStorage.Guns:GetChildren()) do
if Thing:IsA("Tool") then
Thing.Parent = game.Players.LocalPlayer.Backpack
end
end
end)

KillPlatform.MouseButton1Click:connect(function()
	plr = game:service'Players'.LocalPlayer
char = plr.Character
root = char.HumanoidRootPart
iszombie = false
 
platform = Instance.new('Part', workspace)
platform.Size = Vector3.new(100,0,100)
platform.Anchored = true
platform.Position = Vector3.new(555,555,555)
root.CFrame = platform.CFrame * CFrame.new(0,4,0)
 
if workspace:FindFirstChild(plr.Name) then
   iszombie = false
   warn'You are not a zombie!'
else
   iszombie = true
   warn'You are a zombie!'
end
 
wait(.5)
 
if not iszombie then
   for _, a in pairs(workspace.enemies:children()) do
       for _, b in pairs(a:children()) do
           if b:IsA'Part' then
               b.Anchored = true
               b.CFrame = root.CFrame * CFrame.new(2,0,2)
           end
       end
   end
elseif iszombie then
   for _, a in pairs(game:service'Players':GetPlayers()) do
       if a.Character then
           for _, b in pairs(a.Character:children()) do
               if b:IsA'Part' and a.Name ~= plr.Name then
                   b.Anchored = true
                   b.CFrame =  root.CFrame * CFrame.new(2,0,2)
               end
           end
       end
   end
end
end)

Speed.MouseButton1Click:connect(function()
	plr = game:service'Players'.LocalPlayer
char = plr.Character
hum = char:FindFirstChildOfClass'Humanoid'

hum.WalkSpeed = 60
	
end)

Jump.MouseButton1Click:connect(function()
	plr = game:service'Players'.LocalPlayer
char = plr.Character
hum = char:FindFirstChildOfClass'Humanoid'

hum.JumpPower = 100
end)

AutoFarm.MouseButton1Click:connect(function()
	local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.farm2 = true
Player.Chatted:Connect(function(m)
if(m==";autofarm false")then
_G.farm2 = false
elseif(m==";autofarm true")then
_G.farm2 = true
end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
end)

Btools.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/T0qaXjAR", true))()
end)

Gravity.MouseButton1Click:connect(function()
	game.Workspace.Gravity = 5`
end)