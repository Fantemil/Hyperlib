--Fortnitgamer696
_G.Tog = true

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local char = localPlayer.Character

function tp(...)
 local plr=game.Players.LocalPlayer
 local args={...}
 if typeof(args[1])=="number"and args[2]and args[3]then
    args=Vector3.new(args[1],args[2],args[3])
 elseif typeof(args[1])=="Vector3" then
     args=args[1]    
 elseif typeof(args[1])=="CFrame" then
     args=args[1].Position
 end
 local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
 local tween = game:GetService("TweenService"):Create(
     plr.Character.HumanoidRootPart,
     TweenInfo.new(dist/20,Enum.EasingStyle.Linear),
     {CFrame=CFrame.new(args)}
 )

 tween:Play()
 tween.Completed:Wait()
end


while _G.Tog == true do
wait(.1)
for i,v in pairs(game:GetService("Workspace").Worlds["Christmas World"].Houses:GetChildren()) do
if _G.Tog == true and v:FindFirstChild("Activation") and v.Activation.Root.Decal.Transparency < 1 then
   print(v)
   tp(v.Activation.Root.CFrame)
   repeat wait() tp(v.Activation.Root.CFrame) until v.Activation.Root.Decal.Transparency > 0 or _G.Tog == false
end
end
end