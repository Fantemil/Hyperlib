if game.PlaceId == 1067560271 then
spawn(function()
   while wait () do
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
end end)
wait(1)
local _speed=3000
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
  game:GetService("TweenService"):Create(
      plr.Character.HumanoidRootPart,
      TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
      {CFrame=CFrame.new(args)}
  ):Play()
end

tp(-638.353638, -58.3049469, 757.653931, -0.709312856, -2.77422252e-11, 0.704893827, 6.66586893e-15, 1, 3.93633112e-11, -0.704893827, 2.79256011e-11, -0.709312856)
wait(0.5)
local baseplate = Instance.new("Part")
baseplate.Parent = workspace
baseplate.Size = Vector3.new(80,1,80)
baseplate.Anchored = true
baseplate.Name = "Baseplate"
baseplate.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-2,0)
wait(1.5)
game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game.Workspace.DIAMONDS:GetChildren()) do
  if v.Name == "specialdiamond" or v.Name == "Pink Diamond" or v.Name == "Green Diamond" or V.Name == "Red Diamond" then
      v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
      wait(1)
  end end end)
  
  while wait () do
 game:GetService("Players").LocalPlayer.PlayerGui.CaptchaGui.Captcha.Top.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.CaptchaGui.Award.Visible = false
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CaptchaGui.Captcha.FloatArea:GetChildren()) do
if v.Name == "FloatBox" and v:FindFirstChild("ImageLabel") then
if v.Visible == true then
wait(2)
firesignal(v.MouseButton1Click) wait(1)
v:remove()
end
end 
end 
end 

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
else
    game:GetService("TeleportService"):Teleport(1067560271, LocalPlayer)
    end 

print("Works MADE BY BACONLORD")