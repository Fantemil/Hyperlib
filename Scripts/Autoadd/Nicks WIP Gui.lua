game.StarterGui:SetCore("SendNotification", {
Title = "Loading..";
Text = "Script Was Executed By: " .. game.Players.LocalPlayer.Name;
Duration = 2;
})


wait(3)

game.StarterGui:SetCore("SendNotification", {
Title = "Loaded!";
Text = "Enjoy!"; 
Duration = 4;
});


wait(0.5)

	 
local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://1584394759"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()


local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Nick's Project Jojo v1.0")
 

local serv = win:Server("The main stuff", "")

local Frame = game.CoreGui.Discord.MainFrame

local btns = serv:Channel("Player")

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.RightControl then
        if Frame.Visible == false then
            Frame.Visible = true
        else
            Frame.Visible = false
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)


btns:Textbox("Stand Power", "Type here!", true, function(t)
game.Players.LocalPlayer.Power.Value     = (t);
game.Players.LocalPlayer.PowerStat.Value = (t);
end)

btns:Textbox("Endurance", "Type here!", true, function(t)
game.Players.LocalPlayer.Endurance.Value     = (t);
game.Players.LocalPlayer.EnduranceStat.Value = (t);
end)

btns:Textbox("Special Stat", "Type here!", true, function(t)
game.Players.LocalPlayer.Special.Value     = (t);
game.Players.LocalPlayer.SpecialStat.Value = (t);
end)

btns:Textbox("Resilience", "Type here!", true, function(t)
game.Players.LocalPlayer.Resilience.Value     = (t);
end)


btns:Textbox("Potency", "Type here!", true, function(t)
game.Players.LocalPlayer.Potency.Value     = (t);
end)


btns:Label("Type Inf for infinite")


local sldr                           = btns:Slider("Attack Speed", 1, 5, 1, function(t)
game.Players.LocalPlayer.Speed.Value = (t)
end)

local sldr                           = btns:Slider("Walkspeed", 1, 100, 50, function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (t)
end)

local sldr                           = btns:Slider("JumpPower", 1, 200, 50, function(t)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (t)
end)


btns:Seperator()



btns:Button("Open Stand Storage", function()
game.Players.LocalPlayer.PlayerGui.standstore.Enabled = true
game.Players.LocalPlayer.PlayerGui.standstore.Visible = true
end)

btns:Button("Open Shop", function()
 loadstring(game:HttpGet("https://pastebin.com/raw/4kPWmS7v", true))() 
end)



btns:Button("Kill Aura", function()
local Count = 0
while true do
    wait(0.9)
local A_1 = 99999999
local Event = game:GetService("ReplicatedStorage").Specials.throatslit
Event:FireServer(A_1)
Count = Count + 1
end
end)

btns:Button("Do an absurd amount of damage to everything near you", function()
local A_1   = 999999999999999999999999999
local Event = game:GetService("ReplicatedStorage").Specials.throatslit
Event:FireServer(A_1)
end)

btns:Button("Check your Worthiness", function()
game.StarterGui:SetCore("SendNotification", {
Title = "Worthiness Check";
Text = "Worth: " .. game.Players.LocalPlayer.Worth.Value;
Duration = 3;
})
end)


local tp = serv:Channel("Teleports")

tp:Button("Teleport to Dio's Bone", function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("DioBone").CFrame
end)

tp:Button("Teleport to Dio's Diary (Worthiness Version)", function()
    while wait(5) do
for _,v in pairs(game.Workspace:GetDescendants()) do
   if string.find(v.Name, "DioDiary") and v:FindFirstChild("Handle") then
       v:FindFirstChild("Handle").Anchored = true
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(0,0,-2) * v:FindFirstChild("Handle").CFrame
    end
end
end
end)




tp:Button("Teleport to Ultimate Dummy", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(838.822571, 1029.94226, -1223.36951)
end)

tp:Button("Teleport to Hyperspace Dummy", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1195.75085, 1049.79041, 5.64134359)
end)




tp:Label("Quests")

tp:Button("Teleport to quest: Exp is Power", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1916.55969, 875.011841, -222.287766)
end)

tp:Button("Teleport to quest: Assault On Titans", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1072.45056, 875.22229, -754.062012, 0.852683008, 1.31428397e-08, -0.522428632, -3.29306005e-09, 1, 1.9782421e-08, 0.522428632, -1.51477462e-08, 0.852683008)
end)

tp:Button("Teleport to quest: Hamon Hunt", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1164.27197, 875.449097, 96.3368378, -0.985683084, -5.59815305e-08, 0.168608442, -6.32552286e-08, 1, -3.77684692e-08, -0.168608442, -4.78931099e-08, -0.985683084)
end)

tp:Button("Teleport to quest: Vampire Hunt", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1568.63184, 875.026978, -1139.93213, 0.90634042, -2.3473568e-08, -0.422548324, 1.2666816e-08, 1, -2.83828374e-08, 0.422548324, 2.03721715e-08, 0.90634042)
end)

tp:Button("Teleport to quest: A Huge Issue", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1713.60144, 874.999939, -1161.75171, 0.874661446, -2.09152944e-08, -0.484734267, -2.88108755e-08, 1, -9.51347161e-08, 0.484734267, 9.71762901e-08, 0.874661446)
end)

tp:Button("Teleport to quest: A giant problem", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1991.23816, 875, -1021.729, 0.878873348, 4.90018559e-09, -0.477055162, 1.59368856e-08, 1, 3.96320843e-08, 0.477055162, -4.24343547e-08, 0.878873348)
end)

tp:Button("Teleport to quest: Attack on titans", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.899292, 875.71167, -528.016968, 0.135717228, -5.74621382e-08, 0.990747631, 2.70949059e-08, 1, 5.42871774e-08, -0.990747631, 1.94765075e-08, 0.135717228)
end)

tp:Button("Teleport to quest: The reality Warper", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1138.2085, 874.999939, -168.800003, -0.983227015, -6.46937295e-08, -0.182385802, -6.85475854e-08, 1, 1.48263029e-08, 0.182385802, 2.70797287e-08, -0.983227015)
end)

tp:Label("NPCS")

tp:Button("Rohan", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1621.55139, 875.061462, -969.720886, -0.00856200326, -2.00013144e-08, -0.999963343, 1.70892589e-09, 1, -2.00166799e-08, 0.999963343, -1.88024618e-09, -0.00856200326)
end)

tp:Button("Jotaro", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1905.40637, 875, -1295.20142, -0.898807049, 1.11613012e-08, 0.438344449, 3.67894124e-08, 1, 4.99727619e-08, -0.438344449, 6.10423072e-08, -0.898807049)
end)

tp:Button("Stroheim", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1657.61694, 875.168945, -919.496216, -0.579595625, 3.34473924e-08, -0.814904213, 3.86727272e-08, 1, 1.35388287e-08, 0.814904213, -2.36675248e-08, -0.579595625)
end)

tp:Button("Zeppeli", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Zeppeli"].Head.CFrame
end)

tp:Button("Caesar", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Caesar"].Head.CFrame
end)

tp:Label("Places")

tp:Button("Teleport to shop", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1518.72522, 875.027283, -425.667816)
end)

tp:Button("Teleport to DIO's Spawn", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1361.4696, 875.011536, -200.33252, -0.999659121, 1.14996306e-08, 0.026108034, 1.44327688e-08, 1, 1.12157757e-07, -0.026108034, 1.12496338e-07, -0.999659121)
end)

tp:Button("Teleport to Kira's Spawn", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1092.9906, 875.011597, -1060.41321, 0.917077363, -6.4417172e-08, 0.398709238, 3.527283e-08, 1, 8.04326845e-08, -0.398709238, -5.96993956e-08, 0.917077363)
end)


tp:Button("Teleport to Gas Station", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1561.05432, 875.711853, -1121.32532)
end)

tp:Button("Stone Free User 1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2058.42358, 875.71167, -543.380737, -0.0174025502, -4.07834371e-08, 0.999848545, -3.49054758e-08, 1, 4.01820763e-08, -0.999848545, -3.42009194e-08, -0.0174025502)
end)

tp:Button("Stone Free User 2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2004.84253, 875.011658, -951.163208, -0.275661975, -2.97080991e-08, -0.961254656, -1.00663646e-08, 1, -2.8018782e-08, 0.961254656, 1.95262673e-09, -0.275661975)
end)

tp:Button("Fusion Mountain", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2004.84253, 875.011658, -951.163208, -0.275661975, -2.97080991e-08, -0.961254656, -1.00663646e-08, 1, -2.8018782e-08, 0.961254656, 1.95262673e-09, -0.275661975)
end)


local o = serv:Channel("Others")

o:Button("Bring all non arrow items to you", function()
while wait(3) do
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end
end
end)

o:Button("AutoComplete Jotaro Quests", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/8RFvg6Yb", true))()
    end)
    
o:Button("AutoComplete Rohan Quests", function()
loadstring(game:HttpGet("https://pastebin.com/raw/gQhkpVgV", true))()
end)

o:Button("Look at player's stats", function()
loadstring(game:HttpGet("https://pastebin.com/raw/vwbxDc0u"))()
end)

local shop = serv:Channel("Shop")

shop:Label("Remotely buy shop items")

shop:Button("StandArrow", function()
game.ReplicatedStorage.Logic.giveitem:FireServer("StandArrow") 
end)

shop:Button("RokakakaFruit", function()
game.ReplicatedStorage.Logic.giveitem:FireServer("RokakakaFruit") 
end)

shop:Button("LuckyArrow", function()
    game.ReplicatedStorage.Logic.giveitem:FireServer("LuckyStandArrow") 
end)


shop:Button("Hamon", function()
    game.ReplicatedStorage.Logic.giveitem:FireServer("Hamon") 
end)

shop:Button("Rock Human", function()
    game.ReplicatedStorage.Logic.giveitem:FireServer("Rock Human") 
end)

shop:Button("Vampire", function()
    game.ReplicatedStorage.Logic.giveitem:FireServer("Vampire") 
end)

shop:Button("Spin", function()
    game.ReplicatedStorage.Logic.giveitem:FireServer("Spin") 
end)


local it = serv:Channel("Worlds")

it:Button("Go to Italy", function()
        game:GetService("TeleportService"):Teleport(2731332132, game.Players.LocalPlayer)
    end)

it:Button("Go to Morioh", function()
        game:GetService("TeleportService"):Teleport(2295122555, game.Players.LocalPlayer)
    end)
    
    
local k = serv:Channel("Bosses")

k:Button("Kill Notorious B.I.G", function()
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Notorious B.I.G" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end)

k:Button("Kill DIO", function()
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "DIO" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end)

k:Button("Kill Kira", function()
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Kira" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end)

k:Button("Kill Diavolo", function()

	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Diavolo" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end)

k:Toggle("SpamKill DIO",false, function(bool)

_G.Active = (bool)

if _G.Active == true then

while wait() do
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "DIO" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

k:Toggle("SpamKill Kira",false, function(bool)

_G.Active = (bool)

if _G.Active == true then

while wait() do
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Kira" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

k:Toggle("SpamKill Diavolo",false, function(bool)

_G.Active = (bool)

if _G.Active == true then

while wait() do
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Diavolo" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

k:Toggle("SpamKill BIG",false, function(bool)

_G.Active = (bool)

if _G.Active == true then
while wait() do
	local plr = game.Players.LocalPlayer.Character

for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Notorious B.I.G" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

local noti = serv:Channel("Notifiers")

noti:Button("Notorious B.I.G Notifier", function()


local Big = workspace:WaitForChild("Notorious B.I.G")
if Big then
game.StarterGui:SetCore("SendNotification", {
Title = "Boss Spawn";
Text = "Notorious B.I.G Spawned"; 
Duration = 10;
})

local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://186446892"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end)

noti:Button("DIO Notifier", function()


local DIO = workspace:WaitForChild("DIO")
if DIO then
game.StarterGui:SetCore("SendNotification", {
Title = "Boss Spawn";
Text = "DIO Spawned"; 
Duration = 10;
})

local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://186446892"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end)

noti:Button("Kira Notifier", function()


local Kira = workspace:WaitForChild("Kira")
if Kira then
game.StarterGui:SetCore("SendNotification", {
Title = "Boss Spawn";
Text = "Kira Spawned"; 
Duration = 10;
})

local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://186446892"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end)

noti:Button("Diavolo Notifier", function()

local Diav = workspace:WaitForChild("Diavolo")
if Diav then
game.StarterGui:SetCore("SendNotification", {
Title = "Boss Spawn";
Text = "Diavolo Spawned"; 
Duration = 10;
})

local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://186446892"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end)



local btns = serv:Channel("Farm")

btns:Label("These cannot be disabled unless you rejoin")


btns:Toggle("Auto Farm (Morioh&Italy)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
local R=game:GetService'ReplicatedStorage':WaitForChild'Logic':WaitForChild'hitbox'
local R2=game:GetService'ReplicatedStorage':WaitForChild'Logic':WaitForChild'misc'
local LP=game:GetService'Players'.LocalPlayer
for _,a in ipairs(workspace:GetChildren())do
  if(a:FindFirstChildOfClass'Humanoid'and a.Name~=LP.Name)then
      spawn(function()
          local Pa=LP.Character:FindFirstChildOfClass'Part'
          R:InvokeServer(0,Pa,Pa.CFrame,2e8,LP.Character.Torso.voiceline,a:FindFirstChildOfClass'Humanoid')
      end)
  end
end
workspace.ChildAdded:Connect(function(a)
  wait(.125)
  if(a:FindFirstChildOfClass'Humanoid'and a.Name~=LP.Name)then
      spawn(function()
          repeat wait(.75)until not a:FindFirstChildOfClass'ForceField'
          local Pa=LP.Character:FindFirstChildOfClass'Part'
          R:InvokeServer(0,Pa,Pa.CFrame,2e8,LP.Character.Torso.voiceline,a:FindFirstChildOfClass'Humanoid')
      end)
  end
end)
for _,a in ipairs(game:GetService'Players':GetPlayers())do
  R2:FireServer(10,a['S/Level'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Level'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Speed'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['S/Speed'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Power'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['S/Power'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Stand'],'UI','zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['S/Stand'],'UI','zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Points'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['S/Points'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['Special'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
  R2:FireServer(10,a['S/Special'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
end
end
end)

btns:Toggle("Worthiness Farm (Italy)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Holy Dummy" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
game.ReplicatedStorage.Logic.hitbox:InvokeServer(99, game.Players.LocalPlayer.Character.Head, CFrame.new(nil, nil, nil), 1000000000000, game.Players.LocalPlayer.Character.Torso.voiceline, v.Humanoid, false, false, false)
end
end
end
end
end)

btns:Toggle("Money Farm (Italy)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Space Dummy" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
game.ReplicatedStorage.Logic.hitbox:InvokeServer(99, game.Players.LocalPlayer.Character.Head, CFrame.new(nil, nil, nil), 1000000000000, game.Players.LocalPlayer.Character.Torso.voiceline, v.Humanoid, false, false, false)
end
end
end
end
end)

btns:Toggle("Money Farm (Morioh)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do


                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Giant Dummy" or v.Name == "Metal Dummy" or v.Name == "Wood Dummy" or v.Name == "Ice Dummy" or v.Name == "Rock Dummy" then
                        game:GetService("ReplicatedStorage").Specials.healevent:FireServer(CFrame.new(nil, nil, nil),math.huge,v.Humanoid,game.Players.LocalPlayer.Character.Torso.voiceline,false)
                        game.ReplicatedStorage.Logic.hitbox:InvokeServer(99, game.Players.LocalPlayer.Character.Head, CFrame.new(nil, nil, nil), math.huge, game.Players.LocalPlayer.Character.Torso.voiceline, v.Humanoid, false, false, false)
end
end
end
end
end)

btns:Toggle("Level Farm (Italy)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
            game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(1,nil,game:GetService("Workspace")["Space Dummy"].Torso.CFrame,math.huge,game.Players.LocalPlayer.Character.Torso.voiceline,game:GetService("Workspace")["Space Dummy"].Humanoid,false)
            game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(76,nil,game:GetService("Workspace")["Space Dummy"].Torso.CFrame,math.huge,game.Players.LocalPlayer.Character.Torso.voiceline,game:GetService("Workspace")["Space Dummy"].Humanoid,false)
 end
end
 end)

btns:Toggle("AutoKill Evil Star Platinum Users (Italy)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Evil Star Platinum User" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

btns:Toggle("AutoKill Evil Stone Free Users (Morioh)",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Evil Stone Free User" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

btns:Button("AutoKill Dio with Quest", function()
local dio = game.Workspace.DIO
if dio then

	local plr = game.Players.LocalPlayer.Character

while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "DIO" then
game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))

end
end
end
end
end)

local item = serv:Channel("Items")

item:Button("Teleport to Requiem Arrow", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Requiem Arrow" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
    
end
end
end)

item:Button("Teleport to Aja Stone", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "RedAja" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end
end)

item:Button("Teleport to Stone Rokakaka", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "StoneRokakakaFruit" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
    
end
end
end)

item:Button("Teleport to Dio's Diary", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Dio's Diary" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
    
end
end
end)

item:Button("Teleport to Vampire Mask", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "VampireMask" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   
   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
   
end
end
end)

item:Button("Teleport to Dio's Bone", function()
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Dio's Bone" then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    
   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play() 
   
end
end
end)

item:Button("Teleport to money bag", function()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("MoneyBag").CFrame
   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
end)


item:Button("Teleport to Arrow", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("StandArrow").Handle.CFrame
   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
end)

item:Button("Teleport to RokakakaFruit", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("RokakakaFruit").Handle.CFrame
   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()
end)

item:Seperator()

item:Button("Item Notifier", function()

while wait() do
local arrow = workspace:WaitForChild("StandArrow")
if arrow then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "StandArrow Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
local fr = workspace:WaitForChild("RokakakaFruit")
if fr then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "RokakakaFruit Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
local ra = workspace:WaitForChild("RequiemArrow")
if ra then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Requiem Arrow Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
local sroka = workspace:WaitForChild("StoneRokakakaFruit")
if sroka then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "StoneRokakakaFruit Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
local dd = workspace:WaitForChild("Dio's Diary")
if dd then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Dio's Diary (Item) Dropped"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
local db = workspace:WaitForChild("Dio's Bone")
if db then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Dio's Bone (Item) Dropped"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()


while wait() do
local vm = workspace:WaitForChild("VampireMask")
if vm then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Vampire Mask Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "DioDiary" then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Worthiness Diary Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "DioBone" then
game.StarterGui:SetCore("SendNotification", {
Title = "Item Spawned";
Text = "Worthiness Bone Spawned"; 
Duration = 3;
})

   local m =Instance.new("Sound")
m.Name = "Sound"
m.SoundId = "rbxassetid://444895479"
m.Volume = 0.5
m.Pitch = 1
m.Looped = false
m.archivable = false
m.Parent = game.Workspace

m:Play()

end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end

end)



local bnds = serv:Channel("Binds")

bnds:Bind("Instant Heal", Enum.KeyCode.H, function()
game:GetService("ReplicatedStorage").Specials.healevent:FireServer(CFrame.new(nil, nil, nil),math.huge,game:GetService("Workspace")[game.Players.LocalPlayer.Name]:WaitForChild("Humanoid"),game.Players.LocalPlayer.Character.Torso.voiceline,false)
end)

bnds:Bind("Anti-Timestop", Enum.KeyCode.T, function()
        game.Workspace.timestopped.Value = false
end)

bnds:Toggle("Anti TimeStop toggle",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do

game.Workspace.timestopped.Value = false
end
end
end)





bnds:Label("Anti TimeStop only works while time is stopped")

local esp = serv:Channel("Esp")

esp:Toggle("DIO ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "DIO" then
    
                Instance.new("Highlight", v)
                                BillboardGui.Parent = v.Parent            
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
                
            end
            end
        end
    end
end)

esp:Toggle("Kira ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "Kira" then
    
                Instance.new("Highlight", v)
                                BillboardGui.Parent = v.Parent            
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
                
            end
            end
        end
    end
end)

esp:Toggle("Diavolo ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "Diavolo" then
    
                Instance.new("Highlight", v)
                                BillboardGui.Parent = v.Parent            
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
                
            end
            end
        end
    end
end)

esp:Toggle("B.I.G ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v.Name == "Notorious B.I.G" then
    
                Instance.new("Highlight", v)
                BillboardGui.Parent = v.Parent            
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
                
            end
            end
        end
    end
end)

esp:Toggle("NPC ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
while wait() do
for _,v in pairs(workspace:GetChildren()) do 
if v:FindFirstChild("Humanoid") and v.Name == "Caesar" or "Zeppeli" or "Gyro" then
    
                Instance.new("Highlight", v)
BillboardGui.Parent = v.Parent            
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
                
           
            end
            
            
            end
        end
    end
end)

esp:Toggle("Item ESP",false, function(bool)


_G.Active = (bool)

if _G.Active == true then
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Handle" then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")

BillboardGui.Parent = v.Parent
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 50, 0, 50)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
end
end
end
end)

local trol = serv:Channel("Trolling")

trol:Toggle("Bring All PLAYERS and attack them",false, function(bool)

local LocalPlayer = game:GetService("Players").LocalPlayer
_G.active = (bool)

if game:GetService("RunService").RenderStepped then
    if _G.active == true then
        for _,X in pairs(game.Players:GetChildren()) do
            if X.Name ~= LocalPlayer.Name then
                X.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(-3, -1, -3) * LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -99
            end
        end
        end
    end
end)

trol:Toggle("Kill All Dummies (Morioh and italy)",false, function(bool)
local plr = game.Players.LocalPlayer.Character

_G.Active = (bool)

if _G.Active == true then
while wait() do
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
	if v.Name:find("Dummy") then
		game:GetService("ReplicatedStorage").Logic.hitbox:InvokeServer(0,plr["Right Arm"],CFrame.new(0,0,0),math.huge,plr.Torso.voiceline,v:FindFirstChild("Humanoid"))
end
end
end
end
end)

trol:Button("Kiss Sub x 100", function()
T = 100

for i = 1, T do
local plrbackpack = game.Players.LocalPlayer.Backpack

local kiss = game:GetService("ReplicatedStorage").Fusions.Kiss

local kissclone = kiss:Clone()

kissclone.Parent = plrbackpack

end
end)

trol:Label("Get Rid of Multiplier by resetting")

trol:Label("Activate it by pressing U")

