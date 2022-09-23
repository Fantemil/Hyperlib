--Most of this stuff is PROBABLY for Synapse X, PROBABLY

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("Tower Of Misery", "DarkTheme")
local HomeWindow = Window:NewTab("Home")
local OtherWindow = Window:NewTab("Other")
local TeleportWindow = Window:NewTab("Teleport")
local AntiCheatWindow = Window:NewTab("Anti Cheat")
local CrashWindow = Window:NewTab("Crashing")
local FunWindow = Window:NewTab("Fun")
local Home = HomeWindow:NewSection("Home Section")
local OtherStuff = OtherWindow:NewSection("OtherStuff")
local Teleport = TeleportWindow:NewSection("Teleports")
local AntiCheat = AntiCheatWindow:NewSection("AntiCheat")
local Fun = FunWindow:NewSection("Fun Stuff")
local Crash = CrashWindow:NewSection("Crashing Stuff")

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
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Designed And Mostly Coded By TheCoolZack#3012",
 Color = Color3.fromRGB(207, 96, 36)
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Instructions updated for every script that seemed outdated and or broken (LOOK AT THE DOTS ON THE SCRIPT FOR INSTRUCTIONS) AND SORRY IF SOME WORK FOR ONLY SYNAPSE X",
 Color = Color3.fromRGB(207, 96, 36)
})

Home:NewButton("God Mode", "Home", function()
    Rep.Server_Data.ImmunityEnabled.Value = true
end
)

Home:NewButton("Fly (e = toggle)", "Home", function()
loadstring(game:HttpGet('https://pastebin.com/raw/d32zM888'))()
end
)

Teleport:NewButton("TP To Top (win)", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

AntiCheat:NewButton("Anti Cheat Bypass (Fly)", "PROB FOR SYNAPSE X", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Press On Respawn And After Every Round",
 Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Workspace
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Gravity")) do
   v:Disable()
end
end)

AntiCheat:NewButton("Anti Cheat Bypass (Gravity)", "PROB FOR SYNAPSE X", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Press On Respawn And After Every Round",
 Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Velocity")) do
   v:Disable()
end
end)

OtherStuff:NewSlider("WalkSpeed (BYPASS)", "OtherStuff", 300, 16, function(arg)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
end
)

OtherStuff:NewSlider("JumpPower (BYPASS)", "OtherStuff", 350, 50, function(arg)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
end
)

AntiCheat:NewButton("Anti Cheat Bypass", "AntiCheat", function()
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
)


Home:NewButton("Inf Yield", "Home", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
)

Home:NewButton("Gravity Coil (free)", "Home", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Press as many times as you want.",
 Color = Color3.fromRGB(207, 96, 36)
})
local args = {
    [1] = "Gravity Coil"
}

game:GetService("ReplicatedStorage").Remote_Functions.General.Equip_Coil:InvokeServer(unpack(args))
end
)

Fun:NewTextBox("(TOOL) Kill Player:", "Fun", function(kill)
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
end)

Fun:NewButton("Break Peoples Screens (VERY LAGGY)", "Fun", function()
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
end)

Fun:NewButton("Stop Messing With People's Screens", "Fun", function()
_G.breakgame = false
end)

OtherStuff:NewButton("Buy Everything", "OtherStuff", function()
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
wait(0.5)
print("Auto Bought Everything!")
end
)

Fun:NewTextBox("Force Trade User:", "Fun", function(lol)
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
end)

Home:NewButton("Auto Respawn", "Home", function()
 game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
  Text = "WHEN YOU USE THIS YOU CAN INSTANTLY RESET WITHOUT QUICK SPAWN (WHEN YOU DIE OR RESET)",
  Color = Color3.fromRGB(207, 96, 36)
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
end)

Home:NewButton("AFK Farm (prob broken)", "Home", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "Go to Teleports to turn this off",
 Color = Color3.fromRGB(207, 96, 36)
})
_G.afk1 = true
while _G.afk1 == true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
end)

OtherStuff:NewButton("Get Sword", "If doesn't work 1st time press again.", function()
 game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
  Text = "Using this will teleport you back to the winners room every round so just teleport back with the teleport to top",
  Color = Color3.fromRGB(207, 96, 36)
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
)

Teleport:NewButton("TP To Winners Room", "You need to touch the white door first.", function()
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
)

Teleport:NewButton("Flappy Bird (winners room)", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.7847023, 234.399963, 2805.98145)
end
)

Teleport:NewButton("Track Slide (winners room)", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.9553223, 234.199951, 2824.10547)
end
)

Teleport:NewButton("Turn Off AFK Farm", "Teleport", function()
_G.afk1 = false
end)

Fun:NewButton("(TOOL) Sink Player", "Needs A Tool And Must Be On The Player", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "YOU MUST BE ON THE PLAYER TO KIDNAP/SINK THEM (PRESS Z TO SINK THE PLAYER WHEN ON THEM)",
 Color = Color3.fromRGB(207, 96, 36)
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
end)

Teleport:NewButton("TP To Roof", "Teleports", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.0604019, 277.999878, 49.0757294)
end)

Crash:NewTextBox("Crash Player", "Crashes A Player", function(okthen)
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
end)

Crash:NewButton("Stop Crashing Player (press a lot)", "Crashing", function()
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
end)

Fun:NewButton("Inf Jump Bypass", "Spoof", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
 Text = "THIS ONLY WORKS FOR SYNAPSE X I BELIEVE SO (bypasses inf jump) also as always press after every round and after respawn",
 Color = Color3.fromRGB(207, 96, 36)
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
end)