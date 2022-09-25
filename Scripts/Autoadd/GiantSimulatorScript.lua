local speed = 10000 -- set this lower to make it slower
local bodyvelocityenabled = true -- set this to false if you are getting kicked
local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()
function To(position)
   local Chr = Plr.Character
   if Chr ~= nil then
       local ts = game:GetService("TweenService")
       local char = game.Players.LocalPlayer.Character
       local hm = char.HumanoidRootPart
       local dist = (hm.Position - Mouse.Hit.p).magnitude
       local tweenspeed = dist / tonumber(speed)
       local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
       local tp = {
           CFrame = CFrame.new(position)
       }
       ts:Create(hm, ti, tp):Play()
       if bodyvelocityenabled == true then
           local bv = Instance.new("BodyVelocity")
           bv.Parent = hm
           bv.MaxForce = Vector3.new(100000, 100000, 100000)
           bv.Velocity = Vector3.new(0, 0, 0)
           wait(tonumber(tweenspeed))
           bv:Destroy()
       end
   end
end
 
local library = loadstring(game:HttpGet("https://pastebin.com/raw/B6haTw0u"))()
local One = library.new("Giant Simulator", 5013109572)
local Farm = One:addPage("AutoFarm", 5012544693)
local F1 = Farm:addSection("AutoFarm")
local Misc1 = One:addPage("Misc", 5012544693)
local Misc = Misc1:addSection("Misc")
local Eggs = Misc1:addSection("Eggs")
local Creds = One:addPage("Credits", 5012544693)
local Cred = Creds:addSection('Credits')
 
getgenv().Start = false
F1:addToggle("AutoFarm(Eggs)", nil, function(bool)
   Start=bool
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start do
pcall(function()
       for i,v in pairs(game.Workspace.Scene:GetDescendants()) do
           if v.Name == "ResourceNode" and v.NodeType.Value == 6 then
       To(v.Position + Vector3.new(v.CFrame.lookVector * -3.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end
       end
               wait()
               end)
   end
end)
getgenv().Start1 = false
F1:addToggle("AutoFarm(Boss)", nil, function(bool1)
   Start1=bool1
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start1 do
pcall(function()
       To(game.Workspace.NPC.Boss:findFirstChild("Borock").HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.Boss:findFirstChild("Borock").HumanoidRootPart.CFrame.lookVector * -3.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                           wait()
   end
end)
getgenv().Start2 = false
F1:addToggle("AutoFarm(DemonKing)", nil, function(bool2)
   Start2=bool2
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start2 do
pcall(function()
       To(game.Workspace.NPC.DemonKing.DemonKing.HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.DemonKing.DemonKing.HumanoidRootPart.CFrame.lookVector * -1.5) + Vector3.new(0,0,5))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                          wait()
   end
end)
getgenv().Start3 = false
F1:addToggle("AutoFarm(Gnome)", nil, function(bool3)
   Start3=bool3
   game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
   while true and Start3 do
pcall(function()
       To(game.Workspace.NPC.Gnomes:findFirstChild("Gnome").HumanoidRootPart.Position + Vector3.new(game.Workspace.NPC.Gnomes:findFirstChild("Gnome").HumanoidRootPart.CFrame.lookVector * 1.5) + Vector3.new(0,0,0))
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
end)
                           wait()
   end
end)
 
getgenv().eg = true
Eggs:addToggle("Auto Buy Egg(5k)",nil,function(egger)
   eg=egger
   while true and eg do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(1)
       end)
               wait(0)
   end
 
end)
 
getgenv().eg1 = true
Eggs:addToggle("Auto Buy Egg(25k)",nil,function(egger1)
   eg1=egger1
   while true and eg1 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(2)
       end)
               wait(0)
   end
 
end)
 
getgenv().eg2 = true
Eggs:addToggle("Auto Buy Egg(125k)",nil,function(egger2)
   eg2=egger2
   while true and eg2 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(3)
       end)
               wait(0)
   end
 
end)
 
getgenv().eg4 = true
Eggs:addToggle("Auto Buy Egg(1M)",nil,function(egger4)
   eg4=egger4
   while true and eg4 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(4)
       end)
               wait(0)
   end
 
end)
getgenv().eg5 = true
Eggs:addToggle("Auto Buy Egg(20M)",nil,function(egger5)
   eg5=egger5
   while true and eg5 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(5)
       end)
               wait(0)
   end
 
end)
getgenv().eg6 = true
Eggs:addToggle("Auto Buy Egg(2k Eggs)",nil,function(egger6)
   eg4=egger6
   while true and eg6 do
       pcall(function()
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(6)
       end)
               wait(0)
   end
 
end)
 
Misc:addButton("Anti-AFK",function()
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
print("Done!")
end)
 
Cred:addButton("Made By Mercy#0404",function()
 
setclipboard("Mercy#0404")
 
end)