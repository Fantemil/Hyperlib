 loadstring(game:HttpGet("https://pastebin.com/raw/KMp8Jvsa",true))() ----------- Intro GUI

local Player = game.Players.LocalPlayer ------------- START OF SCRIPT

Player.Chatted:connect(function(cht)         ----------- CMD SMART
 if cht:match(":cmd") then 
  loadstring(game:HttpGet("https://pastebin.com/raw/M3tZZAqa",true))()
 elseif cht:match(":toolgui") then                                -------------------- TOOL GUI PART / END OF CMD
  
 loadstring(game:HttpGet("https://pastebin.com/raw/txadLpTy",true))()
 
 elseif cht:match(":savetool") then
   for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer
end
   end
 elseif cht:match(":loadtool") then
  for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
end
  end
 elseif cht:match(":antiafk") then  --------------------------------- END OF TOOL GUI PART
  local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
  
             game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Loaded";
            Text = "Anti AFK Script";
           })
  
 elseif cht:match(":blockhead") then
  game.Players.LocalPlayer.Character.Head.Mesh:destroy()
 elseif cht:match(":creeper6") then
  game.Players.LocalPlayer.Character.Head.Mesh:destroy()
function doo(limb, pos)
limb:BreakJoints()
local velocity = Instance.new("RocketPropulsion", limb)
velocity.CartoonFactor = 0
velocity.MaxSpeed = 30
velocity.MaxThrust = 9999
velocity.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
velocity.Target = game.Players.LocalPlayer.Character.Torso
velocity.TargetOffset = pos
velocity:fire()
local b = Instance.new("BodyGyro", limb)
end
while wait() do
doo(game.Players.LocalPlayer.Character["Left Arm"], Vector3.new(-0.5,-2,-1))
doo(game.Players.LocalPlayer.Character["Right Arm"], Vector3.new(0.5,-2,-1))
doo(game.Players.LocalPlayer.Character["Left Leg"], Vector3.new(-0.5,-2,1))
doo(game.Players.LocalPlayer.Character["Right Leg"], Vector3.new(0.5,-2,1))
end
 elseif cht:match(":creeper15") then
  game.Players.LocalPlayer.Character.Head.Mesh:destroy()
function doo(limb, pos)
limb:BreakJoints()
local velocity = Instance.new("RocketPropulsion", limb)
velocity.CartoonFactor = 0
velocity.MaxSpeed = 30
velocity.MaxThrust = 9999
velocity.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
velocity.Target = game.Players.LocalPlayer.Character.UpperTorso
velocity.TargetOffset = pos
velocity:fire()
local b = Instance.new("BodyGyro", limb)
end
while wait() do
doo(game.Players.LocalPlayer.Character["LeftUpperArm"], Vector3.new(-0.5,-2,-1))
doo(game.Players.LocalPlayer.Character["RightUpperArm"], Vector3.new(0.5,-2,-1))
doo(game.Players.LocalPlayer.Character["LeftUpperLeg"], Vector3.new(-0.5,-2,1))
doo(game.Players.LocalPlayer.Character["RightUpperLeg"], Vector3.new(0.5,-2,1))
end
 elseif cht:match(":shattervest") then
  loadstring(game:HttpGet("https://pastebin.com/raw/CKbPg9NC", true))()
 elseif cht:match(":animationgui") then
  loadstring(game:HttpGet("https://pastebin.com/raw/uUR6pFVv", true))()
 elseif cht:match(":gabx") then
  loadstring(game:HttpGet("https://pastebin.com/raw/EntUzD5J", true))();
 elseif cht:match(":clickdel") then
  local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)
  
 elseif cht:match(":trollinggui") then
  loadstring(game:HttpGet("https://pastebin.com/raw/RNWgaqCE", true))()
 elseif cht:match(":infinitejump") then
  local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

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
 elseif cht:match(":opfianlity") then
  loadstring(game:HttpGet("https://pastebin.com/raw/w8HNfSWA", true))();
 elseif cht:match(":aimbot1") then
  loadstring(game:HttpGet("https://pastebin.com/raw/2kbyfrn5", true))()
 elseif cht:match("aimbot2") then
  loadstring(game:HttpGet("https://pastebin.com/raw/xB92ES44", true))()
 elseif cht:match("aimbotgui") then
  loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY", true))()
  
 elseif cht:match(":openui") then  -- secret script if you open the pastebin :))
  loadstring(game:HttpGet("https://pastebin.com/raw/F9USVzSK",true))()
 end
end)

------------------------------------------------------------------------------- END OF SCRIPT ------------------------------------------------------------------


loadstring(game:HttpGet("https://pastebin.com/raw/F9USVzSK",true))()

           game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Loaded";
            Text = "Ultimate Admin Script";
           })
   
   print("Working Admin Script")