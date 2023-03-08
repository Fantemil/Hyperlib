--Fortnitgamer696 made code
--xdeformedbread put code into GUI

_G.Tog = false -- toggle make it false if u want to turn the autofarm off
_G.Walk = false -- put this on true if u want it to walk instead of teleporting. It just makes it look legit
_G.TweenSpeed = 40 -- lower = faster, higher = slower, DO not make this too low or u will get teleported back


local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()



local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local char = localPlayer.Character

function tp(bool, ...)
   local plr = game.Players.LocalPlayer
   local args = {...}
   if typeof(args[1]) == "number" and args[2] and args[3] then
       args = Vector3.new(args[1], args[2], args[3])
   elseif typeof(args[1]) == "Vector3" then
       args = args[1]
   elseif typeof(args[1]) == "CFrame" then
       args = args[1].Position
   end
   local dist = (plr.Character.HumanoidRootPart.Position - args).Magnitude
   local tween =
       game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist / _G.TweenSpeed, Enum.EasingStyle.Linear),
       {CFrame = CFrame.new(args)}
   )
   if bool == false then
       tween:Play()
       tween.Completed:Wait()
   else
       game.Players.LocalPlayer.Character.Humanoid:MoveTo(args)
       game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
   end
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetClosest()
   local Character = LocalPlayer.Character
   local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
   if not (Character or HumanoidRootPart) then
       return
   end

   local TargetDistance = math.huge
   local Target

   for i, v in ipairs(game:GetService("Workspace").Worlds["Christmas World"].Houses:GetChildren()) do
       if
           v:FindFirstChild("Activation") and v.Activation:FindFirstChild("Root") and
               v.Activation.Root.Decal.Transparency < 1 and
               v.Activation.Root.Decal.Color3 == Color3.fromRGB(0, 255, 255)
        then
           local TargetHRP = v.Activation.Root
           local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
           if mag < TargetDistance then
               TargetDistance = mag
               Target = v.Activation.Root
           end
       end
   end

   return Target
end


function tpFarm()
   while _G.Tog == true do
       wait(.1)
       for i, v in pairs(game:GetService("Workspace").Worlds["Christmas World"].Houses:GetChildren()) do
           if _G.Tog == true and v:FindFirstChild("Activation") and v.Activation.Root.Decal.Transparency < 1 then
               repeat
                   wait()
                   tp(_G.Walk, GetClosest().Position)
               until v.Activation.Root.Decal.Transparency > 0 or _G.Tog == false
       
           end
       end
   end
end





local GUI = Mercury:Create{
   Name = "Mercury",
   Size = UDim2.fromOffset(600, 400),
   Theme = Mercury.Themes.Dark,
   Link = "https://github.com/deeeity/mercury-lib"
}


local Tab = GUI:Tab{
Name = "Main",
   Icon = "rbxassetid://10471593579"

}

--tp farm
Tab:Toggle{
Name = "Farm Chirstmas Houses Teleport | BE CLOSE TO HOUSES!",
StartingState = false,
Description = "Will teleport you to the christmas houses.",
Callback = function(bool)
       _G.Tog = bool
if bool then
       tpFarm()
       end
   end
}

--walk toggle farm
Tab:Toggle{
Name = "Chirstmas Houses Walking | BE CLOSE TO HOUSES!",
StartingState = false,
Description = "Walk to each christmas house making it look legit. ENABLE BEFORE TELEPORT!",
Callback = function(bool)
   _G.Walk = bool
   print("Walk farm is", bool)
end
}

--adjust tp speed
Tab:Slider{
Name = "Adjust the teleport speed",
Default = 40,
Min = 0,
Max = 40,
   Description = "Change Speed before starting. Higher = faster. | lower = slower.",
Callback = function(value)
   _G.TweenSpeed = value
   print(value)
end
}

--tps to christmas world
Tab:Button{
Name = "Tp To Chirstmas World",
Description = nil,
Callback = function()
       local args = {[1] = "Christmas World"}game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
   end
}

--kills player
Tab:Button{
Name = "Stop Tween",
Description = nil,
Callback = function()
       game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
   end
}

--creds
GUI:Credit{
Name = "Put Code Into GUI",
Description = "I did not make the code! I only put it into the GUI.",
V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2398060",
Discord = "xdeformedbread#4207"
}

GUI:Credit{
Name = "Made The Code",
Description = "This person made the code, credit to them!",
V3rm = "https://v3rmillion.net/member.php?action=profile&uid=1436797",
Discord = "Monke#4072"
}