-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local PrisonDestroyer = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local title_2 = Instance.new("TextLabel")
local respawnmainoff = Instance.new("Frame")
local respawnoff = Instance.new("TextButton")
local respawnmainon = Instance.new("Frame")
local respawnon = Instance.new("TextButton")
local gunsmainoff = Instance.new("Frame")
local gunsoff = Instance.new("TextButton")
local gunsmainon = Instance.new("Frame")
local gunson = Instance.new("TextButton")
local auramainoff = Instance.new("Frame")
local auraoff = Instance.new("TextButton")
local auramainon = Instance.new("Frame")
local auraon = Instance.new("TextButton")
local crimplayer = Instance.new("Frame")
local crimtext = Instance.new("TextBox")
local crim = Instance.new("TextButton")
local antiabuser = Instance.new("TextButton")
local prisonbreaker = Instance.new("TextButton")
local spammain = Instance.new("Frame")
local spamtext = Instance.new("TextBox")
local spammainoff = Instance.new("Frame")
local spamoff = Instance.new("TextButton")
local spammainon = Instance.new("Frame")
local spamon = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
--Properties:
PrisonDestroyer.Name = "PrisonDestroyer"
PrisonDestroyer.Parent = game.CoreGui

main.Name = "main"
main.Parent = PrisonDestroyer
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.Position = UDim2.new(0.0067859143, 0, 0.585995078, 0)
main.Size = UDim2.new(0, 449, 0, 326)
main.Visible = true
main.Style = Enum.FrameStyle.RobloxRound
main.Active = true
main.Draggable = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
 return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
 String = RemoveSpaces(String)
 for _, _Player in pairs(Players:GetPlayers()) do
  if _Player.Name:lower():match('^'.. String:lower()) then
   return _Player
  end
 end
 return nil
end

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(0, 1, 1)
title.Position = UDim2.new(-0.0181788076, 0, -0.00509521738, 0)
title.Size = UDim2.new(0, 447, 0, 31)
title.Font = Enum.Font.GothamBlack
title.Text = "PrisonDestroyer"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 20

title_2.Name = "title"
title_2.Parent = main
title_2.BackgroundColor3 = Color3.new(1, 0, 1)
title_2.Position = UDim2.new(-0.00593716372, 0, 0.922862053, 0)
title_2.Size = UDim2.new(0, 438, 0, 31)
title_2.Font = Enum.Font.GothamBold
title_2.Text = "Youtube: Jake11price"
title_2.TextColor3 = Color3.new(0, 0, 0)
title_2.TextSize = 14

respawnmainoff.Name = "respawnmainoff"
respawnmainoff.Parent = main
respawnmainoff.BackgroundColor3 = Color3.new(0, 0, 0)
respawnmainoff.Position = UDim2.new(-0.00730320066, 0, 0.128140301, 0)
respawnmainoff.Size = UDim2.new(0, 147, 0, 56)

respawnoff.Name = "respawnoff"
respawnoff.Parent = respawnmainoff
respawnoff.BackgroundColor3 = Color3.new(1, 0, 0)
respawnoff.Position = UDim2.new(0.0537641346, 0, 0.122988023, 0)
respawnoff.Size = UDim2.new(0, 130, 0, 42)
respawnoff.Font = Enum.Font.GothamBold
respawnoff.Text = "Auto Respawn (OFF)"
respawnoff.TextColor3 = Color3.new(0, 0, 0)
respawnoff.TextSize = 13
respawnoff.MouseButton1Down:connect(function()
respawnmainoff.Visible = false
respawnmainon.Visible = true

local blah = (game.Players.LocalPlayer.Name)

_G.Looop = true

while _G.Looop == true do wait(0.1)
      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })
  local A_1 = "LocalPlayer"

local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
end
end
end)

respawnmainon.Name = "respawnmainon"
respawnmainon.Parent = main
respawnmainon.BackgroundColor3 = Color3.new(0, 0, 0)
respawnmainon.Position = UDim2.new(-0.00933132041, 0, 0.125080392, 0)
respawnmainon.Size = UDim2.new(0, 147, 0, 56)
respawnmainon.Visible = false

respawnon.Name = "respawnon"
respawnon.Parent = respawnmainon
respawnon.BackgroundColor3 = Color3.new(0, 1, 0)
respawnon.Position = UDim2.new(0.0518811233, 0, 0.124675326, 0)
respawnon.Size = UDim2.new(0, 130, 0, 42)
respawnon.Font = Enum.Font.GothamBold
respawnon.Text = "Auto Respawn (ON)"
respawnon.TextColor3 = Color3.new(0, 0, 0)
respawnon.TextSize = 14
respawnon.MouseButton1Down:connect(function()
respawnmainon.Visible = false
respawnmainoff.Visible = true

local blah = (game.Players.LocalPlayer.Name)

_G.Looop = false

while _G.Looop == true do wait(0.1)
      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })
  local A_1 = "LocalPlayer"

local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
end
end
end)

gunsmainoff.Name = "gunsmainoff"
gunsmainoff.Parent = main
gunsmainoff.BackgroundColor3 = Color3.new(0, 0, 0)
gunsmainoff.Position = UDim2.new(0.66536516, 0, 0.127620965, 0)
gunsmainoff.Size = UDim2.new(0, 147, 0, 56)

gunsoff.Name = "gunsoff"
gunsoff.Parent = gunsmainoff
gunsoff.BackgroundColor3 = Color3.new(1, 0, 0)
gunsoff.Position = UDim2.new(0.0518809259, 0, 0.125, 0)
gunsoff.Size = UDim2.new(0, 130, 0, 42)
gunsoff.Font = Enum.Font.GothamBold
gunsoff.Text = "Spawn Guns (OFF)"
gunsoff.TextColor3 = Color3.new(0, 0, 0)
gunsoff.TextSize = 14
gunsoff.MouseButton1Down:connect(function()

workspace.Remote.TeamEvent:FireServer("Bright blue")

wait(0.2)
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do 
if v == game.Players.LocalPlayer then
gunsmainoff.Visible = false
gunsmainon.Visible = true
local blah = (game.Players.LocalPlayer.Name)

wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915.772583, 99.9900055, 2381.95752)

_G.Looppp = true

while _G.Looppp == true do wait(0.2)
 game:GetService("Workspace")[blah].Humanoid.Health = 0

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })

  local A_1 = "LocalPlayer"


local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
end
end

else
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error";
        Text = "GUARDS TEAM IS FULL!";
        })
end
end
end)

gunsmainon.Name = "gunsmainon"
gunsmainon.Parent = main
gunsmainon.BackgroundColor3 = Color3.new(0, 0, 0)
gunsmainon.Position = UDim2.new(0.663196027, 0, 0.124337323, 0)
gunsmainon.Size = UDim2.new(0, 147, 0, 56)
gunsmainon.Visible = false

gunson.Name = "gunson"
gunson.Parent = gunsmainon
gunson.BackgroundColor3 = Color3.new(0, 1, 0)
gunson.Position = UDim2.new(0.0612245053, 0, 0.107142858, 0)
gunson.Size = UDim2.new(0, 130, 0, 42)
gunson.Font = Enum.Font.GothamBold
gunson.Text = "Spawn Guns (ON)"
gunson.TextColor3 = Color3.new(0, 0, 0)
gunson.TextSize = 14
gunson.MouseButton1Down:connect(function()
gunsmainon.Visible = false
gunsmainoff.Visible = true

workspace.Remote.TeamEvent:FireServer("Bright blue")

local blah = (game.Players.LocalPlayer.Name)

_G.Looppp = false

while _G.Looppp == true do wait(0.2)
 game:GetService("Workspace")[blah].Humanoid.Health = 0

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })
end
  local A_1 = "LocalPlayer"

local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
end
end)

auramainoff.Name = "auramainoff"
auramainoff.Parent = main
auramainoff.BackgroundColor3 = Color3.new(0, 0, 0)
auramainoff.Position = UDim2.new(0.369787693, 0, 0.127583504, 0)
auramainoff.Size = UDim2.new(0, 111, 0, 56)

auraoff.Name = "auraoff"
auraoff.Parent = auramainoff
auraoff.BackgroundColor3 = Color3.new(1, 0, 0)
auraoff.Position = UDim2.new(0.0590088964, 0, 0.129285544, 0)
auraoff.Size = UDim2.new(0, 99, 0, 40)
auraoff.Font = Enum.Font.GothamBold
auraoff.Text = "Kill Aura (OFF)"
auraoff.TextColor3 = Color3.new(0, 0, 0)
auraoff.TextSize = 13
auraoff.MouseButton1Down:connect(function()
auramainoff.Visible = false
auramainon.Visible = true

workspace.Remote.TeamEvent:FireServer("Bright orange")

_G.Runningg = true

while _G.Runningg == true do wait()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
local tbl_main = 
{
      v
}
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(tbl_main))
end
end
end
end)

auramainon.Name = "auramainon"
auramainon.Parent = main
auramainon.BackgroundColor3 = Color3.new(0, 0, 0)
auramainon.Position = UDim2.new(0.367521346, 0, 0.128021032, 0)
auramainon.Size = UDim2.new(0, 111, 0, 56)
auramainon.Visible = false

auraon.Name = "auraon"
auraon.Parent = auramainon
auraon.BackgroundColor3 = Color3.new(0.333333, 1, 0)
auraon.Position = UDim2.new(0.0540542603, 0, 0.142857075, 0)
auraon.Size = UDim2.new(0, 99, 0, 40)
auraon.Font = Enum.Font.GothamBold
auraon.Text = "Kill Aura (ON)"
auraon.TextColor3 = Color3.new(0, 0, 0)
auraon.TextSize = 14
auraon.MouseButton1Down:connect(function()
auramainon.Visible = false
auramainoff.Visible = true

_G.Runningg = false

while _G.Runningg == true do wait()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
local tbl_main = 
{
      v
}
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(tbl_main))
end
end
end
end)

crimplayer.Name = "crimplayer"
crimplayer.Parent = main
crimplayer.BackgroundColor3 = Color3.new(0, 0.333333, 1)
crimplayer.Position = UDim2.new(0.355967104, 0, 0.353531331, 0)
crimplayer.Size = UDim2.new(0, 123, 0, 88)

crimtext.Name = "crimtext"
crimtext.Parent = crimplayer
crimtext.BackgroundColor3 = Color3.new(0.333333, 1, 0)
crimtext.Position = UDim2.new(0.024390243, 0, 0, 0)
crimtext.Size = UDim2.new(0, 117, 0, 39)
crimtext.Font = Enum.Font.GothamBlack
crimtext.Text = "PlayerName"
crimtext.TextColor3 = Color3.new(0, 0, 0)
crimtext.TextSize = 14

crim.Name = "crim"
crim.Parent = crimplayer
crim.BackgroundColor3 = Color3.new(1, 0, 0.498039)
crim.Position = UDim2.new(0.0569105148, 0, 0.575784504, 0)
crim.Size = UDim2.new(0, 109, 0, 31)
crim.Font = Enum.Font.GothamBold
crim.Text = "Make Criminal"
crim.TextColor3 = Color3.new(0, 0, 0)
crim.TextSize = 14
crim.MouseButton1Down:connect(function()
 local Apart = Instance.new("Part")

Apart.Name = "PlrsPos"
Apart.Parent = workspace
Apart.Anchored = true
Apart.Archivable = true
Apart.CFrame = CFrame.new(9e99, 9e99, 9e99)

 local lol = FindPlayer(crimtext.Text)

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 

wait(0.1)
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")

local A_1 = 
{
 [1] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(277.738678, 6.89340925, 287.773712)), 
 ["Distance"] = 4.7204174995422, 
 ["Cframe"] = CFrame.new(832.049377, 101.392006, 2300.97168, 0.843892097, -0.0554918349, 0.533635378, 0, 0.994636595, 0.103430569, -0.536512911, -0.0872842371, 0.839366019), 
 ["Hit"] = lol.Character.Head
}, 
 [2] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(303.047546, 21.3568707, 260.203888)), 
 ["Distance"] = 4.8114862442017, 
 ["Cframe"] = CFrame.new(832.390259, 101.550629, 2300.74097, 0.738044441, -0.112958886, 0.665229917, 7.45057971e-09, 0.985887885, 0.16740793, -0.674752235, -0.123554483, 0.727628946), 
 ["Hit"] = lol.Character.Head
}, 
 [3] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(296.800507, 7.00420141, 268.067932)), 
 ["Distance"] = 4.444625377655, 
 ["Cframe"] = CFrame.new(832.185486, 101.391617, 2300.70264, 0.775115669, -0.0692948848, 0.628007889, 7.45057971e-09, 0.993967533, 0.109675139, -0.631819367, -0.0850109085, 0.770439863), 
 ["Hit"] = lol.Character.Head
}, 
 [4] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(284.930573, 11.9850616, 280.483368)), 
 ["Distance"] = 4.6211166381836, 
 ["Cframe"] = CFrame.new(832.10083, 101.445007, 2300.86963, 0.820150614, -0.0735745132, 0.567397356, 0, 0.991697431, 0.128593579, -0.572147667, -0.105466105, 0.81334126), 
 ["Hit"] = lol.Character.Head
}, 
 [5] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(294.625824, 2.15741801, 270.538269)), 
 ["Distance"] = 4.4639973640442, 
 ["Cframe"] = CFrame.new(832.169434, 101.341301, 2300.73438, 0.784266233, -0.0537625961, 0.618090749, -3.7252903e-09, 0.99623847, 0.086654529, -0.620424569, -0.0679602176, 0.781316102), 
 ["Hit"] = lol.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)

workspace.Remote.TeamEvent:FireServer("Bright orange")

LCS = game.Workspace["Criminals Spawn"].SpawnLocation
 
 _G.killAura = true
 wait(0.1)
 
 Apart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
 Apart.Transparency = 1
 Apart.Anchored = true
 Apart.CanCollide = false
 wait(0.1)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lol.Character.HumanoidRootPart.CFrame
 
 istptoplr = true
 wait(0.004)
 
 if game.Players.LocalPlayer.Team.TeamColor == "Bright orange" then
  wait(2)
  workspace.Remote.TeamEvent:FireServer("Bright orange")
 elseif
  game.Players.LocalPlayer.Team.TeamColor == "Bright blue" then
   workspace.Remote.TeamEvent:FireServer("Bright blue")
 end
 
   if istptoplr == true then
      while istptoplr do
   wait()
   
   game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = lol.Character.HumanoidRootPart.CFrame
   
   LCS = game.Workspace["Criminals Spawn"].SpawnLocation

   LCS.CanCollide = false
   LCS.Size = Vector3.new(51.05, 24.12, 54.76)
   LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   LCS.Transparency = 1
  
  wait(0.1)
  
        istptoplr = false
  
  wait(0.04)
  
          if istptoplr == false then
             LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
             LCS.Size = Vector3.new(6, 0.2, 6)
             LCS.Transparency = 0
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Apart.CFrame
             wait()
             istptoplr = false
wait(0.1)
       workspace.Remote.TeamEvent:FireServer("Bright orange")
      end
  end
 end
end)

antiabuser.Name = "antiabuser"
antiabuser.Parent = main
antiabuser.BackgroundColor3 = Color3.new(0, 1, 1)
antiabuser.Position = UDim2.new(0.683139443, 0, 0.417830199, 0)
antiabuser.Size = UDim2.new(0, 130, 0, 50)
antiabuser.Font = Enum.Font.GothamBold
antiabuser.Text = "Anti Abusers Gui"
antiabuser.TextColor3 = Color3.new(0, 0, 0)
antiabuser.TextSize = 14
antiabuser.MouseButton1Down:connect(function()
-- Made by Jake11price
local gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local looptazeframe = Instance.new("Frame")
local looptaze = Instance.new("TextButton")
local looptazetext = Instance.new("TextBox")
local title = Instance.new("TextLabel")
local loopkillframe = Instance.new("Frame")
local loopkilltext = Instance.new("TextButton")
local loopkill = Instance.new("TextButton")
local infswatgun = Instance.new("TextButton")
local infgun = Instance.new("TextButton")
local close = Instance.new("TextButton")
local bypasshackers = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
--Properties:
gui.Name = "gui"
gui.Parent = game.CoreGui

main.Name = "main"
main.Parent = gui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.011210762, 0, 0.54422605, 0)
main.Size = UDim2.new(0, 443, 0, 281)
main.Active = true
main.Draggable = true

looptazeframe.Name = "looptazeframe"
looptazeframe.Parent = main
looptazeframe.BackgroundColor3 = Color3.new(0, 0, 0)
looptazeframe.Position = UDim2.new(0, 0, 0.16870153, 0)
looptazeframe.Size = UDim2.new(0, 159, 0, 151)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
 return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
 String = RemoveSpaces(String)
 for _, _Player in pairs(Players:GetPlayers()) do
  if _Player.Name:lower():match('^'.. String:lower()) then
   return _Player
  end
 end
 return nil
end

looptaze.Name = "Punish"
looptaze.Parent = looptazeframe
looptaze.BackgroundColor3 = Color3.new(1, 0.333333, 1)
looptaze.Position = UDim2.new(0.0817610025, 0, 0.622516572, 0)
looptaze.Size = UDim2.new(0, 132, 0, 50)
looptaze.Font = Enum.Font.GothamBold
looptaze.Text = "Punish"
looptaze.TextColor3 = Color3.new(0, 0, 0)
looptaze.TextSize = 17
looptaze.TextWrapped = true
looptaze.MouseButton1Down:connect(function()
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.3)
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do 
if v == game.Players.LocalPlayer then
 local Targett = FindPlayer(looptazetext.Text)
  if Targett and Targett.Character then
        saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })

workspace.Remote.TeamEvent:FireServer("Bright blue")

local A_1 = "LocalPlayer"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })

while true do
local A_1 = 
{
 [1] = 
{
 ["RayObject"] = Ray.new(Vector3.new(829.838562, 101.489998, 2331.25635), Vector3.new(-30.6540909, -5.42795324, 95.0308533)), 
 ["Distance"] = 15.355997085571, 
 ["Cframe"] = CFrame.new(826.616699, 100.8508, 2340.11279, 0.964640439, -0.00993416365, -0.263382077, 9.31322575e-10, 0.999289393, -0.0376908854, 0.263569355, 0.0363581516, 0.963954985), 
 ["Hit"] = Targett.Character.Torso
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Taser"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)

wait(1.0)
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 

local A_1 = 
{
 [2] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(303.047546, 21.3568707, 260.203888)), 
 ["Distance"] = 4.8114862442017, 
 ["Cframe"] = CFrame.new(832.390259, 101.550629, 2300.74097, 0.738044441, -0.112958886, 0.665229917, 7.45057971e-09, 0.985887885, 0.16740793, -0.674752235, -0.123554483, 0.727628946), 
 ["Hit"] = Targett.Character.Head
}, 
 [3] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(296.800507, 7.00420141, 268.067932)), 
 ["Distance"] = 4.444625377655, 
 ["Cframe"] = CFrame.new(832.185486, 101.391617, 2300.70264, 0.775115669, -0.0692948848, 0.628007889, 7.45057971e-09, 0.993967533, 0.109675139, -0.631819367, -0.0850109085, 0.770439863), 
 ["Hit"] = Targett.Character.Head
}, 
 [1] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(277.738678, 6.89340925, 287.773712)), 
 ["Distance"] = 4.7204174995422, 
 ["Cframe"] = CFrame.new(832.049377, 101.392006, 2300.97168, 0.843892097, -0.0554918349, 0.533635378, 0, 0.994636595, 0.103430569, -0.536512911, -0.0872842371, 0.839366019), 
 ["Hit"] = Targett.Character.Head
}, 
 [4] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(284.930573, 11.9850616, 280.483368)), 
 ["Distance"] = 4.6211166381836, 
 ["Cframe"] = CFrame.new(832.10083, 101.445007, 2300.86963, 0.820150614, -0.0735745132, 0.567397356, 0, 0.991697431, 0.128593579, -0.572147667, -0.105466105, 0.81334126), 
 ["Hit"] = Targett.Character.Head
}, 
 [5] = 
{
 ["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(294.625824, 2.15741801, 270.538269)), 
 ["Distance"] = 4.4639973640442, 
 ["Cframe"] = CFrame.new(832.169434, 101.341301, 2300.73438, 0.784266233, -0.0537625961, 0.618090749, -3.7252903e-09, 0.99623847, 0.086654529, -0.620424569, -0.0679602176, 0.781316102), 
 ["Hit"] = Targett.Character.Head
}
}
local A_2 = game:GetService("Players").LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
wait(0.2)
end
end
else
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error";
        Text = "GUARDS TEAM IS FULL!";
        })
  end
 end
end)

looptazetext.Name = "looptazetext"
looptazetext.Parent = looptazeframe
looptazetext.BackgroundColor3 = Color3.new(0, 1, 1)
looptazetext.Position = UDim2.new(0.0440251566, 0, 0.125827804, 0)
looptazetext.Size = UDim2.new(0, 145, 0, 50)
looptazetext.Font = Enum.Font.SourceSansBold
looptazetext.PlaceholderColor3 = Color3.new(0, 1, 1)
looptazetext.Text = "PLAYERNAME"
looptazetext.TextColor3 = Color3.new(0, 0, 0)
looptazetext.TextSize = 14

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.Size = UDim2.new(0, 443, 0, 44)
title.Font = Enum.Font.GothamBold
title.Text = "Anti-Abusers Prison life gui Made By Jake11price"
title.TextColor3 = Color3.new(1, 0, 0)
title.TextSize = 13
title.TextWrapped = true

loopkillframe.Name = "loopkillframe"
loopkillframe.Parent = main
loopkillframe.BackgroundColor3 = Color3.new(0, 0, 0)
loopkillframe.Position = UDim2.new(0.358916491, 0, 0.16870153, 0)
loopkillframe.Size = UDim2.new(0, 158, 0, 151)

loopkilltext.Name = "loopkilltext"
loopkilltext.Parent = loopkillframe
loopkilltext.BackgroundColor3 = Color3.new(1, 0, 1)
loopkilltext.Position = UDim2.new(0.0569620244, 0, 0.125827819, 0)
loopkilltext.Size = UDim2.new(0, 139, 0, 50)
loopkilltext.Font = Enum.Font.GothamBold
loopkilltext.Text = "UNPUNISH ALL"
loopkilltext.TextColor3 = Color3.new(0, 0, 0)
loopkilltext.TextSize = 14
loopkilltext.MouseButton1Down:connect(function()
workspace.Remote.TeamEvent:FireServer("Bright orange")

        saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })
    for i=1,100 do
  workspace.Remote.TeamEvent:FireServer("Bright orange")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(992.738892, -503.049591, 2542.15552)
end

wait(0.5)
local A_1 = "LocalPlayer"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
  wait(0.3)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

loopkill.Name = "loopkill"
loopkill.Parent = loopkillframe
loopkill.BackgroundColor3 = Color3.new(1, 0, 1)
loopkill.Position = UDim2.new(0.0569620244, 0, 0.622516572, 0)
loopkill.Size = UDim2.new(0, 139, 0, 50)
loopkill.Font = Enum.Font.GothamBold
loopkill.Text = "Punish All"
loopkill.TextColor3 = Color3.new(0, 0, 0)
loopkill.TextSize = 17
loopkill.MouseButton1Down:connect(function()
workspace.Remote.TeamEvent:FireServer("Bright blue")
wait(0.3)
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do 
if v == game.Players.LocalPlayer then

        saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })

local A_1 = "LocalPlayer"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })

while true do
wait(1.0)
function kill(a)
local A_1 = 
{
 [1] = 
{
 ["RayObject"] = Ray.new(Vector3.new(829.838562, 101.489998, 2331.25635), Vector3.new(-30.6540909, -5.42795324, 95.0308533)), 
 ["Distance"] = 15.355997085571, 
 ["Cframe"] = CFrame.new(826.616699, 100.8508, 2340.11279, 0.964640439, -0.00993416365, -0.263382077, 9.31322575e-10, 0.999289393, -0.0376908854, 0.263569355, 0.0363581516, 0.963954985), 
 ["Hit"] = a.Character.Torso
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Taser"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
end

for i,v in pairs(game.Players:GetChildren())do
if v.Name ~= game.Players.LocalPlayer.Name then
kill(v)
end
end

wait(1.0)
workspace.Remote.TeamEvent:FireServer("Medium stone grey")

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 

wait(0.5)
function kill(a)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = a.Character.Head
},
  [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = a.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = a.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = a.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = a.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end

for i,v in pairs(game.Players:GetChildren())do
if v.Name ~= game.Players.LocalPlayer.Name then
kill(v)
end
end
wait(0.2)
end
else
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error";
        Text = "GUARDS TEAM IS FULL!";
        })
 end
end
end)

infswatgun.Name = "PrisonBreakerv1.5"
infswatgun.Parent = main
infswatgun.BackgroundColor3 = Color3.new(0, 0.333333, 1)
infswatgun.Position = UDim2.new(0.738148928, 0, 0.501286626, 0)
infswatgun.Size = UDim2.new(0, 106, 0, 50)
infswatgun.Font = Enum.Font.GothamSemibold
infswatgun.Text = "PrisonBreaker v1.5"
infswatgun.TextColor3 = Color3.new(1, 1, 0)
infswatgun.TextSize = 11
infswatgun.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/HpCpt9rt",true))()
end)

infgun.Name = "infgun"
infgun.Parent = main
infgun.BackgroundColor3 = Color3.new(0, 0.333333, 1)
infgun.Position = UDim2.new(0.738148987, 0, 0.234108955, 0)
infgun.Size = UDim2.new(0, 106, 0, 50)
infgun.Font = Enum.Font.GothamBold
infgun.Text = "Criminal Player"
infgun.TextColor3 = Color3.new(1, 1, 0)
infgun.TextSize = 11
infgun.MouseButton1Down:connect(function()
-- Made By Jake11price
local crimgui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local crimtext = Instance.new("TextBox")
local makecrim = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
--Properties:
crimgui.Name = "crimgui"
crimgui.Parent = game.CoreGui

Frame.Parent = crimgui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.164424494, 0, 0.328009814, 0)
Frame.Size = UDim2.new(0, 205, 0, 106)
Frame.Active = true
Frame.Draggable = true

Frame2.Name = "Frame2"
Frame2.Parent = Frame
Frame2.BackgroundColor3 = Color3.new(0, 1, 1)
Frame2.Position = UDim2.new(0, 0, 0.254716992, 0)
Frame2.Size = UDim2.new(0, 205, 0, 79)

crimtext.Name = "crimtext"
crimtext.Parent = Frame2
crimtext.BackgroundColor3 = Color3.new(1, 0, 0)
crimtext.Position = UDim2.new(0.107317075, 0, 0.101265825, 0)
crimtext.Size = UDim2.new(0, 161, 0, 31)
crimtext.Font = Enum.Font.SourceSans
crimtext.Text = "PLAYERNAME"
crimtext.TextColor3 = Color3.new(0, 0, 0)
crimtext.TextSize = 14

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
 return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
 String = RemoveSpaces(String)
 for _, _Player in pairs(Players:GetPlayers()) do
  if _Player.Name:lower():match('^'.. String:lower()) then
   return _Player
  end
 end
 return nil
end

makecrim.Name = "makecrim"
makecrim.Parent = Frame2
makecrim.BackgroundColor3 = Color3.new(0.333333, 1, 0)
makecrim.Position = UDim2.new(0, 0, 0.493670881, 0)
makecrim.Size = UDim2.new(0, 205, 0, 40)
makecrim.Font = Enum.Font.GothamBlack
makecrim.Text = "Make Crim"
makecrim.TextColor3 = Color3.new(0, 0, 0)
makecrim.TextSize = 14
makecrim.TextStrokeColor3 = Color3.new(0, 1, 1)
makecrim.TextWrapped = true
makecrim.MouseButton1Down:connect(function()
 local Target = FindPlayer(crimtext.Text)
  if Target and Target.Character then
        saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })

local A_1 = "LocalPlayer"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })

wait(0.5)
local LocalPlayer = game:GetService("Players").LocalPlayer
local torsoname = "Torso"
if LocalPlayer.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
    torsoname = "UpperTorso"
end
if LocalPlayer.Character ~= nil then
    local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
    LocalPlayer.Character:FindFirstChild(torsoname).Anchored = true
    local tool = Instance.new("Tool", LocalPlayer.Backpack)
    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
    local hathandle = hat.Handle
    hathandle.Parent = tool
    hathandle.Massless = true
    tool.GripPos = Vector3.new(0, 9e99, 0)
    tool.Parent = LocalPlayer.Character
    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
    LocalPlayer.Character:FindFirstChild(torsoname).Anchored = false
end

while true do
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
wait()
end
end
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.Position = UDim2.new(0, 0, -0.0094339624, 0)
TextLabel.Size = UDim2.new(0, 205, 0, 28)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Made By Jake11price"
TextLabel.TextColor3 = Color3.new(1, 0.666667, 0)
TextLabel.TextSize = 14
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.Position = UDim2.new(0.887133241, 0, 0, 0)
close.Size = UDim2.new(0, 50, 0, 44)
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.new(1, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

bypasshackers.Name = "bypasshackers"
bypasshackers.Parent = main
bypasshackers.BackgroundColor3 = Color3.new(0, 1, 0)
bypasshackers.Position = UDim2.new(0.0722347647, 0, 0.765124559, 0)
bypasshackers.Size = UDim2.new(0, 378, 0, 50)
bypasshackers.Font = Enum.Font.SourceSansBold
bypasshackers.Text = "Bypass Hackers (Dont press this more than once)"
bypasshackers.TextColor3 = Color3.new(0, 0, 0)
bypasshackers.TextSize = 15
bypasshackers.MouseButton1Down:connect(function()
 while wait(3.5) do
       saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Success";
        })

workspace.Remote.TeamEvent:FireServer("Bright blue")

local A_1 = "LocalPlayer"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Loaded";
        Text = "Success";
        })
end
end)

openmain.Name = "openmain"
openmain.Parent = gui
openmain.BackgroundColor3 = Color3.new(0, 0, 0)
openmain.Position = UDim2.new(0.00822120812, 0, 0.538083494, 0)
openmain.Size = UDim2.new(0, 107, 0, 27)
openmain.Visible = false

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(0, 0, 0)
open.Size = UDim2.new(0, 107, 0, 27)
open.Font = Enum.Font.GothamBold
open.Text = "Open"
open.TextColor3 = Color3.new(0, 1, 1)
open.TextScaled = true
open.TextSize = 14
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)
end)

prisonbreaker.Name = "prisonbreaker"
prisonbreaker.Parent = main
prisonbreaker.BackgroundColor3 = Color3.new(0, 1, 1)
prisonbreaker.Position = UDim2.new(0.010818379, 0, 0.418325961, 0)
prisonbreaker.Size = UDim2.new(0, 130, 0, 50)
prisonbreaker.Font = Enum.Font.GothamBold
prisonbreaker.Text = "PrisonBreaker V1.5"
prisonbreaker.TextColor3 = Color3.new(0, 0, 0)
prisonbreaker.TextSize = 14
prisonbreaker.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/HpCpt9rt",true))()
end)

spammain.Name = "spammain"
spammain.Parent = main
spammain.BackgroundColor3 = Color3.new(0, 0.333333, 1)
spammain.Position = UDim2.new(0.203111544, 0, 0.670535982, 0)
spammain.Size = UDim2.new(0, 256, 0, 70)

spamtext.Name = "spamtext"
spamtext.Parent = spammain
spamtext.BackgroundColor3 = Color3.new(0.333333, 0, 0.498039)
spamtext.Position = UDim2.new(0.02734375, 0, 0, 0)
spamtext.Size = UDim2.new(0, 242, 0, 29)
spamtext.Font = Enum.Font.GothamBlack
spamtext.Text = "PlayerName"
spamtext.TextColor3 = Color3.new(0, 1, 1)
spamtext.TextSize = 14

spammainoff.Name = "spammainoff"
spammainoff.Parent = spammain
spammainoff.BackgroundColor3 = Color3.new(0, 0.333333, 1)
spammainoff.Position = UDim2.new(0.109375, 0, 0.559319198, 0)
spammainoff.Size = UDim2.new(0, 201, 0, 30)

spamoff.Name = "spamoff"
spamoff.Parent = spammainoff
spamoff.BackgroundColor3 = Color3.new(1, 0, 0)
spamoff.Position = UDim2.new(0, 0, -0.0141263343, 0)
spamoff.Size = UDim2.new(0, 201, 0, 30)
spamoff.Font = Enum.Font.GothamBold
spamoff.Text = "Spam Arrest (OFF)"
spamoff.TextColor3 = Color3.new(0, 0, 0)
spamoff.TextSize = 14
spamoff.MouseButton1Down:connect(function()
spammainoff.Visible = false
spammainon.Visible = true

 local loll = FindPlayer(spamtext.Text)
_G.Spam = true
game:GetService("RunService").Heartbeat:Connect(function()
if _G.Spam == true then
  if loll and loll.Character then
while _G.Spam == true do wait()
workspace.Remote.arrest:InvokeServer(loll.Character.Torso)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = loll.Character.HumanoidRootPart.CFrame
  end
    end
 end
end)
end)

spammainon.Name = "spammainon"
spammainon.Parent = spammain
spammainon.BackgroundColor3 = Color3.new(0, 0.333333, 1)
spammainon.Position = UDim2.new(0.10546875, 0, 0.544769287, 0)
spammainon.Size = UDim2.new(0, 201, 0, 30)
spammainon.Visible = false

spamon.Name = "spamon"
spamon.Parent = spammainon
spamon.BackgroundColor3 = Color3.new(0.333333, 1, 0)
spamon.Position = UDim2.new(0.00497508049, 0, 0, 0)
spamon.Size = UDim2.new(0, 201, 0, 30)
spamon.Font = Enum.Font.GothamBold
spamon.Text = "Spam Arrest (ON)"
spamon.TextColor3 = Color3.new(0, 0, 0)
spamon.TextSize = 14
spamon.MouseButton1Down:connect(function()
spammainon.Visible = false
spammainoff.Visible = true

 local loll = FindPlayer(spamtext.Text)
_G.Spam = false
game:GetService("RunService").Heartbeat:Connect(function()
if _G.Spam == true then
  if loll and loll.Character then
while _G.Spam == true do wait()
workspace.Remote.arrest:InvokeServer(loll.Character.Torso)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = loll.Character.HumanoidRootPart.CFrame
  end
    end
 end
end)
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.Position = UDim2.new(0.92915684, 0, -0.00671995198, 0)
close.Size = UDim2.new(0, 38, 0, 31)
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = PrisonDestroyer
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(0.00678593433, 0, 0.255528271, 0)
openmain.Size = UDim2.new(0, 100, 0, 30)
openmain.Visible = false

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(0, 1, 1)
open.Position = UDim2.new(-0.0100000184, 0, 0, 0)
open.Size = UDim2.new(0, 100, 0, 30)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 16
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)


loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()