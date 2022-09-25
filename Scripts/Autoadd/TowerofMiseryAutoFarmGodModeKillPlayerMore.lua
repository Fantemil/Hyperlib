--Orion Lib

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Tower Of Misery", HidePremium = true, SaveConfig = false, ConfigFolder = "TowerOfMisery"})
local Home = MainWindow:MakeTab({
 Name = "Home",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local HomeSection = Home:AddSection({
 Name = "Home"
})
local Other = MainWindow:MakeTab({
 Name = "Other",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local OtherStuff = Other:AddSection({
 Name = "Other"
})
local Teleport = MainWindow:MakeTab({
 Name = "Teleport",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local TeleportStuff = Teleport:AddSection({
 Name = "Teleport"
})
local AntiCheat = MainWindow:MakeTab({
 Name = "Anti Cheat",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local AntiCheatStuff = AntiCheat:AddSection({
 Name = "Anti Cheat"
})
local Crashing = MainWindow:MakeTab({
 Name = "Crashing",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local CrashingStuff = Crashing:AddSection({
 Name = "Crashing"
})
local Fun = MainWindow:MakeTab({
 Name = "Fun",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local FunStuff = Fun:AddSection({
 Name = "Fun"
})

local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp

function findplr(args, tbl)
 if tbl == nil then
  local tbl = cmdp:GetPlayers()
  if args == "me" then
   return cmdlp
  elseif args == "random" then 
   return tbl[math.random(1,#tbl)]
  elseif args == "new" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v.AccountAge < 30 and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "old" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v.AccountAge > 30 and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "bacon" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "friend" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "notfriend" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "ally" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v.Team == cmdlp.Team and v ~= cmdlp then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "enemy" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v.Team ~= cmdlp.Team then
     vAges[#vAges+1] = v
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "near" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v ~= cmdlp then
     local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
     if math < 30 then
      vAges[#vAges+1] = v
     end
    end
   end
   return vAges[math.random(1,#vAges)]
  elseif args == "far" then
   local vAges = {} 
   for _,v in pairs(tbl) do
    if v ~= cmdlp then
     local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
     if math > 30 then
      vAges[#vAges+1] = v
     end
    end
   end
   return vAges[math.random(1,#vAges)]
  else 
   for _,v in pairs(tbl) do
    if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
     return v
    end
   end
  end
 else
  for _, plr in pairs(tbl) do
   if plr.UserName:lower():find(args:lower()) or plr.DisplayName:lower():find(args:lower()) then
    return plr
   end
  end
 end
end

local workspace = game:GetService("Workspace")
local Rep = game.ReplicatedStorage

wait()
OrionLib:MakeNotification({
 Name = "New UI Is Here!",
 Content = "Enjoy!",
 Image = "rbxassetid://4483345998",
 Time = 5
})
wait()
OrionLib:MakeNotification({
 Name = "Designed By:",
 Content = "TheWorldOfZack#3012",
 Image = "rbxassetid://4483345998",
 Time = 5
})
wait()
Home:AddButton({
Name = "God Mode",
Callback = function()
    Rep.Server_Data.ImmunityEnabled.Value = true
end
})

Home:AddButton({
Name = "Fly (e = Toggle)",
Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/d32zM888'))()
end
})

Teleport:AddButton({
Name = "TP To Top (win)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (fly)",
Callback = function()
OrionLib:MakeNotification({
 Name = "FOR SYNAPSE X",
 Content = "Press On Respawn And Every Round",
 Image = "rbxassetid://4483345998",
 Time = 3
})
local h = game.Workspace
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Gravity")) do
   v:Disable()
end
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (Gravity)",
Callback = function()
OrionLib:MakeNotification({
 Name = "FOR SYNAPSE X",
 Content = "Press On Respawn And Every Round",
 Image = "rbxassetid://4483345998",
 Time = 3
})
local h = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Velocity")) do
   v:Disable()
end
end})

Other:AddSlider({
Name = "WalkSpeed (ANTI CHEAT FIRST)",
Min = 16,
Max = 350,
Default = 16,
Increment = 1,
ValueName = "...",
Callback = function(arg)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
end
})

Other:AddSlider({
Name = "JumpPower (ANTI CHEAT FIRST)",
Min = 50,
Max = 350,
Default = 50,
Increment = 1,
ValueName = "...",
Callback = function(arg)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
end
})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass",
Callback = function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "InvokeServer" and tostring(self) == "CallFunction" then
        return warn("CallFunction Tried To Fire It's Self")
    end
    return namecall(self, table.unpack(args))
end)
end
})


Home:AddButton({
Name = "Inf Yield",
Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})

Home:AddButton({
Name = "Gravity Coil (free)",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Free Gravity Coils",
 Image = "rbxassetid://4483345998",
 Time = 3
})
local args = {
    [1] = "Gravity Coil"
}

game:GetService("ReplicatedStorage").Remote_Functions.General.Equip_Coil:InvokeServer(unpack(args))
end
})

Fun:AddTextbox({
Name = "(TOOL) Kill Player:",
Default = "Display Name Or Username",
TextDisappear = false,
Callback = function(kill)
    local Player = function(Ev)
 if Ev == "" then
  return nil
 elseif Ev == "random" then
  return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
 else
  for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
    return v
   end
  end
 end
end
local plr = game:GetService("Players").LocalPlayer

 plr.Character.Humanoid:UnequipTools()
 local Humanoid = plr.Character.Humanoid:Clone()
 local Target = Player(kill)
 local Tool = plr.Backpack:FindFirstChildOfClass("Tool")

 plr.Character.Animate.Disabled = true
 plr.Character.Humanoid:Destroy()
 Humanoid.Parent = plr.Character
 Tool.Parent = plr.Character
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
 firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);
end})

Fun:AddButton({
Name = "Break Everyones Screens (VERY LAGGY)",
Callback = function()
_G.breakgame = true
while _G.breakgame == true do
wait(6)
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Accept_Trade_Request:FireServer(unpack(args))
end
end
end})

Fun:AddButton({
Name = "Stop Messing With Peoples Screens",
Callback = function()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
wait()
_G.breakgame = false
end})

Other:AddButton({
Name = "Buy Everything",
Callback = function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait(0.4)
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Auto Bought Everything!",
 Image = "rbxassetid://4483345998",
 Time = 3
})
end
})

Fun:AddTextbox({
Name = "Force Trade User:",
Default = "Display Name Or Username",
TextDisappear = false,
Callback = function(lol)
local Player = function(Ev)
 if Ev == "" then
  return nil
 elseif Ev == "random" then
  return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
 else
  for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
    return v
   end
  end
 end
end
local target = Player(lol)
local args = {
    [1] = Player(lol)
}

game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Accept_Trade_Request:FireServer(unpack(args))
end})

Home:AddButton({
Name = "Quick Respawn",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "This Is For Quick Respawning Without Quick Spawn (dying or resetting)",
 Image = "rbxassetid://4483345998",
 Time = 3
})
while true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
    saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end})

Home:AddButton({
Name = "AFK Farm",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Probably Broken :(",
 Image = "rbxassetid://4483345998",
 Time = 3
})
_G.afk1 = true
while _G.afk1 == true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
end})

Other:AddButton({
Name = "Get Sword",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Teleport Back With The White Door In Winners Room Or Teleports (if didn't work then press again)",
 Image = "rbxassetid://4483345998",
 Time = 7
})
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
wait(0.2)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.3)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
})

Teleport:AddButton({
Name = "TP To Winners Room",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Make Sure To Touch The White Door First (to win)",
 Image = "rbxassetid://4483345998",
 Time = 3
})
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.1369514, 233.999954, 2820.86865)
end
})

Teleport:AddButton({
Name = "Flappy Bird (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.7847023, 234.399963, 2805.98145)
end
})

Teleport:AddButton({
Name = "Track Slide (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.9553223, 234.199951, 2824.10547)
end
})

Teleport:AddButton({
Name = "Turn off AFK Farm",
Callback = function()
_G.afk1 = false
end})

Fun:AddButton({
Name = "(TOOL) Z To Sink Player",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Touch Somebody And Press Z To Sink The Player",
 Image = "rbxassetid://4483345998",
 Time = 5
})
wait()
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == 'z' then
local h = game.Players.LocalPlayer.Character.Humanoid:Clone()
local plr = game.Players.LocalPlayer.Character
local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local lp = game.Players.LocalPlayer

h.Parent = game.Players.LocalPlayer.Character
h.Name = "Hum"

game.Players.LocalPlayer.Character.Humanoid:Destroy()

for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v.ClassName == "Tool" then
        v.Parent = plr
    end
end
wait(.5)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(300, Enum.EasingStyle.Linear)

tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(0, -1000, 0)})
tween:Play()
end
end)
end})

Teleport:AddButton({
Name = "TP To Roof",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.0604019, 277.999878, 49.0757294)
end})

Crashing:AddTextbox({
Name = "Crash Player (VERY LAGGY):",
Default = "Display Name Or Username",
TextDisappear = false,
Callback = function(okthen)
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "NOT RECOMMENDED FOR FREE EXPLOITS! TAKE NOTE THAT THESE ARE LAGGY BECAUSE OF THE TRADING SYSTEM",
 Image = "rbxassetid://4483345998",
 Time = 3
})
wait()
local Player = function(Ev)
 if Ev == "" then
  return nil
 elseif Ev == "random" then
  return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
 else
  for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
    return v
   end
  end
 end
end
_G.crashplayer = true
while _G.crashplayer == true do
wait()
local target = Player(okthen)
local args = {
    [1] = Player(okthen)
}

game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Accept_Trade_Request:FireServer(unpack(args))
end
end})

Crashing:AddButton({
Name = "Stop Crashing Player (PRESS A LOT!!!)",
Callback = function()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
_G.crashplayer = false
end})

Fun:AddButton({
Name = "Spoof Inf Jump",
Callback = function()
OrionLib:MakeNotification({
 Name = "Activated!",
 Content = "Spoof's Inf Jump (Synapse X Only?)",
 Image = "rbxassetid://4483345998",
 Time = 3
})
wait()
local h = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Velocity")) do
   v:Disable()
end
wait()
local h = game.Workspace
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Gravity")) do
   v:Disable()
end
wait(0.3)
local Player = game:GetService'Players'.LocalPlayer
local UIS = game:GetService'UserInputService'

_G.JumpHeight = 75;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end})